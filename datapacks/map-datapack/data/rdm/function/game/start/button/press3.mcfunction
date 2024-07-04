item replace entity @e[type=minecraft:item_display,tag=button] container.0 with paper[minecraft:custom_model_data=2]
#schedule function rdm:game/start/button/press2 4t

tag @a[tag=!spectator] add player
scoreboard players set .button button 1

scoreboard players set .players players 0
execute as @a[tag=player] run scoreboard players add .players players 1

scoreboard players set .notinateam players 0
execute as @a[team=Neutral,tag=player] run scoreboard players add .notinateam players 1

#FFA SOLO PROCESS
execute if score .ffasolo settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. at @e[tag=button,type=interaction] run playsound minecraft:ui.button.click ambient @a
execute if score .ffasolo settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. at @e[tag=button,type=interaction] run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
execute if score .ffasolo settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. run scoreboard players set .starting game 1
execute if score .ffasolo settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. run scoreboard players set .startingtimer game 60

#FFA TEAMS PROCESS
execute if score .teambutton settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. at @e[tag=button,type=interaction] run playsound minecraft:ui.button.click ambient @a
execute if score .teambutton settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. at @e[tag=button,type=interaction] run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
execute if score .teambutton settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. run scoreboard players set .starting game 1
execute if score .teambutton settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. run scoreboard players set .startingtimer game 60

#Capture process
execute if score .capture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. at @e[tag=button,type=interaction] run playsound minecraft:ui.button.click ambient @a
execute if score .capture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. at @e[tag=button,type=interaction] run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
execute if score .capture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. run scoreboard players set .starting game 1
execute if score .capture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. unless score .notinateam players matches 1.. run scoreboard players set .startingtimer game 60

#solo capture process
execute if score .solocapture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. at @e[tag=button,type=interaction] run playsound minecraft:ui.button.click ambient @a
execute if score .solocapture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. at @e[tag=button,type=interaction] run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.2
execute if score .solocapture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. run scoreboard players set .starting game 1
execute if score .solocapture settings matches 1 unless score .players players matches ..1 unless score .players players matches 26.. run scoreboard players set .startingtimer game 60


#Stops from starting if too many or not enough players
execute if score .players players matches ..1 run tellraw @a {"bold":true,"color":"red","italic":false,"text":"Not enough players! (2+)"}
execute if score .players players matches ..1 run function rdm:game/start/button/press

execute if score .players players matches 26.. run tellraw @a {"bold":true,"color":"red","italic":false,"text":"Too many players! (25 Max)"}
execute if score .players players matches 26.. run function rdm:game/start/button/press

#stops from starting not everyone in a team
execute if score .notinateam players matches 1.. unless score .ffasolo settings matches 1 unless score .solocapture settings matches 1 run tellraw @a {"bold":true,"color":"red","italic":false,"text":"Not everyone is in a team!"}
execute if score .notinateam players matches 1.. unless score .ffasolo settings matches 1 unless score .solocapture settings matches 1 run function rdm:game/start/button/press

#Starts the countdown
execute if score .starting game matches 1 if score .startingtimer game matches 60 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"3"}

