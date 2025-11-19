#>jinro_rpg:system/

##スコアボードを追加
    scoreboard objectives add Znsi.CoreID dummy "全体統括ID"
    scoreboard objectives add Znsi.ID dummy "ID"
    scoreboard objectives add Znsi.Rotation dummy "Displayを回転させる"
    #scoreboard objectives add Znsi.State dummy "試合中、待機中の判定"
    scoreboard objectives add Znsi.Page dummy "GUI用"
    scoreboard objectives add Znsi.SkeNum dummy "スケルトンの沸き数"
    scoreboard objectives add Znsi.Price dummy "アイテムの値段"
    scoreboard objectives add Znsi.Percent dummy "役職の確率"
    scoreboard objectives add Znsi.Num dummy "数"
    scoreboard objectives add Znsi.Use.Bone used:bone "沸きポイント設置"
    scoreboard objectives add Znsi.Use.Breezerod used:breeze_rod "プレイヤーヘッド設置"
    scoreboard objectives add Znsi.Use.Blazerod used:blaze_rod "戦闘村人設置"
    scoreboard objectives add Znsi.Use.Stick used:stick "補助村人設置"
    scoreboard objectives add Znsi.Counter dummy "役職振り分けようカウント"
    scoreboard objectives add Znsi.Timer dummy "タイマー"
    scoreboard objectives add Znsi.Days dummy "日表示"
    scoreboard objectives add Znsi.Kill.Skeleton killed:skeleton "スケ倒したか"
    scoreboard objectives add Znsi.Fortune dummy "占い回数"
    scoreboard objectives add Znsi.Drop.Paper dropped:paper "呪符"
    scoreboard objectives add Znsi.Protection dummy "保護先"
    scoreboard objectives add Znsi.Distance dummy "距離測定"
    scoreboard objectives add Znsi.Grudge dummy "呪い回数"
    scoreboard objectives add Znsi.Drop.Crystal dropped:end_crystal "共犯者の目"
    scoreboard objectives add Znsi.Procidence.Trigger trigger "プロビデンス・アイ用トリガー"
    scoreboard objectives add Znsi.Medium.Trigger trigger "霊媒師の蝋燭用トリガー"
    scoreboard objectives add Znsi.Quickchat.Trigger trigger "クイックチャット用"
    scoreboard objectives add Znsi.Procidence used:phantom_membrane "プロビデンス・アイ"
    scoreboard objectives add Znsi.Medium used:candle "霊媒師の蝋燭"
    scoreboard objectives add Znsi.Response dummy "応答待機時間"
    scoreboard objectives add Znsi.Temp dummy "使い勝手のいい奴"
    scoreboard objectives add Znsi.Granade dummy "スタグレ"
    scoreboard objectives add Znsi.Dying.Timer dummy "屈強"
    scoreboard objectives add Znsi.SelectMap dummy "マップ選択"
    scoreboard objectives add Znsi.Leave custom:leave_game "退室"
    scoreboard objectives add Znsi.Death deathCount "死亡時"
    scoreboard objectives add Znsi.GameNum dummy "全数"
    scoreboard objectives add Znsi.Use.Snowball used:snowball "スタグレ2"

    scoreboard objectives add Auto.Mute trigger
    scoreboard objectives add Znsi.MoveCH trigger
    scoreboard objectives add Auto.Response dummy

##ゲームルールを設定
    gamerule doDaylightCycle false
    gamerule doMobSpawning false
    gamerule doWeatherCycle false
    gamerule locatorBar false
    gamerule showDeathMessages false
    gamerule fallDamage false
    gamerule fireDamage false
    gamerule freezeDamage false
    gamerule doMobLoot false
    gamerule doEntityDrops false
    gamerule announceAdvancements false
    gamerule doDaylightCycle false
    gamerule doWeatherCycle false
    gamerule showDeathMessages false
    gamerule keepInventory true

##ボスバーを追加
    bossbar add znsi.time {"color":"white","italic":false,"text":"初日　昼"}
    bossbar set minecraft:znsi.time color yellow
    bossbar set znsi.time style notched_6
    bossbar set znsi.time max 2400

    bossbar add znsi.response {"color":"white","text":"自動ミュート中..."}
    bossbar set minecraft:znsi.response color purple
    bossbar set znsi.response max 20

##チームを追加
    team add Spectator
    team add Villager
    team modify Villager friendlyFire true
    team modify Villager nametagVisibility never
    team modify Villager seeFriendlyInvisibles false
    team add Wolf
    team modify Wolf friendlyFire true
    team modify Wolf nametagVisibility hideForOtherTeams
    team modify Wolf seeFriendlyInvisibles false
    team add Accomplice
    team modify Accomplice friendlyFire true
    team modify Accomplice nametagVisibility never
    team modify Accomplice seeFriendlyInvisibles false
    team add Vampire
    team modify Vampire friendlyFire true
    team modify Vampire nametagVisibility never
    team modify Vampire seeFriendlyInvisibles false
    team add Clown
    team modify Clown friendlyFire true
    team modify Clown nametagVisibility never
    team modify Clown seeFriendlyInvisibles false
    team add Reaper
    team modify Reaper nametagVisibility never

##ストレージの設定
    data modify storage jinro_rpg: State set value "待機中"