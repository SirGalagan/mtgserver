seron_kai_convo_handler = conv_handler:new {}

function seron_kai_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    local convoTemplate = LuaConversationTemplate(pConvTemplate)

    if readData(SceneObject(pPlayer):getObjectID() .. ":seronkai:completed") == 1 then
        return convoTemplate:getScreen("already_granted")
    end

    return convoTemplate:getScreen("greeting")
end

function seron_kai_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()

	if (screenID == "grant_power") then
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Your potential has been unlocked and the force is now flow through you!")
		if not CreatureObject(pPlayer):hasSkill("force_title_jedi_novice") then
			local pGhost = CreatureObject(pPlayer):getPlayerObject() 
			if pGhost ~= nil then
			   PlayerObject(pGhost):setJediState(1)
			end
			awardSkill(pPlayer, "force_title_jedi_novice")
		end
		CreatureObject(pPlayer):awardExperience("force", 500, true)
                local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
		giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_one_handed_s1.iff", -1)
		CreatureObject(pPlayer):sendSystemMessage("*Seron closes his eyes, holding out a lightsaber hilt.* Take my lightsaber. Present it to Master Vantos on Corellia, he will continue your training. Where I am going, such things are no longer needed...")
	end
	if (screenID == "conv_end") then
		createEvent(10000, "seron_kai_convo_handler", "removeNpc", pNpc)
		SceneObject(pNpc):destroyObjectFromWorld() -- Make Seron disappear
	end
    return pConvScreen
end

