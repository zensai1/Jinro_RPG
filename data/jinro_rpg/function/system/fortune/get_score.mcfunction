#>jinro_rpg:system/fortune/get_score



##Debugメッセージ
    #say getscore


##触った人にTagを付与
    execute on target if entity @s[tag=Same.Num] run tag @s remove Same.Num 
    execute on target run tag @s add Touched


##スコアをストレージに入れる
    execute store result storage jinro_rpg: Game.Branch.ID int 1.0 run scoreboard players get @s Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "占い"
    execute if score @s Znsi.ID = @p[tag=Touched] Znsi.ID run tag @p[tag=Touched] add Same.Num
    execute as @a[tag=Touched] at @s run function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch


##内部処理
data remove entity @s interaction