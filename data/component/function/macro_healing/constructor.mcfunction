# say heal
execute store result storage constructor:this healing.max_health float 1 store result score #0 LOCAL run attribute @s minecraft:max_health get 1
execute store result score #1 LOCAL run data get entity @s Health 1
execute if score #0 LOCAL = #1 LOCAL run return run scoreboard players reset @s constructor.healing_amount
# return if max health

scoreboard players operation #0 LOCAL -= #1 LOCAL
execute if score #0 LOCAL < @s constructor.healing_amount run scoreboard players operation @s constructor.healing_amount = #0 LOCAL
# if healing is more than the missing health the player has

execute store result score #0 LOCAL run data get entity @s Health 1000
scoreboard players operation @s constructor.healing_amount *= #1000 INT
scoreboard players operation #0 LOCAL += @s constructor.healing_amount
execute store result storage constructor:this healing.new_health float 0.001 run scoreboard players get #0 LOCAL

tag @s add player.macro_healing
function component:macro_healing/set_player_health with storage constructor:this healing

effect give @s minecraft:instant_health 1 28 true

scoreboard players reset @s constructor.healing_amount

# known bugs
# if a player switches from an item that has a max_health modifier right as this function is executed it will deal damage based on the max_health modifier of the item to the player // this can not be fixed because a 1 tick delay is needed