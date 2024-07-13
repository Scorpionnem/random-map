    execute if score .solocapture settings matches 1 as @a if score @s death matches 1.. run function rdm:game/start/startsolocapture/capture/death


    execute if score .game game matches 0 unless score .starting game matches 1 as @a[tag=spectator] run title @s actionbar {"text": "You will be spectating.","color": "red"}
    execute if score .game game matches 0 unless score .starting game matches 1 as @a[tag=player] run title @s actionbar {"text": "You will be playing.","color": "green"}

    execute if score .game game matches 1 if score .solocapture settings matches 1 as @e[tag=pillar] at @s run setblock ~ ~ ~ minecraft:air destroy


execute as @a store result score @s ylevel run data get entity @s Pos[1]
execute as @e[tag=border] store result score @s ylevel run data get entity @s Pos[1]

execute if score .game game matches 1 if score .capture settings matches 1 at @a[tag=capturedlime,limit=1] run tp @e[tag=capturelime,type=item_display] ~ ~3 ~ 0 0
execute if score .game game matches 1 if score .capture settings matches 1 at @a[tag=capturedpurple,limit=1] run tp @e[tag=capturepurple,type=item_display] ~ ~3 ~ 0 0

execute if score .game game matches 1 if score .solocapture settings matches 1 as @a[tag=player,tag=captured] at @s run function rdm:game/start/startsolocapture/capture/checkcapture

execute if score .game game matches 1 if score .solocapture settings matches 1 as @a[tag=player,tag=captured] at @s run function rdm:game/start/startsolocapture/capture/tpitem



execute if score .game game matches 0 as @a[gamemode=spectator] run gamemode adventure @s

execute as @a if score @s ylevel >= @e[tag=up,tag=border,limit=1] ylevel run damage @s 2 minecraft:outside_border
execute as @a if score @s ylevel < @e[tag=down,tag=border,limit=1] ylevel run damage @s 2 minecraft:outside_border
execute if score .game game matches 1 as @a if score @s ylevel matches ..-90 run damage @s 6 minecraft:out_of_world



execute if score .game game matches 0 as @a if score @s ylevel matches ..65 run tp @s 0 80 -5
execute if score .game game matches 0 as @a if score @s ylevel matches ..65 run effect give @s slow_falling 1 1 true

#execute if score .game game matches 0 as @a if score @s ylevel matches 67 run title @s times 5t 10t 3t
#execute if score .game game matches 0 as @a if score @s ylevel matches 67 run title @s title "\uE000"

execute unless score .ffasolo settings matches 0 run team leave @a[team=!Neutral]


execute if score .game game matches 0 as @a[tag=ingame] run gamemode adventure @s
execute if score .game game matches 0 as @a[tag=ingame] run tp @s 0 80 -5
execute if score .game game matches 0 as @a[tag=ingame] run clear @s
execute if score .game game matches 0 as @a[tag=ingame] run tag @s remove ingame
execute if score .game game matches 1 as @a[tag=!ingame] run gamemode spectator @s
execute if score .game game matches 1 as @a[tag=!ingame] run tag @s add ingame






team join Neutral @a[team=!Purple,team=!Lime]

execute if score .game game matches 0 if score .startingtimer game matches 0 if score .starting game matches 0 as @a[tag=!player] at @s if block ~ ~-1 ~ minecraft:red_concrete run function rdm:team/play
execute if score .game game matches 0 if score .startingtimer game matches 0 if score .starting game matches 0 as @a[tag=!spectator] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete run function rdm:team/spectate

execute if score .game game matches 0 as @a[tag=!player,tag=!spectator] run function rdm:team/play

execute if score .game game matches 1 as @a if entity @s[tag=!player,tag=!spectator,gamemode=!spectator] run gamemode spectator @s

execute if score .teambutton settings matches 1 if score .game game matches 0 as @a[team=!Lime] at @s if block ~ ~-1 ~ lime_concrete run function rdm:game/settings/teams/lime
execute if score .teambutton settings matches 1 if score .game game matches 0 as @a[team=!Purple] at @s if block ~ ~-1 ~ purple_concrete run function rdm:game/settings/teams/purple

execute if score .capture settings matches 1 if score .game game matches 0 as @a[team=!Lime] at @s if block ~ ~-1 ~ lime_concrete run function rdm:game/settings/teams/lime
execute if score .capture settings matches 1 if score .game game matches 0 as @a[team=!Purple] at @s if block ~ ~-1 ~ purple_concrete run function rdm:game/settings/teams/purple

execute if score .game game matches 1 if score .capture settings matches 1 run setblock 0 73 12 air destroy
execute if score .game game matches 1 if score .capture settings matches 1 run setblock 0 73 52 air destroy


execute if score .game game matches 0 run gamemode adventure @a[gamemode=survival]

execute if score .game game matches 0 as @e[type=!marker,type=!interaction,type=!minecraft:text_display,type=!minecraft:item_display] run data merge entity @s {NoAI:1b}
execute if score .game game matches 0 as @e[type=!marker,type=!interaction,type=!minecraft:text_display,type=!minecraft:item_display] run data merge entity @s {Silent:1b}

    execute store result bossbar rdm:items max run scoreboard players get .time settings
    execute store result bossbar rdm:items value run scoreboard players get .random2 timer2



    execute as @a if score @s timer matches 1.. run scoreboard players remove @s timer 1
    execute as @a run scoreboard players operation @s timer2 = @s timer
    execute as @a run scoreboard players operation @s timer2 /= .20 timer2
    scoreboard players operation .timer2 timer = .timer timer
    scoreboard players operation .timer2 timer /= .20 timer2

execute if score .game game matches 0 run effect give @a weakness infinite 2 true
execute if score .game game matches 0 run effect give @a saturation infinite 2 true


    scoreboard players operation .random2 timer2 = .random timer2
    scoreboard players operation .random2 timer2 /= .20 timer2
    execute if score .game game matches 1 run execute if score .random timer2 matches 1.. run scoreboard players remove .random timer2 1
    execute if score .random timer2 matches ..0 run execute as @a run function rdm:give


    execute if score .starting game matches 1 if score .startingtimer game matches 40 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"2"}
    execute if score .starting game matches 1 if score .startingtimer game matches 40 run playsound minecraft:block.note_block.banjo ambient @a 0 80 -2 1 1.7


    execute if score .starting game matches 1 if score .startingtimer game matches 20 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"1"}
    execute if score .starting game matches 1 if score .startingtimer game matches 20 run playsound minecraft:block.note_block.banjo ambient @a 0 80 -2 1 2


    execute if score .capture settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 5 run function rdm:game/start/startcapture/start2
    execute if score .capture settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 0 run function rdm:game/start/startcapture/start
    
    execute if score .ffasolo settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 5 run function rdm:game/start/start2
    execute if score .ffasolo settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 0 run function rdm:game/start/start

    execute if score .teambutton settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 5 run function rdm:game/start/start2
    execute if score .teambutton settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 0 run function rdm:game/start/start


    execute if score .solocapture settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 5 run function rdm:game/start/startcapture/start2
    execute if score .solocapture settings matches 1 if score .starting game matches 1 if score .startingtimer game matches 0 run function rdm:game/start/startsolocapture/start
    
    execute if score .starting game matches 1 run scoreboard players remove .startingtimer game 1

    execute if score .capture settings matches 1 as @a run scoreboard players remove @s respawn 1
    execute if score .solocapture settings matches 1 as @a run scoreboard players remove @s respawn 1

    execute if score .capture settings matches 1 as @a if score @s respawn matches 80..100 run title @s actionbar {"text": "Respawning in 5"}
    execute if score .capture settings matches 1 as @a if score @s respawn matches 60..80 run title @s actionbar {"text": "Respawning in 4"}
    execute if score .capture settings matches 1 as @a if score @s respawn matches 40..60 run title @s actionbar {"text": "Respawning in 3"}
    execute if score .capture settings matches 1 as @a if score @s respawn matches 20..40 run title @s actionbar {"text": "Respawning in 2"}
    execute if score .capture settings matches 1 as @a if score @s respawn matches 0..20 run title @s actionbar {"text": "Respawning in 1"}

    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 80..100 run title @s actionbar {"text": "Respawning in 5"}
    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 60..80 run title @s actionbar {"text": "Respawning in 4"}
    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 40..60 run title @s actionbar {"text": "Respawning in 3"}
    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 20..40 run title @s actionbar {"text": "Respawning in 2"}
    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 0..20 run title @s actionbar {"text": "Respawning in 1"}

    execute if score .solocapture settings matches 1 as @a if score @s respawn matches 1 as @s run function rdm:game/respawn

    execute if score .capture settings matches 1 if score .lime capture matches 1 as @a[team=Lime,tag=alive] if score @s respawn matches 1 run function rdm:game/respawn
    execute if score .capture settings matches 1 if score .purple capture matches 1 as @a[team=Purple,tag=alive] if score @s respawn matches 1 run function rdm:game/respawn

    execute if score .capture settings matches 1 if score .lime capture matches 0 as @a[team=Lime,tag=alive] if score @s death matches 1.. run tag @s remove alive
    execute if score .capture settings matches 1 if score .purple capture matches 0 as @a[team=Purple,tag=alive] if score @s death matches 1.. run tag @s remove alive

    execute as @e[tag=capturepurple,type=interaction] at @s as @a[tag=capturedlime,distance=..3] run function rdm:game/settings/gamemode/capture/capturedlime
    execute as @e[tag=capturelime,type=interaction] at @s as @a[tag=capturedpurple,distance=..3] run function rdm:game/settings/gamemode/capture/capturedpurple


    execute as @a if score @s bye matches 1.. run function rdm:game/bye
    execute as @a if score @s death matches 1.. run function rdm:game/died
    

    execute if score .game game matches 1 run scoreboard players set .ingame players 0
    execute if score .game game matches 1 as @a[tag=alive,tag=player] run scoreboard players add .ingame players 1
    execute if score .game game matches 1 if score .ffasolo settings matches 1 if score .ingame players matches ..1 run function rdm:game/end/end
    execute if score .game game matches 1 if score .solocapture settings matches 1 if score .ingame players matches ..1 run function rdm:game/end/end


    execute if score .game game matches 1 if score .teambutton settings matches 1 run scoreboard players set .purpleingame players 0
    execute if score .game game matches 1 if score .teambutton settings matches 1 run scoreboard players set .limeingame players 0

    execute if score .game game matches 1 if score .capture settings matches 1 run scoreboard players set .purpleingame players 0
    execute if score .game game matches 1 if score .capture settings matches 1 run scoreboard players set .limeingame players 0


    execute if score .game game matches 1 if score .teambutton settings matches 1 as @a[tag=alive,team=Lime,tag=player] run scoreboard players add .limeingame players 1
    execute if score .game game matches 1 if score .teambutton settings matches 1 as @a[tag=alive,team=Purple,tag=player] run scoreboard players add .purpleingame players 1

    execute if score .game game matches 1 if score .capture settings matches 1 as @a[tag=alive,team=Lime,tag=player] run scoreboard players add .limeingame players 1
    execute if score .game game matches 1 if score .capture settings matches 1 as @a[tag=alive,team=Purple,tag=player] run scoreboard players add .purpleingame players 1



    execute if score .game game matches 1 if score .teambutton settings matches 1 if score .limeingame players matches 0 run function rdm:game/end/endpurple
    execute if score .game game matches 1 if score .teambutton settings matches 1 if score .purpleingame players matches 0 run function rdm:game/end/endlime

    execute if score .game game matches 1 if score .capture settings matches 1 if score .limeingame players matches 0 run function rdm:game/end/endpurple
    execute if score .game game matches 1 if score .capture settings matches 1 if score .purpleingame players matches 0 run function rdm:game/end/endlime




    execute if score .game game matches 1 if score .glowing game matches 1 run effect give @a[tag=alive] glowing infinite 1 true

    execute if score .game game matches 0 run tag @a remove alive

