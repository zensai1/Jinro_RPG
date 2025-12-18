#>jinro_rpg:gui/page4/f_pos1


##Debugメッセージ
    #tellraw @a[tag=op] "gui/page4/f_pos1"


##forceload用の座標を設定する
    execute store result storage jinro_rpg: Setting.Temp.Pos.x int 1 run data get entity @s Pos[0] 1
    execute store result storage jinro_rpg: Setting.Temp.Pos.z int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage jinro_rpg: Setting.Map1.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage jinro_rpg: Setting.Map1.F_Pos.2 int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] store result storage jinro_rpg: Setting.Map2.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] store result storage jinro_rpg: Setting.Map2.F_Pos.2 int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] store result storage jinro_rpg: Setting.Map3.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] store result storage jinro_rpg: Setting.Map3.F_Pos.2 int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] store result storage jinro_rpg: Setting.Map4.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:13b}]}] store result storage jinro_rpg: Setting.Map4.F_Pos.2 int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] store result storage jinro_rpg: Setting.Map5.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:14b}]}] store result storage jinro_rpg: Setting.Map5.F_Pos.2 int 1 run data get entity @s Pos[2] 1


    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:15b}]}] store result storage jinro_rpg: Setting.Map6.F_Pos.1 int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:15b}]}] store result storage jinro_rpg: Setting.Map6.F_Pos.2 int 1 run data get entity @s Pos[2] 1


##どこか教える
    tellraw @a[tag=op] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"開始位置を"},{"color":"light_purple","text":"("},{"color":"light_purple","nbt":"Setting.Temp.Pos.x","storage":"jinro_rpg:"},{"color":"light_purple","text":" , "},{"color":"light_purple","nbt":"Setting.Temp.Pos.z","storage":"jinro_rpg:"},{"color":"light_purple","text":")"},{"color":"white","text":"に設定しました"}]