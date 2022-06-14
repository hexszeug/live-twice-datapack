execute as @a store result score @s att.max_health run attribute @s minecraft:generic.max_health base get 1
execute as @a unless score @s static.health = @s att.max_health store result score @s crtA.health run scoreboard players get @s static.health
execute as @a unless score @s static.health = @s att.max_health run function switcher:casehealth
