##> jinro_rpg:game/items/accomplice_eye2


##
    $tellraw @s [{"color":"red","text":"[人狼RPG] "},{"bold":true,"color":"dark_red","text":"人狼"},{"color":"white","text":"："},{"color":"white","player":"$(MCID)"},{"color":"dark_red","text":" $(NickName)"}]
    particle witch ~ ~ ~ 1 1 1 0.1 30 force @s
    playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1 0.1

##初期化
    data remove storage jinro_rpg: Game.Branch