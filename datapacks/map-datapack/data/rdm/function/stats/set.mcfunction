data modify entity @e[tag=deathstat,limit=1] text set value '[{"text":"0 Deaths"}]'
execute at @e[tag=deathstat,limit=1] as @p if score @s deathstat matches 0.. at @s run data modify entity @e[tag=deathstat,limit=1] text set value '[{"score":{"name":"@p","objective":"deathstat"}}, {"text":" Deaths"}]'

data modify entity @e[tag=killstat,limit=1] text set value '[{"text":"0 Kills"}]'
execute at @e[tag=deathstat,limit=1] as @p if score @s killstat matches 0.. at @s run data modify entity @e[tag=killstat,limit=1] text set value '[{"score":{"name":"@p","objective":"killstat"}}, {"text":" Kills"}]'


data modify entity @e[tag=givestat,limit=1] text set value '[{"text":"0 Items received"}]'
execute at @e[tag=deathstat,limit=1] as @p if score @s givestat matches 0.. at @s run data modify entity @e[tag=givestat,limit=1] text set value '[{"score":{"name":"@p","objective":"givestat"}}, {"text":" Items received"}]'

data modify entity @e[tag=winstat,limit=1] text set value '[{"text":"0 Wins"}]'
execute at @e[tag=winstat,limit=1] as @p if score @s winstat matches 0.. at @s run data modify entity @e[tag=winstat,limit=1] text set value '[{"score":{"name":"@p","objective":"winstat"}}, {"text":" Wins"}]'


execute at @e[tag=deathstat,limit=1] as @p run loot replace entity 480d7feb-d1da-4d39-9600-b4c65069996c container.0 loot rdm:player_head/get_head