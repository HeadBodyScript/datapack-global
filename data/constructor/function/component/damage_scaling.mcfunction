execute store result score #0 PARSE run function constructor:get_stat/type/damage
execute store result score #1 PARSE run data get storage constructor:this stat.damage_scaling.value
execute store result score #0 RETURN run function component:calculate/percentage_of
scoreboard players operation #0 RETURN += #TEMP.damage INT
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Modified ",{"translate":"misc.dimitra.damage","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.damage.description"}}}]
return run scoreboard players get #0 RETURN
