# Summon marker, give it id, rotate it
summon marker ~ ~ ~ {Tags:["kweb_webline","kweb_new_webline","kweb_web"]}
execute store result score @e[type=marker,tag=kweb_new_webline] kweb_id run scoreboard players get @s kweb_id
tp @e[type=marker,tag=kweb_new_webline] ~ ~ ~ ~ ~
tag @e[type=marker,tag=kweb_new_webline] remove kweb_new_webline

# Move and recurse until we get to the other pivot
execute unless entity @e[type=marker,tag=kweb_raytarget,distance=..1] positioned ^ ^ ^1 run function kweb:raycast/move