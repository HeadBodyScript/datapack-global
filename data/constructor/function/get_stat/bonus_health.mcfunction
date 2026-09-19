# execute store result score #0 LOCAL run attribute @s minecraft:max_health base get
execute store result score #0 RETURN run attribute @s minecraft:max_health get
scoreboard players operation #0 RETURN -= #0 LOCAL
return run scoreboard players get #0 RETURN
