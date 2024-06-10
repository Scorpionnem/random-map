execute if score .game game matches 0 if score .startingtimer game matches 0 as @a[tag=!player] at @s if block ~ ~-1 ~ minecraft:red_concrete run function rdm:team/play
execute if score .game game matches 0 if score .startingtimer game matches 0 as @a[tag=!spectator] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete run function rdm:team/spectate

execute if score .game game matches 0 as @a[tag=!player,tag=!spectator] run function rdm:team/play

execute if score .game game matches 1 as @a if entity @s[tag=!player,tag=!spectator,gamemode=!spectator] run gamemode spectator @s

execute if score .teambutton settings matches 1 if score .game game matches 0 as @a[team=!Lime] at @s if block ~ ~-1 ~ lime_wool run function rdm:game/settings/teams/lime
execute if score .teambutton settings matches 1 if score .game game matches 0 as @a[team=!Purple] at @s if block ~ ~-1 ~ purple_wool run function rdm:game/settings/teams/purple

execute if score .game game matches 0 run gamemode adventure @a[gamemode=survival]

execute if score .game game matches 0 run data merge entity @e[limit=1,sort=random,type=!marker,type=!interaction,type=!minecraft:text_display,type=!minecraft:item_display] {NoAI:1b}
execute if score .game game matches 0 run data merge entity @e[limit=1,sort=random,type=!marker,type=!interaction,type=!minecraft:text_display,type=!minecraft:item_display] {Silent:1b}


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
    execute if score .starting game matches 1 if score .startingtimer game matches 40 run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1.7


    execute if score .starting game matches 1 if score .startingtimer game matches 20 run tellraw @a {"bold":true,"color":"green","italic":false,"text":"1"}
    execute if score .starting game matches 1 if score .startingtimer game matches 20 run playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 2


    execute if score .starting game matches 1 if score .startingtimer game matches 5 run function rdm:game/start/start2
    execute if score .starting game matches 1 if score .startingtimer game matches 0 run function rdm:game/start/start
    execute if score .starting game matches 1 run scoreboard players remove .startingtimer game 1




    execute as @a if score @s death matches 1.. run function rdm:game/died
        execute as @a if score @s bye matches 1.. run function rdm:game/bye

    execute if score .game game matches 1 run scoreboard players set .ingame players 0
    execute if score .game game matches 1 as @a[tag=alive] run scoreboard players add .ingame players 1
    execute if score .game game matches 1 if score .teambutton settings matches 0 if score .ingame players matches ..1 run function rdm:game/end/end
    
    execute if score .game game matches 1 if score .teambutton settings matches 1 run scoreboard players set .purpleingame players 0
    execute if score .game game matches 1 if score .teambutton settings matches 1 run scoreboard players set .limeingame players 0

    execute if score .game game matches 1 if score .teambutton settings matches 1 as @a[tag=alive,team=Lime] run scoreboard players add .limeingame players 1
    execute if score .game game matches 1 if score .teambutton settings matches 1 as @a[tag=alive,team=Purple] run scoreboard players add .purpleingame players 1

    execute if score .game game matches 1 if score .teambutton settings matches 1 if score .limeingame players matches 0 run function rdm:game/end/endpurple
    execute if score .game game matches 1 if score .teambutton settings matches 1 if score .purpleingame players matches 0 run function rdm:game/end/endlime
