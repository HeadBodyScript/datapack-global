execute store result score #0 PARSE run data get storage constructor:this stat.range.value
execute store result score #1 PARSE run function constructor:get_stat/type/range
execute store result score #0 RETURN run function component:calculate/percentage_sum
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Total ",{"translate":"misc.dimitra.range","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.range.description"}}}]

return run scoreboard players get #0 RETURN
