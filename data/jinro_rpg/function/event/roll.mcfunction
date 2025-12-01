#>jinro_rpg:event/roll


##Dice!!
    execute store result score *** Znsi.DiceRoll run random value 1..100


##25%の壁##
    execute if score *** Znsi.DiceRoll matches 31.. run return 0


##何のイベントが出るかDice
    execute store result score *** Znsi.Temp run random value 1..2


##「ウィザースケルトン発生」
    execute if score *** Znsi.Temp matches 1 store result storage jinro_rpg: Event.Num int 1.0 if entity @a[tag=Accepted]
    execute if score *** Znsi.Temp matches 1 run function jinro_rpg:event/01_wither_skeleton


##「Happy Birthday!!」
    execute if score *** Znsi.Temp matches 1 run function jinro_rpg:event/02_happybirthday

