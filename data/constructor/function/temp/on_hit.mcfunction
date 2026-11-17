# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - On-Hit"]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"arcane_dimitra:passive/angelic_oath":1}}}}] unless data storage constructor:this stat.macro{crit: 0} run function arcane_dimitra:passive/angelic_oath/enchantment/default
