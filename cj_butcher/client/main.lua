local QBCore = exports['qb-core']:GetCoreObject()

local player = PlayerPedId()
local ngambilayam = false
local nyabutbulu = false
local prosesayam = false
local kemasayam = false

Citizen.CreateThread(function()

    for _, v in pairs(Config.blips) do
      v.blip = AddBlipForCoord(v.x, v.y, v.z)
      SetBlipSprite(v.blip, v.id)
      SetBlipDisplay(v.blip, 4)
      SetBlipScale(v.blip, 0.8)
      SetBlipColour(v.blip, v.colour)
      SetBlipAsShortRange(v.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(v.title)
      EndTextCommandSetBlipName(v.blip)
    end
end)

CreateThread(function()
    for _, k in pairs(Config.JagalAyam) do
    exports.ox_target:addBoxZone({
        coords = k.coords,
        size = vector3(2, 2, 2),
        rotation = 45,
        debug = false,
        options = {
            {
                name = k.name,
                event = k.event,
                icon = k.icon,
                label = k.label,
            }
        }
    })
    end
end)

RegisterNetEvent('Cj_Butcher:ambilayam', function ()
    local success = exports['qb-lock']:StartLockPickCircle(1,12) 
    if success then
        RequestAnimDict(Config.Animasi.ambil_ayam.dict)
        while not HasAnimDictLoaded(Config.Animasi.ambil_ayam.dict) do
            Wait(0)
        end
        TaskPlayAnim(PlayerPedId(), Config.Animasi.ambil_ayam.dict, Config.Animasi.ambil_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
        ngambilayam = true
        QBCore.Functions.Progressbar("ngambilayam", "Taking Alive Chicken", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('Cj_Butcher:server:ngambilayam')
            exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilngambilayam , 'success', 3000)
            ngambilayam = false
        end)
    else
        ClearPedTasks(PlayerPedId())
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalngambilayam , 'error', 3000)
        return end
end)

RegisterNetEvent('Cj_Butcher:cabut_bulu_ayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.AyamHidup.barang, Config.Barang.AyamHidup.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.cabut_bulu_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.cabut_bulu_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.cabut_bulu_ayam.dict, Config.Animasi.cabut_bulu_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            nyabutbulu = true
            QBCore.Functions.Progressbar("nyabutbuluayam", "Plucking Chicken Feathers", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:nyabutbulu')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilnyabutbulu , 'success', 3000)
                nyabutbulu = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalnyabutbulu , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyaayamhidup , 'error', 3000)
    end
end)


RegisterNetEvent('Cj_Butcher:menyiapkanayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang =  QBCore.Functions.HasItem(Config.Barang.AyamTanpaBulu.barang, Config.Barang.AyamTanpaBulu.jumlahbarang) and  QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.cabut_bulu_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.cabut_bulu_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.cabut_bulu_ayam.dict, Config.Animasi.cabut_bulu_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            prosesayam = true
            QBCore.Functions.Progressbar("menyiapkanayam", "Prepare Plucked Chicken", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:menyiapkanayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilmenyiapkanayam , 'success', 3000)
                prosesayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalmenyiapkanayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyaayamtanpabuludanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:prosesdadaayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang) and  QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.proses_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.proses_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.proses_ayam.dict, Config.Animasi.proses_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken breast", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:prosesdadaayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilprosesayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalprosesayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyapenyiapanayamdanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:prosespahaayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang) and QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.proses_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.proses_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.proses_ayam.dict, Config.Animasi.proses_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken thighs", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:prosespahaayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilprosesayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalprosesayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyapenyiapanayamdanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:prosessayapayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.PenyiapanAyam.barang, Config.Barang.PenyiapanAyam.jumlahbarang) and QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.proses_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.proses_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.proses_ayam.dict, Config.Animasi.proses_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken wings", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:prosessayapayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilprosesayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalprosesayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyapenyiapanayamdanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:mengemasdadaayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.ProsesDadaAyam.barang, Config.Barang.ProsesDadaAyam.jumlahbarang) and QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)
    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.mengemas_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.mengemas_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.mengemas_ayam.dict, Config.Animasi.mengemas_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken breast", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:kemasdadaayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilmengemasayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalmengemasayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyaayamprosesdanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:mengemaspahaayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.ProsesPahaAyam.barang, Config.Barang.ProsesPahaAyam.jumlahbarang) and QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.mengemas_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.mengemas_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.mengemas_ayam.dict, Config.Animasi.mengemas_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken thighs", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:kemaspahaayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilmengemasayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalmengemasayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyaayamprosesdanpisau , 'error', 3000)
    end
end)

RegisterNetEvent('Cj_Butcher:mengemassayapayam', function ()
    local source = source
    local Player = QBCore.Functions.GetPlayerData()
    local punyabarang = QBCore.Functions.HasItem(Config.Barang.ProsesSayapAyam.barang, Config.Barang.ProsesSayapAyam.jumlahbarang) and QBCore.Functions.HasItem(Config.Barang.pisau.barang, Config.Barang.pisau.jumlahbarang)

    if punyabarang then
        local berhasil = exports['qb-lock']:StartLockPickCircle(1, 12)
        
        if berhasil then
            RequestAnimDict(Config.Animasi.mengemas_ayam.dict)
            while not HasAnimDictLoaded(Config.Animasi.mengemas_ayam.dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), Config.Animasi.mengemas_ayam.dict, Config.Animasi.mengemas_ayam.anim, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)
            kemasayam = true
            QBCore.Functions.Progressbar("kemasayam", "packing chicken wings", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('Cj_Butcher:server:kemassayapayam')
                exports["kingdom_notify"]:notify(Notif.berhasil, Notif.berhasilmengemasayam , 'success', 3000)
                kemasayam = false
            end)
        else
            exports["kingdom_notify"]:notify(Notif.gagal, Notif.gagalmengemasayam , 'error', 3000)
            return
        end
    else
        exports["kingdom_notify"]:notify(Notif.gagal, Notif.gapunyaayamprosesdanpisau , 'error', 3000)
    end
end)



