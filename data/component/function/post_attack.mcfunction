execute store result score @s player.global.attack_speed run attribute @s minecraft:attack_speed get 100
scoreboard players add @s player.global.attack_speed.total 1
# tag @s add global.attack_speed
# say attack advancement