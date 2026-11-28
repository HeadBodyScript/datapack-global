execute store result score #get_stat RETURN run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:ability_range
scoreboard players operation #get_stat RETURN += @s entity.dimitra.attribute.ability.range
return run scoreboard players get #get_stat RETURN
