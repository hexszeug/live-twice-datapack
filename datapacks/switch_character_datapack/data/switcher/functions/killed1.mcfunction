#killed the first character
scoreboard players set @s crt.deads 1

execute as @s run function switcher:switch
clear @s snowball

scoreboard players set @s[x=0,y=62,z=0,dx=48,dy=48,dz=48] static.deaths 0
#scoreboard players set @s crtB.health 20
