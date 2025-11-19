#>jinro_rpg:gui/page0/1

    title @a title "1"
    execute as @a at @s run playsound minecraft:block.anvil.place record @s
    schedule function jinro_rpg:game/start 1s