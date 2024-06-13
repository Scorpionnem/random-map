scoreboard players set @s death 0
gamemode spectator @s
execute if score .ffasolo settings matches 1 run tag @s remove alive
execute if score .teambutton settings matches 1 run tag @s remove alive

execute if score .capture settings matches 1 run scoreboard players set @s respawn 60