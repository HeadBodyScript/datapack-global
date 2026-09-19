# #0 PARSE // value
# #1 PARSE // percent
# #0 RETURN // value * percent / 100

execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Value ",{"score":{"objective":"PARSE","name":"#0"}}]
execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"% ",{"score":{"objective":"PARSE","name":"#1"}}]

scoreboard players operation #component RETURN = #0 PARSE
execute if score #1 PARSE matches ..-90 run scoreboard players set #1 PARSE -90
scoreboard players operation #1 PARSE += #100 CONST
scoreboard players operation #component RETURN *= #1 PARSE
scoreboard players operation #component RETURN /= #100 CONST

execute if data storage config:debug {debug:1b} run tellraw @s [{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Result ",{"score":{"objective":"RETURN","name":"#0"}}]

return run scoreboard players get #component RETURN
