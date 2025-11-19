#>jinro_rpg:preparation/battle_villager_summons


##村人を召喚
    summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Battle"],CustomName:{"color":"green","italic":false,"text":"戦闘"},VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:plains"},Gossips:[{Type:"trading",Value:1,Target:[I;-248787552,1112689348,-1519390376,726968781]}]}
    tp @e[type=villager,tag=Battle,limit=1,sort=nearest] @s

##交易内容変更
    execute as @e[type=villager,tag=Battle,limit=1,sort=nearest] at @s run data modify entity @s Offers.Recipes set from storage jinro_rpg: Battle


##GossipsのTargetを自分に
    execute as @e[type=villager,tag=Battle,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[0] set from entity @s UUID[0]
    execute as @e[type=villager,tag=Battle,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[1] set from entity @s UUID[1]
    execute as @e[type=villager,tag=Battle,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[2] set from entity @s UUID[2]
    execute as @e[type=villager,tag=Battle,limit=1,sort=nearest] at @s run data modify entity @s Gossips[0].Target[3] set from entity @s UUID[3]
    
##アイテムの状態をリセット
    loot replace entity @s weapon.mainhand loot jinro_rpg:preparation/battle_villager_summons
    scoreboard players reset @s Znsi.Use.Blazerod