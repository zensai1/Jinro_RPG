##> jinro_rpg:game/wins/show_position


##Debugメッセージ
    #say show_position



    $execute if entity @s[tag=!Reaperd] run tellraw @a ["　　",{"player":"$(MCID)"}," $(NickName)"]
    $execute if entity @s[tag=Reaperd] run tellraw @a ["　　",{"player":"$(MCID)"}," $(NickName) (死神)"]