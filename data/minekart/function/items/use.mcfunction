# 1 = Roter Pilz | Nur schnelle dürfen schneller fahren!
execute as @a[scores={item.used=1.., speed=60..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s speed 120
execute as @a[scores={item.used=1.., speed=60..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1.., speed=60..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.amethyst_block.break voice @s

# 2 = Banane (1) | Keine Cheats! Du darfst dich aber selber abwerfen. :)
execute as @a[scores={item.used=1.., speed=0..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run summon armor_stand ~ ~ ~ {Invisible:true,Small:true,Motion:[0.0,0.0,0.0],Tags:["mk2","minekart2","item.dropped","banana"],ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}]}
execute as @a[scores={item.used=1.., speed=0..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] as @n[tag=mk2,tag=item.dropped] at @s run function minekart:items/use/banana
execute as @a[scores={item.used=1.., speed=0..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1.., speed=0..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.amethyst_block.break voice @s

# 0 = Sei kein Geier!
execute as @a[scores={item.used=1.., speed=1}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 0}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.anvil.land voice @s ~ ~ ~ 1 1 1


execute as @a[scores={item.used=1..}] run say @s Item
execute as @a[scores={item.used=1..}] run scoreboard players reset @s item.used
function minekart:items/move
execute as @e[tag=mk2,tag=item.dropped] at @s if score @s data matches 20.. run function minekart:items/loop/banana