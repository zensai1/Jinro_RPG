#>jinro_rpg:pl/nickname

##
    function #oh_my_dat:please


##
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MyInfo.NickName set from storage jinro_rpg: Pl.Nickname


##エントリーしてたら
    execute if entity @s[tag=Accepted] run scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute if entity @s[tag=Accepted] as @e[type=item_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    execute if entity @s[tag=Accepted] as @e[type=text_display] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    data modify entity @e[limit=1,tag=select,type=text_display] text set from storage jinro_rpg: Pl.Nickname
    tag @e[tag=select] remove select
