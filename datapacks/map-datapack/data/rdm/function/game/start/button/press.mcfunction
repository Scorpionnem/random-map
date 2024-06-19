item replace entity @e[type=minecraft:item_display,tag=button] container.0 with paper[minecraft:custom_model_data=2]
schedule function rdm:game/start/button/press2 4t
playsound minecraft:ui.button.click ambient @a
playsound minecraft:block.note_block.banjo ambient @a 0 80 -2 1 0
scoreboard players set .button button 0

execute as @a run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a run attribute @s minecraft:player.block_interaction_range base set 4.5
tellraw @a {"bold":true,"color":"red","italic":false,"text":"Canceled."}
scoreboard players set .starting game 0
scoreboard players set .startingtimer game 0