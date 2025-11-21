#>jinro_rpg:game/kills/trident


##reset
    tag @a remove Perpetrator


##呪いを付与
    scoreboard players add @s Znsi.Grudge 1
    execute if score @s Znsi.Grudge matches 1 as @a[distance=..8] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.6
    execute if score @s Znsi.Grudge matches 1 run effect give @s unluck infinite 1 false


##死ぬかどうか
    execute if score @s Znsi.Grudge matches 2.. if data storage jinro_rpg: {Game:{State:"夜時間"}} if entity @s[tag=Vampire] run tag @s add No_Death
    execute if score @s Znsi.Grudge matches 2.. if entity @s[tag=Protection,tag=!Wolf,tag=!Cursed] run tag @s add No_Death
    execute if score @s Znsi.Grudge matches 2.. if entity @s[tag=Strong_villager,tag=!Dying] run tag @s add No_Death


##死神
    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. if score #reaper Znsi.Percent matches 5.. unless data storage jinro_rpg: Setting.Position.Reaper run function jinro_rpg:game/summon_soul

##メイン処理
    execute if entity @s[advancements={jinro_rpg:kills/throw_trident=true}] run kill @e[type=trident,limit=1,sort=nearest]
    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. run kill @s
    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. run gamemode spectator @s
    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. positioned ~ ~ ~ run playsound minecraft:entity.zombie_villager.cure record @a[distance=..10] ~ ~ ~ 0.8
    
    
    ##加害者
        execute if entity @s[tag=!No_Death] on attacker run tag @s add Perpetrator
        execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. run scoreboard players add @a[tag=Perpetrator] Znsi.Killcount 1
        execute if entity @s[tag=!No_Death] as @a[tag=Perpetrator] at @s run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
        execute if entity @s[tag=!No_Death] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
        execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.PerpetratorID set from entity @s item.components."minecraft:profile".name
        execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select
        execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. store result storage jinro_rpg: Game.Perpetrator int 1.0 run scoreboard players get @p[tag=Perpetrator] Znsi.ID
        item replace entity @p[tag=Perpetrator] weapon.mainhand with air


    ##被害者
        execute if entity @s[tag=!No_Death] store result storage jinro_rpg: Game.Victim int 1.0 run scoreboard players get @s Znsi.ID
        execute if entity @s[tag=!No_Death] run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
        execute if entity @s[tag=!No_Death] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
        execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.VictimID set from entity @s item.components."minecraft:profile".name
        execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select
        execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. store result storage jinro_rpg: Game.Victim int 1.0 run scoreboard players get @s Znsi.ID


    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. if entity @s[advancements={jinro_rpg:kills/throw_trident=true}] run tag @s add Throw
    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. if entity @s[advancements={jinro_rpg:kills/trident=true}] run tag @s add Direct


##騎士の加護
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1.5
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run tellraw @s [{"text":"[","color":"red"},{"text":"人狼RPG"},{"text":"] "},{"text":"騎士の加護 の効果が発動しました","color":"white"}]
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. as @a[gamemode=adventure] if score @s Znsi.Protection = TMP Znsi.ID run tag @s add select
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run tag @a[tag=select] add Protected
    execute if entity @s[tag=Protection] if score @s Znsi.Grudge matches 2.. run tag @a remove select


##屈強な村人
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] if score @s Znsi.Grudge matches 2.. run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは "},{"bold":true,"color":"gold","text":"屈強な村人 "},{"color":"white","text":"だった！"}]
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] if score @s Znsi.Grudge matches 2.. run clear @s
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] if score @s Znsi.Grudge matches 2.. run tag @s add Dying


##道化師
    execute if entity @s[tag=!No_Death,tag=Clown] if score @s Znsi.Grudge matches 2.. run clear @s *[!custom_data={Drop:1b}]
    execute if entity @s[tag=!No_Death,tag=Clown] if score @s Znsi.Grudge matches 2.. on attacker run tag @s add Slayer
    execute if entity @s[tag=!No_Death,tag=Clown] if score @s Znsi.Grudge matches 2.. run data modify storage jinro_rpg: Game.Clown.Reward set from entity @s Inventory

    execute if entity @s[tag=!No_Death] if score @s Znsi.Grudge matches 2.. run function jinro_rpg:game/kills/trident2 with storage jinro_rpg: Game
    execute if score @s Znsi.Grudge matches 2.. run tag @s remove Protection
    execute if score @s Znsi.Grudge matches 2.. run tag @s remove No_Death
    advancement revoke @s only jinro_rpg:kills/throw_trident
    advancement revoke @s only jinro_rpg:kills/trident
    execute if score @s Znsi.Grudge matches 1.. run tag @p[tag=Perpetrator] remove Perpetrator
    execute if score @s Znsi.Grudge matches 2.. run scoreboard players reset @s Znsi.Grudge
    execute if score @s Znsi.Grudge matches 2.. run effect clear @s unluck
