item replace entity @e[type=minecraft:item_display,tag=time] container.0 with paper[minecraft:custom_model_data=9]
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
scoreboard players remove .time settings 1
execute if score .time settings matches 0 run scoreboard players set .time settings 10

scoreboard players operation .time2 settings = .time settings
scoreboard players operation .time2 settings *= .20 settings

scoreboard players add .time2 settings 5

schedule function rdm:game/settings/time/reset 4t

data modify entity @e[type=text_display,tag=time,limit=1] text set value '[{"score":{"name":".time","objective":"settings"}}, {"text":" seconds"}]'