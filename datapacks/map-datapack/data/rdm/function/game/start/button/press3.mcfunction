item replace entity @e[type=minecraft:item_display,tag=button] container.0 with paper[minecraft:custom_model_data=2]
#schedule function rdm:game/start/button/press2 4t


scoreboard players set .button button 1

scoreboard players set .players players 0
execute as @a[tag=player] run scoreboard players add .players players 1

execute if score .players players matches 2.. run execute at @e[tag=button,type=interaction] run playsound minecraft:ui.button.click ambient @a
execute if score .players players matches 2.. run execute at @e[tag=button,type=interaction] run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2


execute if score .players players matches 2.. run scoreboard players set .starting game 1
execute if score .players players matches 2.. run scoreboard players set .startingtimer game 60

execute if score .teambutton settings matches 0 if score .players players matches 2.. run execute if score .starting game matches 1 if score .startingtimer game matches 60 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"3"}


execute if score .teambutton settings matches 1 run scoreboard players set .notinateam players 0
execute if score .teambutton settings matches 1 as @a[team=!Purple,team=!Lime] run scoreboard players add .notinateam players 1

execute if score .teambutton settings matches 1 if score .notinateam players matches 1.. run tellraw @a {"bold":true,"color":"red","italic":false,"text":"Not everyone is in a team!"}
execute if score .teambutton settings matches 1 if score .notinateam players matches 1.. run function rdm:game/start/button/press

execute if score .teambutton settings matches 1 if score .players players matches 2.. run execute if score .notinateam players matches 0 if score .starting game matches 1 if score .startingtimer game matches 60 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"3"}


execute if score .players players matches ..1 run tellraw @a {"bold":true,"color":"red","italic":false,"text":"Not enough players! (2+)"}
execute if score .players players matches ..1 run function rdm:game/start/button/press