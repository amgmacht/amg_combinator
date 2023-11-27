Config = {}
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.KombiDauer = 4000 -- Progressbar Zeit
Config.KombiText = 'Kombinieren..' -- Progressbar Text
Config.KombiPosition = 'middle' -- Progressbar Position
----------------------------------------------------------------------
----------------------------------------------------------------------
Config.Combinations = {
    ----------------------------------------------------------------------
    ['pooch_bag'] = { -- firstcombi Item ist das, das Gezogen werden muss auf needcombi item
        needs = {
            item = 'ecstasy_pillen', -- needcombi ist das item hier worauf das firstcombi gezogen wird
            amount = 10 -- Benötigte Menge
        },
        result = {
            [1] = {
                name = 'verpacktes_extasy', -- Erhaltenes Item
                amount = 1 -- Erhaltene Menge
            },
        }, 
        firstcombiremove = true, -- firstcombi Entfernen nach Kombinieren
        needcombiremove = true, -- needcombi Entfernen nach Kombinieren
    },
    ----------------------------------------------------------------------
    ['rolling_paper'] = {
        needs = {
            item = 'weed_pooch',
            amount = 1,
        },
        result = {
            [1] = {name = 'cannabis_joint', amount = 1},
        },
        firstcombiremove = true,
        needcombiremove = true,
    },
    ['leere_spritze_heroin'] = {
        needs = {
            item = 'heroin_pooch',
            amount = 1,
        },
        result = {
            [1] = {name = 'heroin_shot', amount = 1},
        },
        firstcombiremove = true,
        needcombiremove = true,
    },
    ['leere_spritze_meth'] = {
        needs = {
            item = 'meth_pooch',
            amount = 1,
        }, 
        result = {
            [1] = {name = 'meth_spritze', amount = 1},
        }, 
        firstcombiremove = true,
        needcombiremove = true,
    },
    ['distilledwater'] = {
        needs = {
            item = 'fertilizer',
            amount = 1,
        },
        result = {
            [1] = {name = 'fluessig_duenger', amount = 1},
        },
        firstcombiremove = true,
        needcombiremove = true,
    },
    ['lappen'] = {
        needs = {
            item = 'acetone',
            amount = 1,
        },
        result = {
            [1] = {name = 'spray_remover', amount = 1},
        },
        firstcombiremove = true,
        needcombiremove = true,
    },
}