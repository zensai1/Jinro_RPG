#>jinro_rpg:game/items/medium_candle/get_info2


##OhMyDat呼び出し
    function #oh_my_dat:please


##
    execute store result storage jinro_rpg: Game.Branch.ID int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Medium.Num
    data modify storage jinro_rpg: Game.Branch.Code set value "Medium_candle"
    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch