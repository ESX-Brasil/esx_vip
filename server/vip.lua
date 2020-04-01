ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
ESX = obj
end)

RegisterServerEvent("esx_vip:salarioVip")
AddEventHandler('esx_vip:salarioVip', function ()
local xPlayer = ESX.GetPlayerFromId(source)
local group = xPlayer.getGroup()
local playergroup = group


if playergroup == 'admin' or playergroup == 'superadmin' or playergroup == '_dev' then
  xPlayer.addAccountMoney('bank', Config.salSA)
  TriggerClientEvent('esx:showAdvancedNotification', source, 'Olá administrador', '~b~Você recebeu um pagamento', '~y~Seu salário de administrador no valor de ~b~' .. Config.salSA .. ' ~y~foi depositado, vlw flw!', 'CHAR_BANK_FLEECA', 1)
elseif playergroup == 'vip3' then
    xPlayer.addAccountMoney('bank', Config.salvip3)
  TriggerClientEvent('esx:showAdvancedNotification', source, 'Olá senhor doador', '~b~Você recebeu um pagamento', '~y~Seu salário de doador no valor de ~b~' .. Config.salvip3 .. ' ~y~foi depositado, obrigado por ajudar o servidor!', 'CHAR_BANK_FLEECA', 1)
elseif playergroup == 'vip2' then
    xPlayer.addAccountMoney('bank', Config.salvip2)
  TriggerClientEvent('esx:showAdvancedNotification', source, 'Olá senhor doador', '~b~Você recebeu um pagamento', '~y~Seu salário de doador no valor de ~b~' .. Config.salvip2 .. ' ~y~foi depositado, obrigado por ajudar o servidor!', 'CHAR_BANK_FLEECA', 1)
elseif playergroup == 'vip1' then
    xPlayer.addAccountMoney('bank', Config.salvip1)
  TriggerClientEvent('esx:showAdvancedNotification', source, 'Olá senhor doador', '~b~Você recebeu um pagamento', '~y~Seu salário de doador no valor de ~b~' .. Config.salvip1 .. ' ~y~foi depositado, obrigado por ajudar o servidor!', 'CHAR_BANK_FLEECA', 1)
elseif playergroup == 'user' then
  TriggerClientEvent('esx:showAdvancedNotification', source, 'Ajude o servidor', '~b~Gostou do servidor? Contribua!', '~y~Nosso servidor é totalmente grátis, porém temos custos, se você gosta do servidor, contribua!', 'CHAR_BANK_FLEECA', 1)
end
end)