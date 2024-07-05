execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s speed 150
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 1}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.amethyst_block.break voice @s

execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @n[distance=1..] speed 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 2}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.amethyst_block.break voice @s

execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{components: {"minecraft:custom_model_data": 0}, id: "minecraft:warped_fungus_on_a_stick"}}] run playsound minecraft:block.anvil.land voice @s ~ ~ ~ 1 1 1


execute as @a[scores={item.used=1..}] run say @s Item
execute as @a[scores={item.used=1..}] run scoreboard players reset @s item.used
