#>jinro_rpg:gui/page0/2

    title @a title "2"
    execute as @a at @s run playsound minecraft:block.anvil.place record @s
    schedule function jinro_rpg:gui/page0/1 1s