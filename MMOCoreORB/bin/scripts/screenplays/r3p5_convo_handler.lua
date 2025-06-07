r3p5_convo_handler = conv_handler:new {}

function r3p5_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("r3p5_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function r3p5_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    print("r3p5_convo_handler:runScreenHandlers")
    if screenID == "fix_me" then
	 print("Fix starts...")
	 -- Adding skills:
	 -- awardSkill(pPlayer, "force_title_jedi_rank_01")


	 local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	 -- Adding XP
	 -- CreatureObject(pPlayer):awardExperience("jedi_general", 50000, true)
	local pItem = giveItem(pInventory, "object/tangible/crafting/station/jedi_tool.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
	giveItem(pInventory, "object/tangible/veteran_reward/resource.iff", -1)
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

