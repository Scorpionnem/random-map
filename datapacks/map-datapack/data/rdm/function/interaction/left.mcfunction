advancement revoke @s only rdm:left_click



tag @s add this
execute as @e[type=interaction,distance=..6] run function rdm:interaction/find_attacked
tag @s remove this