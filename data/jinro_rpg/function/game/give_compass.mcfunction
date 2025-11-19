#>jinro_rpg:game/give_compass


##
$loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:compass",functions:[{function:"minecraft:set_name",entity:"this",name:{text:"道しるべ",color:"aqua",italic:false},target:"custom_name"},{function:"minecraft:set_lore",entity:"this",lore:[{text:"開始地点を常に指す",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{target:{pos:[$(x),$(y),$(z)],dimension:"minecraft:overworld"},tracked:0b}}}]}]}]}