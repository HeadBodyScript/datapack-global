# say tick
# execute as @s[tag=global.throwable.motion] run tp @s ~ ~2 ~
# execute as @s[tag=global.throwable.motion] run tp @s ^-0.5 ^ ^0.5
# execute as @s[tag=global.throwable.motion_post] run function component:throwable/motion
# function component:throwable/motion
tag @s[tag=global.throwable.motion] add global.throwable.motion_post
tag @s remove global.throwable.motion
execute as @s[nbt={OnGround:0b}] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 force
scoreboard players add @s INT.0 1
# execute as @s[scores={INT.0=40..}] run function admin:debug/debug
execute if score @s INT.0 matches 100 run kill @n[type=item_display,tag=item_display.throwable,tag=global]
execute if score @s INT.0 matches 100 run kill @s
# execute as @s[scores={INT.0=40..}] run kill @s
# scoreboard players set @s[nbt={OnGround:0b}] tactical.sound 0
# scoreboard players add @s[nbt={OnGround:1b},scores={tactical.sound=..1}] tactical.sound 1
# execute as @s[scores={tactical.sound=1}] run playsound dimi_equipment:root/equipment.land master @a ~ ~ ~ 2.5 1 0

# kill @e[tag=tactical]