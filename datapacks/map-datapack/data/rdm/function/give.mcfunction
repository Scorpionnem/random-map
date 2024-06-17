execute unless score .capture settings matches 1 run loot give @s[tag=alive] loot rdm:randomitem/items
execute if score .capture settings matches 1 run loot give @s[tag=alive] loot rdm:randomitem/captureitems


#scoreboard players set .random timer2 80
scoreboard players operation .random timer2 = .time2 settings
