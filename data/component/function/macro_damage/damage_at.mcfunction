$execute unless data storage constructor:this stat.macro{damage: 0} if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"$(damage) $(damage_type) by @s"]
$execute unless data storage constructor:this stat.macro{damage: 0} run damage @n $(damage) global:$(damage_type) by @s
$execute unless data storage constructor:this stat.macro{crit: 0} if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"$(crit) $(crit_type) by @s"]
$execute unless data storage constructor:this stat.macro{crit: 0} run damage @n $(crit) global:$(crit_type)_crit by @s
