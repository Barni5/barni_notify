ESX = exports["es_extended"]:getSharedObject()

function tableContains(table, element)
    for _, value in ipairs(table) do
      if value == element then
        return true
      end
    end
    return false
end

RegisterCommand(Config.Command, function(source, args)
    local argString = table.concat(args, " ")
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if argString ~= nil then
        if not xPlayer or (xPlayer.getGroup() and tableContains(Config.whitelist, xPlayer.getGroup())) then
            --print("Van jogod!")
            TriggerClientEvent('barni-bejelentes',-1,Config.Announceleftbordercolor,Config.Announceheadermessage,argString)
        elseif not xPlayer or (xPlayer.getGroup() and not tableContains(Config.whitelist, xPlayer.getGroup())) then
            --print("Nincs jogod!")
            TriggerClientEvent('barni-sendnotify',source,Config.Nopremissionleftbordercolor,'barni-Notify',Config.Nopremissionmessage)
        end
    end
end, false)

RegisterCommand(Config.Notifytestcommand, function(source, args)
    TriggerClientEvent('barni-sendnotify',source,Config.NotifyTestcolorcode,Config.Notifyheadermessage,'Test MessageTest MessageTest MessageTest MessageTest MessageTest Message')
end, false)
