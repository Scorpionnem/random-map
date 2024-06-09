advancement revoke @s only rdm:right_click



tag @s add this
execute as @e[type=interaction,distance=..6] run function rdm:interaction/find_targeted
tag @s remove this