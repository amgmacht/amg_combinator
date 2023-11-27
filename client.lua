ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('amg_combinator:combinatorprog')
AddEventHandler('amg_combinator:combinatorprog', function()
    lib.progressCircle({
        duration = Config.KombiDauer,
        label = Config.KombiText,
        Config.KombiPosition,
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@prop_human_parking_meter@male@base',
            clip = 'base'
        },
    })
end)
