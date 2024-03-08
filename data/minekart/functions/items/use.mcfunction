execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}] run scoreboard players set @s speed 150
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}] run playsound minecraft:block.amethyst_block.break voice @s

execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:2}}}] run scoreboard players set @p[distance=1..] speed 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:2}}}] run scoreboard players set @s item.collected 0
execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:2}}}] run playsound minecraft:block.amethyst_block.break voice @s

execute as @a[scores={item.used=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:0}}}] run playsound minecraft:block.anvil.land voice @s


execute as @a[scores={item.used=1..}] run scoreboard players reset @s item.used