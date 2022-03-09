[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
# PopUp Notifications (FiveM) 

**(Work in progress)**

This is a text UI system that allows you to replace DrawText3Ds/ShowHelpNotifications.

## Authors

- [@JasonTheMan | Jvson03](https://github.com/jvson03)

## Usage/Examples

```lua
Citizen.CreateThread(function()
    local alreadyEnteredZone = false
    local text = '[E] Press E to be bald'
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false
        local dist = #(GetEntityCoords(ped)-vector3(0,0,0))
        if dist <= 5.0 then
            wait = 5
            inZone  = true

            if IsControlJustReleased(0, 38) then
                TriggerEvent('your event here')
            end
        else
            wait = 1000
        end
        
        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            -- We show the PopUp
            exports['okokTextUI']:Pop(text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            -- The player left the zone so we can hide the PopUp
            exports['dotsoft_popup']:Hide()
        end
        Citizen.Wait(wait)
    end
end)
```

## Discord

- [DotSoft](https://discord.gg/ZAmVQFmbsp)
