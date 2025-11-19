#>jinro_rpg:gui/page0/deets_setting

##持ってるアイテムを削除
    item replace entity @s player.cursor with air

##GUIをセット
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.9 loot jinro_rpg:gui/page3/debug_mode
    loot replace entity @s inventory.11 loot jinro_rpg:gui/page3/strengthen_ske
    loot replace entity @s inventory.13 loot jinro_rpg:gui/page3/axe_kill
    loot replace entity @s inventory.15 loot jinro_rpg:gui/page3/spyglass
    loot replace entity @s inventory.17 loot jinro_rpg:gui/page3/event
    loot replace entity @s inventory.26 loot jinro_rpg:gui/close

##無効化してるやつ
    execute if data storage jinro_rpg: {Setting:{Debug:"Off"}} run item modify entity @s inventory.9 jinro_rpg:page3/invalid
    execute if data storage jinro_rpg: {Setting:{Ske:"Off"}} run item modify entity @s inventory.11 jinro_rpg:page3/invalid
    execute if data storage jinro_rpg: {Setting:{Axe_kill:"Off"}} run item modify entity @s inventory.13 jinro_rpg:page3/invalid
    execute if data storage jinro_rpg: {Setting:{Spyglass:"Off"}} run item modify entity @s inventory.15 jinro_rpg:page3/invalid
    execute if data storage jinro_rpg: {Setting:{Event:"Off"}} run item modify entity @s inventory.17 jinro_rpg:page3/invalid

    execute unless score @s Znsi.Page matches 300 run playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 300