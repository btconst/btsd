--**********************************************************
--**  Myopia, Hyperopia & Functional Glasses - By Onkeen  **
--**********************************************************

VisionImpairment = {}

local currentFullBackOpacity = 0
local currentWarnOpacity = 0
local isZoomLevelIssue = false
local isMouseZoomed = false
local carriedGlasses = nil
local wornGlasses = nil
local lastWornGlasses = nil
local glassesWasLost = false

function VisionImpairment.setMyopicOverlayOn(playerNum, sm, psm)
    sm:setEnabled(playerNum, true);
	local radius = psm:getRadius();
	radius:setTargetExterior(1);
	radius:setTargetInterior(1);
	local gradient = psm:getGradientWidth();
	gradient:setExterior(4);
	gradient:setInterior(4);
	local desat = psm:getDesat();
	desat:setExterior(0);
	desat:setInterior(0);
	local blur = psm:getBlur();
	blur:setExterior(1);
	blur:setInterior(1);
	local dark = psm:getDarkness();
	dark:setExterior(0.2);
	dark:setInterior(0.2);
end

function VisionImpairment.setHyperopicOverlayOn(playerNum, sm, psm)
	-- Maximum zoom is 0.5, Maximum de-zoom is 2.5
	local zoom = getCore():getZoom(playerNum)
	local zoomFactor = zoom / 2.5;
	local zoomValue = math.abs(1-zoomFactor) + 0.2
	if zoom < 2.5 then
		zoomValue = math.min(zoomValue + zoomValue/2, 1)
	end
    sm:setEnabled(playerNum, true);
	local blur = psm:getBlur();
	blur:setExterior(zoomValue);
	blur:setInterior(zoomValue);
	local desat = psm:getDesat();
	desat:setExterior(0);
	desat:setInterior(0);
	local radius = psm:getRadius();
	radius:setTargetExterior(0);
	radius:setTargetInterior(0);
	local gradient = psm:getGradientWidth();
	gradient:setExterior(1);
	gradient:setInterior(1);
	local dark = psm:getDarkness();
	dark:setExterior(0.2);
	dark:setInterior(0.2);
end


function VisionImpairment.isVisuallyImpaired()
	local player = getPlayer()
	if player then
		-- if player is myopic
		if player:HasTrait("Myopic") then
			local playerNum = player:getPlayerNum()
			local sm = getSearchMode();
		    local psm = sm:getSearchModeForPlayer(playerNum);
			wornGlasses = VisionImpairment.validGlasses(player, "Glasses_Normal");
			if not wornGlasses or wornGlasses:isBroken() then
				VisionImpairment.setMyopicOverlayOn(playerNum, sm, psm);
				-- If glasses are lost just now, damage them
				if glassesWasLost == false then
					VisionImpairment.OnGlassesLost(player);
					glassesWasLost = true;
					-- Remove ability to read from player without glasses
					if not player:HasTrait("Illiterate") then
						player:getTraits():add("temporaryilliterate");
						player:getTraits():add("Illiterate");
					end
				end
			else
				-- Store current glasses as last worn glasses
				lastWornGlasses = wornGlasses
				-- Restore sight 
				if glassesWasLost then
					print("Restore foraging capabilities.");
					sm:setEnabled(playerNum, false);
					glassesWasLost = false;
					if player:HasTrait("temporaryilliterate") and player:HasTrait("Illiterate") then
						player:getTraits():remove("temporaryilliterate");
						player:getTraits():remove("Illiterate");
					end
				end
			end
		end
		-- if player is hyperopic
		if player:HasTrait("Hyperopic") then
			local playerNum = player:getPlayerNum()
			local sm = getSearchMode();
		    local psm = sm:getSearchModeForPlayer(playerNum);
			wornGlasses = VisionImpairment.validGlasses(player, "Glasses_Reading");
			if not wornGlasses or wornGlasses:isBroken() then
				VisionImpairment.setHyperopicOverlayOn(playerNum, sm, psm);
				-- If glasses are lost just now, damage them
				if glassesWasLost == false then
					VisionImpairment.OnGlassesLost(player);
					glassesWasLost = true;
					-- Remove ability to read from player without glasses
					if not player:HasTrait("Illiterate") then
						player:getTraits():add("temporaryilliterate");
						player:getTraits():add("Illiterate");
					end
				end
			else
				-- Store current glasses as last worn glasses
				lastWornGlasses = wornGlasses
				-- Restore sight
				if glassesWasLost then
					print("Restore foraging capabilities.");
					sm:setEnabled(playerNum, false);
					glassesWasLost = false;
					if player:HasTrait("temporaryilliterate") and player:HasTrait("Illiterate") then
						player:getTraits():remove("temporaryilliterate");
						player:getTraits():remove("Illiterate");
					end
				end
			end
		end
	end
end

function VisionImpairment.validGlasses(player, glassesType)
    local playerItemList = player:getInventory():getItems()
    local currentItem = nil
    local validGlassesItem = nil
    for i = 0, playerItemList:size() - 1 do
		currentItem = playerItemList:get(i)
        if currentItem:getType() == glassesType and currentItem:isEquipped() then
            validGlassesItem = currentItem
        end
    end
    return validGlassesItem
end

function VisionImpairment.OnGlassesLost(player)
	print("last worn glasses will take damage if on floor");
    if lastWornGlasses and not lastWornGlasses:isEquipped() then
    	if lastWornGlasses:getContainer() == nil then
    		local damage = ZombRand(7,10);
    		local newCondition = lastWornGlasses:getCondition() - damage;
    		if newCondition > 2 then
    			lastWornGlasses:setCondition(newCondition);
    		else
    			lastWornGlasses:setCondition(0);
    		    player:getEmitter():playSound("BreakGlassItem");
    		end
    		lastWornGlasses = nil;
    	end
    end
end

Events.OnPreUIDraw.Add(VisionImpairment.isVisuallyImpaired)

-- Save default function for wrap it
if VisionImpairment.sourceSearchModeCheckShouldDisable == nil then
    VisionImpairment.sourceSearchModeCheckShouldDisable = ISSearchManager.checkShouldDisable
end

-- Give Long Grass to Park Ranger 
function ISSearchManager:checkShouldDisable()
	if self.character:HasTrait("Myopic") then
		wornGlasses = VisionImpairment.validGlasses(self.character, "Glasses_Normal");
		if not wornGlasses or wornGlasses:isBroken() then
			return true;
		end
	elseif self.character:HasTrait("Hyperopic") then
		wornGlasses = VisionImpairment.validGlasses(self.character, "Glasses_Reading");
		if not wornGlasses or wornGlasses:isBroken() then
			return true;
		end
	end
	return VisionImpairment.sourceSearchModeCheckShouldDisable(self);
end
