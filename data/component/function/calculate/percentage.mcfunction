# #0 PARSE // value
# #1 PARSE // percent

scoreboard players operation #component RETURN = #100 CONST
scoreboard players operation #component RETURN *= #0 PARSE
scoreboard players operation #component RETURN /= #1 PARSE
scoreboard players operation #component RETURN /= #10 CONST

# execute if score #0 PARSE matches 0 run scoreboard players set #0 RETURN 0
# execute if score #0 RETURN matches 0 run scoreboard players set #0 RETURN 1

return run scoreboard players get #component RETURN