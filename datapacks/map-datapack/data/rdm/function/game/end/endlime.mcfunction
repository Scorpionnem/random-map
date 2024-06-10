gamerule showDeathMessages false
clear @a
gamemode adventure @a
scoreboard players set .game game 0
bossbar set rdm:items visible false
effect give @a resistance infinite 100 true
tp @a 0 80 -5
worldborder set 100

effect clear @a
tellraw @a {"text": "Lime team won the game!","color": "green"}
item replace entity @a[team=Lime] armor.head with paper[max_stack_size=1,custom_name='{"color":"gold","italic":false,"text":"Winner\'s trophy"}',custom_model_data=11,enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false] 1

tag @a remove alive
schedule function rdm:game/end/adventure 5t
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s
place template minecraft:lobby -10 56 -13
setblock -10 89 -13 air
gamerule fallDamage false
execute if score .teambutton settings matches 1 run setblock -1 79 -7 lime_wool
execute if score .teambutton settings matches 1 run setblock 1 79 -7 purple_wool
team modify Lime collisionRule never
team modify Purple collisionRule never
team modify Neutral collisionRule never
scoreboard players set .glowing game 0
schedule clear rdm:game/glowing