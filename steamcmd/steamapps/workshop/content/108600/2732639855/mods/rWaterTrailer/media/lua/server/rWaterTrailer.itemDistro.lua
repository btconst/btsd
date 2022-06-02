require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

-- Water Filter
table.insert(ProceduralDistributions.list["GarageMechanics"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["GarageMechanics"].items, 1);
table.insert(ProceduralDistributions.list["CrateMechanics"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["CrateMechanics"].items, 0.8);
table.insert(ProceduralDistributions.list["CrateTools"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["CrateTools"].items, 0.6);
table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, 1);
table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, 0.85);
table.insert(ProceduralDistributions.list["GarageTools"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["GarageTools"].items, 0.5);
table.insert(ProceduralDistributions.list["JanitorMisc"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.75);
table.insert(ProceduralDistributions.list["GigamartTools"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["GigamartTools"].items, 5);
table.insert(ProceduralDistributions.list["CampingStoreGear"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["CampingStoreGear"].items, 3);
table.insert(ProceduralDistributions.list["ArmySurplusMisc"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["ArmySurplusMisc"].items, 2);
table.insert(ProceduralDistributions.list["ArmySurplusTools"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["ArmySurplusTools"].items, 0.5);

table.insert(ProceduralDistributions.list["CrateFarming"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["CrateFarming"].items, 0.5);
table.insert(ProceduralDistributions.list["GigamartFarming"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(ProceduralDistributions.list["GigamartFarming"].items, 1);


table.insert(VehicleDistributions["SurvivalistTruckBed"].items, "Rotators.WaterTrailerTankFilter2");
table.insert(VehicleDistributions["SurvivalistTruckBed"].items, 4);	

-- Water Purification tablets mod installed?
if ActiveMods.getById("currentGame"):isModActive("Water Purification Tablets") then
   if VehicleDistributions.TrailerWaterSmallTrunk then
      table.insert(VehicleDistributions["TrailerWaterSmallTrunk"].items, "WaterPurificationTablets");
      table.insert(VehicleDistributions["TrailerWaterSmallTrunk"].items, 1);
   end
end