require 'Items/ProceduralDistributions'

local function preDistributionMerge()
    ProceduralDistributions.list.CostumeStoreHatsAZ = {
        rolls = 2,
        items = {
--Hats		
            "AuthenticZLite.AuthenticHairHeadband", 5,
            "AuthenticZLite.Hat_BaseballCapClementine", 5,
            "AuthenticZLite.Hat_BaseballCapEllis", 5,
            "AuthenticZLite.Hat_BaseballCapPrinceBelAir", 5,
            "AuthenticZLite.Hat_BaseballCapHolly", 5,
            "AuthenticZLite.Hat_BaseballCapHunter", 5,
            "AuthenticZLite.Hat_BaseballCapSeaHorse", 5,
            "AuthenticZLite.Hat_BaseballCapWalker", 5,
            "Hat_Bandana", 5,
            "Hat_BandanaTINT", 5,
            "AuthenticZLite.BunnyEars", 5,
            "Hat_Antlers", 5,
            "Hat_BunnyEarsBlack", 5,
            "Hat_BunnyEarsWhite", 5,
            "Hat_GoldStar", 5,
            "Hat_SurgicalCap_Blue", 5,
            "Hat_SurgicalCap_Green", 5,
            "Hat_Jay", 5,		
            "Hat_Raccoon", 5,
            "Hat_SantaHat", 5,
            "Hat_SantaHatGreen", 5,
            "Hat_SurgicalMask_Blue", 5,
            "Hat_SurgicalMask_Green", 5,
            "Hat_ShowerCap", 5,
            "Hat_Spiffo", 5,
            "Hat_FurryEars", 5,
            "WeldingMask", 5,
            "AuthenticZLite.Hat_CheeseHat", 5,
            "AuthenticZLite.Hat_Dimitrescu", 5,
            "AuthenticZLite.Hat_DRLegoHead", 5,
            "AuthenticZLite.Hat_GhostFace", 5,
            "AuthenticZLite.Hat_Gibus", 5,
            "AuthenticZLite.Hat_HockeyMaskJason", 5,
            "AuthenticZLite.Hat_JackoLantern", 5,
            "AuthenticZLite.Hat_JasonSack", 5,
            "AuthenticZLite.Hat_KillaHelmet", 5,
            "AuthenticZLite.Hat_MichaelMyers", 5,
            "AuthenticZLite.Hat_Nurse", 5,
            "AuthenticZLite.Hat_RuneDuel", 5,
            "AuthenticZLite.Hat_StovePipe", 5,
            "AuthenticZLite.Hat_TrueEyeCult", 5,
            "AuthenticZLite.Hat_TagillaMask", 5,
            "AuthenticZLite.Hat_TagillaMask2", 5,			
            "AuthenticZLite.Hat_UncleSam", 5,
            "AuthenticZLite.Hat_Witchy_2", 5,
            "AuthenticZLite.Hat_WeddingVeilPink", 5,
            "AuthenticZLite.Hat_WeddingVeilBlue", 5,
            "AuthenticZLite.Hat_WoolyHatWaldo", 5,
        },			
        junk = {
            rolls = 1,
            items = {
            "Hat_PartyHat_TINT", 5,
            "Hat_PartyHat_Stars", 5,
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1,			
            }
        }
    }
	
    ProceduralDistributions.list.CostumeStoreClothingAZ = {
        rolls = 2,
        items = {
--Clothing					
            "AuthenticZLite.Apron_GreenSeaHorse", 5,
            "AuthenticZLite.Apron_Short", 5,
            "AuthenticZLite.Apron_Yellow", 5,
            "AuthenticZLite.Boilersuit_BigDaddy", 5,
            "AuthenticZLite.Clown_Coveralls", 5,		
            "AuthenticZLite.CultistRobe", 5,		
            "AuthenticZLite.Boilersuit_CrossingGuard", 5,		
            "AuthenticZLite.Dress_Maid", 5,		
            "AuthenticZLite.Dress_Nurse", 5,		
            "AuthenticZLite.Dress_LongBlack", 5,		
            "AuthenticZLite.Boilersuit_PrisonerClassic", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersSpengler", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersStantz", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersVenkman", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersZeddemore", 5,
            "AuthenticZLite.CEDAHazmatSuitBlue", 1,
            "AuthenticZLite.CEDAHazmatSuitRed", 1,
            "JacketLong_Doctor", 1,
            "JacketLong_Santa", 1,
            "JacketLong_SantaGreen", 1,
            "Jacket_Chef", 1,
            "Jacket_CoatArmy", 1,
            "Jacket_Fireman", 1,
            "Jacket_Shellsuit_Black", 1,
            "Jacket_Shellsuit_Blue", 1,
            "Jacket_Shellsuit_Green", 1,
            "Jacket_Shellsuit_Pink", 1,
            "Jacket_Shellsuit_TINT", 1,
            "Jacket_Shellsuit_Teal", 1,
            "AuthenticZLite.Jacket_Reporter_LBMW", 1,			
            "AuthenticZLite.Mime_Overalls", 5,
            "Shirt_Scrubs", 5,
            "SpiffoSuit", 1,			
            "AuthenticZLite.Shirt_Cheerleader", 5,
            "Shirt_Jockey01", 5,
            "Shirt_Jockey02", 5,
            "Shirt_Jockey03", 5,
            "Shirt_Jockey04", 5,
            "Shirt_Jockey05", 5,
            "Shirt_Jockey06", 5,
            "AuthenticZLite.Skirt_ShortRedPlaid", 5,
            "AuthenticZLite.Sweater_Freddy", 5,
            "AuthenticZLite.Tie_Full_BlueSpy", 3,
            "AuthenticZLite.Tie_Full_Brad", 3,
            "AuthenticZLite.Tie_Full_GMan", 3,
            "AuthenticZLite.Tie_Full_Red", 3,
            "AuthenticZLite.Tie_BowTieWorn_Blue", 3,
            "AuthenticZLite.Tie_BowTieWorn_Green", 3,
            "AuthenticZLite.Tie_BowTieWorn_Purple", 3,
            "AuthenticZLite.Tie_BowTieWorn_Red", 3,
            "AuthenticZLite.Tie_BowTieWorn_Yellow", 3,
            "AuthenticZLite.Trousers_Santa", 5,
            "AuthenticZLite.Trousers_SantaGReen", 5,
            "AuthenticZLite.Trousers_Scrubs", 5,
            "AuthenticZLite.Trousers_Shellsuit_Black", 3,
            "AuthenticZLite.Trousers_Shellsuit_Blue", 3,
            "AuthenticZLite.Trousers_Shellsuit_Green", 3,
            "AuthenticZLite.Trousers_Shellsuit_Pink", 3,
            "AuthenticZLite.Trousers_Shellsuit_TINT", 3,
            "AuthenticZLite.Trousers_Shellsuit_Teal", 3,
            "AuthenticZLite.Trousers_UncleSam", 5,
            "AuthenticZLite.Trousers_DesignerTINT", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Blue", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Green", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Purple", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Red", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Yellow", 5,
            "AuthenticZLite.Vest_Waistcoat_Joker_Orange", 5,
            "AuthenticZLite.Vest_Waistcoat_Mime", 5,
            "AuthenticZLite.WeddingDressBlue", 5,		
            "AuthenticZLite.WeddingDressPink", 5,			
        },
        junk = {
            rolls = 1,
            items = {
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1,            
            }
        }
    }	

    ProceduralDistributions.list.CostumeStoreWeaponsAZ = {
        rolls = 2,
        items = {
--"Weapons"					
            "AuthenticZLite.Authentic_PomPomWhite", 5,			
            "AuthenticZLite.Authentic_PomPomBlack", 5,
            "AuthenticZLite.Authentic_PomPomBlue", 5,
            "AuthenticZLite.Authentic_PomPomRed", 5,
            "AuthenticZLite.AuthenticWalkingCane", 5,		
            "AuthenticZLite.AuthenticWalkingCaneGrandFather", 5,			
            "AuthenticZLite.AuthenticWalkingCaneJP", 5,			
            "AuthenticZLite.AuthenticCricketBat", 5,			
            "AuthenticZLite.AuthenticRaiderStaff", 5,			
            "AuthenticZLite.AuthenticCigaretteHolder", 1,			
            "AuthenticZLite.Football3", 5,		
            "Mop", 5,		
			
        },
        junk = {
            rolls = 2,
            items = {
            "Candycane", 5,
            "CandyPackage", 2,
            "MintCandy", 5,            
            "Chocolate", 2,          
            "Popcorn", 2,          
            "Marshmallows", 2,          
            "Modjeska", 3,          
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1,         
            }
        }
    }		

    ProceduralDistributions.list.CostumeStoreMicAZ = {
        rolls = 3,
        items = {		
--Misc					
            "AuthenticZLite.BunnyTail", 5,			
            "AuthenticZLite.CameraDSLR", 5,
            "AuthenticZLite.ClownNose", 5,
            "AuthenticZLite.ClownTop", 5,		
            "Glasses_Aviators", 5,		
            "Gloves_FingerlessGloves", 5,		
            "Gloves_Surgical", 5,		
            "AuthenticZLite.Authentic_Headphones2", 8,
            "AuthenticZLite.CigarAZ", 8,
            "AuthenticZLite.Gloves_FreddyKreuger", 5,
            "AuthenticZLite.Hairstyle_Afro_Pick", 1,
            "AuthenticZLite.AuthenticFreeHugsSign", 1,
            "AuthenticZLite.HairDyeBlonde2", 5,
            "AuthenticZLite.HairDyePurple", 5,
            "AuthenticZLite.Rose_Dimitrescu", 2,
            "AuthenticZLite.SpiffoPlushieRainbow", 1,
            "AuthenticZLite.SpiffoShamrock", 1,
            "AuthenticZLite.SpiffoBlueberry", 1,
            "AuthenticZLite.SpiffoHeart", 1,
            "AuthenticZLite.SpiffoGrey", 1,
            "AuthenticZLite.Spiffo", 1,
            "AuthenticZLite.Flamingo", 1,
            "SpiffoTail", 1,
            "Hairgel", 1,
            "AuthenticZLite.ToyBear", 1,
            "AuthenticZLite.ToyBearSmall", 1,
            "AuthenticZLite.Doll", 1,
--Backpacks					
            "AuthenticZLite.Bag_ProtonPack_Back", 5,
            "AuthenticZLite.Bag_L4DeadMedkit", 5,
--Skins		
            "AuthenticZLite.BlueZskin_F1", 5,
            "AuthenticZLite.BlueZskin_F2", 5,
            "AuthenticZLite.BlueZskin_M1", 5,
            "AuthenticZLite.BlueZskin_M2", 5,			
            "AuthenticZLite.GreeneZ_F", 5,			
            "AuthenticZLite.InflatableTube_AZ", 5,
        },			
        junk = {
            rolls = 3,
            items = {
            "Candycane", 5,
            "CandyPackage", 2,
            "MintCandy", 5,            
            "Chocolate", 2,          
            "Popcorn", 2,
            "Marshmallows", 2,			
            "Modjeska", 3,
            "AuthenticZLite.Authentic_Headphones2", 3, 			
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1,  
            }
        }
    }	

    ProceduralDistributions.list.CostumeStoreMiscAllAZ = {
        rolls = 2,
        items = {
--"Weapons"					
            "AuthenticZLite.Authentic_PomPomWhite", 5,			
            "AuthenticZLite.Authentic_PomPomBlack", 5,
            "AuthenticZLite.Authentic_PomPomBlue", 5,
            "AuthenticZLite.Authentic_PomPomRed", 5,
            "AuthenticZLite.AuthenticWalkingCane", 5,		
            "AuthenticZLite.AuthenticCricketBat", 5,
            "AuthenticZLite.AuthenticWalkingCaneGrandFather", 5,			
            "AuthenticZLite.AuthenticWalkingCaneJP", 5,			
            "AuthenticZLite.AuthenticCigaretteHolder", 1,			
            "AuthenticZLite.Football3", 5,		
            "Mop", 5,			
--Misc					
            "AuthenticZLite.BunnyTail", 5,			
            "AuthenticZLite.CameraDSLR", 5,
            "AuthenticZLite.ClownNose", 5,
            "AuthenticZLite.ClownTop", 5,		
            "AuthenticZLite.CultistSign", 5,		
            "AuthenticZLite.CigarAZ", 5,		
            "Glasses_Aviators", 5,		
            "Gloves_FingerlessGloves", 5,		
            "Gloves_Surgical", 5,		
            "AuthenticZLite.Authentic_Headphones2", 5,
            "AuthenticZLite.Gloves_FreddyKreuger", 5,
            "AuthenticZLite.Hairstyle_Afro_Pick", 5,
            "AuthenticZLite.HairDyeBlonde2", 5,
            "AuthenticZLite.HairDyePurple", 5,
            "AuthenticZLite.Rose_Dimitrescu", 5,
            "AuthenticZLite.SpiffoPlushieRainbow", 1,
            "AuthenticZLite.SpiffoShamrock", 1,
            "AuthenticZLite.SpiffoBlueberry", 1,
            "AuthenticZLite.SpiffoHeart", 1,
            "AuthenticZLite.SpiffoGrey", 1,
            "AuthenticZLite.Spiffo", 1,
            "AuthenticZLite.Flamingo", 1,
            "SpiffoTail", 1,
            "Hairgel", 1,
            "AuthenticZLite.ToyBear", 1,
            "AuthenticZLite.ToyBearSmall", 1,
            "AuthenticZLite.Doll", 1,
--Skins		
            "AuthenticZLite.BlueZskin_F1", 5,
            "AuthenticZLite.BlueZskin_F2", 5,
            "AuthenticZLite.BlueZskin_M1", 5,
            "AuthenticZLite.BlueZskin_M2", 5,			
            "AuthenticZLite.GreeneZ_F", 5,			
            "AuthenticZLite.InflatableTube_AZ", 5,
--Hats
            "AuthenticZLite.AuthenticHairHeadband", 5,		
            "AuthenticZLite.Hat_BaseballCapClementine", 5,
            "AuthenticZLite.Hat_BaseballCapEllis", 5,
            "AuthenticZLite.Hat_BaseballCapPrinceBelAir", 5,
            "AuthenticZLite.Hat_BaseballCapHolly", 5,
            "AuthenticZLite.Hat_BaseballCapHunter", 5,
            "AuthenticZLite.Hat_BaseballCapSeaHorse", 5,
            "AuthenticZLite.Hat_BaseballCapWalker", 5,
            "AuthenticZLite.AuthenticFreeHugsSign", 1,			
            "AuthenticZLite.BunnyEars", 5,
            "Hat_Bandana", 5,
            "Hat_BandanaTINT", 5,			
            "Hat_Antlers", 5,
            "Hat_BunnyEarsBlack", 5,
            "Hat_BunnyEarsWhite", 5,
            "Hat_GoldStar", 5,
            "Hat_SurgicalCap_Blue", 5,
            "Hat_SurgicalCap_Green", 5,
            "Hat_Jay", 5,		
            "Hat_Raccoon", 5,
            "Hat_SantaHat", 5,
            "Hat_SantaHatGreen", 5,
            "Hat_SurgicalMask_Blue", 5,
            "Hat_SurgicalMask_Green", 5,
            "Hat_ShowerCap", 5,
            "Hat_Spiffo", 5,
            "Hat_FurryEars", 5,
            "WeldingMask", 5,
            "AuthenticZLite.CultistMask", 5,
            "AuthenticZLite.Hat_CheeseHat", 5,
            "AuthenticZLite.Hat_Dimitrescu", 5,
            "AuthenticZLite.Hat_DRLegoHead", 5,
            "AuthenticZLite.Hat_GhostFace", 5,
            "AuthenticZLite.Hat_Gibus", 5,
            "AuthenticZLite.Hat_HockeyMaskJason", 5,
            "AuthenticZLite.Hat_JackoLantern", 5,
            "AuthenticZLite.Hat_JasonSack", 5,
            "AuthenticZLite.Hat_KillaHelmet", 5,
            "AuthenticZLite.Hat_MichaelMyers", 5,
            "AuthenticZLite.Hat_Nurse", 5,
            "AuthenticZLite.Hat_RuneDuel", 5,
            "AuthenticZLite.Hat_StovePipe", 5,
            "AuthenticZLite.Hat_TrueEyeCult", 5,
            "AuthenticZLite.Hat_TagillaMask", 5,
            "AuthenticZLite.Hat_TagillaMask2", 5,
            "AuthenticZLite.Hat_UncleSam", 5,
            "AuthenticZLite.Hat_Witchy_2", 5,
            "AuthenticZLite.Hat_WeddingVeilPink", 5,
            "AuthenticZLite.Hat_WeddingVeilBlue", 5,
            "AuthenticZLite.Hat_WoolyHatWaldo", 5,
        },						
		
        junk = {
            rolls = 3,
            items = {
            "Candycane", 5,
            "CandyPackage", 2,
            "MintCandy", 5,            
            "Chocolate", 3,          
            "Popcorn", 2,          
            "Marshmallows", 2,          
            "Modjeska", 3,
            "Hat_PartyHat_TINT", 5,
            "Hat_PartyHat_Stars", 5,
            "AuthenticZLite.AuthenticFreeHugsSign", 1,			
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1, 
            }
        }
    }

    ProceduralDistributions.list.CostumeStoreClothingAllAZ = {
        rolls = 2,
        items = {
--Clothing					
            "AuthenticZLite.Apron_GreenSeaHorse", 5,
            "AuthenticZLite.Apron_Short", 5,
            "AuthenticZLite.Apron_Yellow", 5,
            "AuthenticZLite.Boilersuit_BigDaddy", 5,
            "AuthenticZLite.Clown_Coveralls", 5,		
            "AuthenticZLite.Boilersuit_CrossingGuard", 5,		
            "AuthenticZLite.Dress_Maid", 5,		
            "AuthenticZLite.Dress_Nurse", 5,		
            "AuthenticZLite.Dress_LongBlack", 5,		
            "AuthenticZLite.Boilersuit_PrisonerClassic", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersSpengler", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersStantz", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersVenkman", 5,		
            "AuthenticZLite.Boilersuit_GhostbustersZeddemore", 5,
            "AuthenticZLite.CEDAHazmatSuitBlue", 1,
            "AuthenticZLite.CEDAHazmatSuitRed", 1,
            "JacketLong_Doctor", 1,
            "JacketLong_Santa", 1,
            "JacketLong_SantaGreen", 1,
            "Jacket_Chef", 1,
            "Jacket_CoatArmy", 1,
            "Jacket_Fireman", 1,
            "Jacket_Shellsuit_Black", 1,
            "Jacket_Shellsuit_Blue", 1,
            "Jacket_Shellsuit_Green", 1,
            "Jacket_Shellsuit_Pink", 1,
            "Jacket_Shellsuit_TINT", 1,
            "Jacket_Shellsuit_Teal", 1,
            "AuthenticZLite.Jacket_Reporter_LBMW", 1,
            "AuthenticZLite.Mime_Overalls", 5,
            "Shirt_Scrubs", 5,
            "SpiffoSuit", 1,			
            "AuthenticZLite.Shirt_Cheerleader", 5,
            "Shirt_Jockey01", 5,
            "Shirt_Jockey02", 5,
            "Shirt_Jockey03", 5,
            "Shirt_Jockey04", 5,
            "Shirt_Jockey05", 5,
            "Shirt_Jockey06", 5,
            "AuthenticZLite.Skirt_ShortPlaid", 5,			
            "AuthenticZLite.Sweater_Freddy", 5,
            "AuthenticZLite.Tie_Full_BlueSpy", 3,
            "AuthenticZLite.Tie_Full_Brad", 3,
            "AuthenticZLite.Tie_Full_GMan", 3,
            "AuthenticZLite.Tie_Full_Red", 3,
            "AuthenticZLite.Tie_BowTieWorn_Blue", 3,
            "AuthenticZLite.Tie_BowTieWorn_Green", 3,
            "AuthenticZLite.Tie_BowTieWorn_Purple", 3,
            "AuthenticZLite.Tie_BowTieWorn_Red", 3,
            "AuthenticZLite.Tie_BowTieWorn_Yellow", 3,
            "AuthenticZLite.Trousers_Santa", 5,
            "AuthenticZLite.Trousers_SantaGReen", 5,
            "AuthenticZLite.Trousers_Scrubs", 5,
            "AuthenticZLite.Trousers_Shellsuit_Black", 3,
            "AuthenticZLite.Trousers_Shellsuit_Blue", 3,
            "AuthenticZLite.Trousers_Shellsuit_Green", 3,
            "AuthenticZLite.Trousers_Shellsuit_Pink", 3,
            "AuthenticZLite.Trousers_Shellsuit_TINT", 3,
            "AuthenticZLite.Trousers_Shellsuit_Teal", 3,
            "AuthenticZLite.Trousers_UncleSam", 5,
            "AuthenticZLite.Trousers_DesignerTINT", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Blue", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Green", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Purple", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Red", 5,
            "AuthenticZLite.Vest_Waistcoat_Barbershop_Yellow", 5,
            "AuthenticZLite.Vest_Waistcoat_Joker_Orange", 5,
            "AuthenticZLite.Vest_Waistcoat_Mime", 5,
            "AuthenticZLite.WeddingDressBlue", 5,		
            "AuthenticZLite.WeddingDressPink", 5,
--Backpacks					
            "AuthenticZLite.Bag_ProtonPack_Back", 5,
            "AuthenticZLite.Bag_L4DeadMedkit", 5,			
        },			
        junk = {
            rolls = 3,
            items = {
            "Candycane", 5,
            "CandyPackage", 2,
            "MintCandy", 5,            
            "Chocolate", 3,          
            "Popcorn", 2,          
            "Marshmallows", 2,          
            "Modjeska", 3,          
            "AuthenticZLite.AuthenticBalloon_Purple", 1,    
            "AuthenticZLite.AuthenticBalloon_Red", 1,    
            "AuthenticZLite.AuthenticBalloon_White", 1,    
            "AuthenticZLite.AuthenticBalloon_Yellow", 1,
            "AuthenticZLite.AuthenticBalloon_Blue", 1,
            "AuthenticZLite.AuthenticBalloon_Green", 1,  
            }
        }
    }

end
Events.OnPreDistributionMerge.Add(preDistributionMerge);