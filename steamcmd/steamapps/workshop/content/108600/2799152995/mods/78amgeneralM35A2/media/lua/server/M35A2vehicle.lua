--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

M35A2 = {
	parts = {
		Bumper = {
			M35A2Bumper = {
				M35Bumper1 = "M35A2Bumper1_Item",
			},
			default = "first",
		},
		Grille = {
			M35A2Grille = {
				M35Grille1 = "M35A2Grille1_Item",
			},
			default = "first",
		},
		SpareTire = {
			M35A2SpareTire = {
				M35SpareTire1 = "V103Tire2",
			},
			default = "trve_random",
			noPartChance = 25,
		},
		CabCover = {
			M35A2CabCovers = {
				M35HardCover1 = "M35A2HardCover1_Item",
				M35SoftCover2 = "M35A2SoftCover2_Item",
			},
			default = "trve_random",
			noPartChance = 33,
		},
		Tarp = {
			M35A2Tarp = {
				M35Tarp1 = "M35A2Tarp1_Item",
				M35Tarp2 = "M35A2Tarp2_Item",
				M35Tarp3 = "M35A2Tarp3_Item",
			},
			default = "trve_random",
			noPartChance = 33,
		},
		WindshieldArmor = {
			M35A2WindshieldArmor = {
				M35WindshieldArmor1 = "M35A2WindshieldArmor1_Item",
			},
		},
		DoorLeftArmor = {
			M35A2DoorLeftArmor = {
				M35DoorLeftArmor1 = "M35A2DoorArmor1_Item",
			},
		},
		DoorRightArmor = {
			M35A2DoorRightArmor = {
				M35DoorRightArmor1 = "M35A2DoorArmor1_Item",
			},
		},
		Mudflaps = {
			M35A2Mudflaps = {
				M35Mudflaps1 = "M35A2Mudflaps1_Item",
			},
			default = "trve_random",
			noPartChance = 25,
		},
		Muffler = {
			M35A2Muffler = {
				M35Muffler1 = "M35A2Muffler1_Item",
			},
			default = "first",
		},
	},
};

KI5:createVehicleConfig(M35A2);