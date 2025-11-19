#>jinro_rpg:ticks/waiting


##プレイヤーに対して実行するもの
    effect give @a saturation infinite 255 true
    effect give @a resistance infinite 255 true
    effect give @a weakness infinite 255 true
    #execute as @a at @s run title @s actionbar ["デバックモード:",{"nbt":"Setting.Debug","storage":"jinro_rpg:"},"　日数強化:",{"nbt":"Setting.Ske","storage":"jinro_rpg:"},"　昼間斧制限:",{"nbt":"Setting.Axe_kill","storage":"jinro_rpg:"},"　イベント:",{"nbt":"Setting.Event","storage":"jinro_rpg:"}]
    execute as @a at @s run title @s actionbar [{"color":"aqua","text":"デバックモード:"},{"color":"white","nbt":"Setting.Debug","storage":"jinro_rpg:"},{"color":"yellow","text":"　日数強化:"},{"color":"white","nbt":"Setting.Ske","storage":"jinro_rpg:"},{"color":"dark_red","text":"　昼間斧制限:"},{"color":"white","nbt":"Setting.Axe_kill","storage":"jinro_rpg:"},{"color":"green","text":"　イベント:"},{"color":"white","nbt":"Setting.Event","storage":"jinro_rpg:"}]
    execute as @a[scores={Znsi.Quickchat.Trigger=1..}] at @s run scoreboard players reset @s Znsi.Quickchat.Trigger

##ニックネームの変更
    execute as @a[tag=Accepted] at @s if items entity @s weapon.mainhand written_book[custom_data={NickName:1b}] store result storage jinro_rpg: Setting.Num int 1.0 run scoreboard players get @s Znsi.ID
    execute as @a[tag=Accepted] at @s if items entity @s weapon.mainhand written_book[custom_data={NickName:1b}] run function jinro_rpg:system/sign/nickname with storage jinro_rpg: Setting


##事前準備
    execute as @a at @s if score @s Znsi.Use.Bone matches 1.. run function jinro_rpg:preparation/boiling_point with storage jinro_rpg: Setting
    execute as @a at @s if score @s Znsi.Use.Breezerod matches 1.. run function jinro_rpg:preparation/player_head with storage jinro_rpg: Setting
    execute as @a at @s if score @s Znsi.Use.Blazerod matches 1.. run function jinro_rpg:preparation/battle_villager_summons
    execute as @a at @s if score @s Znsi.Use.Stick matches 1.. run function jinro_rpg:preparation/auxiliary_villager_summons


##GUI
    ##PAGE0
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor emerald run function jinro_rpg:gui/page0/price_change
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor book run function jinro_rpg:gui/page0/position_allocation
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor beacon run function jinro_rpg:gui/page0/start_entry
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s hotbar.* beacon run function jinro_rpg:system/sign/re_entry with storage jinro_rpg: Setting
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor filled_map run function jinro_rpg:gui/page0/map with storage jinro_rpg: Setting 
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor recovery_compass run function jinro_rpg:gui/page0/deets_setting
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor red_stained_glass_pane run function jinro_rpg:gui/page0/nextmap
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor blue_stained_glass_pane run function jinro_rpg:gui/page0/nextmap2
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor end_crystal run function jinro_rpg:gui/page0/preparation
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor end_portal_frame run function jinro_rpg:gui/page0/tp with storage jinro_rpg: Setting.SelectMap.Pos
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 0 if items entity @s player.cursor bell run function jinro_rpg:gui/page0/gamestart with storage jinro_rpg: Setting.SelectMap.Pos


    ##PAGE1
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 100 if items entity @s player.cursor red_stained_glass_pane run function jinro_rpg:gui/page1/battle
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 100 if items entity @s player.cursor blue_stained_glass_pane run function jinro_rpg:gui/page1/auxiliary
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 110..120 if items entity @s player.cursor red_stained_glass_pane run function jinro_rpg:gui/page1/plus
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 110..120 if items entity @s player.cursor blue_stained_glass_pane run function jinro_rpg:gui/page1/minus


    ##PAGE2
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 200 if items entity @s player.cursor blue_candle run function jinro_rpg:gui/page2/villager_camp
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 200 if items entity @s player.cursor red_candle run function jinro_rpg:gui/page2/wolf_camp
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 200 if items entity @s player.cursor magenta_candle run function jinro_rpg:gui/page2/third_camp
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210..230 if items entity @s player.cursor red_stained_glass_pane run function jinro_rpg:gui/page2/plus
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210..230 if items entity @s player.cursor blue_stained_glass_pane run function jinro_rpg:gui/page2/minus

        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor wither_rose run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor soul_lantern run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor villager_spawn_egg run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor bread run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor bundle run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor ominous_bottle run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 210 if items entity @s player.cursor carved_pumpkin run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 230 if items entity @s player.cursor fermented_spider_eye run function jinro_rpg:gui/page2/invalid
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 230 if items entity @s player.cursor diamond_hoe run function jinro_rpg:gui/page2/invalid



    ##PAGE3
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 300 if items entity @s player.cursor test_block run function jinro_rpg:gui/page3/on_off
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 300 if items entity @s player.cursor skeleton_skull run function jinro_rpg:gui/page3/on_off
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 300 if items entity @s player.cursor stone_axe run function jinro_rpg:gui/page3/on_off
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 300 if items entity @s player.cursor spyglass run function jinro_rpg:gui/page3/on_off
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 300 if items entity @s player.cursor ominous_trial_key run function jinro_rpg:gui/page3/on_off


    ##PAGE4
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 400 if items entity @s player.cursor filled_map run function jinro_rpg:gui/page4/
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 400 if items entity @s player.cursor map run function jinro_rpg:gui/page4/
        execute as @a[tag=op] at @s if items entity @s weapon.mainhand written_book[custom_data={Maps:1b}] run function jinro_rpg:gui/page4/set_name


    execute as @a[tag=op] at @s if score @s Znsi.Page matches 0.. if items entity @s player.cursor barrier run function jinro_rpg:gui/close


##OPTag付きにしか見えないもの
    execute as @e[tag=Boiling_Point] at @s run particle dust{color:[0.365,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 0.5 5 force @a[tag=op]
    execute as @e[tag=Sign_stand] at @s run particle dust{color:[1.000,0.800,0.000],scale:1} ~ ~ ~ 0 0 0 0.5 5 force @a[tag=op]





##その他
    execute store result storage jinro_rpg: Setting.MapNum int 1 run scoreboard players get *** Znsi.SelectMap