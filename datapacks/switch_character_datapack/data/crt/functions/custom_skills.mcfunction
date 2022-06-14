execute as @a[scores={static.heal=1..}] run scoreboard players add @s crtB.health 12
execute as @a[scores={static.heal=1..}] if score @s crtB.health matches 21.. run scoreboard players set @s crtB.health 20
execute as @a[scores={static.heal=1..}] run effect give @s minecraft:poison 3 1 true
execute as @a[scores={static.heal=1..}] run scoreboard players reset @s static.heal

execute as @a[team=ghost] if data entity @s {SelectedItem:{id:"minecraft:diamond_sword"}} run effect clear @s minecraft:weakness
execute as @a[team=ghost] unless data entity @s {SelectedItem:{id:"minecraft:diamond_sword"}} run effect give @s weakness 1000000 255 true
