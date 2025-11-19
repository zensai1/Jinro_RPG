#>jinro_rpg:game/items/granade



execute as @a[scores={Znsi.Use.Snowball=1..}] at @s run tag @s add NoStun
execute as @e[type=snowball] at @s run summon minecraft:marker ~ ~ ~ {Tags:["granade"]}
scoreboard players add @e[type=minecraft:marker,tag=granade] Znsi.Granade 1
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=1}] at @s run kill @e[type=minecraft:marker,tag=granade,scores={Znsi.Granade=2},distance=..5]
execute as @e[type=snowball] at @s run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0 5
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s run playsound minecraft:entity.firework_rocket.blast master @a
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s run tag @a[distance=..1.5,gamemode=!spectator] add granaded
execute as @a[tag=granaded] at @s unless entity @e[type=armor_stand,tag=granaded,distance=..0.1] run summon armor_stand ~ ~ ~ {Tags:["granaded"],Invisible:true,Small:1b}
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-0.5 ~ run effect give @a[distance=..2.5,gamemode=!spectator] blindness 5
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-0.5 ~ run tag @a[distance=..2.5,gamemode=!spectator] add No_Move
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..2.5,gamemode=!spectator] blindness 5
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-1 ~ run tag @a[distance=..2.5,gamemode=!spectator] add No_Move
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-1.5 ~ run effect give @a[distance=..2.5,gamemode=!spectator] blindness 5
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-1.5 ~ run tag @a[distance=..2.5,gamemode=!spectator] add No_Move
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-2 ~ run effect give @a[distance=..2.5,gamemode=!spectator] blindness 5
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s positioned ~ ~-2 ~ run tag @a[distance=..2.5,gamemode=!spectator] add No_Move
execute as @e[type=marker,tag=granade,scores={Znsi.Granade=2}] at @s run particle squid_ink ~ ~ ~ 0 0.5 0.5 0 5
kill @e[type=marker,tag=granade,scores={Znsi.Granade=5..}]
execute as @a[tag=No_Move] at @s run attribute @s jump_strength base set 0.0
execute as @a[tag=No_Move] at @s run attribute @s movement_speed base set 0.0

execute as @a[tag=granaded,gamemode=!spectator] at @s as @e[type=armor_stand,tag=granaded,sort=nearest,limit=1] at @s unless entity @a[tag=granaded,distance=..0.1] run tp @p[tag=granaded,gamemode=!spectator] ~ ~ ~
tag @a remove granaded
tag @a remove NoStun
scoreboard players reset @a Znsi.Use.Snowball