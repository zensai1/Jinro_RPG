#>jinro_rpg:system/fortune/


##Debugメッセージ
    #tellraw @a[tag=op] "占い"


##是非関係なく
    data remove storage jinro_rpg: Game.Branch


##自分が対象か調べる
    execute if entity @s[tag=Same.Num] run tag @s remove Touched
    execute if entity @s[tag=Same.Num] run tag @e[tag=Fortune] remove Fortune
    execute if entity @s[tag=Same.Num] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"自分を占うことはできません"}]
    execute if entity @s[tag=Same.Num] run return 0


##昼か夜かを調べる   
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tag @s remove Touched
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tag @e[tag=Fortune] remove Fortune
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"昼時間の間は占えません"}]
    execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run return 0


##占い回数が1以上か調べる
    execute if score @s Znsi.Fortune matches ..0 run tag @s remove Touched
    execute if score @s Znsi.Fortune matches ..0 run tag @e[tag=Fortune] remove Fortune
    execute if score @s Znsi.Fortune matches ..0 run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"占い可能回数が0です"}]
    execute if score @s Znsi.Fortune matches ..0 run return 0


##占いしたことがあるか調べる
    execute if entity @s[tag=No_Fortune] run tag @s remove Touched
    execute if entity @s[tag=No_Fortune] run tag @e[tag=Fortune] remove Fortune
    execute if entity @s[tag=No_Fortune] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"夜時間に1度しか占えません"}]
    execute if entity @s[tag=No_Fortune] run return 0


##占い結果を表示
    $tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(MCID)"},{"color":"white","text":" $(NickName) : "},{"bold":true,"color":"$(Color)","text":"$(Position)"}]
    $title @s title {"bold":true,"color":"$(Color)","text":"$(Position)"}
    title @s subtitle {"color":"gray","text":"占い結果"}


##呪符の処理 
    $execute if entity @a[scores={Znsi.ID=$(Score)},tag=Amulet] as @a[scores={Znsi.ID=$(Score)},tag=Amulet] at @s run title @s title {"color":"gray","text":"天啓"}
    $execute if entity @a[scores={Znsi.ID=$(Score)},tag=Amulet] as @a[scores={Znsi.ID=$(Score)},tag=Amulet] at @s run title @s subtitle {"color":"red","text":"あなたは占われた"}
    $execute if entity @a[scores={Znsi.ID=$(Score)},tag=Amulet] as @a[scores={Znsi.ID=$(Score)},tag=Amulet] at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1


##内部処理
    execute if entity @s[tag=!Same.Num] run scoreboard players remove @s Znsi.Fortune 1
    execute if entity @s[tag=!Same.Num] run tag @s add No_Fortune
    tag @s remove Touched
    tag @s remove Same.Num
    tag @e[tag=Fortune] remove Fortune
    data remove storage jinro_rpg: Game.Branch
