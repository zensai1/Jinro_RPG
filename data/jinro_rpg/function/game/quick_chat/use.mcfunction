#>jinro_rpg:game/quick_chat/use


##
    scoreboard players reset @s Znsi.Quickchat.Trigger
    scoreboard players enable @s Znsi.Quickchat.Trigger
    scoreboard players set @s Znsi.Page 2
    $dialog show @s $(Quickchat)
    #tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"未実装です"}]