scoreboard players set #bool interaction 0
execute on attacker store result score #bool interaction if entity @s[tag=this]





execute if score .button button matches 0 if score #bool interaction matches 1 as @s[tag=button] run schedule function rdm:game/start/button/press3 1t

execute if score .button button matches 1 if score #bool interaction matches 1 as @s[tag=button] run function rdm:game/start/button/press


execute if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=play] on attacker if entity @s[tag=!player] run function rdm:team/play
execute if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=spectate] on attacker if entity @s[tag=!spectator] run function rdm:team/spectate


execute if score .zonebutton settings matches 0 if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=zonebutton] at @s run schedule function rdm:game/settings/zone/press 1t
execute if score .zonebutton settings matches 1 if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=zonebutton] at @s run function rdm:game/settings/zone/press2

execute if score .daynight settings matches 0 if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=daynight] at @s run schedule function rdm:game/settings/daynight/press 1t
execute if score .daynight settings matches 1 if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=daynight] at @s run function rdm:game/settings/daynight/press2



execute if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=time] at @s run function rdm:game/settings/time/press2

execute if score #bool interaction matches 1 if score .starting game matches 0 as @s[tag=gamemode,type=interaction] run function rdm:game/settings/gamemode/switch/leftclick


execute if score #bool interaction matches 1 as @s[tag=capturelime,type=interaction,tag=!locked] on attacker as @s[team=Purple] run function rdm:game/settings/gamemode/capture/capturelime
execute if score #bool interaction matches 1 as @s[tag=capturepurple,type=interaction,tag=!locked] on attacker as @s[team=Lime] run function rdm:game/settings/gamemode/capture/capturepurple

execute if score #bool interaction matches 1 as @s[tag=stats,type=interaction] on attacker as @s run function rdm:stats/set



execute if score #bool interaction matches 1 run data remove entity @s attack