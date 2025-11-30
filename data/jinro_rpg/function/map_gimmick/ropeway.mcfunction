#>glance:map_gimmick/ropeway


##SideA(ビーチ側)
    execute if entity @s[tag=SideA] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["SideA","Gimmick"]}
    execute if entity @s[tag=SideA] on target run ride @s mount @e[type=armor_stand,limit=1,sort=nearest,tag=SideA]
    execute if entity @s[tag=SideA] run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=SideA] Znsi.Timer 150
    execute if entity @s[tag=SideA] as @e[type=armor_stand,limit=1,sort=nearest,tag=SideA] at @s run function jinro_rpg:map_gimmick/moving


##SideB(アクティビティエリア側)
    execute if entity @s[tag=SideB] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["SideB","Gimmick"]}
    execute if entity @s[tag=SideB] on target run ride @s mount @e[type=armor_stand,limit=1,sort=nearest,tag=SideB]
    execute if entity @s[tag=SideB] run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=SideB] Znsi.Timer 150
    execute if entity @s[tag=SideB] as @e[type=armor_stand,limit=1,sort=nearest,tag=SideB] at @s run function jinro_rpg:map_gimmick/moving


##
    data remove entity @s interaction