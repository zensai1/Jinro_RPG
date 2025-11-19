#>jinro_rpg:gui/page0/start_entry


#GUIを戻す
    item replace entity @s player.cursor with air
    loot replace entity @s inventory.8 loot jinro_rpg:gui/start_entry

    clear @a writable_book
    function jinro_rpg:system/sign/start_entry with storage jinro_rpg: Setting