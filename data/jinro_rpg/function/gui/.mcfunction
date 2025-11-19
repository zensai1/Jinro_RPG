#>jinro_rpg:gui/

#GUIをセットする
    execute if entity @s[tag=op] run loot replace entity @s inventory.3 loot jinro_rpg:gui/arrow_up
    execute if entity @s[tag=op] run loot replace entity @s inventory.7 loot jinro_rpg:gui/tp
    execute if entity @s[tag=op] run loot replace entity @s inventory.8 loot jinro_rpg:gui/start_entry
    execute if entity @s[tag=op] run loot replace entity @s inventory.9 loot jinro_rpg:gui/price_change
    execute if entity @s[tag=op] run loot replace entity @s inventory.10 loot jinro_rpg:gui/position_allocation
    execute if entity @s[tag=op] run loot replace entity @s inventory.11 loot jinro_rpg:gui/deets_setting
    #execute if entity @s[tag=op] run loot replace entity @s inventory.11 loot jinro_rpg:gui/skeletons
    execute if entity @s[tag=op] run loot replace entity @s inventory.12 loot jinro_rpg:gui/map
    execute if entity @s[tag=op] run loot replace entity @s inventory.17 loot jinro_rpg:preparation
    execute if entity @s[tag=op] run loot replace entity @s inventory.21 loot jinro_rpg:gui/arrow_down
    execute if entity @s[tag=op] run loot replace entity @s inventory.26 loot jinro_rpg:gui/game_start


    playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 0