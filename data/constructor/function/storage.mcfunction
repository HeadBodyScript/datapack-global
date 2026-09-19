data remove storage config.post_attack:default stat
data modify storage config.post_attack:default stat set value {\
  "macro": {\
    "reduce_armor": 0,\
    "reduce_armor_percentage": 0,\
    "damage": 0, "damage_type": "player_attack",\
    "crit": 0, "crit_type": "player_attack",\
    "UUID": 0}\
}