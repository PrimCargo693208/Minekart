
execute as @n[tag=kart,distance=..1] at @s run scoreboard players set @n[tag=player,distance=..1] speed -10
execute if entity @n[tag=kart,distance=..1] run kill @s