# 0 PARSE = damage
# 1 PARSE = crit damage

scoreboard players operation #0 PARSE = #TEMP.damage INT
execute if data storage config:debug {debug:1b} run tellraw @a ["\n\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Damage: ",{"score":{"objective":"PARSE","name":"#0"}}]
execute store result score #1 PARSE run function constructor:get_stat/crit_damage
execute store result score #01 LOCAL run function component:calculate/percentage_of
execute store result score @s PARSE run function constructor:get_stat/crit_chance
execute if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Crit Chance: ",{"score":{"objective":"PARSE","name":"@s"}}]
scoreboard players reset #component RETURN
execute store result score #02 LOCAL run function component:calculate/chance_recursion
scoreboard players operation #01 LOCAL *= #02 LOCAL
return run scoreboard players get #01 LOCAL
