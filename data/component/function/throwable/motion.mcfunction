execute store result score @s INT.1 run data get entity @s Pos[0] 1000
execute store result score @s INT.2 run data get entity @s Pos[1] 1000
execute store result score @s INT.3 run data get entity @s Pos[2] 1000
tp @s ^ ^ ^0.1
execute store result score @s INT.4 run data get entity @s Pos[0] 1000
execute store result score @s INT.5 run data get entity @s Pos[1] 1000
execute store result score @s INT.6 run data get entity @s Pos[2] 1000
scoreboard players operation @s INT.4 -= @s INT.1
scoreboard players operation @s INT.5 -= @s INT.2
scoreboard players operation @s INT.6 -= @s INT.3
execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s INT.4
execute store result entity @s Motion[1] double 0.025 run scoreboard players get @s INT.5
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s INT.6
tag @s remove global.throwable.motion_post
# tp @s ~ ~1.2 ~ 0.0 0.0