#>jinro_rpg:gui/page4/set_start

#MAPのスタート座標を設定する
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:filled_map",Slot:9b}]}] store result storage jinro_rpg: Setting.Lobby.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:filled_map",Slot:9b}]}] store result storage jinro_rpg: Setting.Lobby.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:filled_map",Slot:9b}]}] store result storage jinro_rpg: Setting.Lobby.Pos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage jinro_rpg: Setting.Map1.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage jinro_rpg: Setting.Map1.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage jinro_rpg: Setting.Map1.Pos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] store result storage jinro_rpg: Setting.Map2.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] store result storage jinro_rpg: Setting.Map2.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] store result storage jinro_rpg: Setting.Map2.Pos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] store result storage jinro_rpg: Setting.Map3.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] store result storage jinro_rpg: Setting.Map3.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] store result storage jinro_rpg: Setting.Map3.Pos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] store result storage jinro_rpg: Setting.Map4.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] store result storage jinro_rpg: Setting.Map4.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] store result storage jinro_rpg: Setting.Map4.Pos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] store result storage jinro_rpg: Setting.Map5.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] store result storage jinro_rpg: Setting.Map5.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] store result storage jinro_rpg: Setting.Map5.Pos.z int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:15b}]}] store result storage jinro_rpg: Setting.Map6.Pos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:15b}]}] store result storage jinro_rpg: Setting.Map6.Pos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:15b}]}] store result storage jinro_rpg: Setting.Map6.Pos.z int 1 run data get entity @s Pos[2] 1

    #say set_start