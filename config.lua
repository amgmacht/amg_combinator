Config = {}
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.Progressbar = 'ox_lib' -- esx/ox_lib
Config.KombiDauer = 4000 -- Progressbar Zeit
Config.KombiText = 'Kombinieren..' -- Progressbar Text
Config.KombiPosition = 'middle' -- Progressbar Position ONLY ox_lib
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.Combinations = {

    ['pizza_kaese'] = { -- Das Ziehende Item
        needs = {
            {
                item = 'pizza_karton', -- Benötigte Items
                amount = 1
            },
        },
        result = {
            [1] = {
                name = 'pizza_karton_kaese', -- Erhaltene Items
                amount = 1 
            },
        }, 
        firstcombiremove = true, -- Entfernt Item
        needcombiremove = true, -- Entfernt Item
    },
}