#>jinro_rpg:system/firstlogin

##初めてログインする人にいろいろ初期設定をするよ！
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"人狼RPGへようこそ　現在のVerは「1.2.1」です"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"原案：WhiteTails様"}]
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"本家の違いは"},{"color":"white","keybind":"key.advancements"},{"color":"white","text":"キーで確認できます"}]
    tag @s add firstlogin
    attribute @s minecraft:max_health base set 40.0
    scoreboard players add *** Znsi.CoreID 1
    scoreboard players operation @s Znsi.ID = *** Znsi.CoreID