fx_version 'adamant'

game 'gta5'

description 'ESX VIP'

version '1.0.1'

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/vip.lua',
  'config.lua',
}

client_scripts {
  'client/vip.lua',
  'config.lua',
}
