#>jinro_rpg:event/02_happybirthday_02


##通知
    tellraw @a [{"color":"red","text":"[人狼RPG] "},{"color":"white","text":"イベント「Happy Birthday!!」が発生しました"}]
    $tellraw @a [{"player":{"name":"$(MCID)"}}," $(NickName) は今日が誕生日!!"]
    tellraw @a "GMからお祝いにケーキとエメラルドをプレゼント!!"
    tellraw @a "ついでに発光もプレゼントだ!!"


##Tag消す
    tag @a[tag=Birthday] remove Birthday