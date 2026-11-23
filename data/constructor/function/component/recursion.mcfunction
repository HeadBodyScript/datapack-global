scoreboard players reset #calculate.recursion RETURN
execute store result score #calculate.value PARSE run function constructor:get_stat/type/recursion
execute store result score #calculate.percent PARSE run data get storage constructor:this stat.recursion.scaling
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score @s PARSE run function component:calculate/percentage_of
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Percentage"]
execute store result score #component.recursion LOCAL run function component:calculate/recursion
scoreboard players operation #component.recursion RETURN = #component.recursion LOCAL
execute store result score #component.recursion LOCAL run data get storage constructor:this stat.recursion.value
scoreboard players operation #component.recursion RETURN += #component.recursion LOCAL
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"RETURN","name":"#component.recursion"}}]}," Modified"]
return run scoreboard players get #component.recursion RETURN