# function status_effect_dimitra:on_fire/post_attack_victim
# tellraw @a {"storage":"constructor:this","nbt":"stat"}
# config.constructor:template macro
# summon text_display ~ ~3 ~ {text:{"nbt":"macro.damage","storage":"constructor:this"},Tags:["ADMINTEST"]}
# summon text_display ~ ~3 ~ {billboard:"vertical",text:"999",Tags:["ADMINTEST"]}
# summon text_display ~ ~ ~ {billboard:"center",text:{"nbt":"macro.damage","storage":"constructor:this"}}
function component:macro_damage/middleware/armor_reduce
execute store result score #middleware.health LOCAL run data get entity @s Health
execute as @s[tag=status.dimitra.arcane] if data storage constructor:this macro{damage_type: "magic"} store result storage constructor:this macro.damage float 1 run data get storage constructor:this macro.damage 1.1
execute store result score #middleware.damage LOCAL run data get storage constructor:this macro.damage 1
execute if score #middleware.health LOCAL < #middleware.damage LOCAL store result storage constructor:this macro.damage float 1 run data get entity @s Health 1.2
execute store result storage global:success success byte 1 run function component:macro_damage/by_uuid.damage with storage constructor:this macro
execute if data storage global:success {success:0b} run return run function component:macro_damage/callback/by_uuid with entity @s Health


# tellraw @a {"storage":"constructor:this","nbt":"stat.macro"}
execute store result score #middleware.health LOCAL run data get entity @s Health
execute as @s[tag=status.dimitra.arcane] if data storage constructor:this macro{crit_type: "magic"} store result storage constructor:this macro.crit float 1 run data get storage constructor:this macro.crit 1.1
execute store result score #middleware.crit LOCAL run data get storage constructor:this macro.crit 1
execute if score #middleware.health LOCAL < #middleware.crit LOCAL store result storage constructor:this macro.crit int 1 run data get entity @s Health 1.2
execute store result storage global:success success byte 1 run function component:macro_damage/by_uuid.crit with storage constructor:this macro
execute if data storage global:success {success:0b} run return run function component:macro_damage/callback/by_uuid with entity @s Health

# on hit needs to be checked and maybe changed
tag @s add projectile.global.on_hit
# execute at @s on attacker run function constructor:on_hit
tag @s remove projectile.global.on_hit
function component:macro_damage/middleware/armor_reset
