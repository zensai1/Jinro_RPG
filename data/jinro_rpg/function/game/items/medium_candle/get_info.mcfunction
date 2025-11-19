##> jinro_rpg:game/items/get_info
#oh my dat呼び出し
    function #oh_my_dat:please

#いろいろ取得
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Medium.Num int 1 run scoreboard players get @s Znsi.Medium.Trigger
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Medium.PlayerID set from entity @e[type=item_display,limit=1,scores={Znsi.ID=$(Num)}] item.components."minecraft:profile".name
    function jinro_rpg:game/items/medium_candle/medium with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Medium