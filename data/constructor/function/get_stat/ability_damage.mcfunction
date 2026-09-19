execute store result score #0 RETURN run data get entity @s SelectedItem.components.minecraft:enchantments.dimitra_enchantment:ability_damage
scoreboard players operation #0 RETURN += @s dimitra.attribute.ability.damage
return run scoreboard players get #0 RETURN
