#>jinro_rpg:game/reaper


##人狼
    execute if items entity @s container.* soul_lantern[custom_data={Position:0b}] run tag @s add Villager

##人狼
    execute if items entity @s container.* soul_lantern[custom_data={Position:1b}] run tag @s add Wolf


##共犯者
    execute if items entity @s container.* soul_lantern[custom_data={Position:2b}] run tag @s add Accomplice


##吸血鬼
    execute if items entity @s container.* soul_lantern[custom_data={Position:3b}] run tag @s add Vampire


##狼憑き
    execute if items entity @s container.* soul_lantern[custom_data={Position:4b}] run tag @s add Wolf_possession


##屈強な村人
    execute if items entity @s container.* soul_lantern[custom_data={Position:6b}] run tag @s add Strong_villager


##パン屋
    execute if items entity @s container.* soul_lantern[custom_data={Position:7b}] run tag @s add Bakery


##商人
    execute if items entity @s container.* soul_lantern[custom_data={Position:8b}] run tag @s add Merchant

    ##商人がいたらUUIDを入れる
        execute if entity @a[tag=Merchant] as @a[tag=Merchant] at @s run data modify storage jinro_rpg: Game.Merchant.UUID set from entity @s UUID

        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[0] set from storage jinro_rpg: Game.Merchant.UUID[0]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[1] set from storage jinro_rpg: Game.Merchant.UUID[1]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[2] set from storage jinro_rpg: Game.Merchant.UUID[2]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Auxiliary] at @s run data modify entity @s Gossips[0].Target[3] set from storage jinro_rpg: Game.Merchant.UUID[3]

        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[0] set from storage jinro_rpg: Game.Merchant.UUID[0]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[1] set from storage jinro_rpg: Game.Merchant.UUID[1]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[2] set from storage jinro_rpg: Game.Merchant.UUID[2]
        execute if entity @a[tag=Merchant] as @e[type=villager,tag=Battle] at @s run data modify entity @s Gossips[0].Target[3] set from storage jinro_rpg: Game.Merchant.UUID[3]


##呪われ者
    execute if items entity @s container.* soul_lantern[custom_data={Position:9b}] run tag @s add Cursed_one

##道化師
    execute if items entity @s container.* soul_lantern[custom_data={Position:10b}] run tag @s add Clown


##役職
    $execute if entity @s[tag=Wolf] run data modify storage jinro_rpg: Info.$(Score).Position set value "人狼"
    $execute if entity @s[tag=Accomplice] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"

    $execute if entity @s[tag=Vampire] run data modify storage jinro_rpg: Info.$(Score).Position set value "吸血鬼"

    $execute if entity @s[tag=Wolf_possession] run data modify storage jinro_rpg: Info.$(Score).Position set value "人狼"
    $execute if entity @s[tag=Twins] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Strong_villager] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Bakery] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Merchant] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Cursed_one] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Villager] run data modify storage jinro_rpg: Info.$(Score).Position set value "村人"
    $execute if entity @s[tag=Clown] run data modify storage jinro_rpg: Info.$(Score).Position set value "驕灘喧蟶ｫ"
    

##Color
    $execute if entity @s[tag=Wolf] run data modify storage jinro_rpg: Info.$(Score).Color set value dark_red
    $execute if entity @s[tag=Accomplice] run data modify storage jinro_rpg: Info.$(Score).Color set value blue

    $execute if entity @s[tag=Vampire] run data modify storage jinro_rpg: Info.$(Score).Color set value light_purple

    $execute if entity @s[tag=Wolf_possession] run data modify storage jinro_rpg: Info.$(Score).Color set value dark_red
    $execute if entity @s[tag=Twins] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Strong_villager] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Bakery] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Merchant] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Cursed_one] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Villager] run data modify storage jinro_rpg: Info.$(Score).Color set value blue
    $execute if entity @s[tag=Clown] run data modify storage jinro_rpg: Info.$(Score).Color set value "#FF8C00"


    $execute if entity @s[tag=Wolf] run tellraw @a[tag=Wolf] [{"color":"red","text":"[人狼RPG] "},{"color":"white","player":"$(MCID)"},{"color":"white","text":" $(NickName) が人狼になりました"}]


##サイドTag付与
    execute if entity @s[tag=Villager] run tag @s add VillagerSide
    execute if entity @s[tag=Merchant] run tag @s add VillagerSide
    execute if entity @s[tag=Bakery] run tag @s add VillagerSide
    execute if entity @s[tag=Strong_villager] run tag @s add VillagerSide
    execute if entity @s[tag=Wolf_possession] run tag @s add VillagerSide
    execute if entity @s[tag=Cursed_one] run tag @s add VillagerSide
    execute if entity @s[tag=Wolf] run tag @s add WolfSide

##チーム
    execute if entity @s[tag=VillagerSide] run team join Villager @s
    execute if entity @s[tag=Accomplice] run team join Accomplice @s
    execute if entity @s[tag=Clown] run team join Clown @s
    execute if entity @s[tag=WolfSide] run team join Wolf @s
    execute if entity @s[tag=Vampire] run team join Vampire @s


##役職に応じたメッセージを送る
    execute if entity @s[tag=Villager] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"blue","text":"村人"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Cursed_one] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"blue","text":"村人"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Strong_villager] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"blue","text":"村人"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Wolf_possession] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"blue","text":"村人"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Merchant] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"green","text":"商人"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Bakery] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"yellow","text":"パン屋"},{"color":white,"text":"になりました"}]

    execute if entity @s[tag=Clown] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"#FF8C00","text":"道化師"},{"color":white,"text":"になりました"}]


    execute if entity @s[tag=Wolf] run tellraw @a[tag=Wolf,tag=Reaper] [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"dark_red","text":"人狼"},{"color":white,"text":"になりました"}]
    execute if entity @s[tag=Wolf] run tellraw @a[tag=Wolf,tag=Reaper] "今回の人狼"
    execute if entity @s[tag=Wolf] as @a[tag=Wolf,tag=!Reaper] at @s run function jinro_rpg:game/tell_wolf4_1
    execute if entity @s[tag=Accomplice] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"gray","text":"共犯者"},{"color":white,"text":"になりました"}]


    execute if entity @s[tag=Vampire] run tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"あなたは"},{"bold":true,"color":"light_purple","text":"吸血鬼"},{"color":white,"text":"になりました"}]


##内部処理
    clear @s soul_lantern
    tag @s remove Reaper
    tag @s add Reaperd
    data remove storage jinro_rpg: Game.Branch