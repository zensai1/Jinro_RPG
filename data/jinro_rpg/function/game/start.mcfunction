#>jinro_rpg:game/start

##MAP内を常に読み込む
    function jinro_rpg:system/forceload with storage jinro_rpg: Setting.SelectMap.F_Pos


##村人の交易内容変更
    execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Offers.Recipes set from storage jinro_rpg: Auxiliary
    execute as @e[type=villager,tag=Battle] at @s run data modify entity @s Offers.Recipes set from storage jinro_rpg: Battle

##エントリーされてないエンティティを消す
    execute as @e[tag=Reception] at @s run kill @e[type=text_display,limit=1,sort=nearest]
    execute as @e[tag=Reception] at @s run kill @e[type=item_display,limit=1,sort=nearest]
    execute as @e[tag=Reception] at @s run kill @s


##役職を配る
    function jinro_rpg:game/position/distribution
    execute as @a[tag=Accepted] at @s run function jinro_rpg:game/position/add_tag
    team join Villager @a[tag=Villager]
    team join Villager @a[tag=Wolf_possession]
    team join Villager @a[tag=Twins]
    team join Villager @a[tag=Bakery]
    team join Villager @a[tag=Merchant]
    team join Villager @a[tag=Strong_villager]
    team join Villager @a[tag=Cursed_one]

    team join Wolf @a[tag=Wolf]
    team join Accomplice @a[tag=Accomplice]

    team join Vampire @a[tag=Vampire]
    team join Clown @a[tag=Clown]
    team join Reaper @a[tag=Reaper]

    clear @a


##役職に応じたメッセージを送る
    tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"MAP："},{"color":"white","interpret":true,"nbt":"Setting.SelectMap.Name","storage":"jinro_rpg:"}]
    tellraw @a[tag=Villager] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"blue","text":"村人"}]
    tellraw @a[tag=Cursed_one] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"blue","text":"村人"}]
    tellraw @a[tag=Strong_villager] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"blue","text":"村人"}]
    tellraw @a[tag=Wolf_possession] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"blue","text":"村人"}]
    tellraw @a[tag=Merchant] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"green","text":"商人"}]
    tellraw @a[tag=Bakery] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"yellow","text":"パン屋"}]
    tellraw @a[tag=Twins] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"aqua","text":"双子"}]
    execute as @a[tag=Twins] at @s run function jinro_rpg:game/tell_twins
    execute as @a[tag=Twins] at @s run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"今回の双子："},{"color":"white","selector":"@e[type=marker,tag=Twins]"}]
    tellraw @a[tag=Clown] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"#FF8C00","text":"道化師"}]


    tellraw @a[tag=Wolf] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"dark_red","text":"人狼"}]
    tellraw @a[tag=Wolf] "今回の人狼"
    execute as @a[tag=Wolf] at @s run function jinro_rpg:game/tell_wolf
    tellraw @a[tag=Accomplice] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"gray","text":"共犯者"}]


    tellraw @a[tag=Vampire] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"light_purple","text":"吸血鬼"}]
    tellraw @a[tag=Reaper] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたの役職："},{"bold":true,"color":"dark_aqua","text":"死神"}]


    tellraw @a[gamemode=spectator] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"・初日　"},{"color":"yellow","text":"昼"}]


##初期配布
    loot give @a[tag=Accepted] loot jinro_rpg:items/steak
    execute as @a at @s run function jinro_rpg:game/give_compass with storage jinro_rpg: Setting.SelectMap.Pos
    execute if data storage jinro_rpg: {Setting:{Debug:"ON"}} run loot replace entity @a[tag=op] inventory.8 loot jinro_rpg:forced_termination
    execute if data storage jinro_rpg: {Setting:{Spyglass:"ON"}} run give @a[tag=Accepted] spyglass
    execute if data storage jinro_rpg: {Setting:{Debug:"ON"}} run give @a[gamemode=adventure] emerald 64
    execute if data storage jinro_rpg: {Setting:{Debug:"ON"}} run loot give @a[tag=op] loot jinro_rpg:preparation/boiling_point


##プレイヤー情報をストレージに格納する
    data modify storage jinro_rpg: Branch set value "PlayerInfo"
    execute as @a[tag=Accepted] at @s run function jinro_rpg:system/get_player_score
    data remove storage jinro_rpg: Branch


##Dialog
    data modify storage jinro_rpg: Dialog.Providence set value {\
    "type": "minecraft:multi_action",\
    "title": {\
        "text": "プロビデンス・アイ"\
    },\
    "body": {\
     "type": "minecraft:plain_message",\
        "contents": {\
        "text": "発光させる1人を選択"\
        }\
    },\
    "columns": 4,\
    "actions": []\
    }

    data modify storage jinro_rpg: Dialog.Medium set value {\
    "type": "minecraft:multi_action",\
    "title": {\
        "text": "霊媒師の蝋燭"\
    },\
    "body": {\
     "type": "minecraft:plain_message",\
        "contents": {\
        "text": "生死を確認する1人を選択"\
        }\
    },\
    "columns": 4,\
    "actions": []\
    }

    data modify storage jinro_rpg: Dialog.Quickchat set value {\
    "type": "minecraft:multi_action",\
    "title": {\
        "text": "占い結果"\
    },\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": {\
        "text": "占った人を選択"\
        }\
    },\
    "can_close_with_escape": false,\
    "exit_action": {\
        "label": {\
         "text": "やめる"\
     },\
        "width": 75,\
        "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.Quickchat.Trigger set -1"\
        }\
    },\
    "columns": 4,\
    "actions": []\
    }

    data modify storage jinro_rpg: Branch set value "Dialog"
    execute as @a[tag=Accepted] at @s run function jinro_rpg:system/get_player_score
    data remove storage jinro_rpg: Branch
    data modify storage jinro_rpg: Dialog.Player.Score set from storage jinro_rpg: Dialog.Player.Scores[0]
    function jinro_rpg:game/label_loop with storage jinro_rpg: Dialog.Player
    scoreboard players enable @a[tag=Accepted] Znsi.Quickchat.Trigger


##裏の処理
    gamerule fallDamage true
    gamemode spectator @a[tag=!Accepted]
    team join Spectator @a[tag=!Accepted]
    effect clear @a saturation
    effect clear @a weakness
    effect clear @a resistance
    data modify storage jinro_rpg: Game.State set value "昼時間"
    scoreboard players set @a[tag=Accepted] Znsi.Fortune 0
    scoreboard players set @a[tag=Accepted] Znsi.Page 0
    scoreboard players set *** Znsi.Timer 900
    scoreboard players set *** Znsi.Days 1
    bossbar set znsi.time players @a
    bossbar set znsi.time visible true
    execute store result storage jinro_rpg: Game.Price.Axe int 1 run scoreboard players get #axe Znsi.Price
    execute if data storage jinro_rpg: {Setting:{Debug:"Off"}} run gamerule sendCommandFeedback false
    #execute if data storage jinro_rpg: {Setting:{Debug:"ON"}} run gamerule sendCommandFeedback true
    data modify storage jinro_rpg: State set value "試合中"