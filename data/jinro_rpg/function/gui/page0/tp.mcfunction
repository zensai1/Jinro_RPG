#>jinro_rpg:gui/page0/tp


##情報を継承する
    execute if data storage jinro_rpg: Setting.Handover as @a at @s run function jinro_rpg:system/sign/handover
    data remove storage jinro_rpg: Setting.Handover

##片付け
    kill @e[tag=Sign]
    #tag @a remove Accepted
    execute as @e[tag=Sign_stand] at @s run data remove entity @s CustomName
    scoreboard players reset @e[tag=Sign] Znsi.ID
    scoreboard players reset @e[tag=Sign_stand] Znsi.ID

  
##いつもの
    item replace entity @s player.cursor with air
    function jinro_rpg:gui/

    $tp @a $(x) $(y) $(z)
    $spawnpoint @a $(x) $(y) $(z)
    $setworldspawn $(x) $(y) $(z)