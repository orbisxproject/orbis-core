OrbisCore = {}

CreateThread(function()
	while not Config.Multichar do
		Wait(15)
		if NetworkIsPlayerActive(PlayerId()) then
			exports.spawnmanager:setAutoSpawn(false)
			DoScreenFadeOut(0)
			Wait(500)
			TriggerServerEvent('orbis:onPlayerJoined')
			break
		end
	end
end)

AddEventHandler('orbis:getSharedObject', function(cb)
	cb(OrbisCore)
end)

exports('getSharedObject', function()
	return OrbisCore
end)

if GetResourceState('ox_inventory') ~= 'missing' then
	Config.OxInventory = true
end