kill @e[tag=capturelime,type=item_display]
scoreboard players set .lime capture 0
tellraw @a {"text": "Purple team retrieved lime's randomitron!","color": "dark_purple"}
tellraw @a[team=Lime] {"text": "You can no longer respawn!","color": "red","bold": true}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
tag @a remove capturedlime
execute as @a[team=Lime,gamemode=spectator] run function rdm:game/respawn