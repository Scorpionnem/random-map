gamerule showDeathMessages false
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
tp @a 0 80 -5
worldborder set 100
worldborder center 0 32


effect clear @a
tellraw @a {"text": "Lime team won the game!","color": "green"}
item replace entity @a[team=Lime,tag=alive] armor.head with paper[max_stack_size=1,custom_name='{"color":"gold","italic":false,"text":"Winner\'s trophy"}',custom_model_data=11,enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=alive,team=Lime] run scoreboard players add @s winstat 1
execute as @r[tag=alive] run function rdm:stats/set
item replace entity 5abe0c96-a167-4cdf-ba8d-6ed64a3abe51 container.0 with paper[custom_model_data=11]
tag @a[tag=alive,team=Lime] add winner

tag @a remove alive
schedule function rdm:game/end/adventure 5t
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s
#place template minecraft:lobby -10 56 -13
setblock -10 89 -13 air
gamerule fallDamage false

team modify Lime collisionRule never
team modify Purple collisionRule never
team modify Neutral collisionRule never
scoreboard players set .glowing game 0
schedule clear rdm:game/glowing
schedule clear rdm:game/border/moove/moove

place template minecraft:lobby2 11 65 -16
place template minecraft:lobby1 -37 66 -16
setblock 0 80 -2 minecraft:polished_blackstone
fill 6 79 -3 6 79 -2 air