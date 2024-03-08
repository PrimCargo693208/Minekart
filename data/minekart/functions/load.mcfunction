say Hallo! ☺
say Minekart geht in die 2. Runde!!! 🎉🥳

function minekart:load_items

scoreboard objectives add speed dummy
scoreboard objectives add pos dummy ["Position on Road"]
scoreboard objectives add time_ago.item_collect dummy
scoreboard objectives add time_ago.sound_played dummy
scoreboard objectives add free.hand dummy
scoreboard objectives add free.hotbar8 dummy
scoreboard objectives add item.used minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add item.collected dummy

scoreboard players add @a speed 0
scoreboard players add @a pos 0
scoreboard players add @a time_ago.item_collect 0
scoreboard players add @a time_ago.sound_played 0
scoreboard players add @a free.hand 0
scoreboard players add @a free.hotbar8 0
scoreboard players add @a item.collected 0

scoreboard objectives setdisplay sidebar pos
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s run tp @s ~ ~ ~ 0 0

tellraw @a  ["","[Server] ",{"text":"Reload","color":"dark_green","clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":" erfolgreich","color":"dark_green"}]