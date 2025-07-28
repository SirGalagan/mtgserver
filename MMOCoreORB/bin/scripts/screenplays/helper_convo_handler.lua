npc_helper_convo_handler = conv_handler:new {}

function npc_helper_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    -- print("npc_helper_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function npc_helper_convo_handler:truncateToThreeDecimals(num)
    return math.floor(num * 1000) / 1000
end

function npc_helper_convo_handler:truncateToInt(num)
    if num >= 0 then
        return math.floor(num)
    else
        return math.ceil(num)
    end
end


function npc_helper_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()
    local sceeneID = getSceneObject(14201228)
    local NPCID = SceneObject(pNpc):getObjectID()
    --[[
    print("pNpc World X:" .. SceneObject(pNpc):getWorldPositionX())
    print("pNpc World Y:" .. SceneObject(pNpc):getWorldPositionY())
    print("pNpc World Z:" .. SceneObject(pNpc):getWorldPositionZ())
    print("pNpc X:" .. SceneObject(pNpc):getPositionX())
    print("pNpc Y:" .. SceneObject(pNpc):getPositionY())
    print("pNpc Z:" .. SceneObject(pNpc):getPositionZ())
    print("pNpc ParentID:" .. SceneObject(pNpc):getParentID())
    print("pNpc Angle:" .. SceneObject(pNpc):getDirectionAngle())
    print("getWorldFloor: " .. getWorldFloor(SceneObject(pNpc):getWorldPositionX(), SceneObject(pNpc):getWorldPositionY(), "dungeon2"))
    --print("SceneObject1:" .. SceneObject(14201228):getWorldPositionZ())
    print("SceneObject2:" .. SceneObject(sceeneID):getWorldPositionZ())
    --print("SceneObject3:" .. sceeneID:getWorldPositionZ())
    print("getTerrainHeight:" .. getTerrainHeight(getSceneObject(14201228), 0, 0))
    print("getPosition:" .. SceneObject(sceeneID):getPositionZ())
    --print("getCellFloorCollision:" .. getCellFloorCollision(0,0,SceneObject(sceeneID)))
    --print("14201228 Z:" .. sceeneID:getWorldPositionZ())
    ]]--
    local pBuilding = getSceneObject(14201227)
    for i = 1, 58, 1 do
            local pCell = BuildingObject(pBuilding):getCell(i)
            if (pCell ~= nil) then
		    local cellId = SceneObject(pCell):getObjectID()
		    print("------- " .. cellId .. " -------")
                    for j = SceneObject(pCell):getContainerObjectsSize() - 1, 0, -1 do
                            local pMobile = SceneObject(pCell):getContainerObject(j)
			      if (SceneObject(pMobile):isCreatureObject() and not SceneObject(pMobile):isPlayerCreature() and not SceneObject(pMobile):isOwned()) then
                        	    local name = SceneObject(pMobile):getCustomObjectName()
				    local CreatureName = AiAgent(pMobile):getCreatureTemplateName()
				    --print(name .. " " .. CreatureName)
				    local CellX = self:truncateToThreeDecimals(SceneObject(pMobile):getPositionX())
				    local CellY = self:truncateToThreeDecimals(SceneObject(pMobile):getPositionY())
    				    local CellZ = self:truncateToThreeDecimals(SceneObject(pMobile):getPositionZ())
    				    local CellID = SceneObject(pMobile):getParentID()
    				    local heading = self:truncateToInt(SceneObject(pMobile):getDirectionAngle())
    				    print("spawnMobile(\"dungeon2\", \"".. CreatureName .."\", 300, " .. CellX .. ", " .. CellZ .. ", " .. CellY .. ", " .. heading .. ", " .. CellID ..")")

                    	    end
			    --print("D4:" .. pObject)
                    end
            end
    end



    -- spawnMobile("dungeon2", "hangar_officer", 0, 14.3052, 172.335, 325.194, 60, 14201228)
    local CellX = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionX())
    local CellY = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionY())
    local CellZ = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionZ())
    local CellID = SceneObject(pNpc):getParentID()
    local heading = self:truncateToInt(SceneObject(pNpc):getDirectionAngle())
    print("------- " .. CellID .." -------")
    print("spawnMobile(\"dungeon2\", \"imp_st_lvl15_enemy\", 300, " .. CellX .. ", " .. CellZ .. ", " .. CellY .. ", " .. heading .. ", " .. CellID ..")")

    print("spawnMobile(\"dungeon2\", \"imp_st_lvl15_enemy\", 300, getRandomNumber(5) + " .. CellX .. ", " .. CellZ .. ", getRandomNumber(5) +" .. CellY .. ", getRandomNumber(360) + 0, " .. CellID ..")")

    return pConvScreen
end

