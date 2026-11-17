scoreboard players operation #calculate RETURN = #calculate.value PARSE
execute if score #calculate.percent PARSE matches ..-90 run scoreboard players set #calculate.percent PARSE -90
scoreboard players operation #calculate.percent PARSE += #100 CONST
scoreboard players operation #calculate RETURN *= #calculate.percent PARSE
scoreboard players operation #calculate RETURN /= #100 CONST
return run scoreboard players get #calculate RETURN


# fix all percentage calc
# change to one recursion calc
