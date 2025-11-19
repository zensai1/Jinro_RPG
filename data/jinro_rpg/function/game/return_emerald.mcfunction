#>jinro_rpg:game/return_emerald

$give @s emerald $(Axe)
clear @s stone_axe 1
execute if items entity @s container.* stone_axe run function jinro_rpg:game/return_emerald