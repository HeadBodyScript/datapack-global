execute store result score #calculate.percent PARSE run data get storage constructor:this stat.duration.scaling
execute store result score #calculate.value PARSE run function constructor:get_stat/type/duration
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.duration","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.duration","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #component.duration RETURN store result score #calculate.value PARSE run data get storage constructor:this stat.duration.value 20
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #component.duration RETURN run function component:calculate/percentage_sum
execute if score #component.duration RETURN matches ..10 run scoreboard players set #component.duration RETURN 10
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.duration","with":[{"score":{"objective":"RETURN","name":"#component.duration"}}]}," Modified"]
return run scoreboard players get #component.duration RETURN
