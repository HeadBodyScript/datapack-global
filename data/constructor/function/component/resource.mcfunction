scoreboard players set #component.player_resource LOCAL 0
execute if data storage constructor:this stat.resource{sort: "mana"} run scoreboard players operation #component.player_resource LOCAL = @s dimitra.player.mana
execute if data storage constructor:this stat.resource{sort: "energy"} run scoreboard players operation #component.player_resource LOCAL = @s dimitra.player.mana
execute if score #component.player_resource LOCAL matches ..0 run return fail

execute store result score #calculate.value PARSE run function constructor:get_stat/type/resource
execute store result score #calculate.percent PARSE run data get storage constructor:this stat.resource.scaling
execute store result score #calculate.percent PARSE run function component:calculate/percentage_of
execute store result score #calculate.value PARSE run data get storage constructor:this stat.resource.value
execute store result score #component.resource LOCAL run function component:calculate/percentage_sub

execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Total ",{"translate":"misc.dimitra.resource","with":[{"score":{"objective":"LOCAL","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.resource.description"}}}]

execute if score #component.resource LOCAL >= #component.player_resource LOCAL run return fail
data modify storage global:success success set value 1b
return run scoreboard players get #component.resource LOCAL
