execute as @a[team=] run team join lobby @s
execute as @a[scores={static.leave=1..}] run team join lobby
execute as @a[scores={static.leave=1..}] run tp @s -4 64 -4 0 0
execute as @a[scores={static.leave=1..}] run clear @s
execute as @a[scores={static.leave=1..}] run effect clear @s
execute as @a[scores={static.leave=1..}] run effect give @s saturation 1000000 10 true
execute as @a[scores={static.leave=1..}] run scoreboard players set @s crt.deads 0
execute as @a[scores={static.leave=1..}] run scoreboard players reset @s static.leave
