


data modify storage constructor:this scaling set from storage constructor:this stat.damage.scaling[0]

execute store result score #scaling LOCAL run function constructor:component/scaling_object
tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},{"score":{"objective":"LOCAL","name":"#scaling"}}," scaling"]
scoreboard players operation #scaling RETURN += #scaling LOCAL

data remove storage constructor:this stat.damage.scaling[0]

execute if data storage constructor:this stat.damage.scaling[0] run return run function constructor:component/scaling

return run scoreboard players get #scaling RETURN