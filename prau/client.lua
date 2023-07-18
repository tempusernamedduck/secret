local followingCat = nil

RegisterNetEvent("catfollow:spawned")
AddEventHandler("catfollow:spawned", function(playerId, networkId)
    if followingCat then
        return
    end

    followingCat = NetworkGetEntityFromNetworkId(networkId)
    SetEntityAsMissionEntity(followingCat, true, true)
end)

RegisterNetEvent("catfollow:despawned")
AddEventHandler("catfollow:despawned", function(playerId)
    if followingCat then
        ClearPedTasks(followingCat)
        DeleteEntity(followingCat)
        followingCat = nil
    end
end)
