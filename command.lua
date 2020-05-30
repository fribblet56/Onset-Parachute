AddCommand("p-spawn", function(player)
    if DISABLE_COMMANDE then return end
    local x,y,z = GetPlayerLocation(player)
    Spawn(x,y,z)
end)

AddCommand("p-fly", function(player)
    if DISABLE_COMMANDE then return end
    local x,y,z = GetPlayerLocation(player)

    SetPlayerLocation(player, x, y, z + 40000)
end)

AddCommand("p", function(player)
    if DISABLE_COMMANDE then return end
    SetParachutePlayer(player, true)
end)