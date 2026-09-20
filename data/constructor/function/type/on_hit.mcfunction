# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Type - On-Hit"]

# execute if data storage constructor:this stat.damage{bool: true} store result storage constructor:this stat.macro.damage float 1 store result score #TEMP.damage INT run function dimitra:components/constructor/sort/damage
# execute if data storage constructor:this stat.damage_scaling{bool: true} store result storage constructor:this stat.macro.damage float 1 store result score #TEMP.damage INT run function dimitra:components/constructor/sort/damage_scaling
# execute if data storage constructor:this stat.crit{bool: true} store result storage constructor:this stat.macro.crit int 1 store result score #TEMP.crit INT run function dimitra:components/constructor/sort/crit
# execute if data storage constructor:this stat.cooldown{bool: true} store result storage constructor:this stat.cooldown.value int 1 store result score #TEMP.cooldown INT run function dimitra:components/constructor/sort/cooldown
# execute if data storage constructor:this stat.duration{bool: true} store result storage constructor:this stat.duration.value int 1 store result score #TEMP.duration INT run function dimitra:components/constructor/sort/duration
# execute if data storage constructor:this stat.range{bool: true} store result storage constructor:this stat.range.value int 1 store result score #TEMP.range INT run function dimitra:components/constructor/sort/range

scoreboard players operation @s PARSE = @s dimitra.attribute.status_chance

scoreboard players reset #component RETURN
execute store result score #chance_recursion RETURN run function component:calculate/chance_recursion