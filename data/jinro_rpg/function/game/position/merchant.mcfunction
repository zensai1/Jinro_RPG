#>jinro_rpg:game/position/merchant


##Debugメッセージ
    #tellraw @a[tag=op] "商人"


##乱数を振る
    execute store result score *** Znsi.Percent run random value 1..100
    execute if score *** Znsi.Percent <= #merchant Znsi.Percent run tag @s add Merchant
    execute if score *** Znsi.Percent <= #merchant Znsi.Percent run tag @s add Distributed


##商人がいたらUUIDを入れる
    execute if entity @a[tag=Merchant] as @a[tag=Merchant] at @s run data modify storage jinro_rpg: Game.Merchant.UUID set from entity @s UUID

    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[0] set from storage jinro_rpg: Game.Merchant.UUID[0]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[1] set from storage jinro_rpg: Game.Merchant.UUID[1]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[2] set from storage jinro_rpg: Game.Merchant.UUID[2]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[3] set from storage jinro_rpg: Game.Merchant.UUID[3]

    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[0] set from storage jinro_rpg: Game.Merchant.UUID[0]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[1] set from storage jinro_rpg: Game.Merchant.UUID[1]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[2] set from storage jinro_rpg: Game.Merchant.UUID[2]
    execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[3] set from storage jinro_rpg: Game.Merchant.UUID[3]

