scoreboard players set #bool interaction 0
execute on attacker store result score #bool interaction if entity @s[tag=this]





execute if score .button button matches 0 if score #bool interaction matches 1 as @s[tag=button] run schedule function rdm:game/start/button/press3 1t

execute if score .button button matches 1 if score #bool interaction matches 1 as @s[tag=button] run function rdm:game/start/button/press


execute if score #bool interaction matches 1 as @s[tag=play] on attacker if entity @s[tag=!player] run function rdm:team/play
execute if score #bool interaction matches 1 as @s[tag=spectate] on attacker if entity @s[tag=!spectator] run function rdm:team/spectate




execute if score #bool interaction matches 1 run data remove entity @s attack