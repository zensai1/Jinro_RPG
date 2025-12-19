#>jinro_rpg:system/sign/entry


#CustomName.insertion
function #oh_my_dat:please

##Debugメッセージ
    #tellraw @a[tag=op] "System/sign/entry"


##触った人にTagを付与
    execute on target if entity @s[tag=!Accepted] run tag @s add Entry
    execute on target if entity @s[tag=!Entry] run return 0


##データを同期
    scoreboard players operation @s Znsi.ID = @p[tag=Entry] Znsi.ID
    scoreboard players operation @e[type=text_display,limit=1,sort=nearest] Znsi.ID = @s Znsi.ID
    #scoreboard players operation @e[type=interaction,limit=1,sort=nearest] Znsi.ID = @s Znsi.ID
    scoreboard players operation @e[type=item_display,limit=1,sort=nearest] Znsi.ID = @s Znsi.ID
    scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=Sign_stand] Znsi.ID = @s Znsi.ID
    execute as @p[tag=Entry] at @s run loot spawn ~ ~ ~ loot jinro_rpg:player_head
    data modify entity @e[type=item_display,limit=1,sort=nearest] item.components."minecraft:profile" set from entity @e[type=item,limit=1,sort=nearest] Item.components."minecraft:profile"
    data modify entity @e[type=text_display,limit=1,sort=nearest] text set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:custom_name
    data modify entity @e[type=marker,limit=1,sort=nearest,tag=Sign_stand] CustomName set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:custom_name
    data remove entity @e[type=marker,limit=1,sort=nearest,tag=Sign_stand] CustomName.insertion
    kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest]

##/nicknameを使ってた場合
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.NickName run data modify entity @e[type=text_display,limit=1,sort=nearest] text.text set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.NickName
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.NickName run data remove entity @e[type=text_display,limit=1,sort=nearest] text.extra


##エントリー後の処理
    tellraw @p[tag=Entry] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"エントリーしました。"}]
    loot give @p[tag=Entry] loot jinro_rpg:nickname
    execute as @p[tag=Entry] at @s run playsound entity.arrow.hit_player record @s
    tag @s remove Reception
    tag @p[tag=Entry] add Accepted
    tag @p[tag=Entry] remove Entry
    data remove entity @s interaction