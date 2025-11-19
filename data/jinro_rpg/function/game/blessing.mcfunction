##> jinro_rpg:game/blessing


##自分が対象か調べる
    execute if entity @s[tag=Same.Num] run tag @s remove Touched
    execute if entity @s[tag=Same.Num] run tag @e[type=marker,tag=Blessing] remove Blessing
    execute if entity @s[tag=Same.Num] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"自分を守ることはできません"}]
    execute if entity @s[tag=Same.Num] run return 0


##昼か夜かを調べる   
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tag @s remove Touched
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tag @e[type=marker,tag=Blessing] remove Blessing
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"昼時間の間は使えません"}]
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run return 0


##加護を与える
    $execute if entity @a[scores={Znsi.ID=$(Score)},tag=!Wolf,tag=!Vampire,tag=!Cursed] run tag @a[scores={Znsi.ID=$(Score)}] add Protection
    $tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(MCID)"},{"color":"white","text":" $(NickName) に騎士の加護を使用しました"}]
    execute at @e[type=marker,tag=Blessing] run particle end_rod ~ ~ ~ 1 1 1 0.1 20 force @p[tag=Touched]
    playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.5


##後処理
    execute if entity @s[tag=!Same.Num] run item replace entity @s weapon.mainhand with air
    $scoreboard players set @s Znsi.Protection $(Score)
    tag @s remove Touched
    tag @e[type=marker,tag=Blessing] remove Blessing
    data remove storage jinro_rpg: Game.Branch