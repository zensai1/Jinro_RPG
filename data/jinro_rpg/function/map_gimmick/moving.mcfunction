#>jinro_rpg:map_gimmick/moving


##SideA
    execute if entity @s[tag=SideA,scores={Znsi.Timer=1..}] run tp ~-1 ~ ~


##SideB
    execute if entity @s[tag=SideB,scores={Znsi.Timer=1..}] run tp ~1 ~ ~


##スコア減少
    scoreboard players remove @s Znsi.Timer 1


##再帰
    execute if entity @s[scores={Znsi.Timer=1..}] at @s run function jinro_rpg:map_gimmick/moving


##kill
    execute if entity @s[scores={Znsi.Timer=0}] run kill @s