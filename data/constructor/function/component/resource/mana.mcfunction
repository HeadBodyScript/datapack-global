execute if data storage config:debug {debug:1b,combat_log:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"misc.dimitra.resource",with:[{"score":{"objective":"LOCAL","name":"#constructor.resource"}}]}]
scoreboard players operation @s entity.dimitra.mana -= #constructor.resource LOCAL
