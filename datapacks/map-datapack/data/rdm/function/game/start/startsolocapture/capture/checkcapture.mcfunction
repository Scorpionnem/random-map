scoreboard players set .temp link 0
scoreboard players operation .temp link = @s link
execute at @s as @e[type=interaction,tag=capture,distance=..3] if score @s link = .temp link at @s as @a[tag=player] if score @s link = .temp link as @s run function rdm:game/start/startsolocapture/capture/checkcapture2