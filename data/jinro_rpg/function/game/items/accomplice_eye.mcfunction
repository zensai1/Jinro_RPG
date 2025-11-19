##> jinro_rpg:game/items/accomplice_eye


##共通処理
    scoreboard players reset @s Znsi.Drop.Crystal
    kill @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},limit=1,sort=nearest]


##共犯者しか使えないよ！
    execute if entity @s[tag=!Accomplice] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは共犯者ではないので使用できません"}]
    execute if entity @s[tag=!Accomplice] run return 0


##ランダムな人狼のIDを取得
    execute store result storage jinro_rpg: Game.Branch.ID int 1 run scoreboard players get @r[tag=Wolf,limit=1,sort=random] Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "共犯者の目"
    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch
    