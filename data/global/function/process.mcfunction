execute as @a[scores={player.global.attack_speed=..450}] run scoreboard players add @s player.global.attack_speed 20
execute as @a[advancements={global:attack_speed=true}] run advancement revoke @s only global:attack_speed
execute as @a[scores={player.global.attack_speed=450..}] if score @s player.global.attack_speed.total matches 1.. run say revoke
execute as @a[scores={player.global.attack_speed=450..}] if score @s player.global.attack_speed.total matches 1.. run scoreboard players reset @s player.global.attack_speed.total
execute store result score @s player.global.attack_speed.total run attribute @s minecraft:attack_speed get 100