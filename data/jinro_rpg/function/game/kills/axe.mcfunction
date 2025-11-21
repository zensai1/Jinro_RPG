#>jinro_rpg:game/kills/axe


##reset
    tag @a remove Perpetrator


##音
    execute positioned ~ ~ ~ run playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 0.6
    

##死ぬかどうかチェック
    ##夜の吸血鬼
        execute if data storage jinro_rpg: {Game:{State:"夜時間"}} if entity @s[tag=Vampire] run tag @s add No_Death
    ##加護を受けてる人狼以外
        execute if entity @s[tag=Protection,tag=!Wolf,tag=!Cursed] run tag @s add No_Death
    ##まだ呪われてない呪われ者
        execute if entity @s[tag=Cursed_one,tag=!Cursed] run tag @s add No_Death
    ##まだ致命傷を受けてない屈強な村人
    execute if entity @s[tag=Strong_villager,tag=!Dying] run tag @s add No_Death


##死神
    execute if entity @s[tag=!No_Death] if score #reaper Znsi.Percent matches 5.. unless data storage jinro_rpg: Setting.Position.Reaper run function jinro_rpg:game/summon_soul


##メイン処理 
    execute if entity @s[tag=!No_Death] run kill @s
    execute if entity @s[tag=!No_Death] run gamemode spectator @s

    execute if entity @s[tag=!No_Death] on attacker run tag @s add Perpetrator
    execute if entity @s[tag=!No_Death] run scoreboard players add @a[tag=Perpetrator] Znsi.Killcount 1
    execute if entity @s[tag=No_Death,tag=!Protection,tag=Cursed_one,tag=!Cursed] on attacker run tag @s add Perpetrator
    execute if entity @s[tag=!No_Death] as @a[tag=Perpetrator] at @s run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute if entity @s[tag=!No_Death] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.PerpetratorID set from entity @s item.components."minecraft:profile".name
    execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select

    execute if entity @s[tag=!No_Death] store result storage jinro_rpg: Game.Victim int 1.0 run scoreboard players get @s Znsi.ID
    execute if entity @s[tag=!No_Death] run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute if entity @s[tag=!No_Death] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.VictimID set from entity @s item.components."minecraft:profile".name
    execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select

    execute if entity @s[tag=!No_Death] store result storage jinro_rpg: Game.Perpetrator int 1.0 run scoreboard players get @p[tag=Perpetrator] Znsi.ID


##騎士の加護
    execute if entity @s[tag=Protection] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1.5
    execute if entity @s[tag=Protection] run tellraw @s [{"text":"[","color":"red"},{"text":"人狼RPG"},{"text":"] "},{"text":"騎士の加護 の効果が発動しました","color":"white"}]
    execute if entity @s[tag=Protection] run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
    execute if entity @s[tag=Protection] run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute if entity @s[tag=Protection] as @a[gamemode=adventure] if score @s Znsi.Protection = TMP Znsi.ID run tag @s add select
    execute if entity @s[tag=Protection] run tag @a[tag=select] add Protected
    execute if entity @s[tag=Protection] run tag @a remove select


##屈強な村人
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは "},{"bold":true,"color":"gold","text":"屈強な村人 "},{"color":"white","text":"だった！"}]
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] run clear @s
    execute if entity @s[tag=!Dying,tag=No_Death,tag=Strong_villager,tag=!Protection] run tag @s add Dying


##呪われ者
    execute if entity @s[tag=!Protection,tag=Cursed_one,tag=!Cursed] if entity @a[tag=Perpetrator,tag=Wolf] run function jinro_rpg:game/cursed


##道化師
    execute if entity @s[tag=!No_Death,tag=Clown] run clear @s *[!custom_data={Drop:1b}]
    execute if entity @s[tag=!No_Death,tag=Clown] on attacker run tag @s add Slayer
    execute if entity @s[tag=!No_Death,tag=Clown] run data modify storage jinro_rpg: Game.Clown.Reward set from entity @s Inventory


##死神

##共通処理
    execute if entity @s[tag=!No_Death] run function jinro_rpg:game/kills/axe2 with storage jinro_rpg: Game
    tag @e[type=marker,tag=Sign_stand] remove select
    tag @s remove Protection
    tag @s remove No_Death
    advancement revoke @s only jinro_rpg:kills/axe