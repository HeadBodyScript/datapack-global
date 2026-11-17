execute store result score #calculate.percent PARSE run data get storage constructor:this stat.duration.scaling
execute store result score #calculate.value PARSE run function constructor:get_stat/type/duration
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #component.duration RETURN store result score #calculate.value PARSE run data get storage constructor:this stat.duration.value 20
execute store result score #component.duration RETURN run function component:calculate/percentage_sum
execute if score #component.duration RETURN matches ..10 run scoreboard players set #component.duration RETURN 10
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Modified ",{"translate":"misc.dimitra.duration","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.duration.description"}}}]
return run scoreboard players get #component.duration RETURN
