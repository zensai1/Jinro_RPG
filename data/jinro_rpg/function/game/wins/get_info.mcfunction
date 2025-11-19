#>jinro_rpg:game/win/get_info


##Debugメッセージ
    #tellraw @a[tag=op] "get_info"


##
    execute store result storage jinro_rpg: Game.Branch.ID int 1 run scoreboard players get @s Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "ゲーム終了"
    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch