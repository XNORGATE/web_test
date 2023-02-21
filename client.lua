
local isHide = true

RegisterCommand("flutter_test", function(_, args)	
	ToggleDisplay()
end, false)

RegisterKeyMapping('flutter_test', 'test', 'keyboard', 'f5')

function ToggleDisplay()
	isHide = not isHide 
	
	SendNUIMessage({HideHud = isHide})
	SetNuiFocus(not isHide, not isHide)

end

RegisterNUICallback('enableInput', function(data, cb)
	print(data.message)
    -- SetNuiFocus(true, true)
end)
