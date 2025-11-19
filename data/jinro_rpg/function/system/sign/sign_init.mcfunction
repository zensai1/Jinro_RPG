#>jinro_rpg:system/sign/sign_init


##Debugメッセージ
    #tellraw @a[tag=op] "system/sign/sign_init"


##初期化
    execute as @s at @s run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute as @a if score @s Znsi.ID = TMP Znsi.ID run tag @s add Selecter
    tag @a[tag=Selecter] remove Accepted
    tag @a remove Selecter
    scoreboard players set @e[type=marker,limit=1,sort=nearest,tag=Sign_stand] Znsi.ID 0
    scoreboard players reset @s Znsi.ID
    kill @e[type=text_display,tag=Sign,limit=1,sort=nearest]
    kill @e[type=item_display,limit=1,sort=nearest,tag=Sign]
    tag @s add Reception


##必要なエンティティを召喚
    $execute as @e[tag=Sign_stand,tag=Map$(MapNum),limit=1,sort=nearest] at @s run summon item_display ~ ~1 ~ {CustomNameVisible:0b,start_interpolation:1,interpolation_duration:2,Tags:["Sign"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:player_head",count:1}}
    $execute as @e[tag=Sign_stand,tag=Map$(MapNum),limit=1,sort=nearest] at @s run summon text_display ~ ~1.1 ~ {billboard:"center",see_through:0b,Tags:["Sign"],text:"右クリックで試合に参加できます"}

    execute as @p[tag=op] at @s run playsound minecraft:entity.generic.extinguish_fire record @s

    data remove entity @s interaction