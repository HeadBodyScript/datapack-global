scoreboard players operation #calculate LOCAL = #calculate.value PARSE
scoreboard players operation #calculate LOCAL *= #100 CONST
scoreboard players operation #calculate LOCAL /= #calculate.percent PARSE
scoreboard players operation #calculate LOCAL /= #10 CONST
scoreboard players operation #calculate RETURN = #10 CONST
scoreboard players operation #calculate RETURN -= #calculate LOCAL
execute if score #calculate.value PARSE matches 0 run scoreboard players set #calculate RETURN 0
execute if score #calculate RETURN matches 0 run scoreboard players set #calculate RETURN 1
return run scoreboard players get #calculate RETURN
