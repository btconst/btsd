--
--Thanks to MisterInSayne for the original context menu code used here.
--

require "Farming/ISUI/ISFarmingMenu"

LettuceMenu = {};

--Make  list with your own crop types only
LettuceMenu.haveSeed = function(player)
	local newseedsList = {};
	newseedsList.lettuceSeed = {};
	
	-- we gonna test if we can seed the plowed land
	for i = 0, player:getInventory():getItems():size() - 1 do
		local item = player:getInventory():getItems():get(i);
		if item:getType() == "LettuceSeed" or item:getType() == "LettuceSeed50" then
			table.insert(newseedsList.lettuceSeed, item);
		end

	end

		return newseedsList;
end

LettuceMenu.doLettuceMenu = function(player, context, worldobjects, test)

    	local sq = nil;

	--Joypad hack
	if JoypadState.players[player+1] then
		for i,v in ipairs(worldobjects) do
			local plant = CFarmingSystem.instance:getLuaObjectOnSquare(v:getSquare())
			if plant then
				if test then return ISWorldObjectContextMenu.setTest() end
				context:addOption(getText("ContextMenu_Farming"), plant:getSquare(), ISFarmingMenu.onJoypadFarming, player)
				return
			end
		end
		return
	end


    	local player = getSpecificPlayer(player);
	local currentPlant = nil;
	for i,v in ipairs(worldobjects) do
		local plant = CFarmingSystem.instance:getLuaObjectOnSquare(v:getSquare())
		if plant then
			currentPlant = plant
			sq = v:getSquare();
			break
		end
	end

	if test and ISWorldObjectContextMenu.Test then return true end

	--What you use to add to the existing farm submenu in your own script:
	local subMenu = nil;
	local farmOption = nil;
	for i,v in ipairs(context.options) do
		if v.name == getText("ContextMenu_Sow_Seed") then
			farmOption = v;
			subMenu = context:getSubMenu(farmOption.subOption);
		end
	end


	if subMenu then
    		local newseedsList = LettuceMenu.haveSeed(player);

		context:addSubMenu(farmOption, subMenu);
		--Now you can add your stuff to the farm menu.
		local lettuceOption = subMenu:addOption(getText("Farming_Lettuce"), worldobjects, ISFarmingMenu.onSeed, newseedsList.lettuceSeed, farming_vegetableconf.props["Lettuce"].seedsRequired, "Lettuce", currentPlant, sq, player);
		ISFarmingMenu.canPlow(#newseedsList.lettuceSeed, "Lettuce", lettuceOption);
	end
end

if getCore():getVersionNumber() == "41.50 - IWBUMS" then
	Events.OnFillWorldObjectContextMenu.Add(LettuceMenu.doLettuceMenu);
end