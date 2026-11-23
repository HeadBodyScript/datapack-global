
data modify storage constructor:this scaling set from storage constructor:this stat.damage.scaling[0]
execute store result score #scaling LOCAL run function constructor:component/scaling_object
scoreboard players operation #scaling RETURN += #scaling LOCAL
data remove storage constructor:this stat.damage.scaling[0]
execute if data storage constructor:this stat.damage.scaling[0] run return run function constructor:component/scaling
return run scoreboard players get #scaling RETURN