playsound minecraft:ui.button.click ambient @s 0.43 81.00 -10.65
scoreboard players operation .deathstat deathstat = @s deathstat
scoreboard players operation .killstat killstat = @s killstat
scoreboard players operation .givestat givestat = @s givestat
scoreboard players operation .winstat winstat = @s winstat

data modify entity @e[tag=deathstat,limit=1] text set value '[{"text":"0 Deaths"}]'
execute as @s if score @s deathstat matches 0.. at @s run data modify entity @e[tag=deathstat,limit=1] text set value '[{"score":{"name":".deathstat","objective":"deathstat"}}, {"text":" Deaths"}]'

data modify entity @e[tag=killstat,limit=1] text set value '[{"text":"0 Kills"}]'
execute as @s if score @s killstat matches 0.. at @s run data modify entity @e[tag=killstat,limit=1] text set value '[{"score":{"name":".killstat","objective":"killstat"}}, {"text":" Kills"}]'


data modify entity @e[tag=givestat,limit=1] text set value '[{"text":"0 Items received"}]'
execute as @s if score @s givestat matches 0.. at @s run data modify entity @e[tag=givestat,limit=1] text set value '[{"score":{"name":".givestat","objective":"givestat"}}, {"text":" Items received"}]'

data modify entity @e[tag=winstat,limit=1] text set value '[{"text":"0 Wins"}]'
execute as @s if score @s winstat matches 0.. at @s run data modify entity @e[tag=winstat,limit=1] text set value '[{"score":{"name":".winstat","objective":"winstat"}}, {"text":" Wins"}]'


execute as @s run loot replace entity 480d7feb-d1da-4d39-9600-b4c65069996c container.0 loot rdm:player_head/get_head