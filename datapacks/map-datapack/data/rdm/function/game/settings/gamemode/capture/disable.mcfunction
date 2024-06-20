scoreboard players set .capture settings 0

fill -5 80 -9 -7 80 -11 grass_block
fill 5 80 -9 7 80 -11 mycelium
team leave @a
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": ""}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": ""}]'