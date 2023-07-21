gamerule showDeathMessages false
kill @s
tellraw @a ["",{"selector":"@s"},"はチョコに飲まれた"]
gamerule showDeathMessages true

advancement revoke @s only mets_events:chocolate_tank_in_death