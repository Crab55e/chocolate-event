# アイテムドロップ時 (ノーマルチョコ)
# 拠点の座標:
#   ミルクチョコ: 1204 101 85
#   なすびチョコ: 1162 101 127
#   ホワイトチョコ: 1204 101 169
#   ビターチョコ: 1246 101 127
scoreboard players set $chocolate_cooldown mets_events.drop_chocolate.cooldown 40


summon minecraft:falling_block 1204 107 127 {BlockState:{Name:"brown_concrete"},DropItem:0b,HurtEntities:1b,FallHurtMax:32767,FallHurtAmount:200f,Time:10,CustomName:'"チョコレート"'}
playsound entity.generic.explode master @a 1204 107 127 0.1 0.8 0.1

advancement revoke @s only mets_events:drop_chocolate/normal
schedule function mets_events:player/drop_chocolate/summon 18t