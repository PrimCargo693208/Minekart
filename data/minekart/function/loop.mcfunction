execute as @a store success score @s free.hand run data get entity @s SelectedItem
execute as @a[scores={speed=61..}] run scoreboard players set @s free.hand 0
execute as @a store success score @s free.hotbar8 run data get entity @s Inventory[8]
execute as @e[tag=mk2,tag=kart] at @s if score started data matches 0 run tp @s ~ ~ ~

execute if score #countdown data matches 1 run scoreboard players set @a gm -1
execute if score #countdown data matches 1 run scoreboard players set @a[gamemode=survival] gm 0
execute if score #countdown data matches 1 run scoreboard players set @a[gamemode=creative] gm 1
execute if score #countdown data matches 1 run scoreboard players set @a[gamemode=adventure] gm 2
execute if score #countdown data matches 1 run scoreboard players set @a[gamemode=spectator] gm 3
execute at @n[tag=goal] if score #countdown data matches 2 run gamemode adventure @a[scores={gm=0..2},distance=..12]
execute at @n[tag=goal] if score #countdown data matches 3 as @a[scores={gm=0..2},distance=..12] run function minekart:bossbar/load

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

execute as @a run function minekart:bossbar/loop


execute as @a[scores={dev=1..},tag=!dev] run tellraw @s "§eDev-Mode aktiviert"
execute as @a[scores={dev=1..},tag=dev] run tellraw @s "§eDev-Mode deaktiviert"
execute as @a[scores={dev=1..},tag=!dev] run tag @s add dev2
execute as @a[scores={dev=1..},tag=dev] run tag @s remove dev
tag @a[tag=dev2] add dev
tag @a[tag=dev2] remove dev2
execute as @a[scores={dev=1..}] run scoreboard players enable @s dev
execute as @a[scores={dev=1..}] run scoreboard players set @s dev 0

execute unless entity @e[tag=!finished,tag=com_player] unless entity @a[tag=!finished] run function minekart:load_gm
