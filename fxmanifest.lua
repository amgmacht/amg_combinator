fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'amgmacht - amgmacht-service'
description 'Item Kombinierer'
version '1.0'

dependencies {'ox_lib','ox_inventory'}
shared_scripts {'@ox_lib/init.lua'}

server_scripts {
    'server.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}