execute store result score @a[limit=1,sort=random,scores={id=-1}] id run scoreboard players get #idcount id
scoreboard players add #idcount id 1
execute if entity @a[scores={id=-1}] run function id:loop
