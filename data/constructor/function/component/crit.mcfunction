scoreboard players operation #0 PARSE = #constructor.damage LOCAL
execute store result score #1 PARSE run function constructor:get_stat/crit_damage
execute store result score #01 LOCAL run function component:calculate/percentage_of
execute store result score @s PARSE run function constructor:get_stat/type/crit_chance
scoreboard players reset #component RETURN
execute store result score #02 LOCAL run function component:calculate/recursion
scoreboard players operation #01 LOCAL *= #02 LOCAL
return run scoreboard players get #01 LOCAL
