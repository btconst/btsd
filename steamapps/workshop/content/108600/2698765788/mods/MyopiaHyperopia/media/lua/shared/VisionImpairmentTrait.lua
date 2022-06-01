--**********************************************************
--**  Myopia, Hyperopia & Functional Glasses - By Onkeen  **
--**********************************************************

require('NPCs/MainCreationMethods');
local function addVisionImpairedTraits()
	TraitFactory.addTrait("temporaryilliterate", "Temporarily Illiterate (find glasses!)", 0, "", true);
	TraitFactory.addTrait("Myopic", getText("UI_trait_Myopic"), -2, getText("UI_trait_MyopicDesc"), false, false);
	TraitFactory.addTrait("Hyperopic", getText("UI_trait_Hyperopic"), -2, getText("UI_trait_HyperopicDesc"), false, false);
	TraitFactory.setMutualExclusive("Myopic", "EagleEyed");
	TraitFactory.setMutualExclusive("Myopic", "ShortSighted");
	TraitFactory.setMutualExclusive("Hyperopic", "EagleEyed");
	TraitFactory.setMutualExclusive("Hyperopic", "ShortSighted");
	TraitFactory.setMutualExclusive("Myopic", "Hyperopic");
	if TraitFactory.getTrait("Blind") ~= nil then
		TraitFactory.setMutualExclusive("Hyperopic", "Blind");
		TraitFactory.setMutualExclusive("Myopic", "Blind");
	end
end

Events.OnCreateSurvivor.Add(addVisionImpairedTraits);