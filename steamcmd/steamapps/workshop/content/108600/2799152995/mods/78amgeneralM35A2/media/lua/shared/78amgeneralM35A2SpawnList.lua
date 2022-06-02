if VehicleZoneDistribution then

VehicleZoneDistribution.parkingstall.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trailerpark.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trailerpark.vehicles["Base.78amgeneralM35A2Burnt"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.bad.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.78amgeneralM35A2Burnt"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.78amgeneralM35A2Burnt"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.ranger.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 1};

-- Trafficjam spawns --

VehicleZoneDistribution.trafficjams.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjams.vehicles["Base.78amgeneralM35A2Burnt"] = {index = -1, spawnChance = 2};

-- Military spawn --

VehicleZoneDistribution.military = VehicleZoneDistribution.military or {}
VehicleZoneDistribution.military.vehicles = VehicleZoneDistribution.military.vehicles or {}

VehicleZoneDistribution.military.vehicles["Base.78amgeneralM35A2"] = {index = -1, spawnChance = 22};

VehicleZoneDistribution.military.vehicles["Base.78amgeneralM35A2Burnt"] = {index = -1, spawnChance = 11};

end