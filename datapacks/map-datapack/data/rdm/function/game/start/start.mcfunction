fill 31 319 1 -31 -64 63 air
kill @e[type=!text_display,type=!player,type=!item_display,type=!marker,type=!interaction]
function rdm:resetgame/resetpillars
execute as @a[tag=player] run function rdm:game/pillars/spawn
execute as @a[tag=spectator] run gamemode spectator @s
execute as @a[tag=player] run gamemode survival @s
scoreboard players set .game game 1
scoreboard players set .random timer2 100
clear @a
execute as @a run function rdm:give
bossbar set rdm:items visible true
bossbar set rdm:items players @a
worldborder set 63
worldborder set 1 120
scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0
scoreboard players set .button button 0
tellraw @a {"bold":true,"color":"green","italic":false,"text":"Game starting!"}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
effect clear @a
tag @a[tag=player] add alive
