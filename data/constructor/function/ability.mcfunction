# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - Ability"]
# constructor needs to be executed as the player that used the enchantment or deals the damage
# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"storage":"dimitra:constructor","nbt":"stat"}]

scoreboard players operation #TEMP.UUID INT = @s dimitra.UUID
execute store result storage constructor:this stat.macro.UUID int 1 run scoreboard players get #TEMP.UUID INT

scoreboard players set #TEMP.damage INT 0
scoreboard players set #TEMP.crit INT 0
scoreboard players set #TEMP.on_hit INT 0
scoreboard players set #TEMP.cooldown INT 0
scoreboard players set #TEMP.duration INT 0
scoreboard players set #TEMP.range INT 0

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"dimitra_arcane:passive/arcane_transmutation":1}}}}] run data modify storage constructor:this stat.damage.type set value "dimitra:magic"

data modify storage dimitra:success success set value 1b
execute if data storage constructor:this stat.resource{bool: true} store result storage dimitra:success success byte 1 run function constructor:component/efficiency
execute if data storage dimitra:success {success:0b} run return fail
# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - ability [success]"]


execute if data storage constructor:this stat.type{active: true} run function constructor:type/active
execute if data storage constructor:this stat.type{passive: true} run function constructor:type/passive
execute if data storage constructor:this stat.type{on-hit: true} run function constructor:type/on_hit
execute if data storage constructor:this stat.type{charge: true} run function constructor:type/charge

execute if data storage constructor:this stat.damage{bool: true} store result storage constructor:this stat.macro.damage float 1 store result score #TEMP.damage INT run function constructor:component/damage
execute if data storage constructor:this stat.damage_scaling{bool: true} store result storage constructor:this stat.macro.damage float 1 store result score #TEMP.damage INT run function constructor:component/damage_scaling
execute if data storage constructor:this stat.crit{bool: true} store result storage constructor:this stat.macro.crit int 1 store result score #TEMP.crit INT run function constructor:component/crit
execute if data storage constructor:this stat.on-hit{bool: true} store result storage constructor:this stat.on-hit.value int 1 store result score #TEMP.on_hit INT run function constructor:component/on_hit
execute if data storage constructor:this stat.cooldown{bool: true} store result storage constructor:this stat.cooldown.value int 1 store result score #TEMP.cooldown INT run function constructor:component/cooldown
execute if data storage constructor:this stat.duration{bool: true} store result storage constructor:this stat.duration.value int 1 store result score #TEMP.duration INT run function constructor:component/duration
execute if data storage constructor:this stat.range{bool: true} store result storage constructor:this stat.range.value int 1 store result score #TEMP.range INT run function constructor:component/range

# execute if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Reabilitycursion: ",{"score":{"objective":"INT","name":"#TEMP.on_hit"}}]

tellraw @a {"storage":"constructor:this","nbt":"stat.macro"}
return 1
