fill -5 80 -9 -7 80 -11 lime_concrete
fill 5 80 -9 7 80 -11 purple_concrete

scoreboard players set .teambutton settings 1
function rdm:game/settings/teams/sort
data modify entity @e[type=text_display,tag=teamlime,limit=1] text set value '[{"text": "Join lime team!","color": "green"}]'
data modify entity @e[type=text_display,tag=teampurple,limit=1] text set value '[{"text": "Join purple team!","color": "dark_purple"}]'
