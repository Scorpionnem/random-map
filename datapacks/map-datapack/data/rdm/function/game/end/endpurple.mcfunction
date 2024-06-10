gamerule showDeathMessages false
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
tp @a 0 80 -5
worldborder set 83

effect clear @a
tellraw @a {"text": "Purple team won the game!","color": "dark_purple"}
tag @a remove alive
schedule function rdm:game/end/adventure 5t
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s