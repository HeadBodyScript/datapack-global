execute if data storage constructor:this stat.on_hit{force: true} run return run data get storage constructor:this stat.on_hit.value
scoreboard players set #0 RETURN 0
execute store result score #0 RETURN run data get storage constructor:this stat.on_hit.value
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"dimitra_arcane:on-hit/phantom":1}}}}] run scoreboard players add #0 RETURN 1
# scoreboard players operation #0 RETURN += @s dimitra.attribute.stacks
execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Total ",{"translate":"misc.dimitra.stack","with":[{"score":{"objective":"INT","name":"#TEMP.return"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.stack.description"}}}]
return run scoreboard players get #0 RETURN
