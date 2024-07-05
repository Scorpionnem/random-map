say caca
execute as @a run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a run attribute @s minecraft:player.block_interaction_range base set 4.5
function rdm:game/start/resetmap
kill @e[tag=respawner]

say caca

scoreboard objectives remove ylevel
scoreboard objectives add ylevel dummy

tag @a remove winner
tag @a add ingame

#fill 11 90 3 -11 55 3 barrier
execute as @a at @a run tp @s @e[type=marker,sort=nearest,limit=1]
tp @a[tag=spectator] 0 72 32
kill @e[type=!text_display,type=!player,type=!item_display,type=!marker,type=!interaction]
kill @e[type=item]
kill @e[tag=capture]
kill @e[tag=captureitem]
function rdm:resetgame/resetpillars

fill -50 120 3 50 -10 3 barrier

execute as @a at @s run spawnpoint @s ~ ~ ~

execute as @a[tag=spectator] run gamemode spectator @s
execute as @a[tag=player] run gamemode survival @s

execute if score .solocapture settings matches 1 as @a[tag=player] run function rdm:game/pillars/spawn

execute at @e[type=marker,tag=pillar] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 bedrock replace air

execute at @e[type=marker,tag=pillar] run summon interaction ~ ~ ~ {Tags:["capture"]}
execute at @e[type=marker,tag=pillar] run summon item_display ~ ~.5 ~ {Tags:["captureitem"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":5}}}
execute as @e[tag=captureitem] as @s store result score @s linktp run random value 1..1000000000
scoreboard players set .global link 0
scoreboard players set @e link 0

execute at @e[type=marker,tag=pillar] run summon marker ~ ~ ~ {Tags:["respawner"]}
execute as @e[tag=respawner] as @s store result score @s linkrespawn run random value 1..1000000000
execute as @a at @s run scoreboard players operation @s linkrespawn = @e[tag=respawner,sort=nearest,limit=1] linkrespawn


execute as @e[type=interaction,tag=capture] at @s run function rdm:game/start/startsolocapture/link


execute as @e[tag=captureitem] run data merge entity @s {teleport_duration:1}

scoreboard players set .game game 1
#scoreboard players set .random timer2 60
scoreboard players operation .random timer2 = .time2 settings

clear @a
execute as @a run function rdm:give
bossbar set rdm:items visible true
bossbar set rdm:items players @a

tag @a[tag=player] add alive
tag @a[tag=player] add canrespawn
execute as @a[tag=alive] run scoreboard players add .ingame players 1

execute if score .ingame players matches ..9 run worldborder set 59
execute if score .ingame players matches 10.. run worldborder set 80




scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0
scoreboard players set .button button 0

tellraw @a {"bold":true,"color":"green","italic":false,"text":"Game starting!"}
effect clear @a
effect give @a slowness 2 100 true
effect give @a resistance 2 100 true
execute as @a run attribute @s minecraft:generic.jump_strength base set 0
schedule function rdm:game/start/start/starting 1s
gamerule showDeathMessages true
gamerule fallDamage true
team modify Lime collisionRule always
team modify Purple collisionRule always
team modify Neutral collisionRule always
kill @e[tag=capturelime]
kill @e[tag=capturepurple]

