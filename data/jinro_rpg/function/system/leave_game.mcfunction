#>jinro_rpg:system/leave_game


##メッセージ
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"人狼RPGへようこそ"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"原案：WhiteTails様"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"本家の違いは"},{"color":"white","keybind":"key.advancements"},{"color":"white","text":"キーで確認できます"}]
    #tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"ゲーム内の音の大きさはジュークボックス/音符ブロックの部分で変更できます"}]


##今の場所へTP
    $tp @s $(x) $(y) $(z)


##ゲーム中ならリセットしない
    scoreboard players reset @s Znsi.Leave
    execute if data storage jinro_rpg: {State:"試合中"} run return 0


##観戦にする
    #gamemode spectator @s


##タグを消す
    tag @s remove Accomplice
    tag @s remove Bakery
    tag @s remove Cursed_one
    tag @s remove Cursed
    tag @s remove Distributed
    tag @s remove Merchant
    tag @s remove Strong_villager
    tag @s remove Twins
    tag @s remove Vampire
    tag @s remove Villager
    tag @s remove Wolf
    tag @s remove Wolf_possession
    tag @s remove Reaper
    tag @s remove No_Fortune
    tag @s remove Same.Num
    tag @s remove Perpetrator
    tag @s remove No_Move
    tag @s remove Medium_Position
    tag @s remove VillagerSide
    tag @s remove WolfSide
    tag @s remove Clown


##スコアボード
    scoreboard players set @s Auto.Mute 2
    scoreboard players reset @s[tag=!op] Znsi.Page
    scoreboard players reset @s Znsi.Response
    scoreboard players reset @s Znsi.Granade
    scoreboard players reset @s Znsi.Grudge
    scoreboard players reset @s Znsi.Fortune
    scoreboard players reset @s Znsi.Dying.Timer
    scoreboard players reset @s Znsi.Procidence
    scoreboard players reset @s Znsi.Protection


##その他
    team leave @s
    attribute @s jump_strength base reset
    attribute @s movement_speed base reset
    effect clear @s unluck


##自分のID付きディスプレイがなかったら参加Tagを削除
    scoreboard players operation #TEMP Znsi.ID = @s Znsi.ID
    execute as @e[tag=Sign_stand] if score @s Znsi.ID = #TEMP Znsi.ID run tag @s add Exist
    execute store result score *** Znsi.Temp if entity @e[tag=Exist]
    execute if score *** Znsi.Temp matches 0 run tag @s remove Accepted
    tag @e[tag=Exist] remove Exist


##
    function #oh_my_dat:please


##Oh my datに情報を入れる
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.ID int 1 run scoreboard players get @s Znsi.ID
    loot spawn ~ ~10 ~ loot jinro_rpg:player_head
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.MCID set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:player_head"}}] Item.components.minecraft:custom_name.text
    kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:player_head"}}]
