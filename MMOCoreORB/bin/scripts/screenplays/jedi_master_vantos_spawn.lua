JediMasterVantosSpawn = ScreenPlay:new {
  numberOfActs = 1,
}

registerScreenPlay("JediMasterVantosSpawn", true)

function JediMasterVantosSpawn:start()
  if (isZoneEnabled("corellia")) then
    self:spawnHut()
    self:spawnStranger()
    self:spawnNPC()
  end
end

function JediMasterVantosSpawn:spawnHut()
  spawnSceneObject("corellia", "object/building/tatooine/housing_tatt_style01_small.iff", -5640, 27, -6665, 0, 0)
end

function JediMasterVantosSpawn:spawnStranger()
  spawnMobile("corellia", "mysterious_stranger_npc", 600, 63, 28, -4723, 0, 360)
end

function JediMasterVantosSpawn:spawnNPC()
  spawnMobile("corellia", "jedi_master_vantos_npc", 600, -5639, 28, -6654, 0, 0)
end

