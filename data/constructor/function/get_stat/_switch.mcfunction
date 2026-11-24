# every stat
execute if data storage constructor:this scaling{type:"ability_cooldown"} run return run function constructor:get_stat/ability_cooldown
execute if data storage constructor:this scaling{type:"ability_duration"} run return run function constructor:get_stat/ability_duration
execute if data storage constructor:this scaling{type:"ability_efficiency"} run return run function constructor:get_stat/ability_efficiency
execute if data storage constructor:this scaling{type:"ability_range"} run return run function constructor:get_stat/ability_range
execute if data storage constructor:this scaling{type:"ability_strength"} run return run function constructor:get_stat/ability_strength

execute if data storage constructor:this scaling{type:"base_attack_damage"} run return run function constructor:get_stat/total_armor
execute if data storage constructor:this scaling{type:"base_armor"} run return run function constructor:get_stat/total_armor
execute if data storage constructor:this scaling{type:"base_health"} run return run function constructor:get_stat/total_armor
execute if data storage constructor:this scaling{type:"base_attack_speed"} run return run function constructor:get_stat/total_armor

execute if data storage constructor:this scaling{type:"total_attack_damage"} run return run function constructor:get_stat/total_attack_damage
execute if data storage constructor:this scaling{type:"total_armor"} run return run function constructor:get_stat/total_armor
execute if data storage constructor:this scaling{type:"total_health"} run return run function constructor:get_stat/total_health

execute if data storage constructor:this scaling{type:"accumulated_souls"} run return run function constructor:get_stat/accumulated_souls
execute if data storage constructor:this scaling{type:"void_stacks"} run return run function constructor:get_stat/void_stacks
return 0
