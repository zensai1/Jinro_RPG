#>jinro_rpg:game/cursed


##
    execute positioned ~ ~ ~ run playsound entity.wolf_angry.growl record @a[distance=..20]
    tag @s add WolfSide
    tag @s add Cursed
    tag @s remove VillagerSide
    team join Wolf @s
    data modify storage jinro_rpg: Game.Cursed set value "呪われた"
    title @s title {"color":"gray","text":"呪い"}
    title @s subtitle {"color":"red","text":"あなたは呪われ者だった"}
    tellraw @s [{"color":"white","text":"今回の人狼"}]
    execute as @a[tag=Wolf] at @s run function jinro_rpg:game/tell_wolf
    execute store result storage jinro_rpg: Game.Branch.ID int 1.0 run scoreboard players get @s Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "呪われ者"
    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch
    data remove storage jinro_rpg: Game.Cursed
    tag @e[tag=select] remove select