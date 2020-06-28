summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:[3mgcompressor]}
#look
summon minecraft:armor_stand ~ ~-1.06 ~ {Tags:[3mgcompressor_texture],Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6978073}}],DisabledSlots:2039583}
fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_wall_skull replace minecraft:barrel{Items:[{Slot:0b,tag:{3mgisGasCompressor:1b}}]}
#handover
summon armor_stand ~ ~-0.5 ~-0.06 {Tags:[3mgcompressor_cylinder],NoGravity:1,Invisible:1,ShowArms:1b,DisabledSlots:1973790,Pose:{RightArm:[270f,270f,0f],LeftArm:[90f,270f,0f]}}
summon armor_stand ~-0.45 ~0.1 ~ {Tags:[3mgcompressor_gas],NoGravity:1,Invisible:1,Small:1b,ShowArms:1b,DisabledSlots:1973790,Pose:{RightArm:[270f,270f,0f],LeftArm:[90f,270f,0f]}}