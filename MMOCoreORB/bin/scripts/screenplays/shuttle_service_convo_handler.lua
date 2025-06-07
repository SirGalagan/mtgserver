shuttle_service_convo_handler = conv_handler:new {}

function shuttle_service_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("shuttle_service_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function shuttle_service_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()
    local NPCID = SceneObject(pNpc):getObjectID()
    writeData(playerID .. ":shuttle:playerID", playerID)
    writeData(playerID .. ":shuttle:screenID", screenID)
    writeData(playerID .. ":shuttle:NPCID", NPCID)
    print("Write NPCID:" .. NPCID)
    writeStringData(playerID .. ":shuttle:screenID", screenID)
    print("screenID 1:" .. screenID)
    local screenidtwo = readStringData(playerID .. ":shuttle:screenID")
    print("screenID 2:" .. screenidtwo)
    print("shuttle_service_convo_handler:runScreenHandlers")
    if (screenID == "corellia" or screenID == "naboo") then
	 print("Lets go!")
	 --writeData(playerID .. ":ShuttleService:screenId", screenID)
	 --createEvent(100, "CityControlLanding", "setupMusic", pMobile, "")
	 self:setupMusic(pPlayer)
	 self:shuttleflyby(pPlayer)
    end
    print("Shuttle service ends here")
    return pConvScreen
end

function shuttle_service_convo_handler:bringhome(pPlayer)
	print("bringhome")
	--local pScreenId = readStringData("screenId:")
	--local pShuttle = readStringData("shuttleID:")
	local playerID = SceneObject(pPlayer):getObjectID()
	local screenID = readStringData(playerID .. ":shuttle:screenID")
	local shuttleID = readData(playerID .. ":shuttle:shuttleID")
	print("bringhome:ScreenId:" .. screenID)
	print("bringhome:ShuttleID:" .. shuttleID)

	local pShuttle = getSceneObject(shuttleID)

	local playerTable = SceneObject(pShuttle):getPlayersInRange(150)
	SceneObject(pShuttle):destroyObjectFromWorld()
	-- Corellia
	if screenID == "corellia" then
		print("Heading to Corellia")
		if (#playerTable > 0) then
			print("more than 0 players")
			for i = 1, #playerTable, 1 do
				local pPlayer = playerTable[i]
				SceneObject(pPlayer):switchZone("corellia", -1626, 21, -5621, 0)
			end
		end
		print("no players")
	end
	-- Naboo
	if screenID == "naboo" then
		print("Heading to Naboo")
                if (#playerTable > 0) then
			print("more than 0 players")
                        for i = 1, #playerTable, 1 do
                                local pPlayer = playerTable[i]
				SceneObject(pPlayer):switchZone("naboo", 76, 14, 115, 0)
                        end
                end
	end
	print("bringhome - end")
end



function shuttle_service_convo_handler:shuttleflyby(pPlayer)
    print("Shuttle Fly By")
    local playerID = SceneObject(pPlayer):getObjectID()
    local planetName = SceneObject(pPlayer):getZoneName()
    local x = SceneObject(pPlayer):getWorldPositionX()
    local y = SceneObject(pPlayer):getWorldPositionY()
    --local z = SceneObject(pPlayer):getWorldPositionZ()
    local z = getWorldFloor(x,y,planetName)
    local NPCID = readData(playerID .. ":shuttle:NPCID")
    print("NPCID" .. NPCID)
    local pNPC = getSceneObject(NPCID)
    local heading = SceneObject(pNPC):getDirectionAngle() 
    print("player heading:" .. heading) 
    local pShuttle = spawnSceneObject(planetName, "object/creature/npc/theme_park/lambda_shuttle.iff", x, z, y, 0, heading)

    if (pShuttle == nil) then
	CreatureObject(pPlayer):sendSystemMessage("Error creating shuttle. Please try again.")
	return nil
    end

    CreatureObject(pShuttle):setPosture(UPRIGHT)
    local shuttleID = SceneObject(pShuttle):getObjectID()
    writeData(playerID .. ":shuttle:shuttleID", shuttleID)
    print("shuttleID:" .. shuttleID)
    --writeData(playerID .. ":ShuttleService:shuttleID", shuttleID)
    --writeData(playerID .. ":ShuttleService:shuttleStatus", 1) -- Spawned
    createEvent(1 * 1000, "shuttle_service_convo_handler", "handleShuttlePosture", pPlayer, "")
    --createEvent(6 * 1000, "ShuttleDropoff", "landShuttle", pPlayer, "")

end

function shuttle_service_convo_handler:handleShuttlePosture(pPlayer)
	--print("handleShuttlePosture(pPlayer)" .. pPlayer)
	local playerID = SceneObject(pPlayer):getObjectID()
	print("handleShuttlePosture:playerID:" .. playerID)
	local Shuttle = readData(playerID .. ":shuttle:shuttleID")
	print("Posture:pShuttle:" .. Shuttle)
	if (Shuttle == nil) then
		return
	end
	local pShuttle = getSceneObject(Shuttle)
	--local shuttleID = SceneObject(pShuttle):getObjectID()
	CreatureObject(pShuttle):setCustomObjectName("Lambda Shuttle")
	CreatureObject(pShuttle):setPosture(PRONE)
	--writeStringData("ShuttlePosture:", "PRONE")
	--createEvent(19000, "CityControlLanding", "spawnLandingParty", "", "")
	createEvent(21 * 1000, "shuttle_service_convo_handler", "bringhome", pPlayer, "")
end

--[[
function shuttle_service_convo_handler:landShuttle(pPlayer)
	print("Land Shuttle")
	local pShuttle = getSceneObject(shuttleID)
	CreatureObject(pShuttle):setPosture(PRONE)
    	writeData(playerID .. ":ShuttleDropoff:shuttleStatus", 2) -- Landing

end
]]--
function shuttle_service_convo_handler:setupMusic(pMobile)
	if (pMobile == nil) then
		return
	end
	print("setupMusic")
	local playerTable = SceneObject(pMobile):getPlayersInRange(150)
	--local landingType = readStringData("LandingType:")
	local musicTemplate = "sound/mus_imp_march.snd"

	--if (landingType == "REBEL") then
	--	musicTemplate = "sound/music_leia_theme_stereo.snd"
	--else
	--	musicTemplate = "sound/music_darth_vader_theme.snd"
	--end

	if (#playerTable > 0) then
		print("Play music for more than 0 players")
		for i = 1, #playerTable, 1 do
			local pPlayer = playerTable[i]

			if (pPlayer ~= nil and musicTemplate ~= nil) then
				CreatureObject(pPlayer):playMusicMessage(musicTemplate)
			end
		end
	end
end 
