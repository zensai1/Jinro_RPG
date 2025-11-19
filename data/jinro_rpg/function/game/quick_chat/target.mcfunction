#>jinro_rpg:game/quick_chat/target_num


##OhMyDat呼び出し
function #oh_my_dat:please


##ストレージに入れる
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Score int 1 run scoreboard players get @s Znsi.Quickchat.Trigger
    scoreboard players operation TMP Znsi.ID = @s Znsi.Quickchat.Trigger
    execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Target
    execute as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add GetName
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name set from entity @e[limit=1,type=marker,tag=Target] CustomName.text
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerID set from entity @e[limit=1,type=item_display,tag=GetName] item.components."minecraft:profile".name
    scoreboard players reset @s Znsi.Quickchat.Trigger
    tag @e[type=marker] remove Target
    tag @e[tag=GetName] remove GetName
    function jinro_rpg:game/quick_chat/input_results with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]