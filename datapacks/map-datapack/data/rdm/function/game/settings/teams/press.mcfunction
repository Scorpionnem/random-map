item replace entity @e[type=minecraft:item_display,tag=teambutton] container.0 with paper[minecraft:custom_model_data=7]
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
scoreboard players set .teambutton settings 1
setblock -1 79 -7 lime_wool
setblock 1 79 -7 purple_wool
tellraw @a {"text": "Teams mode enabled!","color": "red"}
function rdm:game/settings/teams/sort