#>jinro_rpg:game/pick_soul


##分岐用
    execute store result storage jinro_rpg: Game.Branch.ID int 1 run scoreboard players get @s Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "死神"
    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch