scoreboard players set .temp linktp 0
scoreboard players operation .temp linktp = @s linktp
execute at @s as @e[tag=captureditem] if score @s linktp = .temp linktp as @s run function rdm:game/start/startsolocapture/capture/checkcapture3
execute at @s as @e[tag=captureditem] if score @s linktp = .temp linktp as @s run kill @s