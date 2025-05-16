om5_convo_handler = conv_handler:new {}

function om5_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function om5_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()

    if screenID == "follow" then
        -- Correct way to make the NPC follow the player
    
	local playerFaction = CreatureObject(pPlayer):getFaction()
	if (playerFaction == FACTIONREBEL or playerFaction == FACTIONIMPERIAL) and not CreatureObject(pPlayer):isOnLeave() then
		CreatureObject(pNpc):setFaction(playerFaction)

		if CreatureObject(pPlayer):isOvert() then
			CreatureObject(pNpc):setPvpStatusBitmask(5)
		elseif CreatureObject(pPlayer):isCovert() then
			CreatureObject(pNpc):setPvpStatusBitmask(1)
		end
	end
	       -- Wife
        CreatureObject(pNpc):clearOptionBit(CONVERSABLE)
        AiAgent(pNpc):removeObjectFlag(AI_STATIONARY)
        AiAgent(pNpc):addObjectFlag(AI_NOAIAGGRO)
        AiAgent(pNpc):addObjectFlag(AI_ESCORT)
        AiAgent(pNpc):addObjectFlag(AI_FOLLOW)

        AiAgent(pNpc):setFollowObject(pPlayer)
        AiAgent(pNpc):setMovementState(AI_FOLLOWING)

        AiAgent(pNpc):setAITemplate()
	print ("all done for you!")
            print("AI Agent Info:")
	    local followObj = AiAgent(pNpc):getFollowObject()
if followObj then
    print("Follow Object ID: " .. SceneObject(followObj):getObjectID())  -- Get the Object ID
else
    print("Follow Object: None")
end
        --print("Follow Object: " .. AiAgent(pNpc):getFollowObject())  -- Will print the object ID the NPC is following
        print("Movement State: " .. AiAgent(pNpc):getMovementState())  -- Will print the movement state
        print("Target of Target ID: " .. AiAgent(pNpc):getTargetOfTargetID())  -- Will print the ID of the target's target

    end

    return pConvScreen
end

