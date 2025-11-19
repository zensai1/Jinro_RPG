#>jinro_rpg:game/position/bakery


##Debugメッセージ
    #tellraw @a[tag=op] "パン屋"


##1d100
    execute store result score *** Znsi.Percent run random value 1..100
    execute if score *** Znsi.Percent <= #bakery Znsi.Percent run tag @s add Bakery
    execute if score *** Znsi.Percent <= #bakery Znsi.Percent run tag @s add Distributed

