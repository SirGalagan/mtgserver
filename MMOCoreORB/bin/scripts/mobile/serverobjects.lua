-- Conversations
includeFile("conversations.lua")

-- Dress Groups - Must be loaded before mobiles
includeFile("dressgroup/serverobjects.lua")

--New Content
includeFile("custom_content/serverobjects.lua")

-- Creatures
includeFile("corellia/serverobjects.lua")
includeFile("dantooine/serverobjects.lua")
includeFile("dathomir/serverobjects.lua")
includeFile("endor/serverobjects.lua")
includeFile("event/serverobjects.lua")
includeFile("herald/serverobjects.lua")
includeFile("lok/serverobjects.lua")
includeFile("misc/serverobjects.lua")
includeFile("naboo/serverobjects.lua")
includeFile("pet/serverobjects.lua")
includeFile("quest/serverobjects.lua")
includeFile("rori/serverobjects.lua")
includeFile("space/serverobjects.lua")
includeFile("talus/serverobjects.lua")
includeFile("tatooine/serverobjects.lua")
includeFile("thug/serverobjects.lua")
includeFile("townsperson/serverobjects.lua")
includeFile("tutorial/serverobjects.lua")
includeFile("yavin4/serverobjects.lua")

includeFile("faction/serverobjects.lua")
includeFile("dungeon/serverobjects.lua") 

-- Weapons
includeFile("weapon/serverobjects.lua") 

-- Spawn Groups
includeFile("spawn/serverobjects.lua")

-- Trainer
includeFile("trainer/serverobjects.lua")

-- Mission
includeFile("mission/serverobjects.lua")

-- Lairs
includeFile("lair/serverobjects.lua")

-- Outfits
includeFile("outfits/serverobjects.lua")
-- SirGalagan
includeFile("outfits/ahsoka_outfit.lua")
includeFile("shuttle_service.lua")
includeFile("fixer.lua")
includeFile("r3p5.lua")
includeFile("anakin_skywalker.lua")
includeFile("ahsoka_tano.lua")
includeFile("luke1.lua")
includeFile("luke2.lua")
includeFile("luke3.lua")
includeFile("luke4.lua")
includeFile("imp_atst_lvl18.lua")
includeFile("vader_lvl15.lua")
includeFile("luke_lvl15.lua")
includeFile("reb_troop_lvl10.lua")
includeFile("imp_st_lvl10.lua")
includeFile("ahsoka.lua")
includeFile("eventhandler.lua")
includeFile("bh1.lua")
includeFile("bh2.lua")
includeFile("md7z.lua")
includeFile("om5_npc.lua")
includeFile("test1.lua")
includeFile("test2.lua")
includeFile("test3.lua")
includeFile("test4.lua")
includeFile("seron_kai_npc.lua")
includeFile("jedi_master_vantos.lua")
includeFile("mysterious_stranger.lua")

-- Custom content - Loads last to allow for overrides
includeFile("../custom_scripts/mobile/serverobjects.lua")
