
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
tp @a 0 80 -5
worldborder set 83

effect clear @a
execute as @a[tag=alive] run tellraw @a ["",{"selector":"@s"},{"text":" won the game!","color":"gold"}]
tag @a remove alive
schedule function rdm:game/end/adventure 5t
