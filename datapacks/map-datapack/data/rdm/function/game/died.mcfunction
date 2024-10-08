#execute if score .solocapture settings matches 1 as @s run function rdm:game/start/startsolocapture/capture/death

scoreboard players set @s death 0
gamemode spectator @s
execute if score .ffasolo settings matches 1 run tag @s remove alive
execute if score .teambutton settings matches 1 run tag @s remove alive

execute if score .capture settings matches 1 run scoreboard players set @s respawn 100
execute if score .solocapture settings matches 1 run scoreboard players set @s[tag=canrespawn] respawn 100
execute if score .solocapture settings matches 1 run tag @s[tag=!canrespawn] remove alive





execute as @s[tag=capturedlime] if score .capture settings matches 1 run function rdm:game/settings/gamemode/capture/resetlime
execute as @s[tag=capturedpurple] if score .capture settings matches 1 run function rdm:game/settings/gamemode/capture/resetpurple

tag @s remove capturedlime
tag @s remove capturedpurple




execute as @s[tag=capturedlime] if score .capture settings matches 1 run tag @e[tag=capturelime,type=interaction] remove locked
execute as @s[tag=capturedpurple] if score .capture settings matches 1 run tag @e[tag=capturepurple,type=interaction] remove locked

tp @s 0 75 32

scoreboard players add @s deathstat 1
