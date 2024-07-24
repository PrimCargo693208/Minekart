
clear @s warped_fungus_on_a_stick[minecraft:custom_data={"namespace":"minekart"}]
execute if score @s item.collected matches 0 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name='{"italic":false,"text":"0"}',custom_model_data=0,lore=['{"color":"blue","italic":true,"text":"Minekart 2"}'],custom_data={"namespace":"minekart"}] 1
execute if score @s item.collected matches 1 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name='{"italic":false,"text":"1"}',custom_model_data=1,lore=['{"color":"blue","italic":true,"text":"Minekart 2"}'],custom_data={"namespace":"minekart"}] 1
execute if score @s item.collected matches 2 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name='{"italic":false,"text":"2"}',custom_model_data=2,lore=['{"color":"blue","italic":true,"text":"Minekart 2"}'],custom_data={"namespace":"minekart"}] 1
