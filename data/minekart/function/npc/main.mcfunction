
execute as @e[tag=mk2,tag=com_player] at @s if block ^.5 ^ ^ #minekart:air if block ^ ^ ^.5 #minekart:border run tp @s ^ ^ ^ ~-15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-.5 ^ ^ #minekart:air if block ^ ^ ^.5 #minekart:border run tp @s ^ ^ ^ ~15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~-15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~15 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1.5 ^ ^ #minekart:air if block ^ ^ ^1.5 #minekart:border run tp @s ^ ^ ^ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1.5 ^ ^ #minekart:air if block ^ ^ ^1.5 #minekart:border run tp @s ^ ^ ^ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1.5 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-5 ~

function minekart:npc/distance_speed {a: 10, b: 1, c: 0, d: 0, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 20, b: 1, c: 2, d: 0, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 30, b: 1, c: 2, d: 3, e: 0, f: 0, g: 0}
function minekart:npc/distance_speed {a: 40, b: 1, c: 2, d: 3, e: 4, f: 0, g: 0}
function minekart:npc/distance_speed {a: 50, b: 1, c: 2, d: 3, e: 4, f: 5, g: 0}
function minekart:npc/distance_speed {a: 60, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6}


tag @e remove off_road_com
execute as @e[tag=mk2,tag=com_player] at @s if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road_com
execute as @e[tag=mk2,tag=com_player] at @s if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road_com

execute as @e[tag=off_road_com] at @s run scoreboard players set @s speed -100
execute as @e[tag=off_road_com] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
execute as @e[tag=off_road_com] at @s run playsound entity.dragon_fireball.explode neutral @a[distance=..64] ~ ~ ~ .5 1 0.1
execute as @e[tag=off_road_com] at @s run tp @n[tag=mk2,tag=com_kart] @n[tag=mk2, tag=route]
execute as @e[tag=off_road_com] at @s run tp @s @n[tag=mk2, tag=route]
execute as @e[tag=mk2,tag=com_player,scores={speed=..-1}] at @s if entity @a[distance=..32,tag=dev] run particle minecraft:smoke ~ ~.5 ~ 0.1 0.1 0.1 0.05 10 normal


execute if entity @e[tag=mk2,tag=item.box,distance=..1] run kill @n[tag=mk2,tag=item.box]
execute if entity @e[tag=mk2,tag=item.box,distance=..1] store result score @s item.collected run random value 1..2

scoreboard players add @e[tag=mk2,tag=com_player] speed 0
scoreboard players add @e[tag=mk2,tag=com_player] max_speed 0
scoreboard players add @e[tag=mk2,tag=com_player,scores={max_speed=0}] max_speed 60
scoreboard players add @e[tag=mk2,tag=com_player,scores={speed=..0}] speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..}] if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..}] if score @s speed > @s max_speed run scoreboard players remove @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..60}] if score @s speed < @s max_speed run scoreboard players add @s speed 1
execute as @e[tag=mk2,tag=com_player,scores={speed=0..60}] if score @s speed > @s max_speed run scoreboard players remove @s speed 1

function minekart:npc/movement
