#>jinro_rpg:game/position/cursed_one


##Debugメッセージ
    #tellraw @a[tag=op] "呪われ"


##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #cursed_one Znsi.Percent run tag @s add Cursed_one
    execute if score *** Znsi.Counter <= #cursed_one Znsi.Percent run tag @s add Distributed