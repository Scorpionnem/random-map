tag @s add player
tag @s remove spectator
playsound minecraft:block.note_block.bell ambient @a
tellraw @a ["",{"selector":"@s"},{"text":" will be playing.","color":"gray"}]
execute as 31a24f3a-e996-428b-b82a-849602eeb850 at @s run tp @s ~ ~ ~ ~180 0
execute at 31a24f3a-e996-428b-b82a-849602eeb850 run particle poof ~ ~ ~ 0 0 0 0.1 10 normal