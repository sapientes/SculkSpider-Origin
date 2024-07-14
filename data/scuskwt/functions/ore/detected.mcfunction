playsound block.note_block.bell block @a
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0 20
summon shulker ~ ~-1 ~ {Tags:["scuskwt.ore"],Glowing:1b,Silent:1b,NoAI:1b,NoGravity:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:999999999,ShowParticles:false}]}
power grant @e[type=shulker,tag=scuskwt.ore,limit=1,sort=nearest] scuskwt:glowore