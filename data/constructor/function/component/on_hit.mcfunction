scoreboard players set #onhit RETURN 0
execute store result score #onhit RETURN run data get storage constructor:this stat.on_hit.value

execute store result score @s PARSE run function constructor:get_stat/type/status_chance
scoreboard players reset #component RETURN
execute store result score #02 LOCAL run function component:calculate/chance_recursion

scoreboard players operation #onhit RETURN += #02 LOCAL
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"dimitra_arcane:on-hit/phantom":1}}}}] run scoreboard players operation #onhit RETURN += #02 LOCAL

return run scoreboard players get #onhit RETURN
