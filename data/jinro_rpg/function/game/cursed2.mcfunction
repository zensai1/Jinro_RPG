#>jinro_rpg:game/cursed2


##役職
    $data modify storage jinro_rpg: Info.$(Score).Position set value "人狼"


##Color
    $data modify storage jinro_rpg: Info.$(Score).Color set value dark_red


$tellraw @a[tag=Wolf] [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(MCID)"},{"color":"white","text":" $(NickName) が人狼になりました"}]