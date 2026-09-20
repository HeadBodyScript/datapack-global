$execute unless data storage constructor:this stat.macro{crit: 0} if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"$(crit) $(crit_type).crit by ",{"translate":"admin.debug.selector","with":[{"selector":"@n[scores={dimitra.UUID=$(UUID)}]"}]}]
$execute unless data storage constructor:this stat.macro{crit: 0} run damage @s $(crit) global:$(crit_type) by @n[scores={dimitra.UUID=$(UUID)}]

execute store result score #0 LOCAL run data get entity @s Health
execute if score #0 LOCAL matches ..1 run return run function component:macro_damage/callback/by_uuid with storage constructor:this {damage: 1}
return 1