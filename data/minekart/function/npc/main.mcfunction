
execute as @e[tag=mk2,tag=com_player] at @s if block ^.5 ^ ^ #minekart:air if block ^ ^ ^.5 #minekart:border run tp @s ^ ^ ^ ~-15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-.5 ^ ^ #minekart:air if block ^ ^ ^.5 #minekart:border run tp @s ^ ^ ^ ~15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~-5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1.5 ^ ^ #minekart:air if block ^ ^ ^1.5 #minekart:border run tp @s ^ ^ ^ ~-2 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1.5 ^ ^ #minekart:air if block ^ ^ ^1.5 #minekart:border run tp @s ^ ^ ^ ~2 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-2 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~-1 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~1 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-1 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^1 #minekart:air run tp @s ^ ^ ^ ~-5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^1 #minekart:air run tp @s ^ ^ ^ ~5 ~

function minekart:npc/distance_speed {a: 10, b: 1, c: 0, d: 0, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 20, b: 1, c: 2, d: 0, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 30, b: 1, c: 2, d: 3, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 40, b: 1, c: 2, d: 3, e: 4, f: 0, g: 0}
function minekart:npc/distance_speed {a: 50, b: 1, c: 2, d: 3, e: 4, f: 5, g: 0}
function minekart:npc/distance_speed {a: 60, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6}

execute as @e[tag=com_player,scores={rounds=4..}] run scoreboard players set @s max_speed 0
execute as @e[tag=com_player,scores={rounds=4..}, tag=!finished] run say §2§lZIEL
execute as @e[tag=com_player,scores={rounds=4..}] run tag @s add finished

execute as @e[tag=mk2, tag=minekart2, tag=com_player, tag=!next_round] at @s if block ~ ~-1.5 ~ minecraft:diamond_block run scoreboard players add @s rounds 1
execute as @e[tag=mk2, tag=minekart2, tag=com_player] at @s if block ~ ~-1.5 ~ minecraft:diamond_block run tag @s add next_round
execute as @e[tag=mk2, tag=minekart2, tag=com_player, tag=next_round] at @s unless block ~ ~-1.5 ~ minecraft:diamond_block run tag @s remove next_round

execute as @e[tag=mk2, tag=minekart2, tag=com_player] at @s run scoreboard players operation @s pos = @n[tag=mk2,tag=route] pos


tag @e remove off_road_com
execute as @e[tag=mk2,tag=com_player] at @s if block ~ ~-1.5 ~ minecraft:red_wool run tag @s add off_road_com
execute as @e[tag=mk2,tag=com_player,tag=!mk2.is_flying] at @s if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road_com
execute as @e[tag=mk2,tag=com_player,tag=!mk2.is_flying,tag=off_road_com] if entity @n[tag=route,distance=0] run tag @s add mk2.is_flying

execute as @e[tag=off_road_com] at @s run scoreboard players set @s speed -60
execute as @e[tag=off_road_com] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
execute as @e[tag=off_road_com] at @s run playsound entity.dragon_fireball.explode neutral @a[distance=..64] ~ ~ ~ .5 1 0.1
execute as @e[tag=off_road_com] at @s run tp @n[tag=mk2,tag=com_kart] @n[tag=mk2, tag=route]
execute as @e[tag=off_road_com] at @s run tp @s @n[tag=mk2, tag=route]
execute as @e[tag=mk2,tag=com_player,scores={speed=..-1}] at @s if entity @a[distance=..32,tag=dev] run particle minecraft:smoke ~ ~.5 ~ 0.1 0.1 0.1 0.05 10 normal


execute as @e[tag=mk2,tag=com_player,scores={item.collected=0}] run scoreboard players set @s item.used 0
execute as @e[tag=mk2,tag=com_player,scores={item.used=0}] at @s if entity @e[tag=mk2,tag=item.box,distance=..1] store result score @s item.collected run random value 1..2
execute as @e[tag=mk2,tag=com_player,scores={item.used=0}] at @s if entity @e[tag=mk2,tag=item.box,distance=..1] run kill @n[tag=mk2,tag=item.box]
execute as @e[tag=mk2,tag=com_player] at @s if score @s item.collected matches 1.. run scoreboard players add @s item.used 1
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=60}] at @s if score @s item.collected matches 1 run say Item used > §cTurbopilz
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=60}] at @s if score @s item.collected matches 1 run scoreboard players set @s speed 150
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=100..}] at @s if score @s item.collected matches 1 run scoreboard players set @s item.collected 0
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=30..}] at @s if score @s item.collected matches 2 run summon armor_stand ~ ~ ~ {Invisible:true,Small:true,Motion:[0.0,0.0,0.0],Tags:["mk2","minekart2","item.dropped","banana"],ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}]}
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=30..}] at @s if score @s item.collected matches 2 as @n[tag=mk2,tag=item.dropped] at @s run function minekart:items/use/banana
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=30..}] at @s if score @s item.collected matches 2 run say Item used > §6Banane
execute as @e[tag=mk2,tag=com_player,scores={item.used=100..,speed=30..}] at @s if score @s item.collected matches 2 run scoreboard players set @s item.collected 0

scoreboard players add @e[tag=mk2,tag=com_player] speed 0
scoreboard players add @e[tag=mk2,tag=com_player] max_speed 0
scoreboard players add @e[tag=mk2,tag=com_player,scores={speed=..0}] speed 1
execute as @e[tag=com_player,tag=finished] run scoreboard players set @s max_speed 0
execute as @e[tag=mk2,tag=com_player,scores={speed=0..}] if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..}] if score @s speed > @s max_speed run scoreboard players remove @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..60}] if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..60}] if score @s speed > @s max_speed run scoreboard players remove @s speed 1

function minekart:npc/movement
