local Parachute_list = {}

function Spawn(x, y, z)
    local pickup = CreatePickup(818, x, y, z)
    table.insert(Parachute_list, pickup)
end
AddFunctionExport("Spawn", Spawn)

function SetParachutePlayer(player, value)
    AttachPlayerParachute(player, value)
end
AddFunctionExport("SetParachutePlayer", SetParachutePlayer)



AddEvent("OnPlayerPickupHit", function(player, pickup)
    for k,v in pairs(Parachute_list) do
        if v == pickup then
            DestroyPickup(pickup)
            AttachPlayerParachute(player, true)
            Parachute_list[k] = nil
        end
    end
end)

AddRemoteEvent("parachute:disable", function(player)
    AttachPlayerParachute(player, false)
end)