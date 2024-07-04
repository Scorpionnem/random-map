
execute as @s run scoreboard players add .global link 1
scoreboard players operation @s link = .global link
execute as @s at @s run scoreboard players operation @a[sort=nearest,limit=1,tag=player] link = @s link
execute as @s at @s run scoreboard players operation @e[tag=captureitem,type=item_display,sort=nearest,limit=1] link = @s link