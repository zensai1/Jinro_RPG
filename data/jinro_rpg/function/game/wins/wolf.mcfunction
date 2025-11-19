#>jinro_rpg:game/wins/wolfwin


##Debugメッセージ
    #tellraw @a[tag=op] "wolfwin"


##タイトル
    execute as @a at @s run title @s title [{"color":"white","text":"☠ "},{"bold":true,"color":"dark_red","text":"人狼の勝利"}," ☠"]
    execute as @a at @s run title @s subtitle {"text":"GAME END","color":"gold","bold":true,"underlined":true}
    execute as @a at @s run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 1 1.5


##勝利陣営
    tellraw @a {"bold":true,"color":"green","text":"勝利陣営"}
    tellraw @a [{"text":"・"},{"bold":true,"color":"dark_red","text":"人狼"}]
    execute as @a[tag=Wolf] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Accomplice] run tellraw @a [{"text":"・"},{"bold":true,"color":"gray","text":"共犯者"}]
    execute if entity @a[tag=Accomplice] as @a[tag=Accomplice] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Cursed_one,tag=Cursed] run tellraw @a [{"text":"・"},{"bold":true,"color":"red","text":"呪われ者"}]
    execute if entity @a[tag=Cursed_one,tag=Cursed] as @a[tag=Cursed,tag=Cursed_one] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Clown] if entity @a[tag=Clown,gamemode=adventure] run tellraw @a [{"text":"・"},{"bold":true,"color":"#FF8C00","text":"道化師"}]
    execute if entity @a[tag=Clown] if entity @a[tag=Clown,gamemode=adventure] as @a[tag=Clown] at @s run function jinro_rpg:game/wins/get_info


##敗北陣営
    tellraw @a {"bold":true,"color":"red","text":"敗北陣営"}
    execute if entity @a[tag=Villager] run tellraw @a [{"text":"・"},{"bold":true,"color":"blue","text":"村人"}]
    execute if entity @a[tag=Villager] as @a[tag=Villager] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Wolf_possession] run tellraw @a [{"text":"・"},{"bold":true,"color":"dark_purple","text":"狼憑き"}]
    execute if entity @a[tag=Wolf_possession] as @a[tag=Wolf_possession] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Twins] run tellraw @a [{"text":"・"},{"bold":true,"color":"aqua","text":"双子"}]
    execute if entity @a[tag=Twins] as @a[tag=Twins] at @s run function jinro_rpg:game/wins/get_info
    execute if entity @a[tag=Strong_villager] run tellraw @a [{"text":"・"},{"bold":true,"color":"gold","text":"屈強な村人"}]
    execute if entity @a[tag=Strong_villager] as @a[tag=Strong_villager] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Bakery] run tellraw @a [{"text":"・"},{"bold":true,"color":"yellow","text":"パン屋"}]
    execute if entity @a[tag=Bakery] as @a[tag=Bakery] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Merchant] run tellraw @a [{"text":"・"},{"bold":true,"color":"green","text":"商人"}]
    execute if entity @a[tag=Merchant] as @a[tag=Merchant] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Cursed_one,tag=!Cursed] run tellraw @a [{"text":"・"},{"bold":true,"color":"red","text":"呪われ者"}]
    execute if entity @a[tag=Cursed_one,tag=!Cursed] as @a[tag=Cursed_one,tag=!Cursed] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Vampire] run tellraw @a [{"text":"・"},{"bold":true,"color":"light_purple","text":"吸血鬼"}]
    execute if entity @a[tag=Vampire] as @a[tag=Vampire] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Clown] if entity @a[tag=Clown,gamemode=spectator] run tellraw @a [{"text":"・"},{"bold":true,"color":"#FF8C00","text":"道化師"}]
    execute if entity @a[tag=Clown] if entity @a[tag=Clown,gamemode=spectator] as @a[tag=Clown] at @s run function jinro_rpg:game/wins/get_info

    execute if entity @a[tag=Reaper] run tellraw @a [{"text":"・"},{"bold":true,"color":"dark_aqua","text":"死神"}]
    execute if entity @a[tag=Reaper] as @a[tag=Reaper] at @s run function jinro_rpg:game/wins/get_info


    function jinro_rpg:game/reset