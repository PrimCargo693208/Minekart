
scoreboard players add @e[tag=mk2, tag=com_player, limit=1, sort=nearest, distance=..1] speed 0

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1] if block ~ ~-1 ~ minecraft:redstone_block run tag @n[tag=com_player,tag=mk2] add mk2.is_flying
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1] if block ~ ~-1 ~ minecraft:emerald_block run tag @n[tag=com_player,tag=mk2] remove mk2.is_flying

execute as @e[tag=mk2,tag=com_kart] at @s at @e[tag=mk2, tag=com_player, limit=1, sort=nearest, distance=..1] run tp @n[tag=mk2,tag=com_kart] ~ ~ ~ ~ ~

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=5..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=5..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=5..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=10..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=10..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=10..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=15..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=15..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=15..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=20..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=20..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=20..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=25..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=25..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=25..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=30..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=30..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=30..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=35..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=35..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=35..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=40..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=40..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=40..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=45..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=45..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=45..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=50..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=50..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=50..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=55..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=55..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=55..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=60..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=60..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=60..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=65..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=65..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=65..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=70..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=70..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=70..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=75..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=75..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=75..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=80..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=80..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=80..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=85..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=85..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=85..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=90..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=90..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=90..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=95..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=95..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=95..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^

execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=100..}] run tp @s ^ ^ ^.05
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=100..}] if block ~ ~-1 ~ minecraft:purpur_stairs run tp @s ^ ^.05 ^
execute as @e[tag=mk2,tag=com_kart] at @s if entity @n[tag=mk2, tag=com_player, distance=..1, scores={speed=100..}] if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp @s ^ ^-.05 ^