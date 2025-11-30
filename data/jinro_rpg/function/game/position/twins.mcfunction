#>jinro_rpg:game/position/twins


##Debugメッセージ
    #tellraw @a[tag=op] "双子"


##役職を振り分けられてない人が二人以上かどうか確認
        execute store result score *** Znsi.Counter if entity @a[tag=Accepted,tag=!Distributed]
        execute if score *** Znsi.Counter matches ..1 run return 0


##1d100 
    execute store result score *** Znsi.Percent run random value 1..100
    execute if score *** Znsi.Percent <= #twins Znsi.Percent run tag @s add Twins
    execute if score *** Znsi.Percent <= #twins Znsi.Percent run tag @p[tag=Twins] add Distributed


##もう一人にも双子の役職を付ける
    execute if score *** Znsi.Percent <= #twins Znsi.Percent run tag @r[tag=!Distributed,tag=Accepted] add Twins
    execute if score *** Znsi.Percent <= #twins Znsi.Percent run tag @r[tag=!Distributed,tag=Twins,tag=Accepted] add Distributed

