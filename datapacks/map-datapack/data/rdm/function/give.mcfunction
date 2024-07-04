execute unless score .capture settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/items
execute if score .capture settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/captureitems

execute unless score .capture settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitems
execute if score .capture settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitemscapture





scoreboard players add @s givestat 1

#scoreboard players set .random timer2 80
scoreboard players operation .random timer2 = .time2 settings
