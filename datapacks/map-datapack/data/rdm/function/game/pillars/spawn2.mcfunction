
execute if score @s[tag=player] playersaround matches 1 run function rdm:game/pillars/spawn3
execute at @s[tag=player] as @s if score @s playersaround matches 0 run function rdm:game/pillars/spawn
execute at @s[tag=player] as @s if score @s playersaround matches 2.. run function rdm:game/pillars/spawn


