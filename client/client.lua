ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('amg_combinator:combinatorprog')
AddEventHandler('amg_combinator:combinatorprog', function()

    if Config.Progressbar == 'ox_lib' then
        lib.progressCircle({
            duration = Config.KombiDauer,
            label = Config.KombiText,
            position = Config.KombiPosition,
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
    elseif Config.Progressbar = 'esx' then
        exports["esx_progressbar"]:Progressbar(Config.KombiText, Config.KombiDauer,{
            FreezePlayer = true, 
            animation ={
                type = "anim",
                dict = "anim@mp_player_intmenu@key_fob@", 
                lib ="fob_click"
            },
            onFinish = function()
            -- Nothing
        end})
    end
end)