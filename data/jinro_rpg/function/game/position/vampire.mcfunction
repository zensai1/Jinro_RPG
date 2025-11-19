#>jinro_rpg:game/position/vampire


##Debugメッセージ
    #tellraw @a[tag=op] "吸血"


##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #vampire Znsi.Percent run tag @s add Vampire
    execute if score *** Znsi.Counter <= #vampire Znsi.Percent run tag @s add Distributed

