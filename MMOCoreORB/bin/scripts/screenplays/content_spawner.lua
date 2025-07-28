ContentSpawner = ScreenPlay:new {
  numberOfActs = 1,
}

registerScreenPlay("ContentSpawner", true)

function ContentSpawner:start()

  --if (isZoneEnabled("corellia")) then
  --  self:spawnCorellianGuestNPC()
  --end


  print("Content Spawner Screenplay")
  if (isZoneEnabled("naboo")) then
    self:spawnNabooNPCs()
  end

  if (isZoneEnabled("corellia")) then
    self:spawnCorelliaNPCs()
  end  

  if (isZoneEnabled("tatooine")) then
    self:spawnTatooineNPCs()
  end

  if (isZoneEnabled("dungeon2")) then
    self:spawndungeon2NPCs()
    self:spawnActiveAreaStarDestroyer()
  end

end


function ContentSpawner:spawnTatooineNPCs()
  -- Home on Tatooine
  spawnMobile("tatooine", "shuttle_service", 0, -3834, 2, -6293, 0, 0)
  -- Jabba's palace
  spawnMobile("tatooine", "shuttle_service", 0, -5873, 90, -6174, 0, 0)
end

function ContentSpawner:spawnCorelliaNPCs()
  -- Home on Corellia
  spawnMobile("corellia", "shuttle_service", 0, -1629, 21, -5621, 0, 0)
  -- Oho's Jedi trainer
  spawnMobile("corellia", "shuttle_service", 0, -3448, 78, 3210, 0, 0)
  -- Lyra's Jedi trainer
  spawnMobile("corellia", "shuttle_service", 0, -164, 28, -4712, 0, 0)
end

function ContentSpawner:spawnNabooNPCs()
  -- Home on Naboo
  spawnMobile("naboo", "shuttle_service", 0, 79, 14, 134, 0, 0)
end


function ContentSpawner:spawndungeon2NPCs()
  -- Imperial Star Destroyer Event (Jedi vs Imperial)
  
  -- Main hangar (landing area)
  -- spawnMobile("dungeon2", "hangar_officer", 0, 14.3052, 172.335, 325.194, 60, 14201228)
  -- spawnMobile("dungeon2", "imp_st_lvl15_enemy", 0, 13.3031, 172.335, 323.178, 60, 14201228)
  -- spawnMobile("dungeon2", "imp_st_lvl15_enemy", 0, 12.4795, 172.335, 326.127, 60, 14201228)
  ------- 14201228 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -45.044, 172.334, 318.673, 85, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -44.424, 172.334, 325.029, 84, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -1.452, 172.334, 275.565, 48, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 2.973, 172.334, 277.085, 206, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 45.162, 172.334, 312.085, 187, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 45.163, 172.334, 303.616, 293, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 44.212, 172.334, 240.365, 279, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 45.163, 172.334, 233.737, 270, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -45.164, 172.334, 233.566, 87, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -44.461, 172.334, 242.003, 92, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 12.479, 172.335, 326.127, 60, 14201228)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 13.303, 172.335, 323.178, 60, 14201228)
  spawnMobile("dungeon2", "hangar_officer", 300, 14.305, 172.335, 325.194, 60, 14201228)
  ------- 14201229 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 88.643, 172.334, 319.389, 179, 14201229)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 85.906, 172.459, 302.4, 278, 14201229)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 87.217, 172.459, 304.388, 350, 14201229)
  ------- 14201230 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 81.409, 171.834, 370.662, 142, 14201230)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 91.124, 172.834, 359.444, 57, 14201230)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 87.686, 171.834, 358.591, 193, 14201230)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 87.422, 171.834, 355.048, 302, 14201230)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 84.848, 171.834, 343.97, 214, 14201230)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 89.434, 171.834, 344.024, 187, 14201230)
  ------- 14201231 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 17.214, 170.834, 364.385, 179, 14201231)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 20.074, 170.834, 365.68, 50, 14201231)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 49.809, 171.084, 357.335, 237, 14201231)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 55.024, 171.334, 360.801, 276, 14201231)
  ------- 14201232 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 13.365, 170.584, 420.772, 61, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 10.495, 170.584, 405.689, 122, 14201232)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 30.546, 170.584, 406.002, 281, 14201232)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 11.682, 170.584, 398.263, 221, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 29.766, 170.714, 396.307, 287, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 10.74, 170.772, 385.2, 137, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 8.108, 170.584, 381.437, 311, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 30.172, 170.584, 381.041, 331, 14201232)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 29.816, 170.772, 385.51, 194, 14201232)
  ------- 14201233 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -55.416, 172.085, 329.835, 359, 14201233)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -56.526, 172.084, 350.79, 101, 14201233)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -57.643, 172.084, 345.781, 110, 14201233)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -29.704, 170.709, 369.956, 100, 14201233)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -3.407, 170.585, 369.482, 87, 14201233)
  ------- 14201234 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -68.772, 172.334, 329.714, 358, 14201234)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -72.625, 172.334, 332.585, 90, 14201234)
  ------- 14201235 -------
  ------- 14201236 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -79.185, 172.334, 322.69, 77, 14201236)
  ------- 14201237 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -65.703, 172.335, 244.784, 170, 14201237)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -73.258, 172.335, 246.13, 84, 14201237)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -74.251, 172.335, 236.671, 22, 14201237)
  ------- 14201238 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -88.574, 172.209, 256.01, 47, 14201238)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -86.516, 172.085, 266.585, 172, 14201238)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -80.523, 172.335, 259.974, 5, 14201238)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -75.112, 172.335, 251.579, 345, 14201238)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -73.409, 172.335, 253.595, 141, 14201238)
  ------- 14201239 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 84.706, 173.834, 197.109, 156, 14201239)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 88.223, 173.834, 205.648, 355, 14201239)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 84.992, 173.834, 205.056, 353, 14201239)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 81.258, 173.709, 221.924, 321, 14201239)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 83.846, 173.584, 225.984, 316, 14201239)
  ------- 14201240 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 64.431, 173.834, 138.595, 302, 14201240)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 66.232, 173.834, 138.191, 9, 14201240)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 59.232, 173.835, 174.444, 273, 14201240)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 71.975, 173.835, 172.811, 173, 14201240)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 66.253, 173.835, 187.953, 217, 14201240)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 67.301, 173.834, 208.357, 299, 14201240)
  ------- 14201241 -------
  ------- 14201242 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 81.456, 173.835, 97.361, 118, 14201242)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 77.5, 173.835, 127.857, 13, 14201242)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 82.223, 173.835, 127.073, 21, 14201242)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 82.5, 173.835, 72.227, 276, 14201242)
  ------- 14201243 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 80.835, 173.835, 145.423, 205, 14201243)
  ------- 14201244 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 91.25, 173.834, 115.272, 266, 14201244)
  ------- 14201245 -------
  ------- 14201246 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 80.386, 173.835, 63.736, 346, 14201246)
  ------- 14201247 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 52.602, 173.835, 136.552, 323, 14201247)
  ------- 14201248 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 52.521, 173.835, 117.27, 176, 14201248)
  ------- 14201249 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 72.044, 173.835, 99.927, 48, 14201249)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 58.973, 173.834, 96.255, 207, 14201249)
  ------- 14201250 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 65.505, 173.835, 81.884, 169, 14201250)
  ------- 14201251 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 55.25, 173.835, 73.202, 122, 14201251)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 52.858, 173.835, 75.087, 181, 14201251)
  ------- 14201252 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 68.828, 173.835, 43.126, 2, 14201252)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 66.089, 173.835, 41.168, 357, 14201252)
  ------- 14201253 -------
  ------- 14201254 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 46.637, 175.334, -19.415, 208, 14201254)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 62.041, 174.709, -13.894, 271, 14201254)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 69.5, 173.834, 10.778, 261, 14201254)
  ------- 14201255 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 15.119, 175.334, -22.617, 93, 14201255)
  ------- 14201256 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 8.014, 175.334, -34.211, 8, 14201256)
  ------- 14201257 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -0.685, 175.834, -42.944, 24, 14201257)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -2.501, 175.459, -25.586, 89, 14201257)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 3.828, 175.334, -16.034, 99, 14201257)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -2.943, 175.334, -14.444, 223, 14201257)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 0.056, 175.334, -12.971, 178, 14201257)
  ------- 14201258 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 4.902, 177.334, -49.742, 264, 14201258)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -0.037, 177.334, -58.528, 355, 14201258)
  ------- 14201259 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -8.498, 175.334, -25.266, 358, 14201259)
  ------- 14201260 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -10.335, 175.334, -32.85, 355, 14201260)
  ------- 14201261 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -66.62, 173.834, 12.584, 46, 14201261)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -49.333, 175.334, -20.6, 273, 14201261)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -29.431, 175.334, -22.139, 275, 14201261)
  ------- 14201262 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -67.883, 173.834, 26.755, 278, 14201262)
  ------- 14201263 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -25.826, 173.834, 55.123, 313, 14201263)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -0.717, 173.834, 33.835, 304, 14201263)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -14.596, 173.834, 29.101, 162, 14201263)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 17.224, 173.834, 48.114, 143, 14201263)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 17.224, 173.834, 48.114, 143, 14201263)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 8.598, 173.834, 67.705, 263, 14201263)
  ------- 14201264 -------
  ------- 14201265 -------
  spawnMobile("dungeon2", "lift_operator", 300, -53.12, 173.834, 20.289, 102, 14201265)
  ------- 14201266 -------
  ------- 14201267 -------
  ------- 14201268 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 20.148, 140.584, 372.687, 324, 14201268)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 20.119, 140.584, 357.174, 19, 14201268)
  ------- 14201269 -------
  ------- 14201270 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 18.748, 140.834, 409.358, 314, 14201270)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 18.706, 140.834, 396.633, 357, 14201270)
  ------- 14201271 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 40.794, 140.584, 438.948, 122, 14201271)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 49.898, 140.584, 418.996, 155, 14201271)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 42.756, 140.584, 407.085, 24, 14201271)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 19.377, 140.584, 415.538, 90, 14201271)
  ------- 14201272 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 28.829, 140.584, 439.998, 343, 14201272)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 29.712, 140.584, 436.513, 163, 14201272)
  ------- 14201273 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 18.888, 140.584, 449.402, 258, 14201273)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 14.251, 140.584, 432.53, 357, 14201273)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 21.535, 140.584, 431.585, 349, 14201273)
  ------- 14201274 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -8.216, 140.585, 484.696, 275, 14201274)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 9.509, 140.585, 484.589, 88, 14201274)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 36.972, 141.529, 470.749, 256, 14201274)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 41.799, 141.584, 487.236, 239, 14201274)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 32.657, 140.585, 490.629, 212, 14201274)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 34.236, 140.585, 488.149, 318, 14201274)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 26.732, 140.584, 464.601, 1, 14201274)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 27.249, 140.584, 449.158, 68, 14201274)
  ------- 14201275 -------
  spawnMobile("dungeon2", "lift_operator", 300, 20.008, 170.584, 429.085, 182, 14201275)
  ------- 14201276 -------
  -- spawnMobile("dungeon2", "npc_helper", 300, 0.258, 453.608, 392.633, 333, 14201276)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 18.162, 453.608, 417.059, 8, 14201276)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 19.404, 453.608, 417.014, 266, 14201276)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -2.079, 453.608, 411.595, 91, 14201276)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -14.397, 453.608, 399.26, 91, 14201276)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 7.476, 453.608, 401.138, 114, 14201276)
  ------- 14201277 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 6.428, 453.608, 388.513, 255, 14201277)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -0.877, 453.608, 379.537, 6, 14201277)
  ------- 14201278 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -2.5, 453.608, 368.308, 93, 14201278)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 7.19, 453.608, 368.947, 32, 14201278)
  ------- 14201279 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -3.179, 453.608, 355.049, 136, 14201279)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -6.897, 453.608, 365.234, 175, 14201279)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -17.333, 453.733, 371.53, 61, 14201279)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -13.371, 453.608, 356.906, 43, 14201279)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -10.649, 453.608, 347.266, 215, 14201279)
  ------- 14201280 -------
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, 9.483, 453.608, 355.622, 354, 14201280)
  spawnMobile("dungeon2", "imp_officer_lvl15_enemy", 300, -0.273, 453.608, 340.001, 178, 14201280)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -8.825, 453.608, 341.893, 144, 14201280)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 9.435, 453.608, 341.377, 305, 14201280)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -2.375, 453.608, 328.083, 94, 14201280)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 2.374, 453.608, 328.095, 269, 14201280)
  spawnMobile("dungeon2", "sith_dark_jedi", 300, -0.015, 453.608, 322.07, 1, 14201280)
  ------- 14201281 -------
  ------- 14201282 -------
  ------- 14201283 -------
  ------- 14201284 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -22.822, 140.584, 518.731, 278, 14201284)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, 0.686, 140.584, 518.884, 90, 14201284)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -7.877, 140.585, 511.36, 178, 14201284)
  ------- 14201285 -------
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -8.14, 156.334, 554.045, 117, 14201285)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -8.644, 152.334, 526.29, 65, 14201285)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -9.848, 137.771, 538.214, 182, 14201285)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -7.723, 122.334, 574.623, 2, 14201285)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -1.984, 140.584, 531.085, 266, 14201285)
  spawnMobile("dungeon2", "imp_st_lvl15_enemy", 300, -3.688, 140.584, 525.131, 14, 14201285)



end

function ContentSpawner:enteredSpawnAreaStarDestroyer()
  print("pSpawnArea1 - Triggered")	
  --local spawnPoint = getSpawnArea("dungeon2", 0, 0, self.minimumDistance, self.maximumDistance, 20, 10, true)

  --spawnMobile("dungeon2", "luke_lvl15_enemy", 300, 15.3052, 172.335, 324.194, 60, 14201228)
  --spawnMobile("dungeon2", "luke_lvl15_enemy", 300, 14.4795, 172.335, 325.127, 60, 14201228)
end


function ContentSpawner:spawnActiveAreaStarDestroyer()
  print("spawnActiveAreaStarDestroyer")
  local pSpawnArea1 = spawnSceneObject("dungeon2", "object/active_area.iff", 14, 172, 325, 100, 14201228)
  
  if (pSpawnArea1 ~= nil) then
	  print("spawnActiveAreaStarDestroyer - Zone1 - Activate")
          createObserver(ENTEREDAREA, "StarDestroyerScreenplay", "enteredSpawnAreaStarDestroyer", pSpawnArea1)
  end
end


