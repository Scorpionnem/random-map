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




execute at @s[tag=player] run tp @s @e[tag=pillar,sort=random,limit=1]
execute at @s[tag=player] store result score @s playersaround run execute if entity @e[type=player,distance=..2]
execute if score .playerspillars players matches ..11 run function rdm:game/pillars/spawn2
execute if score .playerspillars players matches 12.. run function rdm:game/pillars/error
