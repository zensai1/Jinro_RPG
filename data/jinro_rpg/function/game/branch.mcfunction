#>jinro_rpg:game/branch


##Debugメッセージ
    #tellraw @a[tag=op] "分岐"


##霊媒師の蝋燭
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"Medium_candle"}}} run function jinro_rpg:game/items/medium_candle/position with storage jinro_rpg: Info.$(ID)

##共犯者の目
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"共犯者の目"}}} run tellraw @a[tag=op] "共犯者の目"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"共犯者の目"}}} run function jinro_rpg:game/items/accomplice_eye2 with storage jinro_rpg: Info.$(ID)


##占い
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"占い"}}} run tellraw @a[tag=op] "占い分岐"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"占い"}}} run function jinro_rpg:system/fortune/ with storage jinro_rpg: Info.$(ID)


##騎士の加護
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"騎士の加護"}}} run tellraw @a[tag=op] "加護"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"騎士の加護"}}} run function jinro_rpg:game/blessing with storage jinro_rpg: Info.$(ID)


##呪われ者
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"呪われ者"}}} run tellraw @a[tag=op] "のろわれ"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"呪われ者"}}} run function jinro_rpg:game/cursed2 with storage jinro_rpg: Info.$(ID)

##死神
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"死神"}}} run tellraw @a[tag=op] "Reaper"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"死神"}}} run function jinro_rpg:game/reaper with storage jinro_rpg: Info.$(ID)


##イベント「Happy Birthday!!」
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"HappyBirthday"}}} run function jinro_rpg:event/02_happybirthday_02 with storage jinro_rpg: Info.$(ID)

    
##ゲーム終了時
    #execute if data storage jinro_rpg: {Game:{Branch:{Code:"ゲーム終了"}}} run tellraw @a[tag=op] "終了"
    $execute if data storage jinro_rpg: {Game:{Branch:{Code:"ゲーム終了"}}} run function jinro_rpg:game/wins/show_position with storage jinro_rpg: Info.$(ID)


##初期化    
    #data remove storage jinro_rpg: Game.Branch