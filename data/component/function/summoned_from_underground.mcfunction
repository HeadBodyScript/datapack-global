tp @s ~ ~0.05 ~
execute align y if block ~ ~1 ~ #global:can_penetrate run tag @s remove dimitra.summoned_from_underground
execute align y if block ~ ~1 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~0 ~ 0.3 0.3 0.3 0 10
execute align y if block ~ ~2 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~1 ~ 0.3 0.3 0.3 0 10
#  particle block{block_state:{Name:stone}} ~ ~1.6 ~ 0.3 0.3 0.3 0 10