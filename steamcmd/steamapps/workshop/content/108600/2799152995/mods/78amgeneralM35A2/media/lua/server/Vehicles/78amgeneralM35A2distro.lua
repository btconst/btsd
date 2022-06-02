local distributionTable = VehicleDistributions[1]

VehicleDistributions.M35A2 = {

	GloveBox = VehicleDistributions.GloveBox;
	M35A2Trunk = VehicleDistributions.TrunkHeavy;
}

distributionTable["78amgeneralM35A2"] = { Normal = VehicleDistributions.M35A2; }
distributionTable["78amgeneralM35A2Burnt"] = { Normal = VehicleDistributions.M35A2; }