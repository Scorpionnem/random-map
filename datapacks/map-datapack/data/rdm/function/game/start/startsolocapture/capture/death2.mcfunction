scoreboard players set .temp link 0
scoreboard players operation .temp link = @s link
execute at @s as @e[type=interaction,tag=capture] if score @s link = .temp link as @s run function rdm:game/start/startsolocapture/capture/death3
data merge entity @s[type=item_display,tag=captureitem] {Glowing:0b}