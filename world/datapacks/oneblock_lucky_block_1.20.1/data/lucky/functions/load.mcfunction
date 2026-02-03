tellraw @a {"text": "My Code is Load", "color": "RED"}

### Setup Values ###

kill @e[type=minecraft:armor_stand,tag=!shrieker]
scoreboard objectives add Panel dummy
execute unless score Wandering_trader Panel matches 0.. run scoreboard players set Wandering_trader Panel 3600
execute unless score Stray Panel matches 0.. run scoreboard players set Stray Panel 0
execute unless score Drowned Panel matches 0.. run scoreboard players set Drowned Panel 0
execute unless score Squid Panel matches 0.. run scoreboard players set Squid Panel 0
execute unless score Nether_skeleton Panel matches 0.. run scoreboard players set Nether_skeleton Panel 0
execute unless score random_limit Panel matches 0.. run scoreboard players set random_limit Panel 0
scoreboard players set random_outcome Panel 0

#scoreboard objectives setdisplay sidebar Panel

scoreboard objectives add transform_timer dummy
scoreboard objectives add Trades dummy

### Start procressing timer ###
schedule function obe:transform_timer 1s replace

### Setup lucky block regenation ###

summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["commander"]}
setblock 0 64 0 lucky:lucky_block

