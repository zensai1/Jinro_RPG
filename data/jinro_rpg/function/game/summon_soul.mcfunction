#>jinro_rpg:game/summon_soul


##魂を呼び出す
    ##村人 
        execute if entity @s[tag=Villager] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:0b}}}}


    ##人狼  
        execute if entity @s[tag=Wolf] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:1b}}}}


    ##共犯者
        execute if entity @s[tag=Accomplice] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:2b}}}}


    ##吸血鬼
        execute if entity @s[tag=Vampire] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:3b}}}}


    ##狼憑き
        execute if entity @s[tag=Wolf_possession] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:4b}}}}


    ##双子
        #execute if entity @s[tag=Twins] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:5b}}}}


    ##屈強な村人
        execute if entity @s[tag=Strong_villager] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:6b}}}}


    ##パン屋
        execute if entity @s[tag=Bakery] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:7b}}}}


    ##商人
        execute if entity @s[tag=Merchant] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:8b}}}}


    ##呪われ者
        execute if entity @s[tag=Cursed_one] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:9b}}}}


    ##道化師
        execute if entity @s[tag=Clown] run summon item ~ ~ ~ {Owner:[I;-248787552,1112689348,-1519390376,726968781],Tags:["Soul"],Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_data":{Position:10b}}}}


 ##死神のUUIDをOwnerに入れる
    execute as @e[type=item,tag=Soul] at @s run data modify entity @s Owner[0] set from storage jinro_rpg: Game.Reaper.UUID[0]
    execute as @e[type=item,tag=Soul] at @s run data modify entity @s Owner[1] set from storage jinro_rpg: Game.Reaper.UUID[1]
    execute as @e[type=item,tag=Soul] at @s run data modify entity @s Owner[2] set from storage jinro_rpg: Game.Reaper.UUID[2]
    execute as @e[type=item,tag=Soul] at @s run data modify entity @s Owner[3] set from storage jinro_rpg: Game.Reaper.UUID[3]