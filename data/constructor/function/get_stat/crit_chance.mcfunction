execute store result score #0 LOCAL run data get entity @s SelectedItem.components.minecraft:enchantments.enchantment_dimitra:crit_chance
scoreboard players operation #get_stat RETURN = #0 LOCAL
scoreboard players operation #get_stat RETURN += @s dimitra.attribute.crit_chance
return run scoreboard players get #get_stat RETURN
