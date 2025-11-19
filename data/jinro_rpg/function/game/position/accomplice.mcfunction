#>jinro_rpg:game/position/accomplice


##Debugメッセージ
    #tellraw @a[tag=op] "共犯者"


#Tagを付ける
    tag @s add Accomplice
    tag @s add Distributed

    scoreboard players remove *** Znsi.Counter 1
    execute if score *** Znsi.Counter matches 1.. as @r[tag=!Distributed] at @s run function jinro_rpg:game/position/accomplice
