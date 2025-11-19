#>jinro_rpg:system/sign/rename

##Debugメッセージ
    #tellraw @a[tag=op] "system/sign/rename"


#触った人にTagを付与

    execute on target if entity @s[tag=Accepted] run tag @s add Entry
    clear @p[tag=Entry] writable_book
    execute unless items entity @p[tag=Entry] hotbar.* writable_book run loot give @p[tag=Entry] loot jinro_rpg:nickname
    tag @p[tag=Entry] remove Entry


    data remove entity @s interaction