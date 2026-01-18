#>jinro_rpg:game/kills/holy_cross2


##メイン
    $execute if entity @s[gamemode=spectator] run tellraw @a[gamemode=spectator] [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PerpetratorID)"}," ",{"color":"white","selector":"@e[scores={Znsi.ID=$(Perpetrator)},type=marker]"},{"color":"gray","text":"("},{"color":"white","text":"聖なる十字架"},{"color":"gray","text":") ➡ "},{"color":"white","player":"$(VictimID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Victim)}]"},{"color":"white","text":" 死亡"}]
    
    
##内部処理
    scoreboard players set @s Auto.Mute 2
    #scoreboard players set @s Znsi.MoveCH 2
    tag @a remove Perpetrator
    tag @a remove Attacker
    tag @e[type=marker] remove Perpetrator
    