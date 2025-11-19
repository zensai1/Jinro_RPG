#>jinro_rpg:gui/page2/villager_camp


##
    item replace entity @s player.cursor with air


##GUIをセット
    function jinro_rpg:gui/clean


    loot replace entity @s inventory.0 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.1 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.2 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.3 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.4 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.5 loot jinro_rpg:gui/page2/up_percent
    loot replace entity @s inventory.6 loot jinro_rpg:gui/page2/up_percent


    loot replace entity @s inventory.9 loot jinro_rpg:gui/page2/wolf_possession
    loot replace entity @s inventory.10 loot jinro_rpg:gui/page2/twins
    loot replace entity @s inventory.11 loot jinro_rpg:gui/page2/strong_villager
    loot replace entity @s inventory.12 loot jinro_rpg:gui/page2/bakery
    loot replace entity @s inventory.13 loot jinro_rpg:gui/page2/merchant
    loot replace entity @s inventory.14 loot jinro_rpg:gui/page2/cursed_one
    loot replace entity @s inventory.15 loot jinro_rpg:gui/page2/clown


    loot replace entity @s inventory.18 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.19 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.20 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.21 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.22 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.23 loot jinro_rpg:gui/page2/down_percent
    loot replace entity @s inventory.24 loot jinro_rpg:gui/page2/down_percent


    loot replace entity @s inventory.26 loot jinro_rpg:gui/close


##無効化してるやつ
    execute if data storage jinro_rpg: {Setting:{Position:{Wolf_possession:"狼憑き"}}} run item modify entity @s inventory.9 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Twins:"双子"}}} run item modify entity @s inventory.10 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Strong_villager:"屈強な村人"}}} run item modify entity @s inventory.11 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Bakery:"パン屋"}}} run item modify entity @s inventory.12 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Merchant:"商人"}}} run item modify entity @s inventory.13 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Cursed_one:"呪われ者"}}} run item modify entity @s inventory.14 jinro_rpg:page2/invalid
    execute if data storage jinro_rpg: {Setting:{Position:{Clown:"道化師"}}} run item modify entity @s inventory.15 jinro_rpg:page2/invalid


    execute unless score @s Znsi.Page matches 210 run playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 210