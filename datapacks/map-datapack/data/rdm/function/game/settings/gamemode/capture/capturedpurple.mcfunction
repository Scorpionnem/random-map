kill @e[tag=capturepurple,type=item_display]
scoreboard players set .purple capture 0
tellraw @a {"text": "Lime team stole purple's randomitron!","color": "green"}
tellraw @a[team=Purple] {"text": "You can no longer respawn!","color": "red","bold": true}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
tag @a remove capturedpurple