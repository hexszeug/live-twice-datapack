execute unless entity @a[team=!lobby] store result score #online var run list
execute unless score #online var = #old_online var run function id:give
execute store result score #old_online var run scoreboard players get #online var
