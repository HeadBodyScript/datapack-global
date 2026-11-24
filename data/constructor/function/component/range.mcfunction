# execute store result score #calculate.percent PARSE run data get storage constructor:this stat.range.scaling
# execute store result score #calculate.value PARSE run function constructor:get_stat/type/range
# execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.range","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
# execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.range","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
# execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
# execute store result score #component.range RETURN store result score #calculate.value PARSE run data get storage constructor:this stat.range.value 1
# execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.percent"}}]}," Scaling"]
# execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown","with":[{"score":{"objective":"PARSE","name":"#calculate.value"}}]}," Value"]
# execute store result score #component.range RETURN run function component:calculate/percentage_sum
# execute if data storage config:debug {debug:1b,calculation:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.range","with":[{"score":{"objective":"RETURN","name":"#component.range"}}]}," Modified"]
# return run scoreboard players get #component.range RETURN


execute store result storage constructor:this calc.enchant.ability_range int 1 run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:ability_range
execute store result storage constructor:this stat.range.modified_value float 0.01 run compute default float test:range 100
