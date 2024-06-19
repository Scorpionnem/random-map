scoreboard players add .gamemode gamemode 1
execute if score .gamemode gamemode matches 4.. run scoreboard players set .gamemode gamemode 1
playsound minecraft:ui.button.click ambient @a

function rdm:game/settings/teams/disable
function rdm:game/settings/gamemode/ffa/disable
function rdm:game/settings/gamemode/capture/disable
item replace entity @e[tag=gamemodebutton] container.0 with paper[custom_model_data=9]



execute if score .gamemode gamemode matches 1 run item replace entity @e[tag=gamemodescreen,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=16]
execute if score .gamemode gamemode matches 1 run item replace entity @e[tag=gamemodescreendown,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=19]
execute if score .gamemode gamemode matches 1 run item replace entity @e[tag=gamemodescreenup,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=20]

execute if score .gamemode gamemode matches 1 run function rdm:game/settings/gamemode/ffa/enable

execute if score .gamemode gamemode matches 2 run item replace entity @e[tag=gamemodescreendown,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=20]
execute if score .gamemode gamemode matches 2 run item replace entity @e[tag=gamemodescreenup,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=16]
execute if score .gamemode gamemode matches 2 run item replace entity @e[tag=gamemodescreen,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=19]
execute if score .gamemode gamemode matches 2 run function rdm:game/settings/teams/enable

execute if score .gamemode gamemode matches 3 run item replace entity @e[tag=gamemodescreen,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=20]
execute if score .gamemode gamemode matches 3 run item replace entity @e[tag=gamemodescreendown,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=16]
execute if score .gamemode gamemode matches 3 run item replace entity @e[tag=gamemodescreenup,type=minecraft:item_display] container.0 with paper[minecraft:custom_model_data=19]
execute if score .gamemode gamemode matches 3 run function rdm:game/settings/gamemode/capture/enable








schedule function rdm:game/settings/gamemode/switch/resetbutton 4t
#.teamffa gamemode