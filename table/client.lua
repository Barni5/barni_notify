ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('barni-sendnotify')
AddEventHandler('barni-sendnotify', function(color, title, message)
    SendNUIMessage({
        type = "custom",
        color = color,
		title = title,
        message = message,
    })
	PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
end);

RegisterNetEvent('barni-bejelentes')
AddEventHandler('barni-bejelentes', function(color, title, message)
    SendNUIMessage({
        type = "bejelentes",
        color = color,
		title = title,
        message = message,
    })
	PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
end)