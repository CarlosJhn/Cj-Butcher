fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'carlosjhn#0'
description 'Butcher Job For QB with ox_inventory'
version '1.0'

client_scripts {
    'client/*.lua'
}

server_scripts {'server/*.lua'}

shared_scripts {
'shared/*.lua',
'@ox_lib/init.lua',
}

dependencies {
    'ox_target',
    'ox_inventory'
}