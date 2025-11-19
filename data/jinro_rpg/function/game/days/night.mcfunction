#>jinro_rpg:game/days/night


##Debugメッセージ
    #say night


##内部処理
    scoreboard players add *** Znsi.Days 1
    scoreboard players set *** Znsi.Timer 2400
    bossbar set znsi.time color purple
    time set midnight
    $bossbar set znsi.time name {"color":"white","text":"$(Days)日目　夜"}
    data remove storage jinro_rpg: Game.State
    data modify storage jinro_rpg: Game.State set value "夜時間"
    execute as @a at @s run title @s title [{"color":"yellow","text":"☽ "},{"bold":true,"color":"dark_blue","text":"夜 "},"☽"]
    $execute as @a at @s run title @s subtitle {"color":"gold","italic":false,"text":"- $(Days)日目 -"}


##スケルトンを召喚
    $tellraw @a[gamemode=spectator] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"・$(Days)日目　"},{"color":"blue","text":"夜"}]  
    execute if score *** Znsi.SelectMap matches 1 as @e[tag=Boiling_Point,tag=Map1] at @s run summon skeleton ~ ~ ~ {Health:2.0f}
    execute if score *** Znsi.SelectMap matches 2 as @e[tag=Boiling_Point,tag=Map2] at @s run summon skeleton ~ ~ ~ {Health:2.0f}
    execute if score *** Znsi.SelectMap matches 3 as @e[tag=Boiling_Point,tag=Map3] at @s run summon skeleton ~ ~ ~ {Health:2.0f}
    execute if score *** Znsi.SelectMap matches 4 as @e[tag=Boiling_Point,tag=Map4] at @s run summon skeleton ~ ~ ~ {Health:2.0f}
    execute if score *** Znsi.SelectMap matches 5 as @e[tag=Boiling_Point,tag=Map5] at @s run summon skeleton ~ ~ ~ {Health:2.0f}


##スケルトン強化
    execute if score *** Znsi.Days matches 8 if data storage jinro_rpg: {Setting:{Ske:"ON"}} run tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"7日目になったのでスケルトンが強化されました"}]
    execute if score *** Znsi.Days matches 8.. if data storage jinro_rpg: {Setting:{Ske:"ON"}} run effect give @e[type=skeleton] strength infinite 2 true

    execute if score *** Znsi.Days matches 11 if data storage jinro_rpg: {Setting:{Ske:"ON"}} run tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"10日目になったのでスケルトンがさらに強化されました"}]
    execute if score *** Znsi.Days matches 11.. if data storage jinro_rpg: {Setting:{Ske:"ON"}} run effect give @e[type=skeleton] strength infinite 5 true

    execute if score *** Znsi.Days matches 16 if data storage jinro_rpg: {Setting:{Ske:"ON"}} run tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"15日目になったのでスケルトンがさらに攻撃力が上昇されました"}]
    execute if score *** Znsi.Days matches 16.. if data storage jinro_rpg: {Setting:{Ske:"ON"}} run effect give @e[type=skeleton] strength infinite 10 true


##自動ミュート
    execute as @a[tag=Accepted,gamemode=adventure] at @s run trigger Auto.Mute set 1
    bossbar set znsi.response name {"color":"white","text":"自動ミュート中..."}
    execute as @a[tag=Accepted,gamemode=adventure] at @s run bossbar set znsi.response players @s
    execute as @a[tag=Accepted,gamemode=adventure] at @s run bossbar set znsi.response visible true
    execute as @a[tag=Accepted,gamemode=adventure] at @s run scoreboard players set *** Auto.Response 40