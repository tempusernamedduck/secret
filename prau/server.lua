local followingCats = {}

RegisterCommand("catfollow", function(source)
    local playerId = source
    local target = GetPlayerPed(playerId)

    if target and followingCats[playerId] == nil then
        local targetCoords = GetEntityCoords(target)
        local cat = CreatePed(28, "a_c_cat_01", targetCoords.x, targetCoords.y, targetCoords.z, 0.0, true, true)
        TaskFollowToOffsetOfEntity(cat, target, 1.0, 0.0, 0.0, 5.0, -1, 0.0, true)
        followingCats[playerId] = cat
        TriggerClientEvent("catfollow:spawned", -1, playerId, NetworkGetNetworkIdFromEntity(cat))
    elseif followingCats[playerId] ~= nil then
        ClearPedTasks(followingCats[playerId])
        DeleteEntity(followingCats[playerId])
        followingCats[playerId] = nil
        TriggerClientEvent("catfollow:despawned", -1, playerId)
    end
end, false)
