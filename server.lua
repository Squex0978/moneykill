ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('killed')
AddEventHandler('killed', function (killer)
    xSource = ESX.GetPlayerFromId(source)  
    if killer ~= nil then
        xPlayer = ESX.GetPlayerFromId(killer)    
        TriggerClientEvent("notifications",killer, "#7e0000", "", 'Du hast ' .. xSource.getName() .. ' getötet')
        TriggerClientEvent("notifications",source, "#7e0000", "", 'Du wurdest von ' .. xPlayer.getName() .. ' getötet')

        xPlayer.addMoney(Config.money)
        TriggerClientEvent("notifications",killer, "#7e0000", "", '+ ' .. Config.money .. "$")
    end
end)
