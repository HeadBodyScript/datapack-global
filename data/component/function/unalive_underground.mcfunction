tp @s ~ ~-0.05 ~
execute align y if block ~ ~0 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~0 ~ 0.3 0.3 0.3 0 10
execute align y if block ~ ~1 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~1 ~ 0.3 0.3 0.3 0 10
execute align y if block ~ ~2 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~2 ~ 0.3 0.3 0.3 0 10
execute align y if block ~ ~3 ~ #global:can_penetrate run return run particle block{block_state:{Name:stone}} ~ ~3 ~ 0.3 0.3 0.3 0 10
tp @s ~ -128 ~
kill @s
