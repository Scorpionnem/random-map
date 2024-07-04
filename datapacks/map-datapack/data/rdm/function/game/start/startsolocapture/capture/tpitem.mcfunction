


scoreboard players set .temp linktp 0
scoreboard players operation .temp linktp = @s linktp
execute at @s as @e[tag=captureditem] if score @s linktp = .temp linktp run tp @s ~ ~3 ~