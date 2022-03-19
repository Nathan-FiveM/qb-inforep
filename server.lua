local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-inforep:server:Reputation', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local reputation, jobrep
    local dealer, heist, crafting, attachment, tow, hotdogs, taxi, truck, guncraftingrep = 0, 0, 0, 0, 0, 0, 0, 0, 0
    if QBCore.Functions.GetPlayer(source) then
        reputation = Player.PlayerData.metadata
        dealer = reputation["dealerrep"]
        heist = reputation["heistrep"]
        crafting = reputation["craftingrep"]
        attachment = reputation["attachmentcraftingrep"]
        jobrep = reputation["jobrep"]
            tow = jobrep["tow"]
            hotdogs = jobrep["hotdog"]
            taxi = jobrep["taxi"]
            truck = jobrep["trucker"]
        guncraftingrep = reputation["guncraftingrep"]
        bulletcraftingrep = reputation["bulletcraftingrep"]
    end
    cb(reputation, dealer, heist, crafting, attachment, jobrep, tow, hotdogs, taxi, truck, guncraftingrep, bulletcraftingrep)
end)
