execute store result score #0 RETURN run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:ability_range
scoreboard players operation #0 RETURN += @s dimitra.attribute.ability.range
return run scoreboard players get #0 RETURN
