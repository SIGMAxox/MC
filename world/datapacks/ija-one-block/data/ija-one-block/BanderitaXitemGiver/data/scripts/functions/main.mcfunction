## Imports
scoreboard objectives add item_timer dummy

# set custom time here (min. = 0; the lower the value, the faster the give timer):
scoreboard players set give_item item_timer 1200

scoreboard players add give item_timer 1
execute if score give item_timer >= give_item item_timer run scoreboard players set give item_timer 0
forceload add 0 0
setblock 0 255 0 chest
execute store result score rng item_timer run loot insert 0 255 0 loot scripts:rng

## Random item
execute if score give item_timer matches 0 if score rng item_timer matches 0 run give @a lucky:lucky_block