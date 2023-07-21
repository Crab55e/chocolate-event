execute if data entity @s Item.tag.chocolate store result score #count_temp mets_events.game run data get entity @s Item.Count
execute if data entity @s Item.tag.chocolate store result score #count_amplifier mets_events.game run data get entity @s Item.tag.chocolate
execute if data entity @s Item.tag.chocolate run scoreboard players operation #count_temp mets_events.game *= #count_amplifier mets_events.game

data modify entity @s Age set value -1

execute if data entity @s Item.tag.chocolate run scoreboard players operation #count_result mets_events.game += #count_temp mets_events.game