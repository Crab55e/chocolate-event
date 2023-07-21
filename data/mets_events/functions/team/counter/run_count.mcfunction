# すべてのチョコレート自身のカウントを合計する
#初期化
scoreboard players set $team_white mets_events.game 0
scoreboard players set $team_bitter mets_events.game 0
scoreboard players set $team_milk mets_events.game 0
scoreboard players set $team_nasu mets_events.game 0

#集計
scoreboard players set #count_result mets_events.game 0
execute in mets:superflat positioned 1203.0 97 171.0 as @e[type=item,dx=2,dz=2,dy=2] run function mets_events:team/counter/calc
scoreboard players operation $team_white mets_events.game = #count_result mets_events.game

scoreboard players set #count_result mets_events.game 0
execute in mets:superflat positioned 1248.0 97 126.0 as @e[type=item,dx=2,dz=2,dy=2] run function mets_events:team/counter/calc
scoreboard players operation $team_bitter mets_events.game = #count_result mets_events.game

scoreboard players set #count_result mets_events.game 0
execute in mets:superflat positioned 1203.0 97 81.0 as @e[type=item,dx=2,dz=2,dy=2] run function mets_events:team/counter/calc
scoreboard players operation $team_milk mets_events.game = #count_result mets_events.game

scoreboard players set #count_result mets_events.game 0
execute in mets:superflat positioned 1158.0 97 126.0 as @e[type=item,dx=2,dz=2,dy=2] run function mets_events:team/counter/calc
scoreboard players operation $team_nasu mets_events.game = #count_result mets_events.game

#表示
data modify storage mets_events: display_title set value "ホワイト"
scoreboard players operation #display_value mets_events.game = $team_white mets_events.game
execute in mets:superflat run function mets_events:team/counter/display/
execute as @e[tag=mets_event.team.white.counter] run data modify entity @s CustomName set from storage mets_events: display

data modify storage mets_events: display_title set value "ビター"
scoreboard players operation #display_value mets_events.game = $team_bitter mets_events.game
execute in mets:superflat run function mets_events:team/counter/display/
execute as @e[tag=mets_event.team.bitter.counter] run data modify entity @s CustomName set from storage mets_events: display

data modify storage mets_events: display_title set value "ミルク"
scoreboard players operation #display_value mets_events.game = $team_milk mets_events.game
execute in mets:superflat run function mets_events:team/counter/display/
execute as @e[tag=mets_event.team.milk.counter] run data modify entity @s CustomName set from storage mets_events: display

data modify storage mets_events: display_title set value "ナス"
scoreboard players operation #display_value mets_events.game = $team_nasu mets_events.game
execute in mets:superflat run function mets_events:team/counter/display/
execute as @e[tag=mets_event.team.nasu.counter] run data modify entity @s CustomName set from storage mets_events: display
#<Crab55e>                                   ↑　これだ！ #だった
#いや、そもそもすとあしなくていいわ
#<Crab55e> そうなんだ
#functionこまんどだもの
#<Crab55e> ソカ
#てか手打ちするならVCしよ
#ｿﾀﾞﾈ、そうしよう