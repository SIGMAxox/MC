### Lucky regenation ###

execute as @e[tag=commander] at @p if block 0 64 0 minecraft:air if entity @e[type=player,nbt={OnGround:0b}] run tp @p[x=0,y=65,z=0,dx=0,dy=0,dz=0] ~ ~0.20 ~
execute as @e[tag=commander] at @s unless block 0 64 0 lucky:lucky_block run setblock 0 64 0 lucky:lucky_block
