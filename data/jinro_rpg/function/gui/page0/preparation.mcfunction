#>jinro_rpg:gui/page0/preparation

#
    item replace entity @s player.cursor with air
    clear @s bone
    clear @s blaze_rod
    clear @s breeze_rod
    clear @s stick

#GUIをセット 
    loot replace entity @s inventory.17 loot jinro_rpg:preparation
    playsound entity.arrow.hit_player record @s

    loot give @s loot jinro_rpg:preparation/boiling_point
    loot give @s loot jinro_rpg:preparation/player_head
    loot give @s loot jinro_rpg:preparation/auxiliary_villager_summons
    loot give @s loot jinro_rpg:preparation/battle_villager_summons