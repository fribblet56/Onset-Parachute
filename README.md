# Onset-Parachute
Simple Parachute system for Onset

## How to install
- Add the "Onset_Parachute" folder to your server packages 

- Edit your server_config.json and add "Onset_Parachute" in the packages section before the files who need it

```json
"packages": [
	"Onset_Parachute"
],
```
- On the files who needs to add weapons to player, initialize the Onset_Weapon_Pacth using this function  
```lua
local Parachute = ImportPackage("Onset_Parachute")
```
After that you should be able to use the built-in functions

## Function
```lua
SetPlayerParachute(player, boolean)
SpawnParachute(x,y,z)
```

## Exemple
[ Simple commands ]
```lua
local Parachute = ImportPackage("Onset_Parachute") -- Import to your Server Script OnsetWeaponPatch

AddCommand("p-spawn", function(player)
    local x,y,z = GetPlayerLocation(player)
    Parachute.SpawnParachute(x,y,z)
end)

AddCommand("p", function(player)
    Parachute.SetPlayerParachute(player, true)
end)
```

## Package Config
[ Edite CONFIG.lua file ]
```lua
-- Made with 🖤 By Philip-J.Fry --

DISABLE_COMMANDE = false -- Set to true for disabled command
```
## Package Commands
``
/p-fly -- tp player to z 40000 </br>
/p -- add parachute to player </br>
/p-spawn -- Spawn parachute </br>
``

## Discord
Join Origin [Discord](https://discord.gg/MDEwtKr) server now !

## License
This project is licensed under the [MIT](https://choosealicense.com/licenses/mit/) License
