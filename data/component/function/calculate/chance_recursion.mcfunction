execute store success score #component LOCAL if predicate component:random_chance.storage
scoreboard players operation #component RETURN += #component LOCAL
scoreboard players remove @s PARSE 100
execute if score @s PARSE matches 1.. run return run function component:calculate/chance_recursion
execute if data storage config:debug {debug:1b} run tellraw @a [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Recursion: ",{"score":{"objective":"RETURN","name":"#01"}}]

return run scoreboard players get #component RETURN
