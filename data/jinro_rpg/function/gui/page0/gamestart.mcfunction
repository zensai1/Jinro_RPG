#>jinro_rpg:gui/page0/gamestart

##MAPに移動
    $tp @a $(x) $(y) $(z)
    $execute as @a at @s run spawnpoint @s $(x) $(y) $(z)
    $worldborder center $(x) $(z)
    worldborder set 300
    clear @a
    playsound entity.arrow.hit_player record @s


##Game Start
execute if data storage jinro_rpg: {Setting:{Debug:"Off"}} run tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"5秒後に始めます..."}]
execute if data storage jinro_rpg: {Setting:{Debug:"Off"}} run schedule function jinro_rpg:gui/page0/3 3s


##DebugMode
execute if data storage jinro_rpg: {Setting:{Debug:"ON"}} run function jinro_rpg:game/start