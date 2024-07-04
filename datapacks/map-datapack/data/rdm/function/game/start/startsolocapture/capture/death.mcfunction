tag @s remove captured
scoreboard players set .temp linktp 0
scoreboard players operation .temp linktp = @s linktp
execute at @s as @e[tag=captureditem] if score @s linktp = .temp linktp run function rdm:game/start/startsolocapture/capture/death2
scoreboard players set @s linktp 0