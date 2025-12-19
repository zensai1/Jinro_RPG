#>jinro_rpg:gui/page0/nextmap
#一個上がる

#
    item replace entity @s player.cursor with air

#
    scoreboard players add *** Znsi.SelectMap 1
    execute if score *** Znsi.SelectMap matches 7.. run scoreboard players set *** Znsi.SelectMap 0
    execute if score *** Znsi.SelectMap matches 0 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Lobby
    execute if score *** Znsi.SelectMap matches 0 run data modify storage jinro_rpg: Setting.SelectMap.Name set value "ロビー"
    execute if score *** Znsi.SelectMap matches 1 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map1
    execute if score *** Znsi.SelectMap matches 2 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map2
    execute if score *** Znsi.SelectMap matches 3 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map3
    execute if score *** Znsi.SelectMap matches 4 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map4
    execute if score *** Znsi.SelectMap matches 5 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map5
    execute if score *** Znsi.SelectMap matches 6 run data modify storage jinro_rpg: Setting.SelectMap set from storage jinro_rpg: Setting.Map6

#スケルトンの数
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 1 if entity @e[tag=Boiling_Point,tag=Map1]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 2 if entity @e[tag=Boiling_Point,tag=Map2]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 3 if entity @e[tag=Boiling_Point,tag=Map3]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 4 if entity @e[tag=Boiling_Point,tag=Map4]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 5 if entity @e[tag=Boiling_Point,tag=Map5]
    execute store result score *** Znsi.SkeNum if score *** Znsi.SelectMap matches 6 if entity @e[tag=Boiling_Point,tag=Map6]

    function jinro_rpg:gui/