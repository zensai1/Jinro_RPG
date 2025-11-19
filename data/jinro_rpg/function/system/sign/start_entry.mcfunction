#>jinro_rpg:system/sign/start_entry


##片付け
    kill @e[tag=Sign]
    tag @a remove Accepted
    execute unless data storage jinro_rpg: {Setting:{Temp:"継承"}} as @e[tag=Sign_stand] at @s run data remove entity @s CustomName


##必要なエンティティを召喚
    $execute as @e[tag=Sign_stand,tag=Map$(MapNum)] at @s run summon item_display ~ ~1 ~ {CustomNameVisible:0b,start_interpolation:1,interpolation_duration:2,Tags:["Sign"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:player_head",count:1}}
    $execute as @e[tag=Sign_stand,tag=Map$(MapNum)] at @s run summon interaction ~ ~0.28 ~ {CustomNameVisible:0b,Tags:["Sign" , "Reception"],width:0.75f,height:0.75f}
    $execute as @e[tag=Sign_stand,tag=Map$(MapNum)] at @s run summon text_display ~ ~1.1 ~ {billboard:"center",see_through:0b,Tags:["Sign"],text:"右クリックで試合に参加できます"}
    $scoreboard players set @e[tag=Sign_stand,tag=Map$(MapNum)] Znsi.ID 0


##アナウンス
    tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"エントリーを開始しました。"}]
    execute as @a at @s run playsound minecraft:block.iron_door.open record @s ~ ~ ~ 1.5 0.5


##TPで継承するように
    data modify storage jinro_rpg: Setting.Handover set value "継承する"


#継承する
    #execute if data storage jinro_rpg: {Setting:{Temp:"継承"}} as @a at @s run function jinro_rpg:system/sign/override
    #execute if data storage jinro_rpg: {Setting:{Temp:"継承"}} run data remove storage jinro_rpg: Setting.Temp