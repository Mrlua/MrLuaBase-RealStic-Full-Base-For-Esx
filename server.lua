ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('MrLua_BaseCore:client:UpdateStatus')
AddEventHandler('MrLua_BaseCore:client:UpdateStatus', function(type, count)
	
	TriggerClientEvent('esx_status:add', source, type, count)

end)

-- Made By Mr.lua#0001 Open Source

for i=1, #Config.Food, 1 do

	ESX.RegisterUsableItem(Config.Food[i].Item, function(source)
		src = source
		local xPlayer = ESX.GetPlayerFromId(src)
		local item     = Config.Food[i].Item
		local label     = Config.Food[i].Label
		local g     = Config.Food[i].g
		local prop     = Config.Food[i].Prop
		local proppos1 = Config.Food[i].Pos1
		local proppos2 = Config.Food[i].Pos2
		local proppos3 = Config.Food[i].Pos3
		local proppos4 = Config.Food[i].Pos4
		local proppos5 = Config.Food[i].Pos5
		local proppos6 = Config.Food[i].Pos6
		local hunger = Config.Food[i].StatusHunger
	
		TriggerClientEvent('MrLua_BaseCore:client:StartEat', src, item, label, g, prop, hunger, proppos1, proppos2, proppos3, proppos4, proppos5, proppos6)
			end)
	end

	for i=1, #Config.Drink, 1 do

		ESX.RegisterUsableItem(Config.Drink[i].Item, function(source)
			src = source
			local xPlayer = ESX.GetPlayerFromId(src)
			local item     = Config.Drink[i].Item
			local cleanupitem     = Config.Drink[i].CleanUpItem
			local ml     = Config.Drink[i].ml
			local prop     = Config.Drink[i].Prop
			local proppos1 = Config.Drink[i].Pos1
			local proppos2 = Config.Drink[i].Pos2
			local proppos3 = Config.Drink[i].Pos3
			local proppos4 = Config.Drink[i].Pos4
			local proppos5 = Config.Drink[i].Pos5
			local proppos6 = Config.Drink[i].Pos6
			local alcohol = Config.Drink[i].Alcohol
			local split = Config.Drink[i].Shots
			local drinkstatus =	Config.Drink[i].StatusDrink
		
			TriggerClientEvent('MrLua_BaseCore:client:StartDrink', src, item, cleanupitem, ml, prop, alcohol, split, drinkstatus, proppos1, proppos2, proppos3, proppos4, proppos5, proppos6)
				--xPlayer.removeInventoryItem(item, 1)
				end)
		end


		--DrinkShot
	for i=1, #Config.DrinkShot, 1 do

		ESX.RegisterUsableItem(Config.DrinkShot[i].Item, function(source)
			src = source
			local xPlayer = ESX.GetPlayerFromId(src)
			local item     = Config.DrinkShot[i].Item
			local label     = Config.DrinkShot[i].Label
			local mlshot     = Config.DrinkShot[i].mlshot
			local alcohol = Config.DrinkShot[i].Alcohol
			local drinkstatus = Config.DrinkShot[i].StatusDrink
		
			TriggerClientEvent('MrLua_BaseCore:client:DrinkShot', src, item, label, shotml, alcohol, drinkstatus)
				end)
		end

for i=1, #Config.Wine, 1 do

	ESX.RegisterUsableItem(Config.Wine[i].Item, function(source)
		src = source
		local xPlayer = ESX.GetPlayerFromId(src)
		local item     = Config.Wine[i].Item
		local item2     = Config.Wine[i].CleanUpItem
		local ml     = Config.Wine[i].ml
		local prop     = Config.Wine[i].Prop
		local proppos1 = Config.Wine[i].Pos1
		local proppos2 = Config.Wine[i].Pos2
		local proppos3 = Config.Wine[i].Pos3
		local proppos4 = Config.Wine[i].Pos4
		local proppos5 = Config.Wine[i].Pos5
		local proppos6 = Config.Wine[i].Pos6
		local alcohol = Config.Wine[i].Alcohol
		local drinkstatus = Config.Wine[i].StatusDrink
	
		TriggerClientEvent('MrLua_BaseCore:client:StartDrinkWine', src, item, item2, ml, prop, alcohol, drinkstatus, proppos1, proppos2, proppos3, proppos4, proppos5, proppos6)
			end)
	end


for i=1, #Config.WineGlass, 1 do

	ESX.RegisterUsableItem(Config.WineGlass[i].Item, function(source)
		src = source
		local xPlayer = ESX.GetPlayerFromId(src)
		local item     = Config.WineGlass[i].Item
		local label     = Config.WineGlass[i].Label
		local mlwine     = Config.WineGlass[i].mlwine
		local alcohol = Config.WineGlass[i].Alcohol
		local drinkstatus = Config.WineGlass[i].StatusDrink
				
		TriggerClientEvent('MrLua_BaseCore:client:WineGlass', src, item, label, mlwine, alcohol, drinkstatus)
			end)
		end

		ESX.RegisterUsableItem(Config.ItemTester, function(source)
			src = source
			local xPlayer = ESX.GetPlayerFromId(src)
					
			TriggerClientEvent('MrLua_BaseCore:client:alcotester', src)

		end)

			RegisterServerEvent('MrLua_BaseCore:server:AlcoTest')
		AddEventHandler('MrLua_BaseCore:server:AlcoTest', function(ID, targetID)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source

			TriggerClientEvent('MrLua_BaseCore:client:ShowAlco', _source)
		end)

		RegisterServerEvent('MrLua_BaseCore:server:ReceiverFood')
		AddEventHandler('MrLua_BaseCore:server:ReceiverFood', function(ID, targetID, item, label, g, prop, hunger, p1, p2, p3, p4, p5, p6)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source

			TriggerClientEvent('MrLua_BaseCore:client:StartReceiverEat', _source, item, label, g, prop, hunger, p1 , p2 , p3, p4 , p5 , p6)
		end)
		
		RegisterServerEvent('MrLua_BaseCore:server:ReceiverDrink')
		AddEventHandler('MrLua_BaseCore:server:ReceiverDrink', function(ID, targetID, item, item2, ml, propdrink, alcohol, split, drinkstatus, p1, p2, p3, p4, p5, p6)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source

			TriggerClientEvent('MrLua_BaseCore:client:StartReceiverDrink', _source, item, item2, ml, propdrink, alcohol, split, drinkstatus, p1, p2, p3, p4, p5, p6)
		end)

		RegisterServerEvent('MrLua_BaseCore:server:ReceiverDrinkShot')
		AddEventHandler('MrLua_BaseCore:server:ReceiverDrinkShot', function(ID, targetID, item, item2, mlshot, alcohol, drinkstatus)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source
			
			TriggerClientEvent('MrLua_BaseCore:client:ReceiverDrinkShot', _source, item, item2, mlshot, alcohol, drinkstatus)
		end)

		RegisterServerEvent('MrLua_BaseCore:server:ReceiverDrinkWine')
		AddEventHandler('MrLua_BaseCore:server:ReceiverDrinkWine', function(ID, targetID, item, label, ml, propw, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source

			TriggerClientEvent('MrLua_BaseCore:client:ReceiverDrinkGlass', _source, item, label, ml, propw, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
		end)

		RegisterServerEvent('MrLua_BaseCore:server:ReceiverDrinkSplitWine')
		AddEventHandler('MrLua_BaseCore:server:ReceiverDrinkSplitWine', function(ID, targetID, item, item2, ml, propw, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source

			TriggerClientEvent('MrLua_BaseCore:client:ReceiverDrinkSplitWine', _source, item, item2, ml, propw, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
		end)

		RegisterServerEvent('MrLua_BaseCore:server:ReceiverDrinkGlass')
		AddEventHandler('MrLua_BaseCore:server:ReceiverDrinkGlass', function(ID, targetID, item, item2, mlwine, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
			local identifier = ESX.GetPlayerFromId(ID).identifier
			local _source 	 = ESX.GetPlayerFromId(targetID).source
			
			TriggerClientEvent('MrLua_BaseCore:client:ReceiverDrinkGlass', _source, item, item2, mlwine, alcohol, drinkstatus, p1, p2, p3, p4, p5, p6)
		end)

	RegisterServerEvent('MrLua_BaseCore:server:RemoveItem')
AddEventHandler('MrLua_BaseCore:server:RemoveItem', function(item)
	src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.removeInventoryItem(item, 1)
end)

RegisterServerEvent('MrLua_BaseCore:server:AddItem')
AddEventHandler('MrLua_BaseCore:server:AddItem', function(item)
	src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.addInventoryItem(item, 1)
end)


-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source
-- Made By Mr.lua#0001 Open Source