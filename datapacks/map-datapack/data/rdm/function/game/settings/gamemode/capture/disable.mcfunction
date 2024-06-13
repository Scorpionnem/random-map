scoreboard players set .capture settings 0

fill -2 80 -7 -4 80 -9 lime_terracotta
fill 2 80 -7 4 80 -9 moss_block

team leave @a
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": ""}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": ""}]'