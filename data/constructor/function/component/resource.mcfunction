scoreboard players set #component.player_resource LOCAL 0
function constructor:get_stat/type/resource.type
execute if score #component.player_resource LOCAL matches ..0 run return fail
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"LOCAL","name":"#component.player_resource"}}]}," Base"]
execute store result score #calculate.value PARSE run function constructor:get_stat/type/resource
execute store result score #calculate.percent PARSE run data get storage constructor:this stat.resource.scaling
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #calculate.value PARSE run data get storage constructor:this stat.resource.value
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
execute store result score #component.resource RETURN run function component:calculate/percentage_sub
execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"RETURN","name":"#component.resource"}}]}," Modified"]
execute if score #component.resource RETURN >= #component.player_resource LOCAL run return fail
data modify storage global:success success set value 1b
return run scoreboard players get #component.resource RETURN
