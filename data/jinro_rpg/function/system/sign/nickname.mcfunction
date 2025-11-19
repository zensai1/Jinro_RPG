#>jinro_rpg:system/sign/nickname


##ニックネームを変更
    $data modify entity @e[type=text_display,limit=1,scores={Znsi.ID=$(Num)}] text.text set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    $data remove entity @e[type=text_display,limit=1,scores={Znsi.ID=$(Num)}] text.extra
    $data modify entity @e[type=marker,limit=1,scores={Znsi.ID=$(Num)}] CustomName.text set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw


##後処理
    clear @s written_book
    tellraw @s [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"ニックネームを変更しました。"}]
    data remove storage jinro_rpg: Setting.Num