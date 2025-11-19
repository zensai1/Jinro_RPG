#>jinro_rpg:gui/page1/battle

#
    item replace entity @s player.cursor with air

#GUIをセットする 
    function jinro_rpg:gui/clean
    loot replace entity @s inventory.0 loot jinro_rpg:gui/plus
    item modify entity @s inventory.0 jinro_rpg:page1/bow
    loot replace entity @s inventory.1 loot jinro_rpg:gui/plus
    item modify entity @s inventory.1 jinro_rpg:page1/arrow
    loot replace entity @s inventory.2 loot jinro_rpg:gui/plus
    item modify entity @s inventory.2 jinro_rpg:page1/steak
    loot replace entity @s inventory.3 loot jinro_rpg:gui/plus
    item modify entity @s inventory.3 jinro_rpg:page1/invisibility_potion
    loot replace entity @s inventory.4 loot jinro_rpg:gui/plus
    item modify entity @s inventory.4 jinro_rpg:page1/stun_grenade
    loot replace entity @s inventory.5 loot jinro_rpg:gui/plus
    item modify entity @s inventory.5 jinro_rpg:page1/grudge_spear
    loot replace entity @s inventory.6 loot jinro_rpg:gui/plus
    item modify entity @s inventory.6 jinro_rpg:page1/axe
    #loot replace entity @s inventory.7 loot jinro_rpg:gui/plus
    
    loot replace entity @s inventory.9 loot jinro_rpg:items/bow
    loot replace entity @s inventory.10 loot jinro_rpg:items/arrow
    loot replace entity @s inventory.11 loot jinro_rpg:items/steak
    loot replace entity @s inventory.12 loot jinro_rpg:items/invisibility_potion
    loot replace entity @s inventory.13 loot jinro_rpg:items/stun_grenade
    loot replace entity @s inventory.14 loot jinro_rpg:items/grudge_spear
    loot replace entity @s inventory.15 loot jinro_rpg:items/axe

    loot replace entity @s inventory.18 loot jinro_rpg:gui/minus
    item modify entity @s inventory.18 jinro_rpg:page1/bow
    loot replace entity @s inventory.19 loot jinro_rpg:gui/minus
    item modify entity @s inventory.19 jinro_rpg:page1/arrow
    loot replace entity @s inventory.20 loot jinro_rpg:gui/minus
    item modify entity @s inventory.20 jinro_rpg:page1/steak
    loot replace entity @s inventory.21 loot jinro_rpg:gui/minus
    item modify entity @s inventory.21 jinro_rpg:page1/invisibility_potion
    loot replace entity @s inventory.22 loot jinro_rpg:gui/minus
    item modify entity @s inventory.22 jinro_rpg:page1/stun_grenade
    loot replace entity @s inventory.23 loot jinro_rpg:gui/minus
    item modify entity @s inventory.23 jinro_rpg:page1/grudge_spear
    loot replace entity @s inventory.24 loot jinro_rpg:gui/minus
    item modify entity @s inventory.24 jinro_rpg:page1/axe
    #loot replace entity @s inventory.25 loot jinro_rpg:gui/minus
    loot replace entity @s inventory.26 loot jinro_rpg:gui/close

    execute unless score @s Znsi.Page matches 110 run playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.Page 110