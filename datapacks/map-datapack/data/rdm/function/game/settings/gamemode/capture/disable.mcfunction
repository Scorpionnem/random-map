scoreboard players set .capture settings 0

fill -5 80 -9 -7 80 -11 grass_block
fill 5 80 -9 7 80 -11 mycelium
team leave @a
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": ""}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": ""}]'
item replace entity 99cfaeb6-c080-4680-90d0-f38f0b6b54b5 container.0 with air
item replace entity 3b1da529-f4cd-4942-af7a-cd2ea7b8eca2 container.0 with air