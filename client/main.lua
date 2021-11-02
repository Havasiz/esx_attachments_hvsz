ESX          = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

local used = 0

RegisterNetEvent('esx_attachments_hvsz:uzatilmissarjor')
AddEventHandler('esx_attachments_hvsz:uzatilmissarjor', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local uzatilmissarjor = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'uzatilmissarjor' then
						uzatilmissarjor = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used <= uzatilmissarjor then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
				   ESX.ShowNotification(_U('equip'))
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
					  used = used + 1

					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
						 ESX.ShowNotification(_U('equip')) 
						   used = used + 1

						elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
							GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
							 ESX.ShowNotification(_U('equip')) 
							   used = used + 1		
							elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
								GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
								 ESX.ShowNotification(_U('equip')) 
								   used = used + 1	   


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  			used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
		  		  	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_BULLPUPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
			else
				ESX.ShowNotification(_U('error2'))  

		end
end)
				local used2 = 0

RegisterNetEvent('esx_attachments_hvsz:namluucu')
AddEventHandler('esx_attachments_hvsz:namluucu', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local namluucu = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'namluucu' then
						namluucu = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used2 <= namluucu then
						print('used2')

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))  
				   ESX.ShowNotification(_U('equip'))  
		  		 	used2 = used2 + 1
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used2 = used2 + 1
		  		

		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)
				local used3 = 0

RegisterNetEvent('esx_attachments_hvsz:mk2tabdurbun')
AddEventHandler('esx_attachments_hvsz:mk2tabdurbun', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local mk2tabdurbun = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'mk2tabdurbun' then
						mk2tabdurbun = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used3 <= mk2tabdurbun then

			
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL"))  
				   ESX.ShowNotification(_U('equip')) 
		  				used3 = used3 + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_PI_RAIL_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used3 = used3 + 1
		  		
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  
		end
end)

				local used4 = 0

RegisterNetEvent('esx_attachments_hvsz:tufekdurbun')
AddEventHandler('esx_attachments_hvsz:tufekdurbun', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local tufekdurbun = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'tufekdurbun' then
						tufekdurbun = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used4 <= tufekdurbun then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
		  		 	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
				


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip'))  
used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip')) 
used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip'))  
	used4 = used4 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used5 = 0

RegisterNetEvent('esx_attachments_hvsz:tufekdurbun')
AddEventHandler('esx_attachments_hvsz:tufekdurbun', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local tufekdurbun = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'tufekdurbun' then
						tufekdurbun = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used5 <= tufekdurbun then

			if currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip'))  
				   used5 = used5 + 1
				
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used5 = used5 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used6 = 0

RegisterNetEvent('esx_attachments_hvsz:vipskinbutterfly')
AddEventHandler('esx_attachments_hvsz:vipskinbutterfly', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local vipskinbutterfly = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'vipskinbutterfly' then
						vipskinbutterfly = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used6 <= vipskinmotyl then

			if currentWeaponHash == GetHashKey("WEAPON_SWITCHBLADE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SWITCHBLADE"), GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))  
				   ESX.ShowNotification(_U('equip')) 
				   used6 = used6 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used7 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinlove')
AddEventHandler('esx_attachments_hvsz:knuckleskinlove', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinlove = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinlove' then
						knuckleskinlove = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used7 <= kastetpink then

			if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used7 = used7 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used8 = 0

RegisterNetEvent('esx_attachments_hvsz:ortadurbun')
AddEventHandler('esx_attachments_hvsz:ortadurbun', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local ortadurbun = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'ortadurbun' then
						ortadurbun = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used8 <= ortadurbun then

			if currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used8 = used8 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used9 = 0

RegisterNetEvent('esx_attachments_hvsz:uzundurbun')
AddEventHandler('esx_attachments_hvsz:uzundurbun', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local uzundurbun = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'uzundurbun' then
						uzundurbun = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used9 <= uzundurbun then

			if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used9 = used9 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used10 = 0

RegisterNetEvent('esx_attachments_hvsz:holografik')
AddEventHandler('esx_attachments_hvsz:holografik', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local holografik = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'holografik' then
						holografik = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used10 <= holografik then

			if currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SIGHTS_SMG"))  
				   ESX.ShowNotification(_U('equip')) 
				   used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip'))  
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used11 = 0

RegisterNetEvent('esx_attachments_hvsz:platin50')
AddEventHandler('esx_attachments_hvsz:platin50', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local platin50 = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'platin50' then
						platin50 = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used11 <= platin50 then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used11 = used11 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used12 = 0

RegisterNetEvent('esx_attachments_hvsz:woodheavyp')
AddEventHandler('esx_attachments_hvsz:woodheavyp', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodheavyp = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodheavyp' then
						woodheavyp = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used12 <= woodheavyp then

			if currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used12 = used12 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used13 = 0

RegisterNetEvent('esx_attachments_hvsz:woodrifleskin')
AddEventHandler('esx_attachments_hvsz:woodrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodrifleskin' then
						woodrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used13 <= woodrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_03"))  
				   ESX.ShowNotification(_U('equip')) 
				   used13 = used13 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip'))  
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used14 = 0

RegisterNetEvent('esx_attachments_hvsz:skullrifleskin')
AddEventHandler('esx_attachments_hvsz:skullrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skullrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skullrifleskin' then
						skullrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used14 <= skullrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_04"))  
				   ESX.ShowNotification(_U('equip')) 
				   used14 = used14 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip'))  
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used15 = 0

RegisterNetEvent('esx_attachments_hvsz:zebrarifleskin')
AddEventHandler('esx_attachments_hvsz:zebrarifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local zebrarifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'zebrarifleskin' then
						zebrarifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used15 <= zebrarifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_08"))  
				   ESX.ShowNotification(_U('equip')) 
				   used15 = used15 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip'))  
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used16 = 0

RegisterNetEvent('esx_attachments_hvsz:boomrifleskin')
AddEventHandler('esx_attachments_hvsz:boomrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local boomrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'boomrifleskin' then
						boomrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used16 <= boomrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_10"))  
				   ESX.ShowNotification(_U('equip')) 
				   used16 = used16 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip'))  
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used17 = 0

RegisterNetEvent('esx_attachments_hvsz:taktikselnamlufreni')
AddEventHandler('esx_attachments_hvsz:taktikselnamlufreni', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local taktikselnamlufreni = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'taktikselnamlufreni' then
						taktikselnamlufreni = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used17 <= taktikselnamlufreni then
				if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used18 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinpimp')
AddEventHandler('esx_attachments_hvsz:knuckleskinpimp', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinpimp = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinpimp' then
						knuckleskinpimp = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used18 <= knuckleskinpimp then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))  
					ESX.ShowNotification(_U('equip')) 
					used18 = used18 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used19 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinballas')
AddEventHandler('esx_attachments_hvsz:knuckleskinballas', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinballas = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinballas' then
						knuckleskinballas = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used19 <= knuckleskinballas then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))  
					ESX.ShowNotification(_U('equip')) 
					used19 = used19 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used20 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskindollar')
AddEventHandler('esx_attachments_hvsz:knuckleskindollar', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskindollar = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskindollar' then
						knuckleskindollar = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used20 <= knuckleskindollar then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))  
					ESX.ShowNotification(_U('equip')) 
					used20 = used20 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used21 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskindiamond')
AddEventHandler('esx_attachments_hvsz:knuckleskindiamond', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskindiamond = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskindiamond' then
						knuckleskindiamond = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used21 <= knuckleskindiamond then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))  
					ESX.ShowNotification(_U('equip')) 
					used21 = used21 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)



local used22 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinhate')
AddEventHandler('esx_attachments_hvsz:knuckleskinhate', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinhate = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinhate' then
						knuckleskinhate = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used22 <= knuckleskinhate then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))  
					ESX.ShowNotification(_U('equip'))  
					used22 = used22 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used23 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinplayer')
AddEventHandler('esx_attachments_hvsz:knuckleskinplayer', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinplayer = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinplayer' then
						knuckleskinplayer = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used23 <= knuckleskinplayer then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))  
					ESX.ShowNotification(_U('equip')) 
					used23 = used23 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used24 = 0

RegisterNetEvent('esx_attachments_hvsz:knuckleskinvagos')
AddEventHandler('esx_attachments_hvsz:knuckleskinvagos', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local kastetknuckleskinvagosvagos = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinvagos' then
						knuckleskinvagos = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used24 <= knuckleskinvagos then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))  
					ESX.ShowNotification(_U('equip')) 
					used24 = used24 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used25 = 0

RegisterNetEvent('esx_attachments_hvsz:grip')
AddEventHandler('esx_attachments_hvsz:grip', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local grip = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'grip' then
						grip = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used25 <= grip then
				if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
					ESX.ShowNotification(_U('equip')) 
					used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used26 = 0

RegisterNetEvent('esx_attachments_hvsz:susturucu')
AddEventHandler('esx_attachments_hvsz:susturucu', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local susturucu = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'susturucu' then
						susturucu = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used26 <= susturucu then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
					ESX.ShowNotification(_U('equip')) 
					used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used27 = 0

RegisterNetEvent('esx_attachments_hvsz:silahfeneri')
AddEventHandler('esx_attachments_hvszs:silahfeneri', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local silahfeneri = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'silahfeneri' then
						silahfeneri = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used27 <= silahfeneri then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
					ESX.ShowNotification(_U('equip')) 
					used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_03"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)























