tag @s add spectator
tag @s remove player
playsound minecraft:block.note_block.bell ambient @a
tellraw @a ["",{"selector":"@s"},{"text":" will be spectating.","color":"gray"}]
