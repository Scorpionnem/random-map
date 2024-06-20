summon item_display 0 73.5 52 {Tags:["capturelime"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":5}}}
summon interaction 0 73 52 {Tags:["capturelime"]}
data merge entity @e[tag=capturelime,limit=1] {teleport_duration:1}
data merge entity @e[tag=capturelime,limit=1] {response:1b}
team join Lime @e[tag=capturelime,limit=1]
setblock 0 72 52 bedrock