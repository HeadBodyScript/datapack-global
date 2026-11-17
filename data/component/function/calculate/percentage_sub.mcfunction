scoreboard players operation #calculate LOCAL = #calculate.value PARSE
scoreboard players operation #calculate LOCAL *= #calculate.percent PARSE
scoreboard players operation #calculate LOCAL /= #100 CONST
scoreboard players operation #calculate.value PARSE -= #calculate LOCAL
return run scoreboard players get #calculate.value PARSE
