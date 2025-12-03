#>jinro_rpg:event/02_happybirthday


##祝う人を決める
    tag @r[gamemode=adventure] add Birthday


##誕生日の人にお祝いを
    loot give @a[tag=Birthday] loot jinro_rpg:items/birthday_cake
    give @a[tag=Birthday] emerald 5
    effect give @a[tag=Birthday] glowing 60


##scoreをstorageに
    execute store result storage jinro_rpg: Game.Branch.ID int 1 run scoreboard players get @a[tag=Birthday,limit=1] Znsi.ID
    data modify storage jinro_rpg: Game.Branch.Code set value "HappyBirthday"

    function jinro_rpg:game/branch with storage jinro_rpg: Game.Branch