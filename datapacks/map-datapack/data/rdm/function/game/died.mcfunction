scoreboard players set @s death 0
gamemode spectator @s
execute if score .ffasolo settings matches 1 run tag @s remove alive
execute if score .teambutton settings matches 1 run tag @s remove alive

execute if score .capture settings matches 1 run scoreboard players set @s respawn 60

execute as @s[tag=capturedlime] if score .capture settings matches 1 run function rdm:game/settings/gamemode/capture/resetlime
execute as @s[tag=capturedpurple] if score .capture settings matches 1 run function rdm:game/settings/gamemode/capture/resetpurple

tag @s remove capturedlime
tag @s remove capturedpurple

execute as @s[tag=capturedlime] if score .capture settings matches 1 run tag @e[tag=capturelime,type=interaction] remove locked
execute as @s[tag=capturedpurple] if score .capture settings matches 1 run tag @e[tag=capturepurple,type=interaction] remove locked