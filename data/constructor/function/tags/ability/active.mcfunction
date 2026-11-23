# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Type - Active"]

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"arcane_dimitra:passive/sheen":1}}}}] unless score @s arcane.dimitra.cooldown_remaining.sheen matches 1.. run advancement grant @s only arcane_dimitra:passive/sheen/default

# execute if data storage constructor:this stat.damage{bool:1b} store result storage constructor:this stat.macro.damage float 1 store result score #constructor.damage LOCAL run function dimitra:components/constructor/sort/damage
# execute if data storage constructor:this stat.damage_scaling{bool:1b} store result storage constructor:this stat.macro.damage float 1 store result score #constructor.damage LOCAL run function dimitra:components/constructor/sort/damage_scaling
# execute if data storage constructor:this stat.crit{bool:1b} store result storage constructor:this stat.macro.crit int 1 store result score #constructor.crit LOCAL run function dimitra:components/constructor/sort/crit
# execute if data storage constructor:this stat.cooldown{bool:1b} store result storage constructor:this stat.cooldown.value int 1 store result score #constructor.cooldown LOCAL run function dimitra:components/constructor/sort/cooldown
# execute if data storage constructor:this stat.duration{bool:1b} store result storage constructor:this stat.duration.value int 1 store result score #constructor.duration LOCAL run function dimitra:components/constructor/sort/duration
# execute if data storage constructor:this stat.range{bool:1b} store result storage constructor:this stat.range.value int 1 store result score #constructor.range LOCAL run function dimitra:components/constructor/sort/range
