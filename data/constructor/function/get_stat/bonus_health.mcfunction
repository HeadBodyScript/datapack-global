# execute store result score #0 LOCAL run attribute @s minecraft:max_health base get
execute store result score #get_stat RETURN run attribute @s minecraft:max_health get
scoreboard players operation #get_stat RETURN -= #0 LOCAL
return run scoreboard players get #get_stat RETURN
