execute as @a run function minekart:bossbar/unload

execute as @e[tag=mk2,tag=kart] at @s as @a[distance=...5] run tp @s ~ ~.05 ~

function minekart:load_gm

scoreboard players reset * speed
scoreboard players reset * max_speed
scoreboard players reset * pos
scoreboard players reset * rounds
scoreboard players reset * gm
scoreboard players reset * time_ago.item_collect
scoreboard players reset * time_ago.sound_played
scoreboard players reset * free.hand 
scoreboard players reset * free.hotbar8
scoreboard players reset * item.used
scoreboard players reset * item.collected
scoreboard players reset * data
scoreboard players reset * id

function minekart:kill_all_karts

clear @a #minekart:spawn_eggs[minecraft:custom_data={"namespace":"minekart"}]
clear @a #minekart:hotbar[minecraft:custom_data={"namespace":"minekart"}]

tag @e remove finished
tag @e remove player
tag @e remove minekart_player