scoreboard players set #TEMP.resource INT 0
scoreboard players set #resource INT 0
execute if data storage constructor:this stat.resource{type: "mana"} run scoreboard players operation #resource INT = @s dimitra.player.mana

execute store result score #0 PARSE run data get storage constructor:this stat.resource.value
execute store result score #1 PARSE run function constructor:get_stat/type/resource
execute store result score #1 LOCAL run function component:calculate/percentage_of
execute store result score #0 LOCAL run data get storage constructor:this stat.resource.value

scoreboard players operation #0 LOCAL -= #1 LOCAL
execute if data storage config:debug {debug:1b} run tellraw @s ["\n",{"translate":"admin.debug.prefix"},{"translate":"admin.debug.selector","with":[{"selector":"@s"}]},"Total ",{"translate":"misc.dimitra.resource","with":[{"score":{"objective":"LOCAL","name":"#0"}}],"hover_event":{"action":"show_text","value":{"translate":"misc.dimitra.resource.description"}}}]

execute unless score @s dimitra.player.mana matches 0 if score #0 LOCAL >= @s dimitra.player.mana run return fail
execute if data storage constructor:this stat.resource{type: "mana"} run scoreboard players operation @s dimitra.player.mana -= #0 LOCAL

return 1
