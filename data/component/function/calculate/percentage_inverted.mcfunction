# #0 PARSE // value
# #1 PARSE // percent

scoreboard players operation #component LOCAL = #0 PARSE
scoreboard players operation #component LOCAL *= #100 CONST
scoreboard players operation #component LOCAL /= #1 PARSE
scoreboard players operation #component LOCAL /= #10 CONST
scoreboard players operation #component RETURN = #10 CONST
scoreboard players operation #component RETURN -= #component LOCAL
execute if score #0 PARSE matches 0 run scoreboard players set #component RETURN 0
execute if score #component RETURN matches 0 run scoreboard players set #component RETURN 1

return run scoreboard players get #component RETURN
