#>jinro_rpg:preparation/boiling_point


##沸きポイントを召喚
    $summon marker ~ ~ ~ {Tags:["Boiling_Point","Map$(MapNum)"]}


##アイテムの状態をリセット
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 1 if entity @e[tag=Boiling_Point,tag=Map1]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 2 if entity @e[tag=Boiling_Point,tag=Map2]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 3 if entity @e[tag=Boiling_Point,tag=Map3]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 4 if entity @e[tag=Boiling_Point,tag=Map4]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 5 if entity @e[tag=Boiling_Point,tag=Map5]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 6 if entity @e[tag=Boiling_Point,tag=Map6]
    execute if entity @s[tag=op] run loot replace entity @s weapon.mainhand loot jinro_rpg:preparation/boiling_point
    execute if entity @s[tag=!op] run clear @s bone 1
    scoreboard players reset @s Znsi.Use.Bone