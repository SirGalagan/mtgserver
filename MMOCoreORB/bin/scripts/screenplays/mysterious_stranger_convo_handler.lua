mysterious_stranger_convo_handler = conv_handler:new {}

function mysterious_stranger_convo_handler:runScreenHandlers(convoTemplate, player, npc, selectedOption, conversationScreen)
    local screenID = LuaConversationScreen(conversationScreen):getScreenID()
    local playerID = SceneObject(player):getObjectID()

    if screenID == "mark_waypoint" then
        local pGhost = CreatureObject(player):getPlayerObject()
        if (pGhost ~= nil) then
            PlayerObject(pGhost):addWaypoint("corellia", "Jedi Master Vantos", "", -5640, -6665, WAYPOINTYELLOW, true, true, 0)
        end

    elseif screenID == "teleport" then
        local newX = -5603
        local newY = 27
        local newZ = -6685
        SceneObject(player):teleport(newX, newY, newZ, 0)
    end

    return conversationScreen
end

