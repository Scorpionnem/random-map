item replace entity @e[type=minecraft:item_display,tag=zonebutton] container.0 with paper[minecraft:custom_model_data=9]
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a 18 75 -10 1 1.2
scoreboard players set .zonebutton settings 1
data modify entity @e[type=text_display,tag=zone,limit=1] text set value '[{"text":"Yes"}]'