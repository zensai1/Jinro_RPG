#>jinro_rpg:game/quick_chat/position


tellraw @s {"bold":true,"color":"green","text":"=====-----今回の役職配分-----====="}
#村人陣営
    execute unless data storage jinro_rpg: {Setting:{Position:{Wolf_possession:"狼憑き"}}} if score #wolf_possession Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"dark_purple","text":"狼憑き"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#wolf_possession","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Twins:"双子"}}} if score #twins Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"aqua","text":"双子"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#twins","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Strong_villager:"屈強な村人"}}} if score #strong_villager Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"gold","text":"屈強な村人"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#strong_villager","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Bakery:"パン屋"}}} if score #bakery Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"yellow","text":"パン屋"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#bakery","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Merchant:"商人"}}} if score #merchant Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"green","text":"商人"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#merchant","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Cursed_one:"呪われ者"}}} if score #cursed_one Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"red","text":"呪われ者"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#cursed_one","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Clown:"道化師"}}} if score #clown Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"#FF8C00","text":"道化師"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#clown","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]


#人狼陣営
    execute if score #wolf Znsi.Num matches 1.. run tellraw @s [{"bold":true,"color":"dark_red","text":"人狼"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#wolf","objective":"Znsi.Num"}},{"bold":false,"color":"white","text":"人"}]
    execute if score #accomplice Znsi.Num matches 1.. run tellraw @s [{"bold":true,"color":"gray","text":"共犯者"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#accomplice","objective":"Znsi.Num"}},{"bold":false,"color":"white","text":"人"}]


#第三陣営
    execute unless data storage jinro_rpg: {Setting:{Position:{Vampire:"吸血鬼"}}} if score #vampire Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"light_purple","text":"吸血鬼"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#vampire","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]
    execute unless data storage jinro_rpg: {Setting:{Position:{Reaper:"死神"}}} if score #reaper Znsi.Percent matches 5.. run tellraw @s [{"bold":true,"color":"dark_aqua","text":"死神"},{"bold":false,"color":"white","text":"："},{"bold":false,"color":"white","score":{"name":"#reaper","objective":"Znsi.Percent"}},{"bold":false,"color":"white","text":"%"}]


tellraw @s {"bold":true,"color":"green","text":"=======-------------======="}

scoreboard players reset @s Znsi.Quickchat.Trigger
