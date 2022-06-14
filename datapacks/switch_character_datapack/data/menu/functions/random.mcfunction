scoreboard players remove #random_index var 1
#tellraw @a {"score":{"name":"#random_index","objective":"var"}}
summon minecraft:armor_stand 0 2 0 {Tags:["random"]}
execute store result score @e[tag=!used,tag=random,limit=1] var run scoreboard players get #random_index var
tag @e[tag=!used,tag=random] add used
execute if score #random_index var matches 2.. run function menu:random
