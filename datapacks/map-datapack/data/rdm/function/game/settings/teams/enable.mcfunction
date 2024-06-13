fill -2 80 -7 -4 80 -9 lime_wool
fill 2 80 -7 4 80 -9 purple_wool
scoreboard players set .teambutton settings 1
function rdm:game/settings/teams/sort
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": "Join lime team!","color": "green"}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": "Join purple team!","color": "dark_purple"}]'
