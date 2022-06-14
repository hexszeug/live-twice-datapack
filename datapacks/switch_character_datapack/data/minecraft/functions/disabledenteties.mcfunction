kill @e[type=snowball]
kill @e[type=item,tag=!nokill]
execute unless entity @a[team=!lobby] as @e[type=!minecraft:player,x=0,y=62,z=0,dx=48,dy=48,dz=48] run kill @s
