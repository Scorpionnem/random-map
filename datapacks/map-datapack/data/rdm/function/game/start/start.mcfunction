execute as @a run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a run attribute @s minecraft:player.block_interaction_range base set 4.5
function rdm:game/start/resetmap

scoreboard objectives remove ylevel
scoreboard objectives add ylevel dummy



#fill 11 90 3 -11 55 3 barrier
execute as @a at @a run tp @s @e[type=marker,sort=nearest,limit=1]
tp @a[tag=spectator] 0 72 32
kill @e[type=!text_display,type=!player,type=!item_display,type=!marker,type=!interaction]

function rdm:resetgame/resetpillars

fill -50 120 3 50 -10 3 barrier


execute as @a[tag=spectator] run gamemode spectator @s
execute as @a[tag=player] run gamemode survival @s
execute if score .teambutton settings matches 1 as @a[tag=player,gamemode=survival] run function rdm:game/pillars/spawn
execute if score .ffasolo settings matches 1 as @a[tag=player,gamemode=survival] run function rdm:game/pillars/spawn


scoreboard players set .game game 1
#scoreboard players set .random timer2 60
scoreboard players operation .random timer2 = .time2 settings

clear @a
execute as @a run function rdm:give
bossbar set rdm:items visible true
bossbar set rdm:items players @a

execute if score .teambutton settings matches 1 as @e[sort=random,limit=1,type=marker,tag=pillar] run tag @s add middle
execute if score .teambutton settings matches 1 at @e[type=marker,tag=middle,tag=pillar] run worldborder center ~ ~
execute if score .ffasolo settings matches 1 as @e[sort=random,limit=1,type=marker,tag=pillar] run tag @s add middle
execute if score .ffasolo settings matches 1 at @e[type=marker,tag=middle,tag=pillar] run worldborder center ~ ~

tag @a[tag=player] add alive

execute as @a[tag=alive] run scoreboard players add .ingame players 1

execute if score .ingame players matches ..9 run worldborder set 59
execute if score .ingame players matches 10.. run worldborder set 80




execute if score .zonebutton settings matches 1 if score .teambutton settings matches 1 run worldborder set 3 300
execute if score .zonebutton settings matches 1 if score .ffasolo settings matches 1 run worldborder set 3 300

scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0
scoreboard players set .button button 0

tellraw @a {"bold":true,"color":"green","italic":false,"text":"Game starting!"}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
effect clear @a
effect give @a slowness 2 100 true
execute as @a run attribute @s minecraft:generic.jump_strength base set 0
schedule function rdm:game/start/start/starting 2s
gamerule showDeathMessages true
gamerule fallDamage true
team modify Lime collisionRule always
team modify Purple collisionRule always
team modify Neutral collisionRule always
kill @e[tag=capturelime]
kill @e[tag=capturepurple]
execute if score .teambutton settings matches 1 run schedule function rdm:game/glowing 300s
execute if score .ffasolo settings matches 1 run schedule function rdm:game/glowing 300s
execute if score .teambutton settings matches 1 as @a[team=Lime] at @s run setblock ~ ~-1 ~ lime_wool
execute if score .teambutton settings matches 1 as @a[team=Purple] at @s run setblock ~ ~-1 ~ purple_wool