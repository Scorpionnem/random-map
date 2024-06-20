tag @s add spectator
tag @s remove player
playsound minecraft:block.note_block.bell ambient @a
tellraw @a ["",{"selector":"@s"},{"text":" will be spectating.","color":"gray"}]
data merge entity cf0fad42-8cf7-4903-b93e-d90ca90a3ccf {teleport_duration:0}
execute as cf0fad42-8cf7-4903-b93e-d90ca90a3ccf at @s run tp @s ~ ~ ~ ~180 0
execute at cf0fad42-8cf7-4903-b93e-d90ca90a3ccf run particle poof ~ ~ ~ 0 0 0 0.1 10 normal
schedule function rdm:team/spectate2 1s