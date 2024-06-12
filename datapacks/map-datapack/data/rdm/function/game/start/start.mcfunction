execute as @a run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a run attribute @s minecraft:player.block_interaction_range base set 4.5
function rdm:game/start/resetmap
fill 11 90 3 -11 55 3 barrier
execute as @a at @a run tp @s @e[type=marker,sort=nearest,limit=1]
tp @a[tag=spectator] 0 72 32
kill @e[type=!text_display,type=!player,type=!item_display,type=!marker,type=!interaction]
function rdm:resetgame/resetpillars
execute as @a[tag=spectator] run gamemode spectator @s
execute as @a[tag=player] run gamemode survival @s
execute as @a[tag=player,gamemode=survival] run function rdm:game/pillars/spawn

scoreboard players set .game game 1
#scoreboard players set .random timer2 60
scoreboard players operation .random timer2 = .time2 settings

clear @a
execute as @a run function rdm:give
bossbar set rdm:items visible true
bossbar set rdm:items players @a
execute at @e[sort=random,limit=1,type=marker,tag=pillar] run worldborder center ~ ~
worldborder set 59
execute if score .zonebutton settings matches 1 run worldborder set 3 300
scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0
scoreboard players set .button button 0
tellraw @a {"bold":true,"color":"green","italic":false,"text":"Game starting!"}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
effect clear @a
effect give @a slowness 1 100 true
tag @a[tag=player] add alive
gamerule showDeathMessages true
gamerule fallDamage true
team modify Lime collisionRule always
team modify Purple collisionRule always
team modify Neutral collisionRule always

schedule function rdm:game/glowing 300s