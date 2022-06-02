require "VehicleZoneDefinition"

-- Parking Stalls --
VehicleZoneDistribution.parkingstall.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 0.5};

-- Trailer Parks --
VehicleZoneDistribution.trailerpark.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trailerpark.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 1};

-- Junk spawns --
VehicleZoneDistribution.junkyard.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.junkyard.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 2};

-- Traffic Jams --
VehicleZoneDistribution.trafficjamw.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 0};
VehicleZoneDistribution.trafficjamw.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 0};

VehicleZoneDistribution.trafficjame.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjamn.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 0};
VehicleZoneDistribution.trafficjamn.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjams.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 1};

-- Farm --
VehicleZoneDistribution.farm = VehicleZoneDistribution.farm or {}
VehicleZoneDistribution.farm.vehicles = VehicleZoneDistribution.farm.vehicles or {}

VehicleZoneDistribution.farm.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.farm.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 20};

-- Military --
VehicleZoneDistribution.military = VehicleZoneDistribution.military or {}
VehicleZoneDistribution.military.vehicles = VehicleZoneDistribution.military.vehicles or {}

VehicleZoneDistribution.military.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.military.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 20};

-- Fire --
VehicleZoneDistribution.fire.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.fire.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 2};

-- McCoy --
VehicleZoneDistribution.mccoy.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.mccoy.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 1};

-- Fossoil --
VehicleZoneDistribution.fossoil.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.fossoil.vehicles["Rotators.TrailerWaterBig"] = {index = -1, spawnChance = 2};

-- Ranger --
VehicleZoneDistribution.ranger.vehicles["Rotators.TrailerWaterSmall"] = {index = -1, spawnChance = 1};
