#>jinro_rpg:game/kills/axe2


##メイン
    $tellraw @a[gamemode=spectator] [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(PerpetratorID)"}," ",{"color":"white","selector":"@e[scores={Znsi.ID=$(Perpetrator)},type=marker]"},{"color":"gray","text":"("},{"color":"white","text":"人狼の斧"},{"color":"gray","text":") ➡ "},{"color":"white","player":"$(VictimID)"}," ",{"color":"white","selector":"@e[type=marker,scores={Znsi.ID=$(Victim)}]"},{"color":"white","text":" 死亡"}]


##双子
    execute if entity @s[tag=Twins] as @a[tag=Twins,gamemode=adventure] at @s run function jinro_rpg:game/kills/shobo
    #execute if entity @s[tag=Twins] run tellraw @a[tag=op] "[Debug] 今死んだのは双子"
    
##道化師
    #execute if entity @s[tag=Clown] run tellraw @a[tag=op] "[Debug] 道化師が死んだンゴ"
    execute if entity @s[tag=Clown] as @a[tag=Slayer] at @s run summon item ~ ~ ~ {Item:{id:"bundle"},Tags:[DeathBox]}
    execute if entity @s[tag=Clown] positioned as @a[tag=Slayer] run data modify entity @e[type=item,tag=DeathBox,limit=1] Item.components."minecraft:bundle_contents" set from storage jinro_rpg: Game.Clown.Reward


##内部処理
    scoreboard players set @s Auto.Mute 2
    scoreboard players set @s Znsi.MoveCH 2
    tag @a remove Slayer
    tag @a remove Following
    tag @a remove Perpetrator
    tag @e[type=marker] remove Perpetrator
    