--[[
    Add the ClothingMenuPanel into the char creation.
    Based on the default code by TIS. Modified to be able to group similar and mutally exclusive bodyLocation's together (i.e. Jacket, FullSuit, Bathrobe can be grouped together)
]]
require("CharacterCreationClothingGroups.lua")

local FONT_SML = getTextManager():getFontHeight(UIFont.Small);
local FONT_MED = getTextManager():getFontHeight(UIFont.Medium);
local FONT_LRG = getTextManager():getFontHeight(UIFont.Large);

local function coach_tableHasValue (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

local function coach_findStringInTable (tab, val)
    local lowercase = val:lower()
    for index, value in ipairs(tab) do
        if string.find(lowercase, value:lower()) then
            return true
        end
    end
    return false
end

local function coach_getTableEntryCount (tab) 
    local count = 0
    for i,v in ipairs(tab) do
        count = count + 1
    end
    return count
end

function CharacterCreationMain:saveBuildStep2(button, joypadData, param2)
	if joypadData then
		joypadData.focus = self.presetPanel
		updateJoypadFocus(joypadData)
	end
	
	if button.internal == "CANCEL" then
		return
	end
	
	local savename = button.parent.entry:getText()
	if savename == '' then return end
	
	local desc = MainScreen.instance.desc;
	
	local builds = CharacterCreationMain.readSavedOutfitFile();
	local savestring = "gender=" .. MainScreen.instance.charCreationHeader.genderCombo.selected .. ";";
	savestring = savestring .. "skincolor=" .. self.skinColorButton.backgroundColor.r .. "," .. self.skinColorButton.backgroundColor.g .. "," .. self.skinColorButton.backgroundColor.b .. ";";
	savestring = savestring .. "name=" .. MainScreen.instance.charCreationHeader.forenameEntry:getText() .. "|" .. MainScreen.instance.charCreationHeader.surnameEntry:getText() .. ";";
	local hairStyle = self.hairTypeCombo:getOptionData(self.hairTypeCombo.selected)
	savestring = savestring .. "hair=" .. hairStyle .. "|" .. self.hairColorButton.backgroundColor.r .. "," .. self.hairColorButton.backgroundColor.g .. "," .. self.hairColorButton.backgroundColor.b .. ";";
	if not desc:isFemale() then
		savestring = savestring .. "chesthair=" .. (self.chestHairTickBox:isSelected(1) and "1" or "2") .. ";";
		local beardStyle = self.beardTypeCombo:getOptionData(self.beardTypeCombo.selected)
		savestring = savestring .. "beard=" .. beardStyle .. ";";
	end
	for i,v in pairs(self.clothingCombo) do
        local data = v:getOptionData(v.selected)
		if data ~= nil then
            -- since we can have multiple bodyLocation's for each combo now, we need to find what body group the current combo option represents!
            for _,bodyLocation in ipairs(v.bodyLocation) do
                local currentItem = desc:getWornItem(bodyLocation);
                if currentItem and data.id == currentItem:getFullType() then
                    -- mostly the vanilla code, slightly tweaked to use our values but still the same format to ensure compatability with non-mod presets
                    savestring = savestring .. bodyLocation .. "=" .. data.id;
                    if self.clothingColorBtn[i] and self.clothingColorBtn[i]:isVisible() then
                        savestring = savestring .. "|" .. self.clothingColorBtn[i].backgroundColor.r .. "," .. self.clothingColorBtn[i].backgroundColor.g  .. "," .. self.clothingColorBtn[i].backgroundColor.b;
                    end
                    if self.clothingTextureCombo[i] and self.clothingTextureCombo[i]:isVisible() then
                        savestring = savestring .. "|" .. self.clothingTextureCombo[i].selected;
                    end
                    if (self.clothingDecalCombo[i] and self.clothingDecalCombo[i]:isVisible()) then
                        savestring = savestring .. "|" .. self.clothingDecalCombo[i].selected;
                    end
                    savestring = savestring .. ";";
                    break
                end
            end
		end
	end
	builds[savename] = savestring;
	
	local options = {};
	CharacterCreationMain.writeSaveFile(builds);
	for key,val in pairs(builds) do
		options[key] = 1;
	end
	
	self.savedBuilds.options = {};
	local i = 1;
	for key,val in pairs(options) do
		table.insert(self.savedBuilds.options, key);
		if key == savename then
			self.savedBuilds.selected = i;
		end
		i = i + 1;
	end
end

function CharacterCreationMain:loadOutfit(box)
	local name = box.options[box.selected];
	if name == nil then return end;

	local desc = MainScreen.instance.desc;
	
	local saved_builds = CharacterCreationMain.readSavedOutfitFile();
	local build = saved_builds[name];
	if build == nil then return end;
	
	desc:getWornItems():clear();


	local items = luautils.split(build, ";");
	for i,v in pairs(items) do
		local location = luautils.split(v, "=");
		local options = nil;
		if location[2] then
			options = luautils.split(location[2], "|");
		end
		if location[1] == "gender" then
			MainScreen.instance.charCreationHeader.genderCombo.selected = tonumber(options[1]);
			MainScreen.instance.charCreationHeader:onGenderSelected(MainScreen.instance.charCreationHeader.genderCombo);
            -- reset all clothing combos
            for comboId, combo in pairs(self.clothingCombo) do
                combo.selected = 1
                self:coach_onClothingComboSelected(self.clothingCombo[comboId]);
            end
			desc:getWornItems():clear();
		elseif location[1] == "skincolor" then
			local color = luautils.split(options[1], ",");
			local colorRGB = {};
			colorRGB.r = tonumber(color[1]);
			colorRGB.g = tonumber(color[2]);
			colorRGB.b = tonumber(color[3]);
			self.colorPickerSkin:setInitialColor(ColorInfo.new(colorRGB.r, colorRGB.g, colorRGB.b, 1.0));
			self:onSkinColorPicked(colorRGB, true);
		elseif location[1] == "name" then
			desc:setForename(options[1]);
			MainScreen.instance.charCreationHeader.forenameEntry:setText(options[1]);
			desc:setSurname(options[2]);
			MainScreen.instance.charCreationHeader.surnameEntry:setText(options[2]);
		elseif location[1] == "hair" then
			local color = luautils.split(options[2], ",");
			local colorRGB = {};
			colorRGB.r = tonumber(color[1]);
			colorRGB.g = tonumber(color[2]);
			colorRGB.b = tonumber(color[3]);
			self:onHairColorPicked(colorRGB, true);
			self.hairTypeCombo.selected = 1;
			self.hairTypeCombo:selectData(options[1]);
			self:onHairTypeSelected(self.hairTypeCombo);
		elseif location[1] == "chesthair" then
			local chestHair = tonumber(options[1]) == 1
			self.chestHairTickBox:setSelected(1, chestHair);
			self:onChestHairSelected(1, chestHair);
		elseif location[1] == "beard" then
			self.beardTypeCombo.selected = 1;
			self.beardTypeCombo:selectData(options and options[1] or "");
			self:onBeardTypeSelected(self.beardTypeCombo);
		else
            -- need to check which combo contains this body location, since my combos can represent multiple locations
            for comboId, combo in pairs(self.clothingCombo) do 
                local found
                for _, bodyLocation in pairs(combo.bodyLocation) do
                    if bodyLocation == location[1] then
                        local itemType = options[1];
                        self.clothingCombo[comboId].selected = 1;
                        for optionIndex, opt in ipairs(self.clothingCombo[comboId].options) do
                            if opt.data.id == itemType then
                                self.clothingCombo[comboId].selected = optionIndex
                                break
                            end
                        end
                        self:coach_onClothingComboSelected(self.clothingCombo[comboId]);
                        local comboDecal = self.clothingDecalCombo[comboId]
                        if options[2] then
                            local comboTexture = self.clothingTextureCombo[comboId]
                            local color = luautils.split(options[2], ",");
                            -- is it a color or a texture choice
                            if (#color == 3) and self.clothingColorBtn[comboId] then -- it's a color
                                local colorRGB = {};
                                colorRGB.r = tonumber(color[1]);
                                colorRGB.g = tonumber(color[2]);
                                colorRGB.b = tonumber(color[3]);
                                self:coach_onClothingColorPicked(colorRGB, true, self.clothingCombo[comboId].bodyLocation, comboId);
                            elseif comboTexture and comboTexture:isVisible() and comboTexture.options[tonumber(color[1])] then -- texture
                                comboTexture.selected = tonumber(color[1]);
                                self:coach_onClothingTextureComboSelected(self.clothingTextureCombo[comboId], self.clothingCombo[comboId].bodyLocation, comboId);
                            elseif comboDecal and comboDecal:isVisible() and comboDecal.options[tonumber(color[1])] then -- decal
                                comboDecal.selected = tonumber(color[1]);
                                self:coach_onClothingDecalComboSelected(self.clothingDecalCombo[comboId], self.clothingCombo[comboId].bodyLocation, comboId);
                            end
                        end
                        if options[3] then -- possible for a color AND decal
                            if comboDecal and comboDecal:isVisible() and comboDecal.options[tonumber(options[3])] then -- decal
                                comboDecal.selected = tonumber(options[3]);
                                self:coach_onClothingDecalComboSelected(self.clothingDecalCombo[comboId], self.clothingCombo[comboId].bodyLocation, comboId);
                            end
                        end
                        found = true
                        break
                    end
                end
                if found then break end
            end
		end
	end
end

function CharacterCreationMain:updateSelectedClothingCombo()
	if CharacterCreationMain.debug then return; end
	local desc = MainScreen.instance.desc;
	if self.clothingCombo then
		for i,combo in pairs(self.clothingCombo) do
			combo.selected = 1;
            self.clothingColorBtn[combo.comboId]:setVisible(false);
            self.clothingTextureCombo[combo.comboId]:setVisible(false);
            local found = false
            for i,bodyLocation in ipairs(combo.bodyLocation) do
                local currentItem = desc:getWornItem(bodyLocation);
                if currentItem then
                    for j,v in ipairs(combo.options) do
                        if v.data.id == currentItem:getFullType() then
                            combo.selected = j;
                            found = true
                            self:updateColorButton(combo.comboId, currentItem);
                            self:updateClothingTextureCombo(combo.comboId, currentItem);
                            self:updateClothingDecalCombo(combo.comboId, currentItem);
                            break
                        end
                    end
                    if found then break end;
                end
            end
            if not found then
                self:updateColorButton(combo.comboId, nil);
                self:updateClothingTextureCombo(combo.comboId, nil);
                self:updateClothingDecalCombo(combo.comboId, nil);
            end

		end
	end
end

function CharacterCreationMain:updateClothingDecalCombo(id, clothing)
    self.clothingDecalCombo[id]:setVisible(false);
	if not clothing then return end
	local clothingItem = clothing:getVisual():getClothingItem()
	if clothingItem and clothingItem:getDecalGroup() then
		local combo = self.clothingDecalCombo[id];
		combo:setVisible(true);
		combo.options = {}
        local items = getAllDecalNamesForItem(clothing)
        for i=1,items:size() do
            combo:addOptionWithData(items:get(i-1), items:get(i-1))
        end
        local decalName = clothing:getVisual():getDecal(clothingItem)
        combo:select(decalName)
	end
end

function CharacterCreationMain:coach_onClothingComboSelected(combo)
    local data = combo:getOptionData(combo.selected)
	local itemType = data.id
    local desc = MainScreen.instance.desc
	if itemType then
		local item = InventoryItemFactory.CreateItem(itemType)
		if item then
			desc:setWornItem(data.bodyGroup, item)
		end
	else
        for i, bodyGroup in ipairs(combo.bodyLocation) do
            desc:setWornItem(bodyGroup, nil)
        end
    end
	self:updateSelectedClothingCombo();
	
	CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

function CharacterCreationMain:coach_onClothingTextureComboSelected(combo, bodyLocations, id)
	local desc = MainScreen.instance.desc
	local textureName = combo:getOptionData(combo.selected)
	for i, bodyGroup in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyGroup)
        if textureName and item and item:getFullType() == self.clothingCombo[id]:getOptionData(self.clothingCombo[id].selected).id then
            if item:getClothingItem():hasModel() then
                item:getVisual():setTextureChoice(combo.selected - 1)
            else
                item:getVisual():setBaseTexture(combo.selected - 1)
            end
            break
        end
    end
	CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

function CharacterCreationMain:coach_onClothingDecalComboSelected(combo, bodyLocations, id)
    local desc = MainScreen.instance.desc
    local decalName = combo:getOptionData(combo.selected)
    for i, bodyGroup in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyGroup)
        if decalName and item and item:getFullType() == self.clothingCombo[id]:getOptionData(self.clothingCombo[id].selected).id then
            item:getVisual():setDecal(decalName)
        end
    end
    CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

function CharacterCreationMain:coach_onClothingColorClicked(button, bodyLocations, id)
	self.colorPicker:setX(self.clothingPanel:getAbsoluteX() + self.clothingPanel:getXScroll() + button:getX() - self.colorPicker:getWidth())
	self.colorPicker:setY(self.clothingPanel:getAbsoluteY() + self.clothingPanel:getYScroll() + button:getY() + button:getHeight())
	self.colorPicker:setPickedFunc(CharacterCreationMain.coach_onClothingColorPicked, bodyLocations, id)
	local color = button.backgroundColor
	self.colorPicker:setInitialColor(ColorInfo.new(color.r, color.g, color.b, 1))
	self:removeChild(self.colorPicker)
	self:addChild(self.colorPicker)
	if self.clothingPanel.joyfocus then
		button:setJoypadFocused(false)
		self.clothingPanel.joyfocus.focus = self.colorPicker
	end
end

function CharacterCreationMain:coach_onClothingColorPicked(color, mouseUp, bodyLocations, id)
	self.clothingColorBtn[id].backgroundColor = { r=color.r, g=color.g, b=color.b, a = 1 }
	local desc = MainScreen.instance.desc
	for i, bodyGroup in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyGroup)
        if item and item:getFullType() == self.clothingCombo[id]:getOptionData(self.clothingCombo[id].selected).id then
            local color2 = ImmutableColor.new(color.r, color.g, color.b, 1)
            item:getVisual():setTint(color2)
            CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
            break
        end
    end
end

function CharacterCreationMain:coach_createClothingCombo(label, id, bodyLocations)
	local comboHgt = FONT_SML + 3 * 2
	local x = 0
	
	if not self.clothingPanel then return; end
	
	local label = ISLabel:new(x + 70 + 70, self.yOffset, comboHgt, label, 1, 1, 1, 1, UIFont.Small)
	label:initialise()
	self.clothingPanel:addChild(label)
	
	local combo = ISComboBox:new(x + 90 + 70, self.yOffset, self.comboWid, comboHgt, self, self.coach_onClothingComboSelected)
    combo.bodyLocation = bodyLocations
    combo.comboId = id
	combo:initialise()
	self.clothingPanel:addChild(combo)
	
	local button = ISButton:new(combo:getRight() + 20, self.yOffset, 45, comboHgt, "", self)
	button:setOnClick(CharacterCreationMain.coach_onClothingColorClicked, bodyLocations, id)
	button.internal = color
	button:initialise()
	button.backgroundColor = {r = 1, g = 1, b = 1, a = 1}
	self.clothingPanel:addChild(button)
	
	local comboTexture = ISComboBox:new(combo:getRight() + 20, self.yOffset, 80, comboHgt, self, self.coach_onClothingTextureComboSelected, bodyLocations, id)
	comboTexture:initialise()
	self.clothingPanel:addChild(comboTexture)

    local comboDecal = ISComboBox:new(comboTexture:getRight() + 20, self.yOffset, self.comboWid, comboHgt, self, self.coach_onClothingDecalComboSelected, bodyLocations, id)
	comboDecal:initialise()
	self.clothingPanel:addChild(comboDecal)
	
	self.clothingCombo = self.clothingCombo or {}
	self.clothingColorBtn = self.clothingColorBtn or {}
    self.clothingDecalCombo = self.clothingDecalCombo or {}
	self.clothingTextureCombo = self.clothingTextureCombo or {}
	self.clothingComboLabel = self.clothingComboLabel or {}
	
	self.clothingCombo[id] = combo
	self.clothingColorBtn[id] = button
	self.clothingTextureCombo[id] = comboTexture
	self.clothingComboLabel[id] = label;
    self.clothingDecalCombo[id] = comboDecal
	
	table.insert(self.clothingWidgets, { combo, button, comboTexture, comboDecal })
	
	self.yOffset = self.yOffset + comboHgt + 4
end

function CharacterCreationMain:coach_doClothingCombo()
	if not self.clothingPanel then return; end
	
	-- reinit all combos
    if self.clothingCombo then
        for i,v in pairs(self.clothingCombo) do
            self.clothingPanel:removeChild(self.clothingColorBtn[v.comboId]);
            self.clothingPanel:removeChild(self.clothingTextureCombo[v.comboId]);
            self.clothingPanel:removeChild(self.clothingComboLabel[v.comboId]);
            self.clothingPanel:removeChild(self.clothingDecalCombo[v.comboId]);
            self.clothingPanel:removeChild(v);
        end
    end
    self.clothingCombo = {};
    self.clothingColorBtn = {};
    self.clothingTextureCombo = {};
    self.clothingComboLabel = {};
    self.clothingDecalCombo = {}
    self.yOffset = self.originalYOffset;

    -- create new combos
    for id, groupDefinition in pairs(CoachClothingGroups) do 
        local combo = nil

        -- ensure each group is valid
        local validGroups = {}
        for i, bodyGroup in ipairs(groupDefinition.groups) do
            local items = getAllItemsForBodyLocation(bodyGroup)
            if (items and #items > 0) then
                table.insert(validGroups, bodyGroup)
            end
        end

        if (#validGroups > 0) then
            -- get / create combo
            if self.clothingCombo then
                combo = self.clothingCombo[id]
            end
            if not combo then 
                local displayName = id
                if groupDefinition.displayName then displayName = groupDefinition.displayName end
                self:coach_createClothingCombo(displayName, id, validGroups)
                combo = self.clothingCombo[id]
                combo:addOptionWithData(getText("UI_characreation_clothing_none"), {id = nil})
            end
            
            -- Get all items from all groups included in this groupDefinition
            local allClothingFromAllGroups = {}
            for i, bodyGroup in ipairs(validGroups) do
                local items = getAllItemsForBodyLocation(bodyGroup)
                for j, clothing in ipairs(items) do
                    local item = ScriptManager.instance:FindItem(clothing)
                    local displayName = item:getDisplayName()
                    -- ensure items matching the excluded keywords are excluded
                    if not (groupDefinition.excludedKeywords and coach_findStringInTable(groupDefinition.excludedKeywords, displayName)) then 
                        -- add to the list of clothing
                        table.insert(allClothingFromAllGroups, {id = clothing, name = item:getDisplayName(), bodyGroup = bodyGroup})
                    end
                end
            end

            -- Sort items alphabetically by display name
            table.sort(allClothingFromAllGroups, function(a,b)
                return a.name:upper() < b.name:upper()
            end)

            -- add options to combo
            for i,clothing in ipairs(allClothingFromAllGroups) do
                combo:addOptionWithData(clothing.name, {id = clothing.id, bodyGroup = clothing.bodyGroup})
            end
        end
    end
	
	self:updateSelectedClothingCombo();
	
	self.clothingPanel:setScrollChildren(true)
	self.clothingPanel:setScrollHeight(self.yOffset)
	self.clothingPanel:addScrollBars()
	
	self.colorPicker = ISColorPicker:new(0, 0, {h=1,s=0.6,b=0.9});
	self.colorPicker:initialise()
	self.colorPicker.keepOnScreen = true
	self.colorPicker.pickedTarget = self
	self.colorPicker.resetFocusTo = self.clothingPanel
end

function CharacterCreationMain:initClothing()
    if getDebug() then
		self:debugClothingDefinitions()
	end
    -- if not self.clothingPanel then
    --     return;
    -- end
	self.clothingWidgets = {}
    self:coach_doClothingCombo()
end