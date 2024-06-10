item replace entity @e[type=minecraft:item_display,tag=teambutton] container.0 with paper[minecraft:custom_model_data=8]
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 0
scoreboard players set .teambutton settings 0
team leave @a
setblock -1 79 -7 bedrock
setblock 1 79 -7 bedrock