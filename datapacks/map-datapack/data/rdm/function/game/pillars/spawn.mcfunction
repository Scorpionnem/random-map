scoreboard players set .playerspillars players 0
execute as @a[tag=player] run scoreboard players add .playerspillars players 1
kill @e[type=marker,tag=pillar]


execute if score .playerspillars players matches 2 run function rdm:game/pillars/howmanypillars/2
execute if score .playerspillars players matches 3 run function rdm:game/pillars/howmanypillars/3
execute if score .playerspillars players matches 4 run function rdm:game/pillars/howmanypillars/4
execute if score .playerspillars players matches 5 run function rdm:game/pillars/howmanypillars/5
execute if score .playerspillars players matches 6 run function rdm:game/pillars/howmanypillars/6
execute if score .playerspillars players matches 7 run function rdm:game/pillars/howmanypillars/7
execute if score .playerspillars players matches 8 run function rdm:game/pillars/howmanypillars/8
execute if score .playerspillars players matches 9 run function rdm:game/pillars/howmanypillars/9
execute if score .playerspillars players matches 10 run function rdm:game/pillars/howmanypillars/10
execute if score .playerspillars players matches 11 run function rdm:game/pillars/howmanypillars/11
execute if score .playerspillars players matches 12 run function rdm:game/pillars/howmanypillars/12
execute if score .playerspillars players matches 13 run function rdm:game/pillars/howmanypillars/13
execute if score .playerspillars players matches 14 run function rdm:game/pillars/howmanypillars/14
execute if score .playerspillars players matches 15 run function rdm:game/pillars/howmanypillars/15
execute if score .playerspillars players matches 16 run function rdm:game/pillars/howmanypillars/16
execute if score .playerspillars players matches 17 run function rdm:game/pillars/howmanypillars/17
execute if score .playerspillars players matches 18 run function rdm:game/pillars/howmanypillars/18
execute if score .playerspillars players matches 19 run function rdm:game/pillars/howmanypillars/19
execute if score .playerspillars players matches 20 run function rdm:game/pillars/howmanypillars/20
execute if score .playerspillars players matches 21 run function rdm:game/pillars/howmanypillars/21
execute if score .playerspillars players matches 22 run function rdm:game/pillars/howmanypillars/22
execute if score .playerspillars players matches 23 run function rdm:game/pillars/howmanypillars/23
execute if score .playerspillars players matches 24 run function rdm:game/pillars/howmanypillars/24
execute if score .playerspillars players matches 25 run function rdm:game/pillars/howmanypillars/25






execute at @s[tag=player] run tp @s @e[tag=pillar,sort=random,limit=1]
execute at @s[tag=player] store result score @s playersaround run execute if entity @e[type=player,distance=..2,tag=player]
execute if score .playerspillars players matches ..25 run function rdm:game/pillars/spawn2
execute if score .playerspillars players matches 26.. run function rdm:game/pillars/error
