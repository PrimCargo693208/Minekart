execute as @a[scores={speed=1..}, nbt={"SelectedItem":{"id":"minecraft:barrier"}}] run scoreboard players remove @s speed 1
execute as @a[scores={speed=1..}, nbt={"SelectedItem":{"id":"minecraft:barrier"}}] run scoreboard players remove @s speed 1
execute as @a[scores={speed=1.., free.hand=0},] run scoreboard players remove @s speed 1

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run function minekart:karts/player_hotbar
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run function minekart:items/ui
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!minekart_player] run clear @s
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5, tag=!minekart_player] unless block ~ 63 ~ air if block ~ 64 ~ air if block ~ 65 ~ air run tp ~ 64 ~
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!minekart_player] run scoreboard players add @s rounds 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run tag @s add minekart_player
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5, tag=minekart_player] run clear @s
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5, tag=minekart_player] run scoreboard players add @s rounds 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5] run tag @s remove minekart_player

execute as @a if entity @s[scores={speed=..9}, nbt={"SelectedItem":{id:"minecraft:cyan_stained_glass_pane"}}] run scoreboard players add @s speed 1
execute as @a if entity @s[scores={speed=..19}, nbt={"SelectedItem":{id:"minecraft:green_stained_glass_pane"}}] run scoreboard players add @s speed 1
execute as @a if entity @s[scores={speed=..29}, nbt={"SelectedItem":{id:"minecraft:lime_stained_glass_pane"}}] run scoreboard players add @s speed 1
execute as @a if entity @s[scores={speed=..39}, nbt={"SelectedItem":{id:"minecraft:yellow_stained_glass_pane"}}] run scoreboard players add @s speed 1
execute as @a if entity @s[scores={speed=..49}, nbt={"SelectedItem":{id:"minecraft:orange_stained_glass_pane"}}] run scoreboard players add @s speed 1
execute as @a if entity @s[scores={speed=..59}, nbt={"SelectedItem":{id:"minecraft:red_stained_glass_pane"}}] run scoreboard players add @s speed 1

execute as @a if entity @s[scores={speed=11..}, nbt={"SelectedItem":{id:"minecraft:cyan_stained_glass_pane"}}] run scoreboard players remove @s speed 1
execute as @a if entity @s[scores={speed=21..}, nbt={"SelectedItem":{id:"minecraft:green_stained_glass_pane"}}] run scoreboard players remove @s speed 1
execute as @a if entity @s[scores={speed=31..}, nbt={"SelectedItem":{id:"minecraft:lime_stained_glass_pane"}}] run scoreboard players remove @s speed 1
execute as @a if entity @s[scores={speed=41..}, nbt={"SelectedItem":{id:"minecraft:yellow_stained_glass_pane"}}] run scoreboard players remove @s speed 1
execute as @a if entity @s[scores={speed=51..}, nbt={"SelectedItem":{id:"minecraft:orange_stained_glass_pane"}}] run scoreboard players remove @s speed 1
execute as @a if entity @s[scores={speed=61..}, nbt={"SelectedItem":{id:"minecraft:red_stained_glass_pane"}}] run scoreboard players remove @s speed 1

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run scoreboard players add @s rounds 1
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run title @s[scores={rounds=..3}] title ["",{"text":"Runde ","bold":true,"color":"dark_aqua"},{"score":{"name":"@s","objective":"rounds"},"bold":true,"color":"gold"},{"text":"/3","bold":true,"color":"gold"}]
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run title @s[scores={rounds=4..}] title ["",{"text":"ZIEL","bold":true,"color":"dark_aqua"}]
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] if block ~ ~-1.5 ~ minecraft:diamond_block run tag @s add next_round
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=next_round] unless block ~ ~-1.5 ~ minecraft:diamond_block run tag @s remove next_round

execute as @a[scores={rounds=4.., speed=2..}] run scoreboard players remove @s speed 2
execute as @a[scores={rounds=4..}, tag=!finished] run say §2§lZIEL
execute as @a[scores={rounds=4..}] run tag @s add finished

tag @e remove off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road

execute as @e[tag=off_road] at @s run scoreboard players set @p speed 0
execute as @e[tag=off_road] at @s run say @p calls for Lakitu
execute as @e[tag=off_road] at @s run tp @s @e[tag=mk2, tag=tour.respawn, sort=nearest, limit=1]

tag @e remove off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road

execute as @e[tag=off_road] at @s run scoreboard players set @p speed 0
execute as @e[tag=off_road] at @s run say @p calls for Lakitu
execute as @e[tag=off_road] at @s run tp @s @e[tag=mk2, tag=tour.respawn, sort=nearest, limit=1]

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s at @p[distance=...5, scores={speed=10..}] positioned ~ ~.41249938686374 ~ run tp @s ~ ~ ~ ~ 0

function minekart:karts/player_movement

scoreboard players add @a[scores={time_ago.sound_played=..999999}] time_ago.sound_played 1
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, scores={speed=5.., time_ago.sound_played=35..}] run playsound minecraft:block.beacon.ambient player @s
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, scores={time_ago.sound_played=35..}] run scoreboard players set @s time_ago.sound_played 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run title @a actionbar ["",{"text":"Speed: ","color":"gold"},{"score":{"name":"@s","objective":"speed"},"bold":true,"color":"aqua"}]

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5, scores={speed=10..}] run tp @s ~ ~ ~ ~90 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-1.1 ~ minecraft:purpur_stairs run tp @s ~ ~ ~ ~ 45
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-1.9 ~ minecraft:prismarine_brick_stairs run tp @s ~ ~ ~ ~ -45
