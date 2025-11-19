##>jinro_rpg:game/kills/shobo
#スケ死や落下死などのしょうもない死


##既に死んでいるときreturn
    scoreboard players reset @s Znsi.Death
    execute if entity @s[gamemode=spectator] run return 0


##死神
    execute if score #reaper Znsi.Percent matches 5.. unless data storage jinro_rpg: Setting.Position.Reaper run function jinro_rpg:game/summon_soul

##main処理
    gamemode spectator @s
    scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    tag @e[tag=select] add ShoboSHI
    tag @e[tag=select] remove select
    execute as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    execute if entity @e[tag=select,type=item_display,limit=1] as @e[tag=select,type=item_display,limit=1] at @s run data modify storage jinro_rpg: Game.Shobo set from entity @s item.components."minecraft:profile".name
    tag @e[tag=select] remove select

    function jinro_rpg:game/kills/shobo2 with storage jinro_rpg: Game
    #say shobo