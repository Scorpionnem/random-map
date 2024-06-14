tag @s add capturedpurple
tag @e[tag=capturepurple,type=interaction] add locked
data merge entity @e[type=item_display,tag=capturepurple,limit=1] {Glowing:1b}
tellraw @a {"text": "Lime team stole purple's random core!","color": "red"}