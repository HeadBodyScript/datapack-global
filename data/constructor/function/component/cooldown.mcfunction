execute store result score #calculate.percent PARSE run data get storage constructor:this stat.cooldown.scaling
execute store result score #calculate.value PARSE run function constructor:get_stat/type/cooldown
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #component.cooldown RETURN store result score #calculate.value PARSE run data get storage constructor:this stat.cooldown.value 20
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #component.cooldown LOCAL run function component:calculate/percentage_of
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"LOCAL","name":"#component.cooldown"}}]}," Reduced"]
scoreboard players operation #component.cooldown RETURN -= #component.cooldown LOCAL
execute if score #component.cooldown RETURN matches ..10 run scoreboard players set #component.cooldown RETURN 10
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"RETURN","name":"#component.cooldown"}}]}," modified"]
return run scoreboard players get #component.cooldown RETURN
