execute as @a run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a run attribute @s minecraft:player.block_interaction_range base set 4.5
function rdm:game/start/resetmap


kill @e[tag=capturelime]
kill @e[tag=capturepurple]

scoreboard players set .purple capture 1
scoreboard players set .lime capture 1

tp @a[team=Lime] 0 72 51
tp @a[team=Purple] 0 72 13


tp @a[tag=spectator] 0 72 32
kill @e[type=!text_display,type=!player,type=!item_display,type=!marker,type=!interaction]
function rdm:resetgame/resetpillars

fill -4 71 10 4 71 14 minecraft:bedrock
fill -4 71 50 4 71 54 minecraft:bedrock

tag @a[tag=player] add alive




execute as @a[tag=spectator] run gamemode spectator @s
execute as @a[tag=player] run gamemode survival @s


scoreboard players set .game game 1

scoreboard players operation .random timer2 = .time2 settings

clear @a
execute as @a run function rdm:give
bossbar set rdm:items visible true
bossbar set rdm:items players @a


worldborder set 59

scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0
scoreboard players set .button button 0


tellraw @a {"bold":true,"color":"green","italic":false,"text":"Game starting!"}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s
effect clear @a
effect give @a slowness 2 100 true
execute as @a run attribute @s minecraft:generic.jump_strength base set 0
schedule function rdm:game/start/startcapture/starting 2s


gamerule showDeathMessages true
gamerule fallDamage true

team modify Lime collisionRule always
team modify Purple collisionRule always
team modify Neutral collisionRule always
function rdm:game/start/startcapture/spawnlime
function rdm:game/start/startcapture/spawnpurple
