scoreboard players set @s bye 0
execute if score .game game matches 0 if entity @s[gamemode=spectator] run tp @s 0 79 -5
execute if score .game game matches 0 if entity @s[gamemode=spectator] run gamemode adventure @s

execute if score .game game matches 1 if entity @s[tag=alive,gamemode=survival] run kill @s
execute if score .game game matches 0 if entity @s[tag=alive,gamemode=survival] run kill @s
scoreboard players set @s death 0

