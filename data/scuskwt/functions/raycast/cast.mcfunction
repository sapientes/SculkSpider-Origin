# Start of the raycast
# Give actor tag
tag @s add kweb_rayactor
# Give target tag
execute as @e[type=marker,tag=kweb_pivotend] if score @s kweb_id = @e[type=marker,tag=kweb_rayactor,limit=1,sort=nearest] kweb_id run tag @s add kweb_raytarget

# Start raycasting
execute anchored eyes facing entity @e[type=marker,tag=kweb_raytarget,limit=1,sort=nearest] eyes unless entity @e[type=marker,tag=kweb_raytarget,distance=..1] positioned ^ ^ ^1 run function kweb:raycast/move
# End of raycast

# Remove tags
tag @e[type=marker,tag=kweb_pivotend] remove kweb_raytarget
tag @s remove kweb_rayactor