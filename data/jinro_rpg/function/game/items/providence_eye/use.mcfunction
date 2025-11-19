#>jinro_rpg:game/items/providence_eye/use


##
scoreboard players enable @s Znsi.Procidence.Trigger
function jinro_rpg:game/items/providence_eye/show with storage jinro_rpg: Dialog
scoreboard players reset @s Znsi.Procidence
loot replace entity @s weapon.mainhand loot jinro_rpg:items/providence_eye