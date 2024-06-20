gamerule showDeathMessages false
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
tp @a 0 80 -5
worldborder set 100
worldborder center 0 32
kill @e[tag=border,type=item_display]
execute as @r[tag=alive] run function rdm:stats/set
scoreboard players set .glowing game 0
effect clear @a
execute as @a[tag=alive] run tellraw @a ["",{"selector":"@s"},{"text":" won the game!","color":"gold"}]
execute as @a[tag=alive] run scoreboard players add @s winstat 1
item replace entity @a[tag=alive] armor.head with paper[max_stack_size=1,custom_name='{"color":"gold","italic":false,"text":"Winner\'s trophy"}',custom_model_data=11,enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false] 1
item replace entity 5abe0c96-a167-4cdf-ba8d-6ed64a3abe51 container.0 with paper[custom_model_data=11]
tag @a[tag=alive] add winner



tag @a remove alive
schedule function rdm:game/end/adventure 5t
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s
#place template minecraft:lobby -10 56 -13
setblock -10 89 -13 air
gamerule fallDamage false




team modify Lime collisionRule never
team modify Purple collisionRule never
team modify Neutral collisionRule never
fill 11 90 3 -11 55 3 barrier
schedule clear rdm:game/glowing
schedule clear rdm:game/border/moove/moove

place template minecraft:lobby2 11 65 -16
place template minecraft:lobby1 -37 65 -16
