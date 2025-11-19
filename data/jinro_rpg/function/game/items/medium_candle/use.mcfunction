##> jinro_rpg:game/items/medium_candle/use


scoreboard players enable @s Znsi.Medium.Trigger
function jinro_rpg:game/items/medium_candle/show with storage jinro_rpg: Dialog
scoreboard players reset @s Znsi.Medium
loot replace entity @s weapon.mainhand loot jinro_rpg:items/medium_candle