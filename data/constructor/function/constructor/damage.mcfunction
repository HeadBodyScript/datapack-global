# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - Ability"]
# constructor needs to be executed as the player that used the enchantment or deals the damage
# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"storage":"dimitra:constructor","nbt":"stat"}]

data remove storage constructor:this macro
data modify storage constructor:this macro set from storage config.constructor:template macro
execute store result storage constructor:this stat.macro.UUID int 1 run scoreboard players get @s global.UUID

data modify storage constructor:this macro.damage set from storage constructor:this stat.damage.type
data modify storage constructor:this macro.crit set from storage constructor:this stat.crit.type

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"arcane_dimitra:passive/arcane_transmutation":1}}}}] run data modify storage constructor:this stat.damage.type set value "magic"

data modify storage global:success success set value 1b
execute if data storage constructor:this stat.resource{bool:1b} store result score #constructor.resource LOCAL run function constructor:component/resource
execute if data storage global:success {success:0b} run return fail

function constructor:tags/get_type.ability
function constructor:tags/get_type.weapon.pre

# on hit needs to be above damage
# in scaling in damage say type: on_hit if it's an on hit that deals damage
# score all back into the constructor as damage.modified_value

execute if data storage constructor:this stat.recursion{bool:1b} store result storage constructor:this stat.recursion.modified_value int 1 run function constructor:component/recursion
execute if data storage constructor:this stat.on_hit{bool:1b} store result storage constructor:this stat.on_hit.modified_value int 1 run function constructor:component/on_hit
execute if data storage constructor:this stat.damage{bool:1b} store result storage constructor:this stat.damage.modified_value int 1 store result storage constructor:this macro.damage float 1 run function constructor:component/damage
execute if data storage constructor:this stat.crit{bool:1b} store result storage constructor:this stat.crit.modified_value int 1 store result storage constructor:this macro.crit float 1 run function constructor:component/crit
execute if data storage constructor:this stat.cooldown{bool:1b} store result storage constructor:this stat.cooldown.modified_value int 1 run function constructor:component/cooldown
execute if data storage constructor:this stat.duration{bool:1b} store result storage constructor:this stat.duration.modified_value int 1 run function constructor:component/duration
execute if data storage constructor:this stat.range{bool:1b} store result storage constructor:this stat.range.modified_value int 1 run function constructor:component/range

execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.recursion",with:[{"storage":"constructor:this","nbt":"stat.recursion.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.on_hit",with:[{"storage":"constructor:this","nbt":"stat.on_hit.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.damage",with:[{"storage":"constructor:this","nbt":"stat.damage.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.crit_damage",with:[{"storage":"constructor:this","nbt":"stat.crit.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.cooldown",with:[{"storage":"constructor:this","nbt":"stat.cooldown.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.duration",with:[{"storage":"constructor:this","nbt":"stat.duration.modified_value"}]}]
execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.range",with:[{"storage":"constructor:this","nbt":"stat.range.modified_value"}]}]

function constructor:tags/get_type.weapon.post

return 1
