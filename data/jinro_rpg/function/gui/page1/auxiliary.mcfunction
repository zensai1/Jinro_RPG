#>jinro_rpg:gui/page1/auxiliary

##いつもの
    item replace entity @s player.cursor with air

##GUIをセットする 
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.0 loot jinro_rpg:gui/plus
    item modify entity @s inventory.0 jinro_rpg:page1/fortune_mind
    loot replace entity @s inventory.1 loot jinro_rpg:gui/plus
    item modify entity @s inventory.1 jinro_rpg:page1/medium_candle
    loot replace entity @s inventory.2 loot jinro_rpg:gui/plus
    item modify entity @s inventory.2 jinro_rpg:page1/knights_protection
    loot replace entity @s inventory.3 loot jinro_rpg:gui/plus
    item modify entity @s inventory.3 jinro_rpg:page1/accomplice_eye
    loot replace entity @s inventory.4 loot jinro_rpg:gui/plus
    item modify entity @s inventory.4 jinro_rpg:page1/holy_cross
    loot replace entity @s inventory.5 loot jinro_rpg:gui/plus
    item modify entity @s inventory.5 jinro_rpg:page1/providence_eye
    loot replace entity @s inventory.6 loot jinro_rpg:gui/plus
    item modify entity @s inventory.6 jinro_rpg:page1/curse_of_revelation
    #loot replace entity @s inventory.7 loot jinro_rpg:gui/plus
    
    loot replace entity @s inventory.9 loot jinro_rpg:items/fortune_mind
    loot replace entity @s inventory.10 loot jinro_rpg:items/medium_candle
    loot replace entity @s inventory.11 loot jinro_rpg:items/knights_protection
    loot replace entity @s inventory.12 loot jinro_rpg:items/accomplice_eye
    loot replace entity @s inventory.13 loot jinro_rpg:items/holy_cross
    loot replace entity @s inventory.14 loot jinro_rpg:items/providence_eye
    loot replace entity @s inventory.15 loot jinro_rpg:items/curse_of_revelation

    loot replace entity @s inventory.18 loot jinro_rpg:gui/minus
    item modify entity @s inventory.18 jinro_rpg:page1/fortune_mind
    loot replace entity @s inventory.19 loot jinro_rpg:gui/minus
    item modify entity @s inventory.19 jinro_rpg:page1/medium_candle
    loot replace entity @s inventory.20 loot jinro_rpg:gui/minus
    item modify entity @s inventory.20 jinro_rpg:page1/knights_protection
    loot replace entity @s inventory.21 loot jinro_rpg:gui/minus
    item modify entity @s inventory.21 jinro_rpg:page1/accomplice_eye
    loot replace entity @s inventory.22 loot jinro_rpg:gui/minus
    item modify entity @s inventory.22 jinro_rpg:page1/holy_cross
    loot replace entity @s inventory.23 loot jinro_rpg:gui/minus
    item modify entity @s inventory.23 jinro_rpg:page1/providence_eye
    loot replace entity @s inventory.24 loot jinro_rpg:gui/minus
    item modify entity @s inventory.24 jinro_rpg:page1/curse_of_revelation
    #loot replace entity @s inventory.25 loot jinro_rpg:gui/minus
    loot replace entity @s inventory.26 loot jinro_rpg:gui/close

    execute unless score @s Znsi.Page matches 120 run playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 120