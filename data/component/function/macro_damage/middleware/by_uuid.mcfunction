# function dimitra_status:heat/post_attack_victim
# tellraw @a {"storage":"constructor:this","nbt":"stat"}
function component:macro_damage/middleware/armor_reduce
execute store result score #0 LOCAL run data get entity @s Health
execute as @s[tag=status.dimitra.arcane] if data storage constructor:this stat.macro{damage_type: "magic"} store result storage constructor:this stat.macro.damage float 1 run data get storage constructor:this stat.macro.damage 1.1 
execute store result score #1 LOCAL run data get storage constructor:this stat.macro.damage 1
execute if score #0 LOCAL < #1 LOCAL store result storage constructor:this stat.macro.damage float 1 run data get entity @s Health
execute store result storage dimitra:success success byte 1 run function component:macro_damage/by_uuid.damage with storage constructor:this stat.macro
execute if data storage dimitra:success {success:0b} run return run function component:macro_damage/callback/by_uuid with entity @s Health


# tellraw @a {"storage":"constructor:this","nbt":"stat.macro"}
execute store result score #0 LOCAL run data get entity @s Health
execute as @s[tag=status.dimitra.arcane] if data storage constructor:this stat.macro{crit_type: "magic"} store result storage constructor:this stat.macro.crit float 1 run data get storage constructor:this stat.macro.crit 1.1 
execute store result score #2 LOCAL run data get storage constructor:this stat.macro.crit 1
execute if score #0 LOCAL < #2 LOCAL store result storage constructor:this stat.macro.crit int 1 run scoreboard players get @s Health
execute store result storage dimitra:success success byte 1 run function component:macro_damage/by_uuid.crit with storage constructor:this stat.macro
execute if data storage dimitra:success {success:0b} run return run function component:macro_damage/callback/by_uuid with entity @s Health

# on hit needs to be checked and maybe changed
tag @s add dimitra.projectile.on_hit
execute at @s on attacker run function constructor:on_hit
tag @s remove dimitra.projectile.on_hit
function component:macro_damage/middleware/armor_reset
