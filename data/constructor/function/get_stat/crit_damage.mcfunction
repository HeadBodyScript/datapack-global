execute store result score #0 LOCAL run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:crit_damage
scoreboard players operation #get_stat RETURN = #0 LOCAL
scoreboard players operation #get_stat RETURN += @s entity.dimitra.attribute.crit_damage
return run scoreboard players get #get_stat RETURN
