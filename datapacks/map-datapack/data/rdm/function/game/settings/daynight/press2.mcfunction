item replace entity @e[type=minecraft:item_display,tag=daynight] container.0 with paper[minecraft:custom_model_data=10]
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a 19 76 -7 1 0
scoreboard players set .daynight settings 0
data modify entity @e[type=text_display,tag=daynight,limit=1] text set value '[{"text":"No"}]'

gamerule doDaylightCycle false
time set noon