local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local inforepOpen = false

--COMANDO--
RegisterCommand('inforep', function()
    if not inforepOpen then
        QBCore.Functions.TriggerCallback("qb-inforep:server:Reputation", function(reputation, dealer, heist, crafting, attachment, jobrep, tow, hotdogs, taxi, truck, guncraftingrep, bulletcraftingrep)
            SendNUIMessage({
                action = "open",
                reputation = nil,
                dealer = dealer,
                crafting = crafting,
                attachment = attachment,
                jobrep = nil,
                tow = tow,
                hotdogs = hotdogs,
                taxi = taxi,
                truck = truck,
                heist = heist,
                guncraftingrep = guncraftingrep,
                bulletcraftingrep = bulletcraftingrep
            })
            inforepOpen = true
        end)
    else
        SendNUIMessage({
            action = "close",
        })
        inforepOpen = false
    end
end)
--TECLA--
RegisterKeyMapping('inforep', 'Abre el panel de info de reputación.', 'keyboard', Config.OpenKey)
