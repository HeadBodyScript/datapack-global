execute store result score #calculate.value PARSE run function constructor:get_stat/type/damage
execute store result score #calculate.percent PARSE run data get storage constructor:this scaling.scaling
return run function component:calculate/percentage_of

# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Modified ",{"translate":"misc.dimitra.damage","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.damage.description"}}}]
# return run scoreboard players get #0 RETURN






# object = {"type": "accumulated_souls", "scaling": 10}

