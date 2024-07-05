execute as @e[tag=mk2,tag=kart] at @s as @a[distance=...5] run tp @s ~ ~.05 ~

scoreboard players reset * speed
scoreboard players reset * max_speed
scoreboard players reset * pos
scoreboard players reset * rounds
scoreboard players reset * time_ago.item_collect
scoreboard players reset * time_ago.sound_played
scoreboard players reset * free.hand 
scoreboard players reset * free.hotbar8
scoreboard players reset * item.used
scoreboard players reset * item.collected
scoreboard players reset * data

bossbar remove mk2:rounds

function minekart:kill_all_karts