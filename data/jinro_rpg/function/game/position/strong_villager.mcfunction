#>jinro_rpg:game/position/strong_villager


##Debugメッセージ
    #tellraw @a[tag=op] "屈強な村人"

    
##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #strong_villager Znsi.Percent run tag @s add Strong_villager
    execute if score *** Znsi.Counter <= #strong_villager Znsi.Percent run tag @s add Distributed

