execute as @e[tag=mk2, tag=item.spawner, scores={time_ago.item_collect=200..}] at @s unless entity @e[type=block_display, sort=nearest, limit=1, distance=..1] unless entity @e[tag=mk2,tag=kart,distance=..2] run summon block_display ~ ~ ~ {teleport_duration:20,width:1f,height:1f,Tags:["mk2","minekart2","item.box"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chest"}}
execute as @e[tag=mk2, tag=item.spawner] at @s unless entity @e[type=block_display, sort=nearest, limit=1, distance=..1] run scoreboard players add @s time_ago.item_collect 1
execute as @e[tag=mk2, tag=item.spawner, scores={time_ago.item_collect=200..}] at @s if entity @e[type=block_display, sort=nearest, limit=1, distance=..1] run scoreboard players set @s time_ago.item_collect 0

tag @e remove item.pickup
execute as @e[tag=mk2, tag=item.box] at @s if entity @e[tag=mk2, tag=minekart2, tag=kart, distance=..1] run tag @p[distance=..1, scores={item.collected=0}] add item.pickup
execute as @a[tag=item.pickup] at @s run function minekart:items/give_player
execute as @e[tag=mk2, tag=item.box] at @s if entity @p[distance=..1, tag=item.pickup] if entity @e[tag=mk2, tag=minekart2, tag=kart, distance=..1] run kill @s

execute as @e[tag=mk2, tag=item.box] at @s run tp @s ~ ~ ~ ~1 0