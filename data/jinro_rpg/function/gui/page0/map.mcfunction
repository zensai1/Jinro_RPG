#>jinro_rpg:gui/page0/map

#持ってるアイテムを削除
    item replace entity @s player.cursor with air

#GUIをセット
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.0 loot jinro_rpg:gui/page4/lobby
    loot replace entity @s inventory.1 loot jinro_rpg:gui/page4/map1
    loot replace entity @s inventory.2 loot jinro_rpg:gui/page4/map2
    loot replace entity @s inventory.3 loot jinro_rpg:gui/page4/map3
    loot replace entity @s inventory.4 loot jinro_rpg:gui/page4/map4
    loot replace entity @s inventory.5 loot jinro_rpg:gui/page4/map5

#その他
    loot replace entity @s inventory.26 loot jinro_rpg:gui/close
    playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 400