execute as @s[nbt={SelectedItemSlot:2}] run scoreboard players set @s crtA.type 2
execute as @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s crtB.type 2
execute as @s[nbt={SelectedItemSlot:5}] run scoreboard players set @s menu.catalog 2
execute unless data entity @s {SelectedItemSlot:2} unless data entity @s {SelectedItemSlot:3} unless data entity @s {SelectedItemSlot:5} run tellraw @s {"text":"Failed to change kit! Take a look above.","color":"#dd2200"}