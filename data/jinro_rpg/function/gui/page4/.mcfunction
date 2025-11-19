#>jinro_rpg:gui/page4/

#
    item replace entity @s player.cursor with air
    clear @s writable_book[custom_data={Maps:1b}]

##Lobbyの初期化
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:filled_map",Slot:9b}]}] if data storage jinro_rpg: Setting.Lobby.Pos run data remove storage jinro_rpg: Setting.Lobby


##MAP名を決める
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage jinro_rpg: Setting.Map1.F_Pos.3 unless data storage jinro_rpg: Setting.Map1.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map1"],mode:"replace_all"}}]}]}],functions:[]}
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] if data storage jinro_rpg: Setting.Map2.F_Pos.3 unless data storage jinro_rpg: Setting.Map2.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map2"],mode:"replace_all"}}]}]}],functions:[]}
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] if data storage jinro_rpg: Setting.Map3.F_Pos.3 unless data storage jinro_rpg: Setting.Map3.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map3"],mode:"replace_all"}}]}]}],functions:[]}
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] if data storage jinro_rpg: Setting.Map4.F_Pos.3 unless data storage jinro_rpg: Setting.Map4.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map4"],mode:"replace_all"}}]}]}],functions:[]}
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] if data storage jinro_rpg: Setting.Map5.F_Pos.3 unless data storage jinro_rpg: Setting.Map5.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map5"],mode:"replace_all"}}]}]}],functions:[]}


##Forceload用の座標2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] unless data storage jinro_rpg: Setting.Map1.F_Pos.3 if data storage jinro_rpg: Setting.Map1.F_Pos.1 run function jinro_rpg:gui/page4/f_pos2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] unless data storage jinro_rpg: Setting.Map2.F_Pos.3 if data storage jinro_rpg: Setting.Map2.F_Pos.1 run function jinro_rpg:gui/page4/f_pos2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] unless data storage jinro_rpg: Setting.Map3.F_Pos.3 if data storage jinro_rpg: Setting.Map3.F_Pos.1 run function jinro_rpg:gui/page4/f_pos2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] unless data storage jinro_rpg: Setting.Map4.F_Pos.3 if data storage jinro_rpg: Setting.Map4.F_Pos.1 run function jinro_rpg:gui/page4/f_pos2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] unless data storage jinro_rpg: Setting.Map5.F_Pos.3 if data storage jinro_rpg: Setting.Map5.F_Pos.1 run function jinro_rpg:gui/page4/f_pos2


##Forceload用の座標1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] unless data storage jinro_rpg: Setting.Map1.F_Pos.1 if data storage jinro_rpg: Setting.Map1.Pos run function jinro_rpg:gui/page4/f_pos1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] unless data storage jinro_rpg: Setting.Map2.F_Pos.1 if data storage jinro_rpg: Setting.Map2.Pos run function jinro_rpg:gui/page4/f_pos1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] unless data storage jinro_rpg: Setting.Map3.F_Pos.1 if data storage jinro_rpg: Setting.Map3.Pos run function jinro_rpg:gui/page4/f_pos1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] unless data storage jinro_rpg: Setting.Map4.F_Pos.1 if data storage jinro_rpg: Setting.Map4.Pos run function jinro_rpg:gui/page4/f_pos1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] unless data storage jinro_rpg: Setting.Map5.F_Pos.1 if data storage jinro_rpg: Setting.Map5.Pos run function jinro_rpg:gui/page4/f_pos1


##座標をセット
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:filled_map",Slot:9b}]}] unless data storage jinro_rpg: Setting.Lobby.Pos run function jinro_rpg:gui/page4/set_start
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] unless data storage jinro_rpg: Setting.Map1.Pos run function jinro_rpg:gui/page4/set_start
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] unless data storage jinro_rpg: Setting.Map2.Pos run function jinro_rpg:gui/page4/set_start
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] unless data storage jinro_rpg: Setting.Map3.Pos run function jinro_rpg:gui/page4/set_start
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] unless data storage jinro_rpg: Setting.Map4.Pos run function jinro_rpg:gui/page4/set_start
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] unless data storage jinro_rpg: Setting.Map5.Pos run function jinro_rpg:gui/page4/set_start

##初期化
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage jinro_rpg: Setting.Map1.Pos if data storage jinro_rpg: Setting.Map1.Name run data remove storage jinro_rpg: Setting.Map1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] if data storage jinro_rpg: Setting.Map2.Pos if data storage jinro_rpg: Setting.Map2.Name run data remove storage jinro_rpg: Setting.Map2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] if data storage jinro_rpg: Setting.Map3.Pos if data storage jinro_rpg: Setting.Map3.Name run data remove storage jinro_rpg: Setting.Map3
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] if data storage jinro_rpg: Setting.Map4.Pos if data storage jinro_rpg: Setting.Map4.Name run data remove storage jinro_rpg: Setting.Map4
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] if data storage jinro_rpg: Setting.Map5.Pos if data storage jinro_rpg: Setting.Map5.Name run data remove storage jinro_rpg: Setting.Map5

function jinro_rpg:gui/page0/map
