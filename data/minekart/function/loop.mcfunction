execute as @a store success score @s free.hand run data get entity @s SelectedItem
execute as @a[scores={speed=61..}] run scoreboard players set @s free.hand 0
execute as @a store success score @s free.hotbar8 run data get entity @s Inventory[8]
execute as @e[tag=mk2,tag=kart] at @s if score started data matches 0 run tp @s ~ ~ ~ 

execute if score #countdown data matches 1 run title @a subtitle "§4●§0●●"
execute if score #countdown data matches 1 run title @a title "§63"
execute if score #countdown data matches 21 run title @a subtitle "§4●●§0●"
execute if score #countdown data matches 21 run title @a title "§62"
execute if score #countdown data matches 41 run title @a subtitle "§4●●●§0"
execute if score #countdown data matches 41 run title @a title "§61"
execute if score #countdown data matches 61 run title @a subtitle "§4§2●●●"
execute if score #countdown data matches 61 run title @a title "§6GO!"
execute if score #countdown data matches 81 run title @a subtitle ""
execute if score #countdown data matches 61 run function minekart:main/start

execute if score #countdown data matches 0..100 run scoreboard players add #countdown data 1

function minekart:items/use
function minekart:items/ui
function minekart:player/main
function minekart:npc/main

function minekart:items/box

function minekart:ui/particle
function minekart:ui/bossbar

execute as @a run function minekart:bossbar/loop