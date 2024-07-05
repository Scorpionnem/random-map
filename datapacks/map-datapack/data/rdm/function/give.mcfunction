execute if score .capture settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitemscapture
execute if score .capture settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/captureitems

execute if score .solocapture settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitemscapture
execute if score .solocapture settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/captureitems

execute if score .teambutton settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitems
execute if score .teambutton settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/items

execute if score .ffasolo settings matches 1 run loot give @s[tag=alive,predicate=rdm:luck] loot rdm:randomitem/luckyitems
execute if score .ffasolo settings matches 1 run loot give @s[tag=alive,predicate=!rdm:luck] loot rdm:randomitem/items






scoreboard players add @s givestat 1

#scoreboard players set .random timer2 80
scoreboard players operation .random timer2 = .time2 settings
