#>jinro_rpg:system/sign/handover

##Debug
    #tellraw @a[tag=op] [{"selector":"@s"}," が引継ぎ準備中です"]

##OhMyDat呼び出し
    function #oh_my_dat:please

##初期化
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CustomName
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Components
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Text_Display
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Score

##同じスコアのエンティティを対象にする
    scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Override
    execute as @e[tag=Sign] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Override

##まずはMarkerから
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CustomName set from entity @e[type=marker,tag=Override,limit=1] CustomName

##Item_Display
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Components set from entity @e[type=item_display,limit=1,tag=Override] item.components

##Text_Display
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Text_Display set from entity @e[type=text_display,limit=1,tag=Override] text

##Score
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Score int 1 run scoreboard players get @s Znsi.ID

##Tag 消去
    tag @e[tag=Override] remove Override