#>jinro_rpg:system/get_player_score


##Debugメッセージ
    #tellraw @a[tag=op] "get_player_score"


##プレイヤー情報をストレージに格納する時
    execute if data storage jinro_rpg: {Branch:"PlayerInfo"} store result storage jinro_rpg: Info.Temp int 1 run scoreboard players get @s Znsi.ID
    execute if data storage jinro_rpg: {Branch:"PlayerInfo"} run function jinro_rpg:system/input_info with storage jinro_rpg: Info


##Dialog用のプレイヤーデータを取得する時
    execute if data storage jinro_rpg: {Branch:"Dialog"} store result storage jinro_rpg: Dialog.Temp int 1 run scoreboard players get @s Znsi.ID
    execute if data storage jinro_rpg: {Branch:"Dialog"} run data modify storage jinro_rpg: Dialog.Player.Scores append from storage jinro_rpg: Dialog.Temp


##初期化
    #data remove storage jinro_rpg: Branch