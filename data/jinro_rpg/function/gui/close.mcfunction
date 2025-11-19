#>jinro_rpg:gui/close

##ショップのアイテム保存
    execute if score @s Znsi.Page matches 110 run function jinro_rpg:gui/page1/battle_storage
    execute if score @s Znsi.Page matches 120 run function jinro_rpg:gui/page1/auxiliary_storage


##いつもの
    item replace entity @s player.cursor with air
    function jinro_rpg:gui/clean

##PAGE1
    execute if score @s Znsi.Page matches 100 run function jinro_rpg:gui/
    execute if score @s Znsi.Page matches 110..120 run function jinro_rpg:gui/page0/price_change

##PAGE2
    execute if score @s Znsi.Page matches 200 as @a at @s run function jinro_rpg:game/quick_chat/position
    execute if score @s Znsi.Page matches 200 run function jinro_rpg:gui/
    execute if score @s Znsi.Page matches 210..230 run function jinro_rpg:gui/page0/position_allocation

##PAGE3
    execute if score @s Znsi.Page matches 300 run function jinro_rpg:gui/

##PAGE4
    execute if score @s Znsi.Page matches 400 run function jinro_rpg:gui/
