RegisterNetEvent('dotsoft_popup:Pop')
AddEventHandler('dotsoft_popup:Pop', function(text)
	SendNUIMessage({
		action = 'pop',
		text = text,
	})
end)

RegisterNetEvent('dotsoft_popup:Hide')
AddEventHandler('dotsoft_popup:Hide', function()
	SendNUIMessage({
		action = 'hide'
	})
end)