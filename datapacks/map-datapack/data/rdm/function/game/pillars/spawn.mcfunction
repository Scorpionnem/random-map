say 1
execute at @s run tp @s @e[tag=pillar,sort=random,limit=1]
execute at @s store result score @s playersaround run execute if entity @e[type=player,distance=..2]
function rdm:game/pillars/spawn2
