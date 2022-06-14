execute if score #win_sound var matches ..-1 run scoreboard players add #win_sound var 1
execute if score #win_sound var matches -1 run stopsound @a master

execute if score #players_in var matches 1 as @a[team=!lobby] run function info:won
