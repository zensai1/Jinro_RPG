#>jinro_rpg:game/quick_chat/fortune


##夜時間
    execute if data storage jinro_rpg: {Game:{State:"夜時間"}} if score @s Znsi.Quickchat.Trigger matches 1.. run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"夜時間の間は使えません"}]


##村人
    $execute if data storage jinro_rpg: {Game:{State:"昼時間"}} if score @s Znsi.Quickchat.Trigger matches 1 if entity @s[gamemode=adventure] run tellraw @a ["<",{"selector":"@s"},"> ",{"player":"$(PlayerID)"}," $(Name) (",{"selector":"@a[scores={Znsi.ID=$(Score)}]"},") は",{"bold":true,"color":"blue","text":"村人"},"です"]


##人狼
    $execute if data storage jinro_rpg: {Game:{State:"昼時間"}} if score @s Znsi.Quickchat.Trigger matches 2 if entity @s[gamemode=adventure] run tellraw @a ["<",{"selector":"@s"},"> ",{"player":"$(PlayerID)"}," $(Name) (",{"selector":"@a[scores={Znsi.ID=$(Score)}]"},") は",{"bold":true,"color":"dark_red","text":"人狼"},"です"]


##吸血鬼
    $execute if data storage jinro_rpg: {Game:{State:"昼時間"}} if score @s Znsi.Quickchat.Trigger matches 3 if entity @s[gamemode=adventure] run tellraw @a ["<",{"selector":"@s"},"> ",{"player":"$(PlayerID)"}," $(Name) (",{"selector":"@a[scores={Znsi.ID=$(Score)}]"},") は",{"bold":true,"color":"light_purple","text":"吸血鬼"},"です"]


scoreboard players reset @s Znsi.Quickchat.Trigger
scoreboard players set @s Znsi.Page 0