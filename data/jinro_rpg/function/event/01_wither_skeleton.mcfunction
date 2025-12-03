#>jinro_rpg:event/01_wither_skeleton


##参加者の数召喚する
    $execute if score *** Znsi.SelectMap matches 1 as @e[tag=Boiling_Point,tag=Map1,limit=$(Num),sort=random] at @s run summon wither_skeleton ~ ~ ~ {Health:8.0f}
    $execute if score *** Znsi.SelectMap matches 2 as @e[tag=Boiling_Point,tag=Map2,limit=$(Num),sort=random] at @s run summon wither_skeleton ~ ~ ~ {Health:8.0f}
    $execute if score *** Znsi.SelectMap matches 3 as @e[tag=Boiling_Point,tag=Map3,limit=$(Num),sort=random] at @s run summon wither_skeleton ~ ~ ~ {Health:8.0f}
    $execute if score *** Znsi.SelectMap matches 4 as @e[tag=Boiling_Point,tag=Map4,limit=$(Num),sort=random] at @s run summon wither_skeleton ~ ~ ~ {Health:8.0f}
    $execute if score *** Znsi.SelectMap matches 5 as @e[tag=Boiling_Point,tag=Map5,limit=$(Num),sort=random] at @s run summon wither_skeleton ~ ~ ~ {Health:8.0f}


##アナウンス
    tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"イベント「ウィザースケルトン発生」が発生しました"}]
    tellraw @a "スケルトンに紛れてウィザースケルトンが現れた。"
    tellraw @a "倒すとショップで買えるアイテムを落とすぞ。"
