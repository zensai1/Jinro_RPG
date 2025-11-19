#>jinro_rpg:game/position/wolf_possession


##Debugメッセージ
    #tellraw @a[tag=op] "狼憑き"


##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #wolf_possession Znsi.Percent run tag @s add Wolf_possession
    execute if score *** Znsi.Counter <= #wolf_possession Znsi.Percent run tag @s add Distributed

