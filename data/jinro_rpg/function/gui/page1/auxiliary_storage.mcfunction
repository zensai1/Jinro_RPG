#>jinro_rpg:gui/page1/auxiliary_storage

##初期化
    data remove storage jinro_rpg: Auxiliary

##ストレージにアイテムの情報を書き込む
    data modify storage jinro_rpg: Temp.rewardExp set value 0b
    data modify storage jinro_rpg: Temp.maxUses set value 2147483647

    ##占い
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:18b}]
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #fortune_mind Znsi.Price
        execute if score #fortune_mind Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #霊媒
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:19b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #medium_candle Znsi.Price
        execute if score #medium_candle Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #騎士
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:20b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #knights_protection Znsi.Price
        execute if score #knights_protection Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #共犯
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:21b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #accomplice_eye Znsi.Price
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #十字架
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:22b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #holy_cross Znsi.Price
        execute if score #holy_cross Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #プロビデンス
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:23b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #providence_eye Znsi.Price
        execute if score #providence_eye Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #呪符
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:24b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #curse_of_revelation Znsi.Price
        execute if score #curse_of_revelation Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Auxiliary append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

#execute as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Offers.Recipes set from storage jinro_rpg: Auxiliary