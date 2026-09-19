execute store result score #0 LOCAL run attribute @s minecraft:attack_speed get 40
execute store result score #0 RETURN run attribute @s minecraft:attack_speed get 40
# scoreboard players operation #0 RETURN += @s dimitra.attribute.ability.duration
return run scoreboard players get #0 RETURN
