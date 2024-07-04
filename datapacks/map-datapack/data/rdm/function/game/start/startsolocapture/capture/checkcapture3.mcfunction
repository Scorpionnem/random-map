scoreboard players set .temp link 0
scoreboard players operation .temp link = @s link
execute at @s as @a[tag=player] if score @s link = .temp link run tag @s remove canrespawn
execute at @s as @a[tag=player] if score @s link = .temp link run tag @a[sort=nearest,limit=1] remove captured
execute at @s as @a[tag=player] if score @s link = .temp link run tellraw @a [{"selector":"@s"},{"color":"red","text":" lost their random core!"}]
execute as @a at @a run playsound minecraft:entity.ender_dragon.ambient ambient @s
