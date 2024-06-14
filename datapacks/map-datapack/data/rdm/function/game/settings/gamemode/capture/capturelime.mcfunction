tag @s add capturedlime
tag @e[tag=capturelime,type=interaction] add locked
data merge entity @e[type=item_display,tag=capturelime,limit=1] {Glowing:1b}
tellraw @a {"text": "Purple team stole lime's random core!","color": "red"}