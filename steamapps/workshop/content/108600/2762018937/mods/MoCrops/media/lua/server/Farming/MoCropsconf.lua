require "Farming/farming_vegetableconf"

MoCropsconf = {};

-- Pepper
-- Need 6 seeds
-- Water lvl over 65
-- Need 4 weeks to grow (112h per phase)
MoCropsconf.growNewCrop = function(planting, nextGrowing, updateNbOfGrow)
	local nbOfGrow = planting.nbOfGrow;

	local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
	local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
	if(nbOfGrow <= 0) then -- young
		nbOfGrow = 0;
		planting.nbOfGrow = 0;

		planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);

		planting.waterNeeded = 60;
	elseif (nbOfGrow <= 4) then -- young
		if(water >= 0 and diseaseLvl >= 0) then

			planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);

			planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (nbOfGrow == 5) then -- mature
		if(water >= 0 and diseaseLvl >= 0) then
			planting.nextGrowing = calcNextGrowing(nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting:setObjectName(farming_vegetableconf.getObjectName(planting))
			planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
			planting.hasVegetable = true;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (nbOfGrow == 6) then -- mature with seed
		if(water >= 0 and diseaseLvl >= 0) then
			planting.nextGrowing = calcNextGrowing(nextGrowing, 168);
			planting:setObjectName(farming_vegetableconf.getObjectName(planting))
			planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
			planting.hasVegetable = true;
			planting.hasSeed = true;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (planting.state ~= "rotten") then -- rotten
		planting:rottenThis()
	end
	return planting;
end



--Icons
farming_vegetableconf.icons["Avocado"] = "media/textures/vegIcon/item_Avocado.png";
farming_vegetableconf.icons["Pepper"] = "media/textures/vegIcon/item_BellPepper.png";
farming_vegetableconf.icons["Corn"] = "media/textures/vegIcon/item_Corn.png";
farming_vegetableconf.icons["Eggplant"] = "media/textures/vegIcon/item_Eggplant.png";
farming_vegetableconf.icons["Leek"] = "media/textures/vegIcon/item_Leek.png";
farming_vegetableconf.icons["Lettuce"] = "media/textures/vegIcon/item_Lettuce.png";
farming_vegetableconf.icons["Onion"] = "media/textures/vegIcon/item_Onion.png";
farming_vegetableconf.icons["Watermelon"] = "media/textures/vegIcon/item_Watermelon.png";
farming_vegetableconf.icons["Zucchini"] = "media/textures/vegIcon/item_Zucchini.png";

-- Avocado
farming_vegetableconf.props["Avocado"] = {};
farming_vegetableconf.props["Avocado"].seedsRequired = 4;
farming_vegetableconf.props["Avocado"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["Avocado"].waterLvl = 75;
farming_vegetableconf.props["Avocado"].timeToGrow = ZombRand(56, 62); -- 56, 62
farming_vegetableconf.props["Avocado"].vegetableName = "Base.Avocado";
farming_vegetableconf.props["Avocado"].seedName = "MCM.Avocadoseed";
farming_vegetableconf.props["Avocado"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Avocado"].seedPerVeg = 2;
farming_vegetableconf.props["Avocado"].minVeg = 4;
farming_vegetableconf.props["Avocado"].maxVeg = 5;
farming_vegetableconf.props["Avocado"].minVegAutorized = 6;
farming_vegetableconf.props["Avocado"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Avocado"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}

-- Pepper
farming_vegetableconf.props["Pepper"] = {};
farming_vegetableconf.props["Pepper"].seedsRequired = 4;
farming_vegetableconf.props["Pepper"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["Pepper"].waterLvl = 75;
farming_vegetableconf.props["Pepper"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Pepper"].vegetableName = "Base.BellPepper";
farming_vegetableconf.props["Pepper"].seedName = "MCM.Pepperseed";
farming_vegetableconf.props["Pepper"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Pepper"].seedPerVeg = 2;
farming_vegetableconf.props["Pepper"].minVeg = 4;
farming_vegetableconf.props["Pepper"].maxVeg = 5;
farming_vegetableconf.props["Pepper"].minVegAutorized = 6;
farming_vegetableconf.props["Pepper"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Pepper"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}

-- Corn
farming_vegetableconf.props["Corn"] = {};
farming_vegetableconf.props["Corn"].seedsRequired = 5;
farming_vegetableconf.props["Corn"].texture = "vegetation_farming_01_78";
farming_vegetableconf.props["Corn"].waterLvl = 75;
farming_vegetableconf.props["Corn"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Corn"].vegetableName = "Base.Corn";
farming_vegetableconf.props["Corn"].seedName = "MCM.Cornseed";
farming_vegetableconf.props["Corn"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Corn"].seedPerVeg = 3;
farming_vegetableconf.props["Corn"].minVeg = 4;
farming_vegetableconf.props["Corn"].maxVeg = 5;
farming_vegetableconf.props["Corn"].minVegAutorized = 6;
farming_vegetableconf.props["Corn"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Corn"] = {
	"vegetation_farming_01_72",
	"vegetation_farming_01_73",
	"vegetation_farming_01_74",
	"vegetation_farming_01_75",
	"vegetation_farming_01_76",
	"vegetation_farming_01_77",
	"vegetation_farming_01_78",
	"vegetation_farming_01_79"
}

-- Eggplant
farming_vegetableconf.props["Eggplant"] = {};
farming_vegetableconf.props["Eggplant"].seedsRequired = 4;
farming_vegetableconf.props["Eggplant"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["Eggplant"].waterLvl = 75;
farming_vegetableconf.props["Eggplant"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Eggplant"].vegetableName = "Base.Eggplant";
farming_vegetableconf.props["Eggplant"].seedName = "MCM.Eggplantseed";
farming_vegetableconf.props["Eggplant"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Eggplant"].seedPerVeg = 2;
farming_vegetableconf.props["Eggplant"].minVeg = 4;
farming_vegetableconf.props["Eggplant"].maxVeg = 5;
farming_vegetableconf.props["Eggplant"].minVegAutorized = 6;
farming_vegetableconf.props["Eggplant"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Eggplant"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}

-- Leek
farming_vegetableconf.props["Leek"] = {};
farming_vegetableconf.props["Leek"].seedsRequired = 4;
farming_vegetableconf.props["Leek"].texture = "vegetation_farming_01_47";
farming_vegetableconf.props["Leek"].waterLvl = 65;
farming_vegetableconf.props["Leek"].timeToGrow = ZombRand(35, 45); --89, 103
farming_vegetableconf.props["Leek"].vegetableName = "Base.Leek";
farming_vegetableconf.props["Leek"].seedName = "MCM.Leekseed";
farming_vegetableconf.props["Leek"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Leek"].seedPerVeg = 2;
farming_vegetableconf.props["Leek"].minVeg = 3;
farming_vegetableconf.props["Leek"].maxVeg = 4;
farming_vegetableconf.props["Leek"].minVegAutorized = 5;
farming_vegetableconf.props["Leek"].maxVegAutorized = 9;

farming_vegetableconf.sprite["Leek"] = {
	"vegetation_farming_01_40",
	"vegetation_farming_01_41",
	"vegetation_farming_01_42",
	"vegetation_farming_01_43",
	"vegetation_farming_01_44",
	"vegetation_farming_01_46",
	"vegetation_farming_01_45",
	"vegetation_farming_01_47"
}

-- Lettuce
farming_vegetableconf.props["Lettuce"] = {};
farming_vegetableconf.props["Lettuce"].seedsRequired = 9;
farming_vegetableconf.props["Lettuce"].texture = "vegetation_farming_01_23";
farming_vegetableconf.props["Lettuce"].waterLvl = 65;
farming_vegetableconf.props["Lettuce"].timeToGrow = ZombRand(45, 50); --45, 50
farming_vegetableconf.props["Lettuce"].vegetableName = "Base.Lettuce";
farming_vegetableconf.props["Lettuce"].seedName = "MCM.Lettuceseed";
farming_vegetableconf.props["Lettuce"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Lettuce"].seedPerVeg = 3;
farming_vegetableconf.props["Lettuce"].minVeg = 4;
farming_vegetableconf.props["Lettuce"].maxVeg = 6;
farming_vegetableconf.props["Lettuce"].minVegAutorized = 9;
farming_vegetableconf.props["Lettuce"].maxVegAutorized = 11;

farming_vegetableconf.sprite["Lettuce"] = {
	"vegetation_farming_01_16",
	"vegetation_farming_01_17",
	"vegetation_farming_01_18",
	"vegetation_farming_01_19",
	"vegetation_farming_01_20",
	"vegetation_farming_01_21",
	"vegetation_farming_01_22",
	"vegetation_farming_01_23"
}

-- Onion
farming_vegetableconf.props["Onion"] = {};
farming_vegetableconf.props["Onion"].seedsRequired = 4;
farming_vegetableconf.props["Onion"].texture = "vegetation_farming_01_47";
farming_vegetableconf.props["Onion"].waterLvl = 65;
farming_vegetableconf.props["Onion"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Onion"].vegetableName = "Base.Onion";
farming_vegetableconf.props["Onion"].seedName = "MCM.Onionseed";
farming_vegetableconf.props["Onion"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Onion"].seedPerVeg = 2;
farming_vegetableconf.props["Onion"].minVeg = 3;
farming_vegetableconf.props["Onion"].maxVeg = 4;
farming_vegetableconf.props["Onion"].minVegAutorized = 5;
farming_vegetableconf.props["Onion"].maxVegAutorized = 9;

farming_vegetableconf.sprite["Onion"] = {
	"vegetation_farming_01_40",
	"vegetation_farming_01_41",
	"vegetation_farming_01_42",
	"vegetation_farming_01_43",
	"vegetation_farming_01_44",
	"vegetation_farming_01_46",
	"vegetation_farming_01_45",
	"vegetation_farming_01_47"
}

-- Watermelon
farming_vegetableconf.props["Watermelon"] = {};
farming_vegetableconf.props["Watermelon"].seedsRequired = 9;
farming_vegetableconf.props["Watermelon"].texture = "vegetation_farming_01_23";
farming_vegetableconf.props["Watermelon"].waterLvl = 85;
farming_vegetableconf.props["Watermelon"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Watermelon"].vegetableName = "Base.Watermelon";
farming_vegetableconf.props["Watermelon"].seedName = "MCM.Watermelonseed";
farming_vegetableconf.props["Watermelon"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Watermelon"].seedPerVeg = 3;
farming_vegetableconf.props["Watermelon"].minVeg = 4;
farming_vegetableconf.props["Watermelon"].maxVeg = 6;
farming_vegetableconf.props["Watermelon"].minVegAutorized = 9;
farming_vegetableconf.props["Watermelon"].maxVegAutorized = 11;

farming_vegetableconf.sprite["Watermelon"] = {
	"vegetation_farming_01_16",
	"vegetation_farming_01_17",
	"vegetation_farming_01_18",
	"vegetation_farming_01_19",
	"vegetation_farming_01_20",
	"vegetation_farming_01_21",
	"vegetation_farming_01_22",
	"vegetation_farming_01_23"
}

-- Zucchini
farming_vegetableconf.props["Zucchini"] = {};
farming_vegetableconf.props["Zucchini"].seedsRequired = 6;
farming_vegetableconf.props["Zucchini"].texture = "vegetation_farming_01_63";
farming_vegetableconf.props["Zucchini"].waterLvl = 85;
farming_vegetableconf.props["Zucchini"].timeToGrow = ZombRand(103, 131); --103, 131
farming_vegetableconf.props["Zucchini"].vegetableName = "Base.Zucchini";
farming_vegetableconf.props["Zucchini"].seedName = "MCM.Zucchiniseed";
farming_vegetableconf.props["Zucchini"].growCode = "MoCropsconf.growNewCrop";
farming_vegetableconf.props["Zucchini"].seedPerVeg = 4;
farming_vegetableconf.props["Zucchini"].minVeg = 4;
farming_vegetableconf.props["Zucchini"].maxVeg = 6;
farming_vegetableconf.props["Zucchini"].minVegAutorized = 8;
farming_vegetableconf.props["Zucchini"].maxVegAutorized = 14;

farming_vegetableconf.sprite["Zucchini"] = {
	"vegetation_farming_01_56",
	"vegetation_farming_01_57",
	"vegetation_farming_01_58",
	"vegetation_farming_01_59",
	"vegetation_farming_01_60",
	"vegetation_farming_01_61",
	"vegetation_farming_01_62",
	"vegetation_farming_01_63"
}

if ProceduralDistributions then
	farming_vegetableconf.props["Avocado"].waterLvlMax = 100;
	farming_vegetableconf.props["Pepper"].waterLvlMax = 100;
	farming_vegetableconf.props["Corn"].waterLvlMax = 100;
	farming_vegetableconf.props["Eggplant"].waterLvlMax = 100;
	farming_vegetableconf.props["Leek"].waterLvlMax = 100;
	farming_vegetableconf.props["Lettuce"].waterLvlMax = 100;
	farming_vegetableconf.props["Onion"].waterLvlMax = 100;
	farming_vegetableconf.props["Zucchini"].waterLvlMax = 100;
end