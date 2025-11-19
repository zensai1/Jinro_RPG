#>jinro_rpg:system/sign/override


##Debug
    #tellraw @a[tag=op] [{"selector":"@s"}," が継承してます"]

##OhMyDat呼び出し
    execute at @s run function #oh_my_dat:please
    function jinro_rpg:system/sign/override2 with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
