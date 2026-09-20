execute store result score #0 LOCAL run data get entity @s SelectedItem.components.minecraft:enchantments.dimitra_enchantment:status_chance
scoreboard players operation #0 RETURN += #0 LOCAL

scoreboard players operation #0 RETURN += @s dimitra.attribute.status_chance
return run scoreboard players get #0 RETURN
