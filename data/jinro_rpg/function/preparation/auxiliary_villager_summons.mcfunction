#>jinro_rpg:preparation/auxiliary_villager_summons


##村人を召喚
    summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Auxiliary"],CustomName:{"color":"green","italic":false,"text":"補助"},VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:savanna"},Gossips:[{Type:"trading",Value:1,Target:[I;-248787552,1112689348,-1519390376,726968781]}]}
    tp @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] @s


##交易内容変更
    execute as @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] at @s run data modify entity @s Offers.Recipes set from storage jinro_rpg: Auxiliary


##TargetUUID
    execute as @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[0] set from entity @s UUID[0]
    execute as @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[1] set from entity @s UUID[1]
    execute as @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[2] set from entity @s UUID[2]
    execute as @e[type=villager,tag=Auxiliary,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[3] set from entity @s UUID[3]

##アイテムの状態をリセット
    loot replace entity @s weapon.mainhand loot jinro_rpg:preparation/auxiliary_villager_summons
    scoreboard players reset @s Znsi.Use.Stick
    