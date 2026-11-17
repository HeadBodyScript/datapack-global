# execute store result score #0 LOCAL run attribute @s minecraft:attack_speed get 40
execute store result score #get_stat RETURN run attribute @s minecraft:attack_speed get 40
# scoreboard players operation #get_stat RETURN += @s dimitra.attribute.ability.duration
return run scoreboard players get #get_stat RETURN
