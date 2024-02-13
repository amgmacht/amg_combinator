fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'amgmacht - amgmacht-service'
description 'Item Kombinierer fürs ox_inventory'
version '2.0.0'

dependencies {'ox_lib','ox_inventory'}
shared_scripts {'@ox_lib/init.lua'}

server_scripts {
    'server/server.lua',
    'shared/config.lua'
}

client_scripts {
    'client/client.lua'
}

escrow_ignore {
    'shared/config.lua',
}