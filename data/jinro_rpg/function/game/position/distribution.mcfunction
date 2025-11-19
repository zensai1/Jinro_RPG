#>jinro_rpg:game/position/distribution


##人狼
    execute if score #wolf Znsi.Num matches 1.. store result score *** Znsi.Counter run scoreboard players get #wolf Znsi.Num
    execute if score #wolf Znsi.Num matches 1.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/wolf

##共犯者
    execute if score #accomplice Znsi.Num matches 1.. store result score *** Znsi.Counter run scoreboard players get #accomplice Znsi.Num
    execute if score #accomplice Znsi.Num matches 1.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/accomplice

##吸血鬼
    execute unless data storage jinro_rpg: {Setting:{Position:{Vampire:"吸血鬼"}}} if score #vampire Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/vampire

##死神
    execute unless data storage jinro_rpg: {Setting:{Position:{Reaper:"死神"}}} if score #reaper Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/reaper

##狼憑き
    execute unless data storage jinro_rpg: {Setting:{Position:{Wolf_possession:"狼憑き"}}} if score #wolf_possession Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/wolf_possession

##双子
    execute unless data storage jinro_rpg: {Setting:{Position:{Twins:"双子"}}} if score #twins Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/twins

##屈強な村人
    execute unless data storage jinro_rpg: {Setting:{Position:{Strong_villager:"屈強な村人"}}} if score #strong_villager Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/strong_villager

##パン屋
    execute unless data storage jinro_rpg: {Setting:{Position:{Bakery:"パン屋"}}} if score #bakery Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/bakery

##商人
    execute unless data storage jinro_rpg: {Setting:{Position:{Merchant:"商人"}}} if score #merchant Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/merchant

##呪われ者
    execute unless data storage jinro_rpg: {Setting:{Position:{Cursed_one:"呪われ者"}}} if score #cursed_one Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/cursed_one

##道化師
    execute unless data storage jinro_rpg: {Setting:{Position:{Clown:"道化師"}}} if score #clown Znsi.Percent matches 5.. as @r[tag=!Distributed,tag=Accepted] at @s run function jinro_rpg:game/position/clown

##村人
    tag @a[tag=!Distributed,tag=Accepted] add Villager
    tag @a[tag=!Distributed,tag=Accepted] add Distributed

#サイドTag付与
execute as @a[tag=Villager] at @s run tag @s add VillagerSide
execute as @a[tag=Merchant] at @s run tag @s add VillagerSide
execute as @a[tag=Bakery] at @s run tag @s add VillagerSide
execute as @a[tag=Strong_villager] at @s run tag @s add VillagerSide
execute as @a[tag=Twins] at @s run tag @s add VillagerSide
execute as @a[tag=Wolf_possession] at @s run tag @s add VillagerSide
execute as @a[tag=Cursed_one] at @s run tag @s add VillagerSide
execute as @a[tag=Wolf] at @s run tag @s add WolfSide