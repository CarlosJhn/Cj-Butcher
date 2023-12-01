local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('Cj_Butcher:client:menuprosesayam', function()
        exports['qb-menu']:openMenu({
            {
                header = "Process Fresh Chicken",
                isMenuHeader = true,
            },         
            {   
                header = "Process Chicken Breast",
                txt = "Process Fresh Chicken Breast",
                params = {
                    event = "Cj_Butcher:prosesdadaayam",
                }
            },          
            {   
                header = "Process Chicken Thighs",
                txt = "Process Fresh Chicken Thighs",
                params = {
                    event = "Cj_Butcher:prosespahaayam",
                }
            },          
            {   
                header = "Process Chicken Wings",
                txt = "Process Fresh Chicken Wings",
                params = {
                    event = "Cj_Butcher:prosessayapayam",
                }
            },          
            {
                header = "< Close",
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    end)

RegisterNetEvent('Cj_Butcher:client:menukemasayam', function()
    exports['qb-menu']:openMenu({
        {
            header = "Pack Chicken Products Ready For Sale!",
            isMenuHeader = true,
        },
        {   
            header = "Pack Chicken Breast",
            txt = "Pack Fresh Chicken Breast Ready For Sale",
            params = {
                event = "Cj_Butcher:mengemasdadaayam",
            }
        },          
        {   
            header = "Pack Chicken Thighs",
            txt = "Pack Fresh Chicken Thighs Ready For Sale",
            params = {
                event = "Cj_Butcher:mengemaspahaayam",
            }
        },          
        {   
            header = "Pack Chicken Wings",
            txt = "Pack Fresh Chicken Wings Ready For Sale",
            params = {
                event = "Cj_Butcher:mengemassayapayam",
            }
        },          
        {
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)