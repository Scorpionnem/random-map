fill -2 80 -7 -4 80 -9 lime_terracotta
fill 2 80 -7 4 80 -9 moss_block
scoreboard players set .teambutton settings 0
team leave @a
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": ""}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": ""}]'