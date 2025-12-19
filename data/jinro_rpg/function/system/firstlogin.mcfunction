#>jinro_rpg:system/firstlogin


##初めてログインする人にいろいろ初期設定をするよ！
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"人狼RPGへようこそ"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"原案：WhiteTails様"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"本家の違いは"},{"color":"white","keybind":"key.advancements"},{"color":"white","text":"キーで確認できます"}]
    tag @s add firstlogin
    attribute @s minecraft:max_health base set 40.0
    scoreboard players add *** Znsi.CoreID 1
    scoreboard players operation @s Znsi.ID = *** Znsi.CoreID


##
    function #oh_my_dat:please


##Oh my datに情報を入れる
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.ID int 1 run scoreboard players get @s Znsi.ID
    loot spawn ~ ~10 ~ loot jinro_rpg:player_head
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.MCID set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:player_head"}}] Item.components.minecraft:custom_name
    kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:player_head"}}]

    
##今の場所へTP
    $tp @s $(x) $(y) $(z)