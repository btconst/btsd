if isClient() then return end;

local function overrideRottenThis()
	function SPlantGlobalObject:rottenThis()
		self.nextGrowing = self.nextGrowing + (SandboxVars.CropsNeverRot.DiseaseCheckTime or 48.0)
	end
end

overrideRottenThis()

Events.EveryHours.Add(overrideRottenThis)
