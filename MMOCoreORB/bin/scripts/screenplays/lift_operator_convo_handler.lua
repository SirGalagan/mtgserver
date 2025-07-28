lift_operator_convo_handler = conv_handler:new {}

function lift_operator_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("lift_operator_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function lift_operator_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()
    local NPCID = SceneObject(pNpc):getObjectID()
    local parentID = SceneObject(pNpc):getParentID()
    print("Lift ParentID: " .. parentID)
    if (screenID == "lets_go") then
	print("Let's go")
	--local playerTable = SceneObject(pNpc):getPlayersInRange(150)
	--if (#playerTable > 0) then
		--print("more than 0 players")
              --  for i = 1, #playerTable, 1 do
        	        --local pPlayer = playerTable[i]
			if (parentID == 14201265) then
				print("14201265 --> 14201267")
				CreatureObject(pPlayer):teleport(0, 0, 0, 14201267)
				--SceneObject(pPlayer):switchZone("dungeon2", 0, 0, 0, 14201267)
			end
			if (parentID == 14201275) then
				print("14201275 -> 14201275")
				CreatureObject(pPlayer):teleport(20.613, 453.358, 429.746, 14201275)
				--SceneObject(pPlayer):switchZone("dungeon2", 20.613, 453.358, 429.746, 14201275)
			end
		--end
	--end
    end

    return pConvScreen
end

