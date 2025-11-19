#>jinro_rpg:gui/page0/position_allocation

#
    item replace entity @s player.cursor with air

#GUIをセット
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.11 loot jinro_rpg:gui/page2/villager_camp
    loot replace entity @s inventory.13 loot jinro_rpg:gui/page2/wolf_camp
    loot replace entity @s inventory.15 loot jinro_rpg:gui/page2/third_camp
    loot replace entity @s inventory.26 loot jinro_rpg:gui/close
    playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 200