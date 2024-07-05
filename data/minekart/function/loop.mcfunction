execute as @a store success score @s free.hand run data get entity @s SelectedItem
execute as @a[scores={speed=61..}] run scoreboard players set @s free.hand 0
execute as @a store success score @s free.hotbar8 run data get entity @s Inventory[8]
execute as @e[tag=mk2,tag=kart] at @s if score started data matches 0 run tp @s ~ ~ ~ 

function minekart:items/use
function minekart:player/main
function minekart:npc/main

function minekart:items/box

function minekart:ui/particle
function minekart:ui/bossbar

execute at @e[type=marker] run particle bubble ~ ~ ~ 0 0 0 0 1 normal

execute as @e[tag=mk2,tag=com_player,sort=random,limit=1] if entity @p[distance=..8] run say Was ist das für ein hoher Ping?!