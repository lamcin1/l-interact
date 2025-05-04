local showing = false

function showInteractUi(key, text)
    if not showing then
        showing = true
        SendNUIMessage({
            action = "show",
            key = key or "E",
            text = text or "Drücke E"
        })
    end
end

function hideInteractUi()
    if showing then
        showing = false
        SendNUIMessage({ action = "hide" })
    end
end


RegisterNetEvent('l-interact:show')
AddEventHandler('l-interact:show', function(key, text)
    showInteractUi(key, text)
end)

RegisterNetEvent('l-interact:hide')
AddEventHandler('l-interact:hide', function()
    hideInteractUi()
end)
