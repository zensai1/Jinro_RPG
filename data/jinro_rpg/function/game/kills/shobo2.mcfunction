#>jinro_rpg:game/kills/shobo2


##Debugメッセージ
    #tellraw @a[tag=op] "ショボ死"


##
$tellraw @a[gamemode=spectator] [{"text":"[人狼RPG] ","color":"red"},{"color":"white","player":"$(Shobo)"}," ",{"selector":"@e[tag=ShoboSHI,type=marker,limit=1]","color":"white","bold":false},{"text":" 死亡","color": "white"}]
tag @e[tag=ShoboSHI] remove ShoboSHI


##双子処理
    execute if entity @s[tag=Twins] as @a[tag=Twins,gamemode=adventure] at @s run kill @s

##内部処理
    scoreboard players set @s Auto.Mute 2
    scoreboard players set @s Znsi.MoveCH 2