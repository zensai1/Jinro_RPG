#>jinro_rpg:gui/page4/set_name

#マップ名をストレージに入れる
    #execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Lobby"]}] run data modify storage jinro_rpg: Setting.lobby.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map1"]}] run data modify storage jinro_rpg: Setting.Map1.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map2"]}] run data modify storage jinro_rpg: Setting.Map2.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map3"]}] run data modify storage jinro_rpg: Setting.Map3.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map4"]}] run data modify storage jinro_rpg: Setting.Map4.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map5"]}] run data modify storage jinro_rpg: Setting.Map5.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw



#
    item replace entity @s weapon.mainhand with air
    execute if score @s Znsi.Page matches 400 run function jinro_rpg:gui/page0/map with storage jinro_rpg: Setting