#>jinro_rpg:ticks/map_gimmick


##MAP3
    #execute if score *** Znsi.SelectMap matches 3 if entity @a[predicate=jinro_rpg:swimming] as @a[predicate=jinro_rpg:swimming] at @s run effect give @s poison 5 10 true
    execute if score *** Znsi.SelectMap matches 3 if entity @a[predicate=jinro_rpg:swimming] as @a[predicate=jinro_rpg:swimming] at @s run damage @s 2.0 wither
    execute if score *** Znsi.SelectMap matches 3 if entity @a[predicate=jinro_rpg:swimming] as @a[predicate=jinro_rpg:swimming] at @s run effect give @s glowing 5 0 true


##MAP4
    execute if entity @e[type=armor_stand,tag=Gimmick,scores={Znsi.Timer=1..}] as @e[type=armor_stand,tag=Gimmick,scores={Znsi.Timer=1..}] at @s run function jinro_rpg:map_gimmick/moving

