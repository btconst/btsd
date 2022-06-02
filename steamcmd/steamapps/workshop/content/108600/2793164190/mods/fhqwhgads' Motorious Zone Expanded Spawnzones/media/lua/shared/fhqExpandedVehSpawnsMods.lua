if getActivatedMods():contains("KVsNearlyNew") and VehicleZoneDistribution then

--------------------------------New spawn zones--------------------------------

---Collectors: Rare spawn zones with a high chance for rare cars. Cars here should be exotics, and especially rare vintage cars. High end cars can also be included, but at a lower spawn rate than exotics---

VehicleZoneDistribution.collectors.vehicles["Base.30president"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.collectors.vehicles["Base.amphicar"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.collectors.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 20};

---Barn Find: Rare spawn zone usually near barns. Prioritize classics, especially rare ones, here. Cars in this list will almost be wrecked and may be undrivable, requiring towing. High key chance ---

VehicleZoneDistribution.barnfind.vehicles["Base.30president"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.barnfind.vehicles["Base.amphicar"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.barnfind.vehicles["Base.fiat500"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.barnfind.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 20};

---Expo Car Show: These zones will be near expo centers, or other places where there may be large car shows. Here you will find exotics, race cars, and vintage classics---

VehicleZoneDistribution.expocarshow.vehicles["Base.30president"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.amphicar"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.expocarshow.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 10};

---Special Dealer: Specialty car dealer zone. This should contain exotics and imports mostly, as well as restored classics. Possibility for a race/concept car as a display car. HIgher condition and key chance ---

VehicleZoneDistribution.specialdealer.vehicles["Base.30president"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.specialdealer.vehicles["Base.amphicar"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.specialdealer.vehicles["Base.fiat500"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 10};

---Amateur Mechanic: Amateur mechanic style house. Should contain special custom variants of vehicles, as well as a lower chance for their stock counterparts. Could also contain restored classics---

VehicleZoneDistribution.amateurmechanic.vehicles["Base.30president"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 15};

---Import: Cars unavailable in the US, but available elsewhere. Near shipping areas, such as docks, railyards, and airports.---

VehicleZoneDistribution.import.vehicles["Base.amphicar"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fiat500"] = {index = -1, spawnChance = 40};

---Used Dealer: Zone for used car dealers. Should contain older cars, but newer cars can also be included as well. Higher key chance, lower condition.---

VehicleZoneDistribution.useddealer.vehicles["Base.fiat500"] = {index = -1, spawnChance = 5};

---Racing: Race cars and other track-based vehicles should go here.---

VehicleZoneDistribution.racing.vehicles["Base.30hotrod"] = {index = -1, spawnChance = 10};


end

if getActivatedMods():contains("FRUsedCars") and VehicleZoneDistribution then

VehicleZoneDistribution.collectors = VehicleZoneDistribution.collectors or {};
VehicleZoneDistribution.collectors.vehicles = VehicleZoneDistribution.collectors.vehicles or {};

VehicleZoneDistribution.collectors.vehicles["Base.79datsun280z"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.collectors.vehicles["Base.77transam"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.collectors.vehicles["Base.69chargerdaytona"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.barnfind = VehicleZoneDistribution.barnfind or {};
VehicleZoneDistribution.barnfind.vehicles = VehicleZoneDistribution.barnfind.vehicles or {};

VehicleZoneDistribution.barnfind.vehicles["Base.51chevy3100old"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.64mustang"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.69charger"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.65gto"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.69chargerdaytona"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.expocarshow = VehicleZoneDistribution.expocarshow or {};
VehicleZoneDistribution.expocarshow.vehicles = VehicleZoneDistribution.expocarshow.vehicles or {};


VehicleZoneDistribution.expocarshow.vehicles["Base.generallee"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.expocarshow.vehicles["Base.pursuitspecial"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.92wranglerjurassic"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.93explorerjurassic"] = {index = -1, spawnChance = 10};


VehicleZoneDistribution.specialdealer = VehicleZoneDistribution.specialdealer or {};
VehicleZoneDistribution.specialdealer.vehicles = VehicleZoneDistribution.specialdealer.vehicles or {};

VehicleZoneDistribution.specialdealer.vehicles["Base.pursuitspecial"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.specialdealer.vehicles["Base.73falcon"] = {index = -1, spawnChance = 35};


VehicleZoneDistribution.newdealer = VehicleZoneDistribution.newdealer or {};
VehicleZoneDistribution.newdealer.vehicles = VehicleZoneDistribution.newdealer.vehicles or {};

VehicleZoneDistribution.newdealer.vehicles["Base.90corolla"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.newdealer.vehicles["Base.91celica"] = {index = -1, spawnChance = 17};
VehicleZoneDistribution.newdealer.vehicles["Base.91wagoneer"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.92crownvic"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.92wrangler"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.93explorer"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.93jeepcherokee"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.91chevys10"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.91chevys10ext"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.91crx"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.astrovan"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.90ramlb"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.90ramsb"] = {index = -1, spawnChance = 20};


VehicleZoneDistribution.amateurmechanic = VehicleZoneDistribution.amateurmechanic or {};
VehicleZoneDistribution.amateurmechanic.vehicles = VehicleZoneDistribution.amateurmechanic.vehicles or {};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.pursuitspecial"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.73falcon"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.69chargerdaytona"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.51chevy3100"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.51chevy3100old"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.64mustang"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.65gto"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.import = VehicleZoneDistribution.import or {};
VehicleZoneDistribution.import.vehicles = VehicleZoneDistribution.import.vehicles or {};

VehicleZoneDistribution.import.vehicles["Base.73falcon"] = {index = -1, spawnChance = 35};


VehicleZoneDistribution.useddealer = VehicleZoneDistribution.useddealer or {};
VehicleZoneDistribution.useddealer.vehicles = VehicleZoneDistribution.useddealer.vehicles or {};

VehicleZoneDistribution.useddealer.vehicles["Base.65gto"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.useddealer.vehicles["Base.77transam"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.69charger"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.useddealer.vehicles["Base.64mustang"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.useddealer.vehicles["Base.79brougham"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.useddealer.vehicles["Base.73pinto"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.useddealer.vehicles["Base.72beetle"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.71impala"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.70chevelle"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.70elcamino"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.68wildcat"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.68wildcatconvert"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.68elcamino"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.80f350"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.83hilux"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.85vicsed"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.useddealer.vehicles["Base.85vicwag"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.useddealer.vehicles["Base.85vicwag2"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.useddealer.vehicles["Base.86econoline"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.86yugo"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.87blazer"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.87c10lb"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.87c10sb"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.87caprice"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.useddealer.vehicles["Base.87suburban"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.90corolla"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.90ramlb"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.90ramsb"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.astrovan"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.volvo244"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.useddealer.vehicles["Base.91crx"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.92crownvic"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.71chevyc10stepside"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.71chevyc10lb"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.71chevyc10sb"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.91chevys10"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.91chevys10ext"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.86montecarlo"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.useddealer.vehicles["Base.91wagoneer"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.86econolinerv"] = {index = -1, spawnChance = 10};


VehicleZoneDistribution.utility = VehicleZoneDistribution.utility or {};
VehicleZoneDistribution.utility.vehicles = VehicleZoneDistribution.utility.vehicles or {};

VehicleZoneDistribution.utility.vehicles["Base.87c10lb"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.87c10sb"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.utility.vehicles["Base.90ramlb"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.90ramsb"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.utility.vehicles["Base.91chevys10"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.utility.vehicles["Base.91chevys10ext"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.80f350"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.80f350quad"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.83hilux"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.utility.vehicles["Base.51chevy3100"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.51chevy3100old"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.70elcamino"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.utility.vehicles["Base.86econoline"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.utility.vehicles["Base.86econolineflorist"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.utility.vehicles["Base.f700propane"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.utility.vehicles["Base.moveurself"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.Trailermovingmedium"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.Trailermovingbig"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.Trailer51chevy"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.Trailerfuelmedium"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.Trailerfuelsmall"] = {index = -1, spawnChance = 5};


VehicleZoneDistribution.commercial = VehicleZoneDistribution.commercial or {};
VehicleZoneDistribution.commercial.vehicles = VehicleZoneDistribution.commercial.vehicles or {};

VehicleZoneDistribution.commercial.vehicles["Base.isuzubox"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.commercial.vehicles["Base.isuzuboxfood"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.commercial.vehicles["Base.isuzuboxmccoy"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.commercial.vehicles["Base.86econoline"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.commercial.vehicles["Base.chevystepvan"] = {index = -1, spawnChance = 20};


VehicleZoneDistribution.commerciallarge = VehicleZoneDistribution.commerciallarge or {};
VehicleZoneDistribution.commerciallarge.vehicles = VehicleZoneDistribution.commerciallarge.vehicles or {};

VehicleZoneDistribution.commerciallarge.vehicles["Base.isuzubox"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.commerciallarge.vehicles["Base.f700box"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.commerciallarge.vehicles["Base.chevystepvan"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.commerciallarge.vehicles["Base.f700flatbed"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.commerciallarge.vehicles["Base.isuzuboxmccoy"] = {index = -1, spawnChance = 15};


VehicleZoneDistribution.trailerutility = VehicleZoneDistribution.trailerutility or {};
VehicleZoneDistribution.trailerutility.vehicles = VehicleZoneDistribution.trailerutility.vehicles or {};

VehicleZoneDistribution.trailerutility.vehicles["Base.Trailermovingmedium"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.trailerutility.vehicles["Base.Trailermovingbig"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trailerutility.vehicles["Base.Trailerfuelsmall"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trailerutility.vehicles["Base.Trailer51chevy"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.trailerutility.vehicles["Base.Trailercamperscamp"] = {index = -1, spawnChance = 7};


VehicleZoneDistribution.racing = VehicleZoneDistribution.racing or {};
VehicleZoneDistribution.racing.vehicles = VehicleZoneDistribution.racing.vehicles or {};

VehicleZoneDistribution.racing.vehicles["Base.69chargerdaytona"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.policelarge = VehicleZoneDistribution.policelarge or {};
VehicleZoneDistribution.policelarge.vehicles = VehicleZoneDistribution.policelarge.vehicles or {};

VehicleZoneDistribution.policelarge.vehicles["Base.chevystepvanswat"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.policeonly.vehicles["Base.85vicsheriff"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.policeonly.vehicles["Base.87capricePD"] = {index = -1, spawnChance = 40};
VehicleZoneDistribution.policeonly.vehicles["Base.91blazerpd"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.policeonly.vehicles["Base.92crownvicPD"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.policeonly.vehicles["Base.chevystepvanswat"] = {index = -1, spawnChance = 5};



end