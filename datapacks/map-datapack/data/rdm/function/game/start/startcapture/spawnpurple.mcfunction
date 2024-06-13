summon item_display 0 73.5 12 {Tags:["capturepurple"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":5}}}
summon interaction 0 73 12 {Tags:["capturepurple"]}
data merge entity @e[tag=capturepurple,limit=1] {teleport_duration:1}
setblock 0 72 12 bedrock