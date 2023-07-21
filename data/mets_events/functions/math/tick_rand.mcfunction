summon area_effect_cloud 0 0 0 {Tags:["math_rand"]}
execute as @e[tag=math_rand,limit=1] store result score $rand mets_events.game run data get entity @s UUID[0]
scoreboard players operation $rand mets_events.game %= $prob mets_events.game