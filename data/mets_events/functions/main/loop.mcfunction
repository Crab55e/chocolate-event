scoreboard players remove $timer mets_events.game 1

scoreboard players operation $second mets_events.game = $timer mets_events.game
scoreboard players operation $second mets_events.game /= #20 mets_events.game
scoreboard players operation $second mets_events.game %= #60 mets_events.game

scoreboard players operation $minute mets_events.game = $timer mets_events.game
scoreboard players operation $minute mets_events.game /= #20 mets_events.game
scoreboard players operation $minute mets_events.game /= #60 mets_events.game



title @a[team=team_white] actionbar ["ホワイト ",{"score":{"objective": "mets_events.game","name": "$minute"}},":",{"score":{"objective": "mets_events.game","name": "$second"}}]
title @a[team=team_bitter] actionbar ["ビター ",{"score":{"objective": "mets_events.game","name": "$minute"}},":",{"score":{"objective": "mets_events.game","name": "$second"}}]
title @a[team=team_milk] actionbar ["ミルク ",{"score":{"objective": "mets_events.game","name": "$minute"}},":",{"score":{"objective": "mets_events.game","name": "$second"}}]
title @a[team=team_nasu] actionbar ["ナス ",{"score":{"objective": "mets_events.game","name": "$minute"}},":",{"score":{"objective": "mets_events.game","name": "$second"}}]

execute if score $timer mets_events.game matches 1.. run schedule function mets_events:main/loop 1t
execute unless score $timer mets_events.game matches 1.. run function mets_events:main/end
