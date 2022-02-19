function Pop(message)
	SendNUIMessage({
		action = 'pop',
		text = message,
	})
end

function Hide()
	SendNUIMessage({
		action = 'hide'
	})
end

RegisterNetEvent('dotsoft_popup:Pop')
AddEventHandler('dotsoft_popup:Pop', function(message)
	Pop(message)
end)

RegisterNetEvent('dotsoft_popup:Hide')
AddEventHandler('dotsoft_popup:Hide', function()
	Hide()
end)