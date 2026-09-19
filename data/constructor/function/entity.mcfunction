# execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},"Constructor - Entity"]


team join dimitra.enemy @s
data modify entity @s CustomName set from storage constructor:this stat.CustomName
data modify entity @s Tags set from storage constructor:this stat.Tags
data modify entity @s drop_chances set from storage constructor:this stat.drop_chances
data modify entity @s DeathLootTable set from storage constructor:this stat.DeathLootTable
data modify entity @s PersistenceRequired set from storage constructor:this stat.PersistenceRequired
data modify entity @s Invulnerable set from storage constructor:this stat.Invulnerable


# base stats 
execute if data storage constructor:this stat.attribute.attack_damage run data modify entity @s attributes[{id:"minecraft:attack_damage"}].base set from storage constructor:this stat.attribute.attack_damage
execute if data storage constructor:this stat.attribute.armor run data modify entity @s attributes[{id:"minecraft:armor"}].base set from storage constructor:this stat.attribute.armor
execute if data storage constructor:this stat.attribute.movement_speed run data modify entity @s attributes[{id:"minecraft:movement_speed"}].base set from storage constructor:this stat.attribute.movement_speed
execute if data storage constructor:this stat.attribute.max_health run data modify entity @s attributes[{id:"minecraft:max_health"}].base set from storage constructor:this stat.attribute.max_health
execute if data storage constructor:this stat.attribute.follow_range run data modify entity @s attributes[{id:"minecraft:follow_range"}].base set from storage constructor:this stat.attribute.follow_range
execute if data storage constructor:this stat.attribute.knockback_resistance run data modify entity @s attributes[{id:"minecraft:knockback_resistance"}].base set from storage constructor:this stat.attribute.knockback_resistance
execute if data storage constructor:this stat.attribute.movement_efficiency run data modify entity @s attributes[{id:"minecraft:movement_efficiency"}].base set from storage constructor:this stat.attribute.movement_efficiency



attribute @s minecraft:movement_efficiency modifier add dimitra:default.movement_efficiency 0 add_value
data modify entity @s attributes[{id:"minecraft:movement_efficiency"}].modifiers[{id:"dimitra:default.movement_efficiency"}].amount set from storage constructor:this stat.bonus_attribute.movement_efficiency

attribute @s minecraft:knockback_resistance modifier add dimitra:default.knockback_resistance 0 add_value
data modify entity @s attributes[{id:"minecraft:knockback_resistance"}].modifiers[{id:"dimitra:default.knockback_resistance"}].amount set from storage constructor:this stat.bonus_attribute.knockback_resistance

attribute @s minecraft:tempt_range modifier add dimitra:default.tempt_range 0 add_value
data modify entity @s attributes[{id:"minecraft:tempt_range"}].modifiers[{id:"dimitra:default.tempt_range"}].amount set from storage constructor:this stat.bonus_attribute.tempt_range

attribute @s minecraft:armor modifier add dimitra:default.armor 0 add_value
data modify entity @s attributes[{id:"minecraft:armor"}].modifiers[{id:"dimitra:default.armor"}].amount set from storage constructor:this stat.bonus_attribute.armor

attribute @s minecraft:attack_damage modifier add dimitra:default.attack_damage 0 add_value
data modify entity @s attributes[{id:"minecraft:attack_damage"}].modifiers[{id:"dimitra:default.attack_damage"}].amount set from storage constructor:this stat.bonus_attribute.attack_damage

attribute @s minecraft:movement_speed modifier add dimitra:default.movement_speed 0 add_value
data modify entity @s attributes[{id:"minecraft:movement_speed"}].modifiers[{id:"dimitra:default.movement_speed"}].amount set from storage constructor:this stat.bonus_attribute.movement_speed

attribute @s minecraft:max_health modifier add dimitra:default.max_health 0 add_value
data modify entity @s attributes[{id:"minecraft:max_health"}].modifiers[{id:"dimitra:default.max_health"}].amount set from storage constructor:this stat.bonus_attribute.max_health

attribute @s minecraft:max_health modifier add dimitra:modify.max_health 0 add_value
data modify entity @s attributes[{id:"minecraft:max_health"}].modifiers[{id:"dimitra:modify.max_health"}].amount set from storage dimitra:modify.entity difficulty.bonus_attribute.max_health




execute store result entity @s Health int 1 run attribute @s minecraft:max_health get


execute if data storage constructor:this stat.scoreboard.ability_cooldown store result score @s dimitra.attribute.ability.cooldown run data get storage constructor:this stat.scoreboard.ability_cooldown
execute if data storage constructor:this stat.scoreboard.ability_duration store result score @s dimitra.attribute.ability.duration run data get storage constructor:this stat.scoreboard.ability_duration
execute if data storage constructor:this stat.scoreboard.ability_efficiency store result score @s dimitra.attribute.ability.efficiency run data get storage constructor:this stat.scoreboard.ability_efficiency
execute if data storage constructor:this stat.scoreboard.ability_range store result score @s dimitra.attribute.ability.range run data get storage constructor:this stat.scoreboard.ability_range
execute if data storage constructor:this stat.scoreboard.ability_damage store result score @s dimitra.attribute.ability.damage run data get storage constructor:this stat.scoreboard.ability_damage
execute if data storage constructor:this stat.scoreboard.mana_max store result score @s dimitra.player.mana.max run data get storage constructor:this stat.scoreboard.mana_max
execute if data storage constructor:this stat.scoreboard.mana_regeneration store result score @s dimitra.player.mana.regeneration run data get storage constructor:this stat.scoreboard.mana_regeneration
execute if data storage constructor:this stat.scoreboard.crit_chance store result score @s dimitra.attribute.crit_chance run data get storage constructor:this stat.scoreboard.crit_chance
execute if data storage constructor:this stat.scoreboard.crit_damage store result score @s dimitra.attribute.crit_damage run data get storage constructor:this stat.scoreboard.crit_damage
execute if data storage constructor:this stat.scoreboard.status_chance store result score @s dimitra.attribute.status_chance run data get storage constructor:this stat.scoreboard.status_chance


return 0
