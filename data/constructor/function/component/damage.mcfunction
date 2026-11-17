execute store result score #0 RETURN run data get storage constructor:this stat.damage.value
execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Base ",{"translate":"misc.dimitra.damage","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.damage.description"}}}]
data modify storage config.constructor:template macro set from storage constructor:this stat.damage.type

function constructor:component/scaling
# get damage
# get all %
# add base to bonus damage


execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Base ",{"translate":"misc.dimitra.damage","with":[{"score":{"objective":"RETURN","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.damage.description"}}}]
return run scoreboard players get #0 RETURN