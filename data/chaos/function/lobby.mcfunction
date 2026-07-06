#this comment is here to tell you that this generates the spawn.
setworldspawn 0 301 0
gamerule spawnRadius 0

fill -5 306 11 -4 301 -11 cyan_stained_glass
fill -4 306 -10 -4 301 10 air
fill 4 306 11 5 301 -11 cyan_stained_glass
fill 4 306 -10 4 301 10 air
fill -4 306 -12 4 301 -12 cyan_stained_glass
fill 4 306 12 -4 301 12 cyan_stained_glass

fill -4 300 10 -4 300 -10 light_gray_stained_glass
fill 4 300 10 4 300 -10 light_gray_stained_glass
fill -3 300 -11 3 300 -11 light_gray_stained_glass
fill 3 300 11 -3 300 11 light_gray_stained_glass

fill -3 300 10 3 300 4 red_stained_glass
fill -3 300 3 3 300 -3 glass
fill -3 300 -4 3 300 -10 blue_stained_glass
setblock 0 300 0 black_stained_glass

fill 2 298 -7 2 298 -8 smooth_quartz
fill -2 298 -7 -2 298 -8 smooth_quartz
fill 1 298 -9 -1 298 -9 smooth_quartz

fill -2 298 -3 2 298 -3 smooth_quartz
fill -2 298 -5 2 298 -5 smooth_quartz
setblock 0 298 -4 smooth_quartz

fill -2 298 1 1 298 1 smooth_quartz
fill -2 298 -1 1 298 -1 smooth_quartz
setblock 0 298 0 smooth_quartz
setblock 2 298 0 smooth_quartz

fill -2 298 3 2 298 5 smooth_quartz
fill 1 298 4 -1 298 4 air

fill -2 298 7 2 298 9 smooth_quartz
fill 1 298 8 1 298 9 air
fill -1 298 7 -1 298 8 air

#UHC letters
fill 4 305 -6 4 301 -4 smooth_quartz
fill 4 302 -5 4 305 -5 air
setblock 4 301 -6 smooth_quartz_stairs[facing=south,half=top]
setblock 4 301 -4 smooth_quartz_stairs[facing=north,half=top]
setblock 4 305 -6 smooth_quartz_stairs[facing=south,half=bottom]
setblock 4 305 -4 smooth_quartz_stairs[facing=north,half=bottom]

fill 4 301 -1 4 305 1 smooth_quartz
fill 4 301 0 4 302 0 air
fill 4 304 0 4 305 0 air
setblock 4 301 -1 smooth_quartz_stairs[facing=north,half=top]
setblock 4 301 1 smooth_quartz_stairs[facing=south,half=top]
setblock 4 305 -1 smooth_quartz_stairs[facing=north,half=bottom]
setblock 4 305 1 smooth_quartz_stairs[facing=south,half=bottom]

fill 4 304 4 4 302 4 smooth_quartz
setblock 4 301 4 smooth_quartz_stairs[facing=south,half=top]
setblock 4 305 4 smooth_quartz_stairs[facing=south,half=bottom]
setblock 4 301 5 smooth_quartz_stairs[facing=north,half=bottom]
setblock 4 305 5 smooth_quartz_stairs[facing=north,half=top]
setblock 4 301 6 smooth_quartz_slab[type=bottom]
setblock 4 305 6 smooth_quartz_slab[type=top]

#jump
setblock -4 301 -10 quartz_stairs[facing=west,half=bottom]
setblock -4 302 -7 quartz_stairs[facing=south,half=top]
setblock -4 302 -3 quartz_slab[type=top]
setblock -4 302 2 quartz_stairs[facing=west,half=top]
setblock -4 303 6 quartz_slab[type=top]
setblock -3 302 11 iron_trapdoor[facing=east,half=top,open=true]
setblock 0 303 11 quartz_stairs[facing=south,half=top]
setblock 0 304 11 snow
setblock 4 303 7 ladder[facing=west]
setblock 4 303 6 amethyst_cluster[facing=west]
setblock 4 306 6 barrier
setblock 4 302 5 barrier
setblock 4 302 6 barrier