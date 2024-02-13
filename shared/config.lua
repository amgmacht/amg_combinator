Config = {}
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.Progressbar = 'ox_lib'
Config.KombiDauer = 4000 -- Progressbar Zeit
Config.KombiText = 'Kombinieren..' -- Progressbar Text
Config.KombiPosition = 'middle' -- Progressbar Position
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.Combinations = {

    ['pizza_kaese'] = {
        needs = {
            {
                item = 'pizza_karton',
                amount = 1
            },
        },
        result = {
            [1] = {
                name = 'pizza_karton_kaese',
                amount = 1 
            },
        }, 
        firstcombiremove = true,
        needcombiremove = true, 
    },
}