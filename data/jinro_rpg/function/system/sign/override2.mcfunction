#>jinro_rpg:system/sign/override2


##Debug
    #tellraw @a[tag=op] [{"selector":"@s"}," が継承中です"]


##Markerにスコアコピー
    $scoreboard players set @e[type=marker,limit=1,scores={Znsi.ID=0}] Znsi.ID $(Score)


##他のエンティティにコピーしていく
    $execute as @e[type=marker,scores={Znsi.ID=$(Score)}] at @s run scoreboard players set @e[type=item_display,limit=1,sort=nearest,tag=Sign] Znsi.ID $(Score)
    $execute as @e[type=marker,scores={Znsi.ID=$(Score)}] at @s run scoreboard players set @e[type=text_display,limit=1,sort=nearest,tag=Sign] Znsi.ID $(Score)
    $execute as @e[type=marker,scores={Znsi.ID=$(Score)}] at @s run scoreboard players set @e[type=interaction,limit=1,sort=nearest,tag=Sign] Znsi.ID $(Score)


##Marker
    $execute as @e[type=marker,scores={Znsi.ID=$(Score)}] at @s run data modify entity @s CustomName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CustomName


##Item Display
    $execute as @e[type=item_display,scores={Znsi.ID=$(Score)}] at @s run data modify entity @s item.components set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Components


##Text Display
    $execute as @e[type=text_display,scores={Znsi.ID=$(Score)}] at @s run data modify entity @s text set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Text_Display


##Interaction
    $execute as @e[type=interaction,scores={Znsi.ID=$(Score)}] at @s run tag @s remove Reception


##Debug
    #tellraw @a[tag=op] [{"selector":"@s"}," が継承を終えました"]
