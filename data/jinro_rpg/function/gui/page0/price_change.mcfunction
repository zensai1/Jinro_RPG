#>jinro_rpg:gui/page0/price_change

#
    item replace entity @s player.cursor with air

#GUIをセット
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.12 loot jinro_rpg:gui/page1/battle_price
    loot replace entity @s inventory.14 loot jinro_rpg:gui/page1/auxiliary_price

    loot replace entity @s inventory.26 loot jinro_rpg:gui/close
    playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 100