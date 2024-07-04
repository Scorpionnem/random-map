scoreboard players set .temp link 0
scoreboard players operation .temp link = @s link
tag @s add tempo
execute at @s as @e[tag=captureitem] if score @s link = .temp link at @e[tag=tempo] run tp @s ~ ~.5 ~
tag @e remove tempo
tag @s remove locked