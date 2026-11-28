# possible skeleton code
execute unless block ~ ~ ~ #global:can_penetrate run tag @s remove armor_stand.global.looking
execute if block ~ ~ ~ #global:can_penetrate unless entity @e[tag=armor_stand.global.looking,scores={INT.0=40..},distance=..1] positioned ^ ^ ^1 run function component:throwable/cast