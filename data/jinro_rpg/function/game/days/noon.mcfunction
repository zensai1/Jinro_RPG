#>jinro_rpg:game/days/noon


##Debugメッセージ
    #say noon


##内部処理
    scoreboard players set *** Znsi.Timer 2400
    bossbar set znsi.time color yellow
    time set day
    $bossbar set znsi.time name {"color":"white","text":"$(Days)日目　昼"}
    data remove storage jinro_rpg: Game.State
    data modify storage jinro_rpg: Game.State set value "昼時間"
    tag @a remove No_Fortune
    tag @a remove Amulet


##加護結果   
    execute as @a[tag=Protected] at @s run tellraw @s [{"text":"[人狼RPG] ","color":"red"},{"text":"昨晩の 騎士の加護 は成功しました","color":"white"}]
    tag @a remove Protection
    tag @a remove Protected

##アナウンス
    $tellraw @a[gamemode=spectator] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"・$(Days)日目　"},{"color":"yellow","text":"昼"}]
    execute as @a[tag=Bakery,gamemode=adventure] at @s if items entity @s container.* emerald run give @a[gamemode=adventure] bread 1
    execute as @a[tag=Bakery,gamemode=adventure] at @s if items entity @s container.* emerald run tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"yellow","text":"美味しいパンが配給された！"}]
    execute as @a[tag=Bakery,gamemode=adventure] at @s if items entity @s container.* emerald run clear @s emerald 1
    execute as @a at @s run title @s title [{"color":"gold","italic":false,"text":"☀ "},{"bold":true,"color":"yellow","text":"昼"}," ☀"]
    $execute as @a at @s run title @s subtitle {"color":"gold","italic":false,"text":"- $(Days)日目 -"}
    kill @e[type=skeleton]
    kill @e[type=wither_skeleton]

##自動ミュート
    execute as @a[tag=Accepted,gamemode=adventure] at @s run trigger Auto.Mute set 2
    bossbar set znsi.response name {"color":"white","text":"自動ミュート解除中..."}
    execute as @a[tag=Accepted,gamemode=adventure] at @s run bossbar set znsi.response players @s
    execute as @a[tag=Accepted,gamemode=adventure] at @s run bossbar set znsi.response visible true
    execute as @a[tag=Accepted,gamemode=adventure] at @s run scoreboard players set *** Auto.Response 40