#> jinro_rpg:game/items/medium_candle/position


##占い結果を表示
    $tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(MCID)"},{"color":"white","text":" $(NickName) : "},{"bold":true,"color":"$(Color)","text":"$(Position)"}]
    $title @s title {"bold":true,"color":"$(Color)","text":"$(Position)"}
    title @s subtitle {"color":"gray","text":"占い結果"}


##内部処理
    data remove storage jinro_rpg: Game.Branch
    tag @s remove Medium_Position
    scoreboard players reset @s Znsi.Response
    scoreboard players reset @s Znsi.Temp