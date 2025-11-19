#>jinro_rpg:gui/page2/wolf_camp

##
    item replace entity @s player.cursor with air

##GUIをセット
    function jinro_rpg:gui/clean

    loot replace entity @s inventory.0 loot jinro_rpg:gui/plus
    loot replace entity @s inventory.1 loot jinro_rpg:gui/plus
    #loot replace entity @s inventory.2 loot jinro_rpg:gui/page2/up_percent
    #loot replace entity @s inventory.3 loot jinro_rpg:gui/page2/up_percent
    #loot replace entity @s inventory.4 loot jinro_rpg:gui/page2/up_percent
    #loot replace entity @s inventory.5 loot jinro_rpg:gui/page2/up_percent

    loot replace entity @s inventory.9 loot jinro_rpg:gui/page2/wolf
    loot replace entity @s inventory.10 loot jinro_rpg:gui/page2/accomplice

    loot replace entity @s inventory.18 loot jinro_rpg:gui/minus
    loot replace entity @s inventory.19 loot jinro_rpg:gui/minus
    #loot replace entity @s inventory.20 loot jinro_rpg:gui/page2/down_percent
    #loot replace entity @s inventory.21 loot jinro_rpg:gui/page2/down_percent
    #loot replace entity @s inventory.22 loot jinro_rpg:gui/page2/down_percent
    #loot replace entity @s inventory.23 loot jinro_rpg:gui/page2/down_percent

    loot replace entity @s inventory.26 loot jinro_rpg:gui/close
    execute unless score @s Znsi.Page matches 220 run playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 220