#>jinro_rpg:game/position/wolf


#Debugメッセージ
    #tellraw @a[tag=op] "人狼"


#Tagを付ける
    tag @s add Wolf
    tag @s add Distributed

    scoreboard players remove *** Znsi.Counter 1
    execute if score *** Znsi.Counter matches 1.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/wolf
