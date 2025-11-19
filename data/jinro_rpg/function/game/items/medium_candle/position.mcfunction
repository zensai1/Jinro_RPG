##> jinro_rpg:game/items/medium_candle/position

#占い結果を表示
    #村人陣営
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Villager] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Villager] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Villager] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Strong_villager] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Strong_villager] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Strong_villager] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Merchant] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Merchant] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Merchant] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Twins] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Twins] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Twins] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Bakery] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Bakery] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Bakery] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=!Cursed] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=!Cursed] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=!Cursed] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf_possession] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"dark_red","text":"人狼"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf_possession] run title @s title {"bold":true,"color":"dark_red","text":"人狼"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf_possession] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

    #人狼陣営
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"dark_red","text":"人狼"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf] run title @s title {"bold":true,"color":"dark_red","text":"人狼"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Wolf] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=Cursed] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"dark_red","text":"人狼"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=Cursed] run title @s title {"bold":true,"color":"dark_red","text":"人狼"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Cursed_one,tag=Cursed] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Accomplice] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"blue","text":"村人"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Accomplice] run title @s title {"bold":true,"color":"blue","text":"村人"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Accomplice] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

    #第三陣営
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Vampire] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PlayerID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"},{"color":"white","text":"："},{"bold":true,"color":"light_purple","text":"吸血鬼"}]
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Vampire] run title @s title {"bold":true,"color":"light_purple","text":"吸血鬼"}
        $execute if entity @e[scores={Znsi.ID=$(Num)},type=marker,tag=Vampire] run title @s subtitle {"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Num)}]"}

    tag @s remove Medium_Position
    scoreboard players reset @s Znsi.Response
    scoreboard players reset @s Znsi.Temp