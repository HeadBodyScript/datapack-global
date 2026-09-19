# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - On-Hit"]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"dimitra_arcane:passive/angelic_oath":1}}}}] unless data storage constructor:this stat.macro{crit: 0} run function dimitra_arcane:passive/angelic_oath/enchantment/default
