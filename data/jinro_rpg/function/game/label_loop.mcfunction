#>jinro_rpg:game/label_loop


##名前をストレージに入れる
    $data modify storage jinro_rpg: Dialog.Player.Name set from entity @e[tag=Sign_stand,limit=1,scores={Znsi.ID=$(Score)}] CustomName.text
    $data modify storage jinro_rpg: Dialog.Player.PlayerID set from entity @e[type=item_display,limit=1,scores={Znsi.ID=$(Score)}] item.components."minecraft:profile".name
    function jinro_rpg:game/label_input with storage jinro_rpg: Dialog.Player