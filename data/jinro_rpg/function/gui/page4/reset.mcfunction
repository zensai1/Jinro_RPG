#>jinro_rpg:gui/page4/reset

#
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] run data remove storage jinro_rpg: Setting.Map1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] run data remove storage jinro_rpg: Setting.Map2
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:11b}]}] run data remove storage jinro_rpg: Setting.Map3
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:12b}]}] run data remove storage jinro_rpg: Setting.Map4