#>jinro_rpg:gui/page1/battle_storage

##初期化
    data remove storage jinro_rpg: Battle

##ストレージにアイテムの情報を書き込む
    data modify storage jinro_rpg: Temp.rewardExp set value 0b
    data modify storage jinro_rpg: Temp.maxUses set value 2147483647

    ##弓
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:18b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #bow Znsi.Price
        execute if score #bow Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    ##矢
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:19b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #arrow Znsi.Price
        execute if score #arrow Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    ##steak
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:20b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #steak Znsi.Price
        execute if score #steak Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    ##透明化ポーション
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:21b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #invisibility_potion Znsi.Price
        execute if score #invisibility_potion Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    ##スタングレネード
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:22b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #stun_grenade Znsi.Price
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        execute if score #stun_grenade Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    ##怨念の槍
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:23b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #grudge_spear Znsi.Price
        execute if score #grudge_spear Znsi.Price matches 3.. run data modify storage jinro_rpg: Temp.priceMultiplier set value 1
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier

    #人狼の斧
        data modify storage jinro_rpg: Temp.sell set from entity @s Inventory[{Slot:24b}] 
        data remove storage jinro_rpg: Temp.sell.Slot
        data modify storage jinro_rpg: Temp.buy set value {id:"emerald",Count:1b}
        execute store result storage jinro_rpg: Temp.buy.count int 1 run scoreboard players get #axe Znsi.Price
        data modify storage jinro_rpg: Battle append from storage jinro_rpg: Temp
        data remove storage jinro_rpg: Temp.sell
        data remove storage jinro_rpg: Temp.buy
        data remove storage jinro_rpg: Temp.priceMultiplier