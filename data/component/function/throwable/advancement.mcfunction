advancement revoke @s only component:consume_item.throwable
playsound entity.horse.saddle master @a ~ ~ ~ 0.3 1.5 0

execute positioned ~ ~1.6 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["armor_stand.global.throwable","armor_stand.global.throwable.motion","process.global"],Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,attributes:[{id:"minecraft:scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",item_display: "head",Tags:["item_display.global.throwable","process.global"],start_interpolation: -1,transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.45f, 0.0f]}}]}
item replace entity @n[tag=item_display.global.throwable] container.0 from entity @n weapon.mainhand
scoreboard players operation @n[type=minecraft:armor_stand,tag=armor_stand.global.throwable] owner.global.uuid = @s player.global.uuid
execute positioned ~ ~1.6 ~ as @n[type=minecraft:armor_stand,tag=armor_stand.global.throwable] run function component:throwable/motion
