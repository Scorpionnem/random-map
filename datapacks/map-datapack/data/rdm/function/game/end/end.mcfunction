gamerule showDeathMessages false
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
spawnpoint @a 0 80 -11
tp @a 0 80 -11 0 0
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
place template minecraft:lobby1 -37 66 -16
fill -5 80 -9 -7 80 -11 grass_block
fill 5 80 -9 7 80 -11 mycelium
setblock 0 80 -2 minecraft:polished_blackstone
fill 6 79 -3 6 79 -2 air
setblock 19 76 -7 minecraft:polished_blackstone


item replace entity 010f3e26-a07b-4bbd-89dc-6a57aef294fe container.0 with air
execute store result score .random random run random roll 0..100
execute if score .random random matches 42 run item replace entity 010f3e26-a07b-4bbd-89dc-6a57aef294fe container.0 with paper[minecraft:custom_model_data=23]