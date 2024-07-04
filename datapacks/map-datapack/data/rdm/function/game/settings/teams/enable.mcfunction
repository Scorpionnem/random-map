fill -5 80 -9 -7 80 -11 lime_concrete
fill 5 80 -9 7 80 -11 purple_concrete

scoreboard players set .teambutton settings 1
function rdm:game/settings/teams/sort
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": "Join lime team!","color": "green"}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": "Join purple team!","color": "dark_purple"}]'
item replace entity 99cfaeb6-c080-4680-90d0-f38f0b6b54b5 container.0 with paper[minecraft:custom_model_data=22]
item replace entity 3b1da529-f4cd-4942-af7a-cd2ea7b8eca2 container.0 with paper[minecraft:custom_model_data=21]

bossbar set rdm:items color green