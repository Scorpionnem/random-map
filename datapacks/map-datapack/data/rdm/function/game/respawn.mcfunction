
#tp @s[team=Lime] 0 72 51
#tp @s[team=Purple] 0 72 13
gamemode survival @s
tag @s add respawning
execute if score .solocapture settings matches 1 as @a[tag=respawning] if score @s respawn matches 0..1 as @e[tag=respawner] run function rdm:game/respawn2

spreadplayers 0 52 1 2 false @s[team=Lime]
spreadplayers 0 12 1 2 false @s[team=Purple]
effect give @s resistance 2 3 false