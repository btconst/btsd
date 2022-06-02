--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--b0.7.4

KI5 = KI5 or {};
M35A2 = M35A2 or {};

function M35A2.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];

	ISEnterVehicle["start"] = function(self)

		local vehicle = self.vehicle
			local vehicle = self.vehicle
			if 	vehicle and (
				string.find( vehicle:getScriptName(), "78amgeneralM35A2" )) then

				self.character:SetVariable("KI5vehicle", "True")
			end
		
	vanillaEnter(self);
		
		local seat = self.seat
    		if not seat then return end
				if seat == 0 then		
					self.character:SetVariable("BobIsDriver", "True")
				else		
					self.character:SetVariable("BobIsDriver", "False")
			end
	end
end

function M35A2.pvFixSwitch(player)
	local vehicle = player:getVehicle()
		if 	vehicle and (
				string.find( vehicle:getScriptName(), "78amgeneralM35A2" )) then

			player:SetVariable("KI5vehicle", "True")

			local seat = vehicle:getSeat(player)
	    		if not seat then return end
					if seat == 0 then		
						player:SetVariable("BobIsDriver", "True")
					else		
						player:SetVariable("BobIsDriver", "False")
				end

	end
end

function M35A2.pvFixClear(player)

		player:SetVariable("KI5vehicle", "False")
end

Events.OnGameStart.Add(M35A2.pvFixCheck);
--Events.OnGameStart.Add(KI5.pvFixSwitch);
Events.OnExitVehicle.Add(M35A2.pvFixClear);
Events.OnSwitchVehicleSeat.Add(M35A2.pvFixSwitch);