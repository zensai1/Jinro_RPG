#>jinro_rpg:game/position/clown


##Debugメッセージ
    #tellraw @a[tag=op] "道化師"


##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #clown Znsi.Percent run tag @s add Clown
    execute if score *** Znsi.Counter <= #clown Znsi.Percent run tag @s add Distributed

