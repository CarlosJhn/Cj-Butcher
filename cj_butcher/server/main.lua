local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

RegisterNetEvent('Cj_Butcher:server:ngambilayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local ayamrandom = math.random(Config.AyamRandom.Min, Config.AyamRandom.Max)
    if ox_inventory:CanCarryItem(source, Config.Barang.AyamHidup.barang, ayamrandom) then
        Player.Functions.AddItem(Config.Barang.AyamHidup.barang, ayamrandom )
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.AyamHidup.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:server:nyabutbulu', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.AyamTanpaBulu.barang, Config.Barang.AyamTanpaBulu.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.AyamHidup.barang, Config.Barang.AyamHidup.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.AyamHidup.barang], "remove")
        Player.Functions.AddItem(Config.Barang.AyamTanpaBulu.barang, Config.Barang.AyamTanpaBulu.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.AyamTanpaBulu.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:menyiapkanayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.AyamTanpaBulu.barang, Config.Barang.PenyiapanAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.AyamTanpaBulu.barang], "remove")
        Player.Functions.AddItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.PenyiapanAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:prosesdadaayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.ProsesDadaAyam.barang, Config.Barang.ProsesDadaAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.PenyiapanAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.ProsesDadaAyam.barang, Config.Barang.ProsesDadaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesDadaAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:prosespahaayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.ProsesPahaAyam.barang, Config.Barang.ProsesPahaAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.PenyiapanAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.ProsesPahaAyam.barang, Config.Barang.ProsesPahaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesPahaAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:prosessayapayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.ProsesSayapAyam.barang, Config.Barang.ProsesSayapAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.PenyiapanAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.ProsesSayapAyam.barang, Config.Barang.ProsesSayapAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesSayapAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:kemasdadaayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.KemasanDadaAyam.barang, Config.Barang.KemasanDadaAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.ProsesDadaAyam.barang, Config.Barang.ProsesDadaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesDadaAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.KemasanDadaAyam.barang, Config.Barang.KemasanDadaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.KemasanDadaAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:kemaspahaayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.KemasanPahaAyam.barang, Config.Barang.KemasanPahaAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.ProsesPahaAyam.barang, Config.Barang.ProsesPahaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesPahaAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.KemasanPahaAyam.barang, Config.Barang.KemasanPahaAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.KemasanPahaAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)

RegisterNetEvent('Cj_Butcher:server:kemassayapayam', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if ox_inventory:CanCarryItem(source, Config.Barang.KemasanSayapAyam.barang, Config.Barang.KemasanSayapAyam.jumlahbarang) then
        Player.Functions.RemoveItem(Config.Barang.ProsesSayapAyam.barang, Config.Barang.ProsesSayapAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.ProsesSayapAyam.barang], "remove")
        Player.Functions.AddItem(Config.Barang.KemasanSayapAyam.barang, Config.Barang.KemasanSayapAyam.jumlahbarang)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Barang.KemasanSayapAyam.barang], "add")
    else
        TriggerClientEvent("kingdom_notify:notify", source, Notif.gagal, Notif.inventorypenuh, 'error', 3000)
end
end)