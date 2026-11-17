execute store result score #get_stat RETURN run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:ability_efficiency
scoreboard players operation #get_stat RETURN += @s dimitra.attribute.ability.efficiency
return run scoreboard players get #get_stat RETURN
