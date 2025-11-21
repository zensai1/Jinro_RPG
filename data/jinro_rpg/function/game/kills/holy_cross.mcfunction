#>jinro_rpg:game/kills/holy_cross


##reset
    tag @a remove Perpetrator


##殴った相手の十字架を消す
    execute on attacker run tag @s add Attacker
    item replace entity @a[tag=Attacker] weapon.mainhand with air
    tag @a[tag=Attacker] remove Attacker


##死神
    execute if entity @s[tag=Vampire] if score #reaper Znsi.Percent matches 5.. unless data storage jinro_rpg: Setting.Position.Reaper run function jinro_rpg:game/summon_soul


##メイン処理 
    execute if entity @s[tag=Vampire] positioned ~ ~ ~ run playsound minecraft:entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 0.8
    execute if entity @s[tag=Vampire] run kill @s
    execute if entity @s[tag=Vampire] run gamemode spectator @s


    ##加害者
        execute if entity @s[tag=Vampire] on attacker run tag @s add Perpetrator
        execute if entity @s[tag=Vampire] run scoreboard players add @a[tag=Perpetrator] Znsi.Killcount 1
        execute if entity @s[tag=Vampire] as @a[tag=Perpetrator] at @s run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
        execute if entity @s[tag=Vampire] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
        execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.PerpetratorID set from entity @s item.components."minecraft:profile".name
        execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select
        execute if entity @s[tag=Vampire] store result storage jinro_rpg: Game.Perpetrator int 1.0 run scoreboard players get @p[tag=Perpetrator] Znsi.ID

    ##被害者
        execute if entity @s[tag=Vampire] store result storage jinro_rpg: Game.Victim int 1.0 run scoreboard players get @s Znsi.ID
        execute if entity @s[tag=Vampire] run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
        execute if entity @s[tag=Vampire] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
        execute if entity @e[type=item_display,tag=select,limit=1] as @e[type=item_display,tag=select] at @s run data modify storage jinro_rpg: Game.VictimID set from entity @s item.components."minecraft:profile".name
        execute if entity @e[type=item_display,tag=select,limit=1] run tag @e[type=item_display,tag=select] remove select
        execute if entity @s[tag=Vampire] store result storage jinro_rpg: Game.Victim int 1.0 run scoreboard players get @s Znsi.ID
    

##内部処理
    function jinro_rpg:game/kills/holy_cross2 with storage jinro_rpg: Game
    advancement revoke @s only jinro_rpg:kills/holy_cross