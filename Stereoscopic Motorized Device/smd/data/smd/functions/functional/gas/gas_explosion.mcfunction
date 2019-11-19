particle minecraft:explosion ~ ~ ~ 0.6 0.6 0.6 0 5
particle minecraft:flame ~ ~ ~ 0.6 0.6 0.6 0 50
summon minecraft:fireball ~ ~0.1 ~ {direction:[0d,-10d,0d],Motion:[0d,-1d,0d],ExplosionPower:2}
summon minecraft:chicken ~ ~ ~ {Age:-32768s,Tags:[explosion_hit_point],NoGravity:1,NoAI:1,DeathLootTable:"",Silent:1,ActiveEffects:[{ShowParticles:0b,Duration:1000,Id:14b}]}