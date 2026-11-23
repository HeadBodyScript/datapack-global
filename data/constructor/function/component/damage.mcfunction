execute store result score #0 RETURN run data get storage constructor:this stat.damage.value
data modify storage config.constructor:template macro.damage_type set from storage constructor:this stat.damage.type
function constructor:component/scaling
return run scoreboard players get #0 RETURN