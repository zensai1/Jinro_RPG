#>jinro_rpg:game/position/reaper


##Debugメッセージ
    tellraw @a[tag=op] "死神"


##1d100
    execute store result score *** Znsi.Counter run random value 1..100
    execute if score *** Znsi.Counter <= #reaper Znsi.Percent run tag @s add Reaper
    execute if score *** Znsi.Counter <= #reaper Znsi.Percent run tag @s add Distributed


##死神がいたらUUIDを取得
    execute if entity @a[tag=Reaper] as @a[tag=Reaper] at @s run data modify storage jinro_rpg: Game.Reaper.UUID set from entity @s UUID