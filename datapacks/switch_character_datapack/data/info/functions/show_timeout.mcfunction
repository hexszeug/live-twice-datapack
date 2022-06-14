execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches -100..-80 run xp set @s 5 levels
execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches -80..-60 run xp set @s 4 levels
execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches -60..-40 run xp set @s 3 levels
execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches -40..-20 run xp set @s 2 levels
execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches -20..-1 run xp set @s 1 levels
execute as @a unless score @s crt.deads matches 1.. unless entity @s[team=lobby] if score @s switch.timeout matches 0 run xp set @s 0 levels
execute as @a if score @s crt.deads matches 1.. run xp set @s 0 levels
execute as @a if entity @s[team=lobby] run xp set @s 0 levels
