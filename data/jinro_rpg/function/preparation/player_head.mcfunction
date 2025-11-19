#>jinro_rpg:preparation/boiling_point


##沸きポイントを召喚
    $summon marker ~ ~0.5 ~ {Tags:["Sign_stand","Map$(MapNum)"]}


##アイテムの状態をリセット
    loot replace entity @s weapon.mainhand loot jinro_rpg:preparation/player_head
    scoreboard players reset @s Znsi.Use.Breezerod