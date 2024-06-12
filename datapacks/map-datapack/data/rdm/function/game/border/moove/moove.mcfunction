execute if score @e[tag=border,tag=down,limit=1] ylevel matches ..70 as @e[tag=border,tag=down] at @s run tp @s ~ ~1 ~
execute if score @e[tag=border,tag=up,limit=1] ylevel matches 80.. as @e[tag=border,tag=up] at @s run tp @s ~ ~-1 ~


execute if score @e[tag=border,tag=up,limit=1] ylevel matches 79 run item replace entity @e[type=minecraft:item_display,tag=border,tag=up] container.0 with paper[minecraft:custom_model_data=13]
execute if score @e[tag=border,tag=down,limit=1] ylevel matches 71 run item replace entity @e[type=minecraft:item_display,tag=border,tag=down] container.0 with paper[minecraft:custom_model_data=13]

execute if score @e[tag=border,tag=up,limit=1] ylevel matches 79 run data merge entity @e[tag=border,tag=up,limit=1] {Glowing:0b}
execute if score @e[tag=border,tag=down,limit=1] ylevel matches 71 run data merge entity @e[tag=border,tag=down,limit=1] {Glowing:0b}

execute if score @e[tag=border,tag=down,limit=1] ylevel matches ..70 at @e[tag=border,tag=down] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 barrier replace air
execute if score @e[tag=border,tag=up,limit=1] ylevel matches 80.. at @e[tag=border,tag=up] run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

schedule function rdm:game/border/moove/moove 1s