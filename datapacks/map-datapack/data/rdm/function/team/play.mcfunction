tag @s add player
tag @s remove spectator
playsound minecraft:block.note_block.bell ambient @a
tellraw @a ["",{"selector":"@s"},{"text":" will be playing.","color":"gray"}]
