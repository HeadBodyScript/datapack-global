execute store result score #calculate.percent PARSE run data get storage constructor:this stat.cooldown.scaling
execute store result score #calculate.value PARSE run function constructor:get_stat/type/cooldown
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #component.cooldown RETURN store result score #calculate.value PARSE run data get storage constructor:this stat.cooldown.value 20
execute store result score #component.cooldown LOCAL run function component:calculate/percentage_of
scoreboard players operation #component.cooldown RETURN -= #component.cooldown LOCAL
execute if score #component.cooldown RETURN matches ..10 run scoreboard players set #component.cooldown RETURN 10
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Modified ",{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.cooldown.description"}}}]
return run scoreboard players get #component.cooldown RETURN
