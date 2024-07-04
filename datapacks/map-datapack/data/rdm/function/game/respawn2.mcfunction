scoreboard players set .temp linkrespawn 0
scoreboard players operation .temp linkrespawn = @s linkrespawn
tag @s add tempo2
execute at @s as @a[tag=respawning] as @s if score @s linkrespawn = .temp linkrespawn at @e[tag=tempo2] run tp @s ~ ~.5 ~
tag @e remove tempo2

execute at @s as @a[tag=respawning] as @s if score @s linkrespawn = .temp linkrespawn as @s run tag @s remove respawning

