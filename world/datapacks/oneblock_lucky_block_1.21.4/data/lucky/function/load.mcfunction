tellraw @a {"text": "My Code is Load", "color": "RED"}

### Setup Values ###

scoreboard objectives add Panel dummy


### Setup lucky block regenation ###

summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["commander"]}
setblock 0 64 0 myluckyblock:my_lucky_block