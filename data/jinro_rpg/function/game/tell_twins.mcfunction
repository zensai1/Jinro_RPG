#>jinro_rpg:game/tell_twins


##
scoreboard players operation TMP Znsi.ID = @s Znsi.ID
execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Twins_Selector
execute as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Twins_Selector
execute as @e[type=marker,tag=!Twins_Selector,tag=Twins] at @s run data modify storage jinro_rpg: Game.Twins.Name set from entity @s CustomName.text
execute as @e[type=item_display,tag=!Twins_Selector,tag=Twins] at @s run data modify storage jinro_rpg: Game.Twins.ID set from entity @s item.components."minecraft:profile".name
tag @e[tag=Twins_Selector] remove Twins_Selector
function jinro_rpg:game/tell_twins2 with storage jinro_rpg: Game.Twins