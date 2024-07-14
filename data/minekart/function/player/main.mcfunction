
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run function minekart:player/hotbar
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run function minekart:items/ui
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!minekart_player] run scoreboard players add @s rounds 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run tag @s add minekart_player
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5, tag=minekart_player] run function minekart:ui/clear_player_hotbar
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5, tag=minekart_player] run scoreboard players add @s rounds 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..1.5] run tag @s remove minekart_player
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=.6..4, tag=!minekart_player] run title @s actionbar ["⚠ Deine Hotbar wird gleich glöscht ⚠"]

execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:cyan_stained_glass_pane"}}] run scoreboard players set @s max_speed 10
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:green_stained_glass_pane"}}] run scoreboard players set @s max_speed 20
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:lime_stained_glass_pane"}}] run scoreboard players set @s max_speed 30
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:yellow_stained_glass_pane"}}] run scoreboard players set @s max_speed 40
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:orange_stained_glass_pane"}}] run scoreboard players set @s max_speed 50
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:red_stained_glass_pane"}}] run scoreboard players set @s max_speed 60
execute as @a if entity @s[nbt={"SelectedItem":{id:"minecraft:barrier"}}] run scoreboard players set @s max_speed 0

execute as @a[scores={rounds=4..}] run scoreboard players set @s max_speed 0
execute as @a[scores={rounds=4..}, tag=!finished] run say §2§lZIEL
execute as @a[scores={rounds=4..}] run tag @s add finished

execute as @a if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @a if score @s speed > @s max_speed run scoreboard players remove @s speed 1
execute as @a[scores={speed=0..60}] if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @a[scores={speed=0..60}] if score @s speed > @s max_speed run scoreboard players remove @s speed 1

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run scoreboard players add @s rounds 1
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run title @s[scores={rounds=..3}] title ["",{"text":"Runde ","bold":true,"color":"dark_aqua"},{"score":{"name":"@s","objective":"rounds"},"bold":true,"color":"gold"},{"text":"/3","bold":true,"color":"gold"}]
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=!next_round] if block ~ ~-1.5 ~ minecraft:diamond_block run title @s[scores={rounds=4..}] title ["",{"text":"ZIEL","bold":true,"color":"dark_aqua"}]
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] if block ~ ~-1.5 ~ minecraft:diamond_block run tag @s add next_round
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, tag=next_round] unless block ~ ~-1.5 ~ minecraft:diamond_block run tag @s remove next_round

tag @e remove off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road

execute as @e[tag=off_road] at @s run scoreboard players set @p speed -100
execute as @e[tag=off_road] at @s run scoreboard players set @p max_speed 0
execute as @e[tag=off_road] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
execute as @e[tag=off_road] at @s run playsound entity.dragon_fireball.explode neutral @a[distance=..64] ~ ~ ~ .5 1 .1
execute as @e[tag=off_road] at @s run title @p subtitle ["Error while loading Resourcepack 'MineKart_v2'                "]
execute as @e[tag=off_road] at @s run title @p title ["\uEff1"]
execute as @e[tag=off_road] at @s run tp @s @n[tag=mk2, tag=route]
execute as @e[tag=off_road] at @s run tp @p @n[tag=mk2, tag=route]
execute as @e[tag=off_road] at @s run ride @p mount @s

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s at @p[distance=...5, scores={speed=10..}] positioned ~ ~.41249938686374 ~ run tp @s ~ ~ ~ ~ 0

function minekart:player/movement

scoreboard players add @a[scores={time_ago.sound_played=..999999}] time_ago.sound_played 1
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, scores={speed=5.., time_ago.sound_played=35..}] run playsound minecraft:block.beacon.ambient player @s
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5, scores={time_ago.sound_played=35..}] run scoreboard players set @s time_ago.sound_played 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s as @p[distance=...5] run title @s actionbar ["",{"text":"Speed: ","color":"gold"},{"score":{"name":"@s","objective":"speed"},"bold":true,"color":"aqua"}]

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5, scores={speed=10..}] run tp @s ~ ~ ~ ~90 0
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-1.1 ~ minecraft:purpur_stairs run tp @s ~ ~ ~ ~ 45
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-1.9 ~ minecraft:prismarine_brick_stairs run tp @s ~ ~ ~ ~ -45
