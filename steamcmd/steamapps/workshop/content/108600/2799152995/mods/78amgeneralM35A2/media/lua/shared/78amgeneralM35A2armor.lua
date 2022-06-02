--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--v1.9.3

KI5 = KI5 or {};
M35A2 = M35A2 or {};

function M35A2.extractCond(player)
	local vehicle = player:getVehicle()
	if (vehicle and string.find( vehicle:getScriptName(), "78amgeneralM35A2" )) then
		for i, partId in ipairs ({
			"Engine", "EngineDoor",
			"Windshield", "WindowFrontLeft", "WindowFrontRight",
			"DoorFrontLeft", "DoorFrontRight",
			"HeadlightLeft", "HeadlightRight",
			})
		do
			KI5:savePartCondById(vehicle, partId);
		end
	end
end

function KI5:savePartCond(part)
	if part then
		local vehicle = part:getVehicle()
		if vehicle then
			KI5:sendArmorCommandWrapper(getPlayer(), part, "setPartModData", {
				data = {
					saveCond = part:getCondition()
				}
			});
		end
	end
end

function KI5:savePartCondById(vehicle, partId)
	if vehicle and partId then
		KI5:savePartCond(vehicle:getPartById(partId))
	end
end

function KI5:sendVehicleCommandWrapper(player, part, methodName, args)
	local args = args or {}
	args.part = part:getId()
	args.vehicle = part:getVehicle():getId()
	sendClientCommand(player, "vehicle", methodName, args)
end

function KI5:sendArmorCommandWrapper(player, part, methodName, args)
	local args = args or {}
	args.part = part:getId()
	args.vehicle = part:getVehicle():getId()
	sendClientCommand(player, "KI5_armor", methodName, args)
end

function M35A2.activeArmor(player)
    local vehicle = player:getVehicle()
    	if (vehicle and string.find( vehicle:getScriptName(), "78amgeneralM35A2" )) then

		--

			for i, tirePart in ipairs ({"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"})
				do
					if vehicle:getPartById(tirePart) then
						local part = vehicle:getPartById(tirePart)
						local tireCond = 25;
					    	if part:getCondition() < tireCond then
					    		KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {condition = tireCond})
							elseif part:getContainerContentAmount() < 10 then
								KI5:sendVehicleCommandWrapper(player, part, "setContainerContentAmount", {amount = 33})
							end
					end
			end

		--

			local part = vehicle:getPartById("GasTank")
				if part:getCondition() < 65 then
					KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {condition = 65})
				end

			local part = vehicle:getPartById("M35A2Trunk")
				if part:getCondition() < 74 then
					KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {condition = 74})
				end

			local part = vehicle:getPartById("TrunkDoor")
				if part:getCondition() < 48 then
					KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {condition = 48})
				end

			local part = vehicle:getPartById("M35A2Tarp")
				if part:getCondition() < 5 then
					KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {condition = 5})
				end

		--

			local protection = vehicle:getPartById("M35A2WindshieldArmor")
			local part = vehicle:getPartById("Windshield")
			if protection and protection:getInventoryItem() and part and part:getModData()
			then
				local partCond = tonumber(part:getModData().saveCond)
				if protection:getCondition() > 0 and partCond
				then
					if part:getCondition() < partCond
					then
						KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
							condition = partCond
						})
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 18 and ZombRandBetween(0,3) or 0)
						KI5:sendVehicleCommandWrapper(player, protection, "setPartCondition", {
							condition = cond
						})
					end
				end
			end

		--

			local protection = vehicle:getPartById("M35A2Bumper")
			local part = vehicle:getPartById("EngineDoor")
				if part and protection and part:getInventoryItem() and protection:getInventoryItem() and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond)
					if protection:getCondition() > 0 and partCond
					then
						if part:getCondition() < partCond
						then
							KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
								condition = partCond
							})
							local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 45 and ZombRandBetween(0,3) or 0)
							KI5:sendVehicleCommandWrapper(player, protection, "setPartCondition", {
								condition = cond
							})
						end
					end
				else
					local protection = vehicle:getPartById("M35A2Bumper")
					local part = vehicle:getPartById("Engine")
						if protection and protection:getInventoryItem() and part and part:getModData()
						then
							local partCond = tonumber(part:getModData().saveCond)
							if protection:getCondition() > 0 and partCond
							then
								if part:getCondition() < partCond
								then
									KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
										condition = partCond
									})
									local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 50 and ZombRandBetween(0,3) or 0)
									KI5:sendVehicleCommandWrapper(player, protection, "setPartCondition", {
										condition = cond
									})
								end
							end
						end
				end

		--

			for partId, armorPartId in pairs({
				["DoorFrontLeft"] = "M35A2DoorLeftArmor",
				["DoorFrontRight"] = "M35A2DoorRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
							condition = partCond
						});
						local cond = protection:getCondition() - ZombRand(3);
						KI5:sendVehicleCommandWrapper(player, protection, "setPartCondition", {
							condition = cond
						});
					end
				end
			end

		--

			for partId, armorPartId in pairs({
				["WindowFrontLeft"] = "M35A2DoorLeftArmor",
				["WindowFrontRight"] = "M35A2DoorRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
							condition = partCond
						});
					end
				end
			end

		--

			for partId, armorPartId in pairs({
				["HeadlightLeft"] = "M35A2Grille",
				["HeadlightRight"] = "M35A2Grille",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						KI5:sendVehicleCommandWrapper(player, part, "setPartCondition", {
							condition = partCond
						});
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 50 and ZombRandBetween(0,3) or 0)
						KI5:sendVehicleCommandWrapper(player, protection, "setPartCondition", {
							condition = cond
						});
					end
				end
			end

		--
	end
end

Events.OnEnterVehicle.Add(M35A2.extractCond);
Events.OnPlayerUpdate.Add(M35A2.activeArmor);