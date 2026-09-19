data modify storage constructor:this stat set from storage config.post_attack:default stat
execute store result storage constructor:this stat.macro.UUID int 1 run scoreboard players get @s dimitra.UUID

# do every weapon
execute if items entity @s weapon.mainhand #global:mace store result storage constructor:this stat.macro.damage float 1 run function constructor:post_attack/mace
execute if items entity @s weapon.mainhand #global:crossbow store result storage constructor:this stat.macro.damage float 1 run function constructor:post_attack/crossbow

execute store result storage constructor:this stat.macro.crit float 1 run function component:calculate/crit

tellraw @a {"storage":"constructor:this","nbt":"stat.macro"}
# execute store result 