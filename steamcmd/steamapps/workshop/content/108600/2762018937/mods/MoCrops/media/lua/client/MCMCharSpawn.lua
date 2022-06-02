local MOD_ID = "MCM";
local MOD_NAME= "'Mo Crops";
local MOD_VERSION = "1.0";
local MOD_AUTHOR = "BlueFoot";
local MOD_DESCRIPTION = "Ever wonder why you can't get seeds for other food items such as Eggplants and Lettuce in the game? Well this fixes that.";
local debugItems = FALSE;

local function info()
    print("Mod Loaded: " .. MOD_NAME .. " By: " .. MOD_AUTHOR .. " (v" .. MOD_VERSION .. ")");
end

local function giveItems()
    if debugItems then
        local player = getSpecificPlayer(0);
        player:getInventory():AddItem("MCM.PepperBagSeed");
    end
end

Events.OnGameBoot.Add(info);
Events.OnGameStart.Add(giveItems);