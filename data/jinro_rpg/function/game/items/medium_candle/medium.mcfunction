##> jinro_rpg:game/items/medium_candle/medium

#生存
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=adventure] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[scores={Znsi.ID=$(Num)},limit=1]"},{"color":"white","text":"："},{"color":"green","text":"生存中"}]
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=adventure] run title @s title {"bold":true,"color":"green","text":"生存中"}
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=adventure] run title @s subtitle {"color":"white","selector":"@e[scores={Znsi.ID=$(Num)},limit=1]"}

#死亡
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=spectator] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[scores={Znsi.ID=$(Num)},limit=1]"},{"color":"white","text":"："},{"color":"red","text":"死亡"}]
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=spectator] run title @s title {"bold":true,"color":"red","text":"死亡"}
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=spectator] run title @s subtitle {"color":"white","selector":"@e[scores={Znsi.ID=$(Num)},limit=1]"}
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=spectator] run tag @s add Medium_Position
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=spectator] store result score @s Znsi.Temp run data get storage jinro_rpg: Game.Medium.Num

    playsound entity.illusioner.cast_spell master @s
    item replace entity @s weapon.mainhand with air
    scoreboard players reset @s Znsi.Medium.Trigger