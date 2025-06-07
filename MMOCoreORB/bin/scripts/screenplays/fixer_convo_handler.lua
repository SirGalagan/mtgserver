fixer_convo_handler = conv_handler:new {}

function fixer_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("fixer_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function fixer_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()

    print("fixer_convo_handler:runScreenHandlers")
    if screenID == "fix_me" then
	 print("Fix starts...")
	 -- Adding skills:
	 -- awardSkill(pPlayer, "force_title_jedi_rank_01")
	-- self:jedi_fast_track(pPlayer)
	
	-- for another time...
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	 -- Adding XP
	 -- CreatureObject(pPlayer):awardExperience("jedi_general", 50000, true)
	--local pItem = giveItem(pInventory, "object/tangible/crafting/station/jedi_tool.iff", -1)
	giveItem(pInventory, "object/tangible/deed/vehicle_deed/speederbike_deed.iff", -1)
	giveItem(pInventory, "object/tangible/deed/vehicle_deed/jetpack_deed.iff", -1)
	--giveItem(pInventory, "", -1)
	--giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	--giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	--giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	--giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	--giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	-- Kyber Crystals
	--if (pInventory ~= nil) then
	--     local crystalID = createLoot(pInventory, "color_crystals", 1, true)
	--     if (crystalID ~= nil) then
	--     	local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
	--     	colorCrystal:setColor(0) -- Optional: sets it to a specific color
	--     	colorCrystal:updateCrystal(0)
	--     end
    	--end
	
	-- Give item directly
	--local pItem = giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_one_handed_gen1.iff", -1)

    end -- fix_me
    print("Fix ends here...")
    return pConvScreen
end


function fixer_convo_handler:jedi_fast_track(pPlayer)

    print("jedi_fast_track starts")
    local pGhost = CreatureObject(pPlayer):getPlayerObject()
    CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Your potential has been unlocked and the force is now flow through you!")
    awardSkill(pPlayer, "force_title_jedi_novice")
    awardSkill(pPlayer, "force_title_jedi_rank_01")
    awardSkill(pPlayer, "force_title_jedi_rank_02")
    writeScreenPlayData(pPlayer, "PadawanTrials", "completedTrials", 1)
    PlayerObject(pGhost):setJediState(2)
    awardSkill(pPlayer, "outdoors_creaturehandler_novice")
    awardSkill(pPlayer, "force_discipline_light_saber_two_hand_02")
    awardSkill(pPlayer, "force_discipline_powers_lightning_01")
    awardSkill(pPlayer,"outdoors_creaturehandler_novice")
    
    local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
    if not pInventory or SceneObject(pInventory):isContainerFullRecursive() then
        CreatureObject(pPlayer):sendSystemMessage("@jedi_spam:inventory_full_jedi_robe")
    else
        local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_jedi_padawan.iff", -1)
        --local pItem = giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_training.iff", -1)
    end
    -- Add padawan novice skills
    awardSkill(pPlayer, "force_abilities_novice")
    awardSkill(pPlayer, "force_defense_novice")
    awardSkill(pPlayer, "lightsaber_1hand_novice")
    
    CreatureObject(pPlayer):awardExperience("creaturehandler",200000,true)
    CreatureObject(pPlayer):awardExperience("jedi_general",200000,true)
    -- Ligthsaber crafting materials
    local pItem = giveItem(pInventory, "object/tangible/crafting/station/jedi_tool.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
    
    -- Crystals
    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(0) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(0)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(1) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(1)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(2) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(2)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(3) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(3)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(4) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(4)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(5) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(5)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(6) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(6)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(10) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(10)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(12) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(12)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(31) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(31)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(47) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(47)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(17) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(17)

    local crystalID = createLoot(pInventory, "color_crystals", 1, true)
    local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
    colorCrystal:setColor(25) -- Optional: sets it to a specific color
    colorCrystal:updateCrystal(25)
 end
