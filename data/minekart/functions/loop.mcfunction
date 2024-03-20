execute as @a store success score @s free.hand run data get entity @s SelectedItem
execute as @a[scores={speed=61..}] run scoreboard players set @s free.hand 0
execute as @a store success score @s free.hotbar8 run data get entity @s Inventory[8]

function minekart:items/use
function minekart:karts/player
function minekart:karts/com

function minekart:items/box

function minekart:ui/marker