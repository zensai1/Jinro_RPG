#>jinro_rpg:ticks/gaming


##常時実行
    execute as @a at @s if items entity @s container.* glass_bottle run clear @s glass_bottle


##ボスバー
    execute store result bossbar znsi.time value run scoreboard players get *** Znsi.Timer
    scoreboard players remove *** Znsi.Timer 1
    execute store result storage jinro_rpg: Game.Days int 1.0 run scoreboard players get *** Znsi.Days
    execute if score *** Znsi.Timer matches -20 if data storage jinro_rpg: {Game:{State:"昼時間"}} run function jinro_rpg:game/days/night with storage jinro_rpg: Game
    execute if score *** Znsi.Timer matches -20 if data storage jinro_rpg: {Game:{State:"夜時間"}} run function jinro_rpg:game/days/noon with storage jinro_rpg: Game


##スケルトン
    execute as @a[scores={Znsi.Kill.Skeleton=1..}] at @s run loot give @s loot jinro_rpg:emerald
    execute as @a[scores={Znsi.Kill.Skeleton=1..}] at @s run scoreboard players reset @s Znsi.Kill.Skeleton


##actionvar
    execute as @a[tag=Accepted,tag=!No_Fortune,scores={Znsi.Fortune=1..}] at @s run title @s actionbar [{"color":"white","text":"占い可能回数："},{"bold":true,"color":"blue","score":{"name":"@s","objective":"Znsi.Fortune"}},{"bold":true,"color":"blue","text":"回"}]
    execute as @a[tag=Accepted,tag=No_Fortune,scores={Znsi.Fortune=1..}] at @s run title @s actionbar [{"color":"white","strikethrough":true,"text":"占い可能回数："},{"bold":true,"color":"gray","score":{"name":"@s","objective":"Znsi.Fortune"},"strikethrough":true},{"bold":true,"color":"gray","strikethrough":true,"text":"回"}]


##アイテム処理
    ##占い師の心
        execute as @a[gamemode=adventure] at @s if items entity @s container.* heart_of_the_sea run scoreboard players add @s Znsi.Fortune 1
        execute as @a[gamemode=adventure] at @s if items entity @s container.* heart_of_the_sea run playsound entity.arrow.hit_player record @s
        execute as @a[gamemode=adventure] at @s if items entity @s container.* heart_of_the_sea run clear @s heart_of_the_sea 1

    ##捨てて使う系
        execute as @a[scores={Znsi.Drop.Paper=1..}] at @s run function jinro_rpg:game/items/curse_of_revelation
        execute as @a[scores={Znsi.Drop.Crystal=1..}] at @s run function jinro_rpg:game/items/accomplice_eye


    ##プロビデンス・アイ
    execute as @a[scores={Znsi.Procidence=1..}] at @s run function jinro_rpg:game/items/providence_eye/use
    execute if entity @a[scores={Znsi.Procidence.Trigger=1..}] as @a[scores={Znsi.Procidence.Trigger=1..}] at @s store result storage jinro_rpg: Game.Providence.Num int 1 run scoreboard players get @s Znsi.Procidence.Trigger
    execute if entity @a[scores={Znsi.Procidence.Trigger=1..}] as @a[scores={Znsi.Procidence.Trigger=1..}] at @s run function jinro_rpg:game/items/providence_eye/glow with storage jinro_rpg: Game.Providence


    ##霊媒師の蝋燭
    execute as @a[scores={Znsi.Medium=1..}] at @s run function jinro_rpg:game/items/medium_candle/use
    execute if entity @a[scores={Znsi.Medium.Trigger=1..}] as @a[scores={Znsi.Medium.Trigger=1..}] at @s store result storage jinro_rpg: Game.Medium.Num int 1 run scoreboard players get @s Znsi.Medium.Trigger
    execute if entity @a[scores={Znsi.Medium.Trigger=1..}] as @a[scores={Znsi.Medium.Trigger=1..}] at @s run function jinro_rpg:game/items/medium_candle/get_info with storage jinro_rpg: Game.Medium
    execute if entity @a[tag=Medium_Position] as @a[tag=Medium_Position] at @s run scoreboard players add @s Znsi.Response 1
    execute if entity @a[scores={Znsi.Response=60..}] as @a[scores={Znsi.Response=60..}] at @s run function jinro_rpg:game/items/medium_candle/get_info2
    execute if entity @a[scores={Znsi.Response=60..}] as @a[scores={Znsi.Response=60..}] at @s run function jinro_rpg:game/items/medium_candle/position with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Medium


    ##スタングレネード
    function jinro_rpg:game/items/granade
    execute if entity @a[tag=No_Move] as @a[tag=No_Move] at @s run scoreboard players add @s Znsi.Granade 1
    execute if entity @a[tag=No_Move,scores={Znsi.Granade=100..}] as @a[tag=No_Move,scores={Znsi.Granade=100..}] at @s run attribute @s jump_strength base reset
    execute if entity @a[tag=No_Move,scores={Znsi.Granade=100..}] as @a[tag=No_Move,scores={Znsi.Granade=100..}] at @s run attribute @s movement_speed base reset
    execute if entity @a[scores={Znsi.Granade=100..}] as @a[scores={Znsi.Granade=100..}] at @s run tag @s remove No_Move
    execute if entity @a[scores={Znsi.Granade=100..}] as @a[scores={Znsi.Granade=100..}] at @s run scoreboard players reset @s Znsi.Granade


    ##騎士の加護
        execute if data storage jinro_rpg: {Game:{State:"昼時間"}} run tag @a[tag=Protection] remove Protection


##落下死
    execute if entity @a[scores={Znsi.Death=1..}] as @a[scores={Znsi.Death=1..}] at @s run function jinro_rpg:game/kills/shobo


##勝利判定
    execute store result score #Villager_Side Znsi.GameNum if entity @a[tag=VillagerSide,gamemode=adventure]
    execute store result score #Wolf_Side Znsi.GameNum if entity @a[tag=WolfSide,gamemode=adventure]
    execute store result score #Vampire_Side Znsi.GameNum if entity @a[tag=Vampire,gamemode=adventure]
    

    ##人狼勝利
        execute if score #Villager_Side Znsi.GameNum matches 0 if score #Vampire_Side Znsi.GameNum matches 0 if data storage jinro_rpg: {Setting:{Debug:"Off"}} run data modify storage jinro_rpg: Game.Winflag set value "WolfWin"
        execute if data storage jinro_rpg: {Game:{Winflag:"WolfWin"}} run function jinro_rpg:game/wins/wolf

    
    ##村人勝利
        execute if score #Wolf_Side Znsi.GameNum matches 0 if score #Vampire_Side Znsi.GameNum matches 0 if data storage jinro_rpg: {Setting:{Debug:"Off"}} run data modify storage jinro_rpg: Game.Winflag set value "VillagerWin"
        execute if data storage jinro_rpg: {Game:{Winflag:"VillagerWin"}} run function jinro_rpg:game/wins/villager


    ##吸血鬼勝利
        execute if score #Villager_Side Znsi.GameNum matches 0 if score #Vampire_Side Znsi.GameNum matches 1.. if data storage jinro_rpg: {Setting:{Debug:"Off"}} run data modify storage jinro_rpg: Game.Winflag set value "VampireWin"
        execute if score #Wolf_Side Znsi.GameNum matches 0 if score #Vampire_Side Znsi.GameNum matches 1.. if data storage jinro_rpg: {Setting:{Debug:"Off"}} run data modify storage jinro_rpg: Game.Winflag set value "VampireWin"
        execute if data storage jinro_rpg: {Game:{Winflag:"VampireWin"}} run function jinro_rpg:game/wins/vampire


##斧返却
    execute as @a[tag=!Wolf,tag=!Cursed] at @s if items entity @s container.* stone_axe run function jinro_rpg:game/return_emerald with storage jinro_rpg: Game.Price


#お助けツール
    scoreboard players enable @a Znsi.Quickchat.Trigger
    execute if entity @a[scores={Znsi.Page=0,Znsi.Quickchat.Trigger=1}] as @a[scores={Znsi.Page=0,Znsi.Quickchat.Trigger=1}] at @s run function jinro_rpg:game/quick_chat/position
    execute if entity @a[scores={Znsi.Page=0,Znsi.Quickchat.Trigger=2}] as @a[scores={Znsi.Page=0,Znsi.Quickchat.Trigger=2}] at @s run function jinro_rpg:game/quick_chat/use with storage jinro_rpg: Dialog

    #Who?
        execute if entity @a[scores={Znsi.Page=2,Znsi.Quickchat.Trigger=1..}] as @a[scores={Znsi.Page=2,Znsi.Quickchat.Trigger=1..}] at @s run function jinro_rpg:game/quick_chat/target

        execute if entity @a[scores={Znsi.Page=3,Znsi.Quickchat.Trigger=1..}] as @a[scores={Znsi.Page=3,Znsi.Quickchat.Trigger=1..}] at @s run function jinro_rpg:game/quick_chat/interval
        
        execute if entity @a[scores={Znsi.Quickchat.Trigger=..-1}] as @a[scores={Znsi.Quickchat.Trigger=..-1}] at @s run function jinro_rpg:game/quick_chat/stop


##屈強な村人
    execute if entity @a[tag=Dying,gamemode=adventure,tag=Strong_villager] as @a[tag=Dying,gamemode=adventure,tag=Strong_villager] at @s run scoreboard players add @s Znsi.Dying.Timer 1
    execute if entity @a[scores={Znsi.Dying.Timer=600..}] as @a[scores={Znsi.Dying.Timer=600..}] at @s run function jinro_rpg:game/kills/shobo
    execute if entity @a[scores={Znsi.Dying.Timer=600..}] as @a[scores={Znsi.Dying.Timer=600..}] at @s run tag @s remove Dying
    execute if entity @a[scores={Znsi.Dying.Timer=600..}] as @a[scores={Znsi.Dying.Timer=600..}] at @s run scoreboard players reset @s Znsi.Dying.Timer


##死神
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:0b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:1b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:2b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:3b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:4b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:5b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:6b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:7b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:8b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:9b}] run function jinro_rpg:game/pick_soul
    execute as @a[tag=Reaper] at @s if items entity @s container.* soul_lantern[custom_data={Position:10b}] run function jinro_rpg:game/pick_soul

##デバックモード
    execute as @a[tag=op] at @s if items entity @s player.cursor structure_void run function jinro_rpg:game/reset
    execute unless data storage jinro_rpg: Setting.Debug as @e[tag=Boiling_Point] at @s run particle dust{color:[0.365,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 0.5 5 force @a[tag=op]
    execute unless data storage jinro_rpg: Setting.Debug if data storage jinro_rpg: {Game:{State:"夜時間"}} run effect give @e[type=skeleton] glowing infinite 0 true
    execute unless data storage jinro_rpg: Setting.Debug as @a at @s if score @s Znsi.Use.Bone matches 1.. run function jinro_rpg:preparation/boiling_point


##自動ミュート関連
    scoreboard players enable @a Auto.Mute
    execute store result bossbar znsi.response value if score *** Auto.Response matches 1.. run scoreboard players remove *** Auto.Response 1
    execute if score *** Auto.Response matches 0 run bossbar set znsi.response visible false
    execute if score *** Auto.Response matches 0 run scoreboard players reset *** Auto.Response
    execute as @a[gamemode=spectator] at @s run scoreboard players set @s Auto.Mute 2


##VC切替関連
    scoreboard players enable @a Znsi.MoveCH
    execute if entity @a[gamemode=adventure,tag=Accepted,scores={Znsi.MoveCH=2}] as @a[gamemode=adventure,tag=Accepted,scores={Znsi.MoveCH=2}] at @s run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"生存中なので移動できません"}]
    execute if entity @a[gamemode=adventure,tag=Accepted,scores={Znsi.MoveCH=2}] as @a[gamemode=adventure,tag=Accepted,scores={Znsi.MoveCH=2}] at @s run scoreboard players reset @s Znsi.MoveCH