#>jinro_rpg:game/items/providence_eye/glow


##
    $effect give @a[scores={Znsi.ID=$(Num)}] glowing 15 0 true
    $tellraw @a[scores={Znsi.ID=$(Num)}] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"プロビデンス・アイの効果を受けました"}]
    $execute if entity @a[scores={Znsi.ID=$(Num)},gamemode=adventure] as @a[scores={Znsi.ID=$(Num)}] at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
    $execute as @a[scores={Znsi.ID=$(Num)}] at @s run playsound minecraft:block.glass.break record @s ~ ~ ~ 1 2
    $effect clear @a[scores={Znsi.ID=$(Num)},gamemode=spectator] glowing
    playsound entity.illusioner.prepare_blindness record @s
    item replace entity @s weapon.mainhand with air
    scoreboard players reset @s Znsi.Procidence.Trigger