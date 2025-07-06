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

