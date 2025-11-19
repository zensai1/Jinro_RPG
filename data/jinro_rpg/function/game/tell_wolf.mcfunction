#>jinro_rpg:game/tell_wolf


##
scoreboard players operation TMP Znsi.ID = @s Znsi.ID
execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Selecter
execute as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add Selecter
execute as @e[type=marker,tag=Selecter] at @s run data modify storage jinro_rpg: Game.Wolf.Name set from entity @s CustomName.text
execute as @e[type=item_display,tag=Selecter] at @s run data modify storage jinro_rpg: Game.Wolf.PlayerID set from entity @s item.components."minecraft:profile".name
tag @e[tag=Selecter] remove Selecter

execute unless data storage jinro_rpg: Game.Cursed run function jinro_rpg:game/tell_wolf2 with storage jinro_rpg: Game.Wolf
execute if data storage jinro_rpg: Game.Cursed run function jinro_rpg:game/tell_wolf3 with storage jinro_rpg: Game.Wolf