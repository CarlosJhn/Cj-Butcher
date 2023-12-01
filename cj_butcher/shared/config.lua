Config = {}

Config.blips = {
    {title="Butcher", colour=2, id=268, x = -68.8078, y = 6245.7319, z = 31.0766 },
}

Config.AyamRandom = {
    Min = 1,
    Max = 5,
}

Config.JagalAyam = {
    {
        name = "ambilayam",
        coords = vector3(-66.2, 6247.98, 31.33),
        label = "Take a Live Chicken",
        event = 'Cj_Butcher:ambilayam',
        icon = 'fa-solid fa-box-open',
    },
    {
        name = "cabutbuluayam",
        coords = vector3(-89.33, 6234.58, 31.33),
        label = "Plucking Chicken Feathers",
        event = 'Cj_Butcher:cabut_bulu_ayam',
        icon = 'fa-regular fa-clipboard',
    },
    {
        name = "penyiapanayam",
        coords = vector3(-79.03, 6228.83, 31.08),
        label = "Prepare Chicken",
        event = 'Cj_Butcher:menyiapkanayam',
        icon = 'fa-regular fa-clipboard',
    },
    {
        name = "prosesayam",
        coords = vector3(-99.79, 6210.99, 31.03),
        label = "Process Plucked Chicken",
        event = 'Cj_Butcher:client:menuprosesayam',
        icon = 'fa-regular fa-clipboard',
    },
    {
        name = "mengemasayam",
        coords = vector3(-103.98, 6206.8, 31.03),
        label = "Pack Chicken",
        event = 'Cj_Butcher:client:menukemasayam',
        icon = 'fa-solid fa-box-open',
    },
}

Config.Animasi = {
    ambil_ayam = {
        dict = "amb@prop_human_parking_meter@female@base",
        anim = "base_female",
    },
    cabut_bulu_ayam ={
        dict = "amb@prop_human_parking_meter@female@base",
        anim = "base_female",
    },
    pernyiapan_ayam = {
        dict = "amb@prop_human_parking_meter@female@base",
        anim = "base_female",
    },
    proses_ayam = {
        dict = "amb@prop_human_parking_meter@female@base",
        anim = "base_female",
    },
    mengemas_ayam = {
        dict = "amb@prop_human_parking_meter@female@base",
        anim = "base_female",
    },
}

Config.Barang = {
    pisau = {
        barang = 'pisau_jagalayam',
        jumlahbarang = 1,
    },
    AyamHidup = {
        barang = 'ayam_hidup',
        jumlahbarang = 2,
    },
    AyamTanpaBulu = {
        barang = 'ayam_tanpa_bulu',
        jumlahbarang = 2,
    },
    PenyiapanAyam = {
        barang = 'penyiapan_ayam',
        jumlahbarang = 5,
    },
    ProsesDadaAyam = {
        barang = 'proses_dada_ayam',
        jumlahbarang = 5,
    },
    ProsesPahaAyam = {
        barang = 'proses_paha_ayam',
        jumlahbarang = 5,
    },
    ProsesSayapAyam = {
        barang = 'proses_sayap_ayam',
        jumlahbarang = 5,
    },
    KemasanDadaAyam = {
        barang = 'kemasan_dada_ayam',
        jumlahbarang = 5,
    },
    KemasanPahaAyam = {
        barang = 'kemasan_paha_ayam',
        jumlahbarang = 5,
    },
    KemasanSayapAyam = {
        barang = 'kemasan_sayap_ayam',
        jumlahbarang = 5,
    },
}

Notif = {
    berhasil = 'Success',
    berhasilngambilayam = 'You managed to pick up alive chicken',
    berhasilnyabutbulu = 'You managed to Plucking Chicken Feathers',
    berhasilmenyiapkanayam = 'You managed to Prepare Plucked Chicken',
    berhasilprosesayam = 'You managed to Process Prepared Chicken',
    berhasilmengemasayam = 'You managed to Pack Chicken',

    --Gagal
    gagal = 'Failed',
    gagalngambilayam = 'You failed to pick up alive chicken',
    gagalnyabutbulu = 'You failed to Plucking Chicken Feathers',
    gagalmenyiapkanayam = 'You failed to Process Plucked Chicken',
    gagalprosesayam = 'You failed to Process Prepared Chicken',
    gagalmengemasayam = 'You failed to Pack Chicken',

    --Inventory Full
    inventorypenuh = 'You do not have enough inventory space.',
    
    --gapunyabarangyangdibutuhkan
    error = 'error',
    gapunyaayamhidup = 'You do not have the alive chicken to do this.',
    gapunyaayamtanpabuludanpisau = 'You do not have the Plucked Chicken or/and knife to do this.',
    gapunyapenyiapanayamdanpisau = 'You do not have the Prepared Chicken or/and knife to do this.',
    gapunyaayamprosesdanpisau = 'You do not have the Processed Chicken or/and knife to do this.',
}