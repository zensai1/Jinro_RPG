#>jinro_rpg:ticks/tick

##初めて入る人
    execute if entity @a[tag=!firstlogin] as @a[tag=!firstlogin] at @s run function jinro_rpg:system/firstlogin

##Display(プレイヤーヘッド)を回転させる
    execute as @e[type=minecraft:item_display,tag=Sign] at @s run scoreboard players add @s Znsi.Rotation 3
    execute as @e[type=minecraft:item_display,tag=Sign] at @s if score @s Znsi.Rotation matches 180.. run scoreboard players set @s Znsi.Rotation -180
    execute as @e[type=minecraft:item_display,tag=Sign] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s Znsi.Rotation

##待機中のみ常時実行
    execute if data storage jinro_rpg: {State:"待機中"} run function jinro_rpg:ticks/waiting

##試合中のみ常時実行
    execute if data storage jinro_rpg: {State:"試合中"} run function jinro_rpg:ticks/gaming

##リログ
    execute as @a at @s if score @s Znsi.Leave matches 1.. run function jinro_rpg:system/leave_game

##村人
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s LastGossipDecay set value 1000000000
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s LastGossipDecay set value 1000000000