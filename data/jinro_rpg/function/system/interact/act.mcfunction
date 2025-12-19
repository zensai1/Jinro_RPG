#>jinro_rpg:system/interact/act

##Debugメッセージ
    #tellraw @a[tag=op] "system/interact/act"


##エントリー
    execute as @e[type=interaction,distance=..10,tag=Reception] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction on target run tag @s add Temp_Tag
    execute as @e[type=interaction,distance=..10,tag=Reception] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction as @a[tag=Temp_Tag] run function #oh_my_dat:please
    execute as @e[type=interaction,distance=..10,tag=Reception] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction as @a[tag=Temp_Tag] run tag @s remove Temp_Tag
    execute as @e[type=interaction,distance=..10,tag=Reception] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction run function jinro_rpg:system/sign/entry with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo


##情報リセット(OP限定)
    execute if entity @s[predicate=jinro_rpg:sneak,tag=op] as @e[type=interaction,distance=..10,tag=!Reception,tag=Sign] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction run function jinro_rpg:system/sign/sign_init with storage jinro_rpg: Setting


##名前変更
    execute as @e[type=interaction,distance=..10,tag=!Reception,tag=Sign] at @s if data storage jinro_rpg: {State:"待機中"} if data entity @s interaction run function jinro_rpg:system/sign/rename


##占い
    execute unless items entity @s weapon.mainhand golden_horse_armor as @e[type=interaction,distance=..10,tag=!Reception,tag=Sign] at @s if data entity @s interaction if data storage jinro_rpg: {State:"試合中"} run function jinro_rpg:system/fortune/get_score


##騎士の祈り
    execute if items entity @s weapon.mainhand golden_horse_armor as @e[type=interaction,distance=..10,tag=!Reception,tag=Sign] at @s if data entity @s interaction if data storage jinro_rpg: {State:"試合中"} run function jinro_rpg:system/sign/blessing

##MAP4ギミック
    execute as @e[type=interaction,distance=..10,tag=!Reception,tag=Ropeway] at @s if data entity @s interaction run function jinro_rpg:map_gimmick/ropeway

##共通
    advancement revoke @s only jinro_rpg:interact
