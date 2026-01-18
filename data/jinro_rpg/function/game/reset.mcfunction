#>jinro_rpg:game/reset
    

##スコアボード
    scoreboard players reset @a[tag=!op] Znsi.Page
    scoreboard players reset @a Znsi.Response
    scoreboard players reset @a Znsi.Granade
    scoreboard players reset @a Znsi.Grudge
    scoreboard players reset @a Znsi.Fortune
    scoreboard players reset @a Znsi.Dying.Timer
    scoreboard players reset @s Znsi.Protection
    scoreboard players reset *** Auto.Response
    

##タグを消す
    tag @a remove Accomplice
    tag @a remove Bakery
    tag @a remove Cursed_one
    tag @a remove Cursed
    tag @a remove Distributed
    tag @a remove Merchant
    tag @a remove Strong_villager
    tag @a remove Twins
    tag @a remove Vampire
    tag @a remove Clown
    tag @a remove Villager
    tag @a remove Wolf
    tag @a remove Wolf_possession
    tag @a remove Reaper
    tag @a remove Reaperd
    tag @a remove No_Fortune
    tag @a remove Same.Num
    tag @a remove Perpetrator
    tag @a remove No_Move
    tag @a remove Medium_Position
    tag @a remove VillagerSide
    tag @a remove WolfSide
    tag @a remove Touched
    tag @e[tag=Sign_stand] remove Accomplice
    tag @e[tag=Sign_stand] remove Bakery
    tag @e[tag=Sign_stand] remove Cursed_one
    tag @e[tag=Sign_stand] remove Cursed
    tag @e[tag=Sign_stand] remove Distributed
    tag @e[tag=Sign_stand] remove Merchant
    tag @e[tag=Sign_stand] remove Strong_villager
    tag @e[tag=Sign_stand] remove Twins
    tag @e[tag=Sign_stand] remove Vampire
    tag @e[tag=Sign_stand] remove Clown
    tag @e[tag=Sign_stand] remove Villager
    tag @e[tag=Sign_stand] remove Wolf
    tag @e[tag=Sign_stand] remove Wolf_possession
    tag @e[tag=Sign_stand] remove Reaper
    tag @e[tag=Sign_stand] remove select
    execute as @e[tag=Boiling_Point] at @s run tag @s remove No_Summon


##ボスバー
    bossbar set znsi.time visible false
    bossbar set znsi.time name {"color":"white","italic":false,"text":"初日　昼"}
    bossbar set minecraft:znsi.time color yellow


##チーム
    team empty Accomplice
    team empty Vampire
    team empty Villager
    team empty Wolf
    team empty Clown


##エントリー再受付
    execute as @e[tag=Sign_stand,scores={Znsi.ID=0}] at @s run summon item_display ~ ~1 ~ {CustomNameVisible:0b,start_interpolation:1,interpolation_duration:2,Tags:["Sign"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:player_head",count:1}}
    execute as @e[tag=Sign_stand,scores={Znsi.ID=0}] at @s run summon interaction ~ ~0.28 ~ {CustomNameVisible:0b,Tags:["Sign" , "Reception"],width:0.75f,height:0.75f}
    execute as @e[tag=Sign_stand,scores={Znsi.ID=0}] at @s run summon text_display ~ ~1.1 ~ {billboard:"center",see_through:0b,Tags:["Sign"],text:"右クリックで試合に参加できます"}


##プレイヤー
    gamemode adventure @a
    clear @a
    effect clear @a
    execute as @a at @s run attribute @s jump_strength base reset
    execute as @a at @s run attribute @s movement_speed base reset
    execute as @a[tag=op] at @s run function jinro_rpg:gui/
    scoreboard players set @a Auto.Mute 2
    scoreboard players set @a Znsi.MoveCH 1


##エンティティ
    kill @e[tag=granaded]
    kill @e[type=skeleton]
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[0] set from entity @s UUID[0]
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[1] set from entity @s UUID[1]
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[2] set from entity @s UUID[2]
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[3] set from entity @s UUID[3]
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s LastGossipDecay set value 1000000000
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[0] set from entity @s UUID[0]
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[1] set from entity @s UUID[1]
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[2] set from entity @s UUID[2]
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[3] set from entity @s UUID[3]
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s LastGossipDecay set value 1000000000
    

##ストレージ
    data remove storage jinro_rpg: Game.Winflag
    data remove storage jinro_rpg: Game.Providence
    data remove storage jinro_rpg: Game.Medium
    data remove storage jinro_rpg: Game.Quickchat
    data remove storage jinro_rpg: Game.Setting
    data remove storage jinro_rpg: Game.State
    data remove storage jinro_rpg: Dialog
    data remove storage jinro_rpg: Info
    data remove storage jinro_rpg: Game.Branch
    data modify storage jinro_rpg: State set value "待機中"
    data remove storage jinro_rpg: Game.Merchant.UUID

#ゲームモード
    gamerule fallDamage false
    gamerule sendCommandFeedback true


##その他
    kill @e[type=minecraft:item]
    worldborder set 10000000
    time set day


##Plugin
    scoreboard players set #Plugin Znsi.Plugin 2