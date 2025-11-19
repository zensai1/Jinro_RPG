#>jinro_rpg:game/items/curse_of_revelation


##リセット
    scoreboard players reset @s Znsi.Drop.Paper


##呪符を使用したTagを付ける
    tag @s add Amulet
    kill @e[type=item,nbt={Item:{id:"minecraft:paper"}},limit=1,sort=nearest]


##アナウンス
    playsound minecraft:entity.evoker.cast_spell master @s
    tellraw @s [{"text":"[","color":"red"},{"text":"人狼RPG"},{"text":"] "},{"text":"天啓の呪符を使用しました","color":"white","bold":false}]
    particle enchant ~ ~ ~ 2 2 2 0.5 200 force @s