
execute on attacker as @s[tag=captured] run return fail
execute on target as @s[tag=captured] run return fail

scoreboard players set .temp2 link 0
execute on attacker as @s run scoreboard players operation .temp2 link = @s link
execute on target as @s run scoreboard players operation .temp2 link = @s link

execute on attacker at @s as @e[type=interaction,tag=capture,distance=..5] if score @s link = .temp2 link as @s run return fail
execute on target at @s as @e[type=interaction,tag=capture,distance=..5] if score @s link = .temp2 link as @s run return fail


execute on attacker run tag @s add captured
execute on target run tag @s add captured

tag @s add locked

tag @e[type=item_display,tag=captureitem,limit=1,sort=nearest] add captureditem
data merge entity @e[type=item_display,tag=captureitem,limit=1,sort=nearest] {Glowing:1b}
execute at @s on attacker run scoreboard players operation @s linktp = @e[tag=captureditem,sort=nearest,limit=1] linktp
execute at @s on target run scoreboard players operation @s linktp = @e[tag=captureditem,sort=nearest,limit=1] linktp


execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s

execute on attacker run tellraw @a [{"selector":"@s"},{"color":"red","text":" stole a random core!"}]
execute on target run tellraw @a [{"selector":"@s"},{"color":"red","text":" stole a random core!"}]