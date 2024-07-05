
execute as @e[tag=mk2,tag=route] at @s if entity @a[distance=..32,tag=dev] run particle minecraft:witch ~ ~ ~
execute as @e[tag=mk2,tag=route] at @s if entity @a[distance=..32,tag=dev] run particle minecraft:wax_off ^ ^ ^1
execute as @e[tag=mk2,tag=goal] at @s if entity @a[distance=..32,tag=dev] run particle minecraft:ominous_spawning ~ ~1 ~ .1 .1 .1 0.2 10
execute as @e[tag=mk2,tag=goal] at @s if score #started data matches 0 run particle minecraft:ominous_spawning ~ ~1 ~ .1 .1 .1 0.2 10
