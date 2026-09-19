scoreboard players set #0 RETURN 0
# execute if data storage constructor:this stat.on_hit{force: true} run return run data get storage constructor:this stat.on_hit.value
execute store result score #0 RETURN run data get storage constructor:this stat.on_hit.value
scoreboard players operation #TEMP INT = #0 RETURN
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"dimitra_arcane:on-hit/phantom":1}}}}] run scoreboard players operation #0 RETURN += #TEMP INT
# scoreboard players operation #0 RETURN += @s dimitra.attribute.stacks


# get dmg
# per on hit add dmg on top of base dmg
scoreboard players operation #TEMP.damage INT *= #0 RETURN
execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Total ",{"translate":"misc.dimitra.on_hit","with":[{"score":{"objective":"INT","name":"#TEMP.return"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.on_hit.description"}}}]
return run scoreboard players get #0 RETURN