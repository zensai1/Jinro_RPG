#>jinro_rpg:event/01_wither_skeleton


##参加者の数召喚する
    $execute if score *** Znsi.SelectMap matches 1 as @e[tag=Boiling_Point,tag=MAP1,limit=$(Num)] at @s run summon wither_skeleton ~ ~ ~ {Health:4.0f}
    $execute if score *** Znsi.SelectMap matches 2 as @e[tag=Boiling_Point,tag=MAP2,limit=$(Num)] at @s run summon wither_skeleton ~ ~ ~ {Health:4.0f}
    $execute if score *** Znsi.SelectMap matches 3 as @e[tag=Boiling_Point,tag=MAP3,limit=$(Num)] at @s run summon wither_skeleton ~ ~ ~ {Health:4.0f}
    $execute if score *** Znsi.SelectMap matches 4 as @e[tag=Boiling_Point,tag=MAP4,limit=$(Num)] at @s run summon wither_skeleton ~ ~ ~ {Health:4.0f}
    $execute if score *** Znsi.SelectMap matches 5 as @e[tag=Boiling_Point,tag=MAP5,limit=$(Num)] at @s run summon wither_skeleton ~ ~ ~ {Health:4.0f}


##
    tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"イベント「ウィザースケルトン発生」が発生しました"}]
