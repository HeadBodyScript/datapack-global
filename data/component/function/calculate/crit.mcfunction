# parse 20 damage
# parse 21 crit chance
# parse 22 crit damage

# return new crit damage

scoreboard players operation @s PARSE = #crit_chance PARSE

scoreboard players reset #component RETURN

execute store result score #chance_recursion LOCAL run function component:calculate/chance_recursion
execute unless score #chance_recursion LOCAL matches 1.. run return fail
scoreboard players operation #0 PARSE = #total_damage PARSE
scoreboard players operation #1 PARSE = #crit_damage PARSE

execute store result score #percentage_of LOCAL run function component:calculate/percentage_of

scoreboard players operation #chance_recursion LOCAL *= #percentage_of LOCAL


return run scoreboard players get #chance_recursion LOCAL
