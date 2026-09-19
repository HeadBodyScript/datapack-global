# store as parse 20 damage
# store as parse 21 crit chance
# store as parse 22 crit damage



# also reduce the energy here

# execute if advancement false reduce energy

# parse 30 will become the damage and 20 crit damage
say mace
execute store result score #base_damage PARSE run attribute @s attack_damage get 1
execute as @s[advancements={dimitra_skill:attribute_1/requirement_1/tree_1/root/2=true}] run scoreboard players set #bonus_damage PARSE 4

execute store result score #crit_chance PARSE run scoreboard players get @s dimitra.attribute.crit_chance

execute store result score #crit_damage PARSE run scoreboard players get @s dimitra.attribute.crit_damage

# if obliterate 2x both parse

scoreboard players operation #total_damage PARSE = #base_damage PARSE
scoreboard players operation #total_damage PARSE += #bonus_damage PARSE

execute as @s[advancements={dimitra_skill:attribute_1/requirement_1/tree_1/root/3=true}] if predicate dimitra_skill:obliterate run function constructor:post_attack/skill.obliterate

return run scoreboard players get #bonus_damage PARSE