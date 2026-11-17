data remove storage config.constructor:template macro
data modify storage config.constructor:template macro set value {\
  "damage": 0,  "damage_type":  "player_attack",\
  "crit":   0,  "crit_type":    "player_attack",\
  "UUID":   0\
}

data remove storage config.constructor:template stat
data modify storage config.constructor:template stat set value {\
	"damage":         {"bool": false, "value": 0, "type": "player_attack", "scaling": [{"type": "total_attack_damage", "scaling": 0},{"type": "max_health", "scaling": 0}]},\
	"crit":           {"bool": false, "value": 0, "type": "player_attack", \
        "crit_chance": {"value": 0, "override": false, "type": "crit_chance", "scaling": 100}, \
        "crit_damage": {"value": 0, "override": false, "type": "crit_damage", "scaling": 100}},\
	"on_hit":      	  {"bool": false, "value": 0, "fixed": false},\
	"recursion":      {"bool": false, "value": 0, "type": "status_chance", "scaling": 100},\
	"cooldown":       {"bool": false, "value": 0, "type": "ability_cooldown", "scaling": 100},\
	"duration":       {"bool": false, "value": 0, "type": "ability_duration", "scaling": 100},\
	"range":          {"bool": false, "value": 0, "type": "ability_range", "scaling": 100},\
	"resource":       {"bool": false, "value": 0, "type": "ability_efficiency", "scaling": 100, "sort": "mana"},\
	"tags":           []\
}
