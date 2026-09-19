execute store result score #0 RETURN run data get storage constructor:this stat.cooldown.value 20
execute store result score #0 PARSE run data get storage constructor:this stat.cooldown.value 20
execute store result score #1 PARSE run function constructor:get_stat/type/cooldown
execute store result score #0 LOCAL run function component:calculate/percentage_of
# execute store result score #0 RETURN run data get storage dimitra:constructor stat.cooldown.value 20
execute store result score #0 RETURN run data get storage constructor:this stat.cooldown.value 20
scoreboard players operation #0 RETURN -= #0 LOCAL
# execute if score #0 LOCAL matches 1.. run scoreboard players operation #0 RETURN -= #0 LOCAL
execute if score #0 RETURN matches ..16 run scoreboard players set #0 RETURN 16
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Modified ",{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.cooldown.description"}}}]
return run scoreboard players get #0 RETURN
