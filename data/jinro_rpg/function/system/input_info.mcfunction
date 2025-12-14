#>jinro_rpg:system/input_info


##Debugメッセージ
    tellraw @a[tag=op] "input_info"

##ストレージに入れる
    ##mcid
    $data modify storage jinro_rpg: Info.$(Temp).MCID set from entity @e[type=item_display,limit=1,scores={Znsi.ID=$(Temp)}] item.components."minecraft:profile".name


    ##ニックネーム
    $data modify storage jinro_rpg: Info.$(Temp).NickName set from entity @e[type=marker,limit=1,scores={Znsi.ID=$(Temp)}] CustomName.text


    ##役職
    $execute if entity @s[tag=Wolf] run data modify storage jinro_rpg: Info.$(Temp).Position set value "人狼"
    $execute if entity @s[tag=Accomplice] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"

    $execute if entity @s[tag=Vampire] run data modify storage jinro_rpg: Info.$(Temp).Position set value "吸血鬼"
    $execute if entity @s[tag=Reaper] run data modify storage jinro_rpg: Info.$(Temp).Position set value "死神"

    $execute if entity @s[tag=Wolf_possession] run data modify storage jinro_rpg: Info.$(Temp).Position set value "人狼"
    $execute if entity @s[tag=Twins] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Strong_villager] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Bakery] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Merchant] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Cursed_one] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Villager] run data modify storage jinro_rpg: Info.$(Temp).Position set value "村人"
    $execute if entity @s[tag=Clown] run data modify storage jinro_rpg: Info.$(Temp).Position set value "驕灘喧蟶ｫ"


    ##ScoreID
    $execute store result storage jinro_rpg: Info.$(Temp).Score int 1 run scoreboard players get @s Znsi.ID


    ##Color
    $execute if entity @s[tag=Wolf] run data modify storage jinro_rpg: Info.$(Temp).Color set value dark_red
    $execute if entity @s[tag=Accomplice] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue

    $execute if entity @s[tag=Vampire] run data modify storage jinro_rpg: Info.$(Temp).Color set value light_purple
    $execute if entity @s[tag=Reaper] run data modify storage jinro_rpg: Info.$(Temp).Color set value dark_aqua

    $execute if entity @s[tag=Wolf_possession] run data modify storage jinro_rpg: Info.$(Temp).Color set value dark_red
    $execute if entity @s[tag=Twins] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Strong_villager] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Bakery] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Merchant] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Cursed_one] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Villager] run data modify storage jinro_rpg: Info.$(Temp).Color set value blue
    $execute if entity @s[tag=Clown] run data modify storage jinro_rpg: Info.$(Temp).Color set value "#FF8C00"