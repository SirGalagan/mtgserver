hangar_officer_convo_handler = conv_handler:new {}

function hangar_officer_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("hangar_officer_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function hangar_officer_convo_handler:truncateToThreeDecimals(num)
    return math.floor(num * 1000) / 1000
end

function hangar_officer_convo_handler:truncateToInt(num)
    if num >= 0 then
        return math.floor(num)
    else
        return math.ceil(num)
    end
end


function hangar_officer_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()
    local sceeneID = getSceneObject(14201228)
    local NPCID = SceneObject(pNpc):getObjectID()
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
    

    -- spawnMobile("dungeon2", "hangar_officer", 0, 14.3052, 172.335, 325.194, 60, 14201228)
    local CellX = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionX())
    local CellY = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionY())
    local CellZ = self:truncateToThreeDecimals(SceneObject(pNpc):getPositionZ())
    local CellID = SceneObject(pNpc):getParentID()
    local heading = self:truncateToInt(SceneObject(pNpc):getDirectionAngle())

    print("spawnMobile(\"dungeon2\", \"imp_st_lvl15_enemy\", 300, " .. CellX .. ", " .. CellZ .. ", " .. CellY .. ", " .. heading .. ", " .. CellID ..")")

    print("spawnMobile(\"dungeon2\", \"imp_st_lvl15_enemy\", 300, getRandomNumber(5) + " .. CellX .. ", " .. CellZ .. ", getRandomNumber(5) +" .. CellY .. ", getRandomNumber(360) + 0, " .. CellID ..")")


    if (screenID == "party_starts") then
	 print("Lets go!")
	 --writeData(playerID .. ":ShuttleService:screenId", screenID)
	 --createEvent(100, "CityControlLanding", "setupMusic", pMobile, "")
	 --self:setupMusic(pPlaiyer)
	local playerTable = SceneObject(pPlayer):getPlayersInRange(1000000)
        --local landingType = readStringData("LandingType:")
    	local musicTemplate = "sound/station_alarm.snd"

        --if (landingType == "REBEL") then
        --      musicTemplate = "sound/music_leia_theme_stereo.snd"
        --else
        --      musicTemplate = "sound/music_darth_vader_theme.snd"
        --end

      	if (#playerTable > 0) then
        	      print("Play music for more than 0 players")
              	for i = 1, #playerTable, 1 do
                	     local pPlayer = playerTable[i]
                      	if (pPlayer ~= nil and musicTemplate ~= nil) then
                        	CreatureObject(pPlayer):setFaction(FACTIONREBEL)
                             	CreatureObject(pPlayer):setFactionStatus(3)
                              	CreatureObject(pPlayer):playMusicMessage(musicTemplate)
                              	CreatureObject(pPlayer):playMusicMessage(musicTemplate)
                              	CreatureObject(pPlayer):playMusicMessage(musicTemplate)
                      	end
              	end
      	else
      	        print("0 players!")
      	end
    end
    print("Hangar ends here")
    return pConvScreen
end

function hangar_officer_convo_handler:bringhome(pPlayer)
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

	if (screenID == "oho_jedi" or  screenID == "lyra_jedi") then
		if screenID == "oho_jedi" then
			SceneObject(pPlayer):switchZone("corellia", -3444, 78, 3212, 0)
		else -- Lyra's Jedi Trainer
			SceneObject(pPlayer):switchZone("corellia", -164, 28, -4714, 0)
		end
	else
                if (#playerTable > 0) then
                        print("more than 0 players")
                        for i = 1, #playerTable, 1 do
				local pPlayer = playerTable[i]
				-- Creature Handler
				if screenID == "creature_handler" then
					SceneObject(pPlayer):switchZone("corellia", -58, 0, -4522, 0)
				end
				-- Homes
				if screenID == "corellia" then
					SceneObject(pPlayer):switchZone("corellia", -1626, 21, -5621, 0)
				end
				if screenID == "naboo" then
					SceneObject(pPlayer):switchZone("naboo", 76, 14, 135, 0)
				end
				if screenID == "tatooine" then
					SceneObject(pPlayer):switchZone("tatooine", -3831, 2, -6293, 0)
				end
				if screenID == "jabba" then
					SceneObject(pPlayer):switchZone("tatooine", -5870, 90, -6174, 0)
				end
                                -- Planets
                                if screenID == "hutta_planet" then
                                        SceneObject(pPlayer):switchZone("hutta", -746, 80, 1656, 0)
				else
					print("Not implemented yet!")
				end
			end -- for playerTable
		end -- if playerTable > 0  
	end -- single / multi target

	print("bringhome - end")
end



function hangar_officer_convo_handler:shuttleflyby(pPlayer)
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
    createEvent(1 * 1000, "hangar_officer_convo_handler", "handleShuttlePosture", pPlayer, "")
    --createEvent(6 * 1000, "ShuttleDropoff", "landShuttle", pPlayer, "")

end

function hangar_officer_convo_handler:handleShuttlePosture(pPlayer)
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
	createEvent(21 * 1000, "hangar_officer_convo_handler", "bringhome", pPlayer, "")
end

--[[
function hangar_officer_convo_handler:landShuttle(pPlayer)
	print("Land Shuttle")
	local pShuttle = getSceneObject(shuttleID)
	CreatureObject(pShuttle):setPosture(PRONE)
    	writeData(playerID .. ":ShuttleDropoff:shuttleStatus", 2) -- Landing

end
]]--
function hangar_officer_convo_handler:setupMusic(pMobile)
	if (pMobile == nil) then
		return
	end
	print("setupMusic")
	
	local playerTable = SceneObject(pMobile):getPlayersInRange(150)
	--local landingType = readStringData("LandingType:")
	local musicTemplate = "sound/station_alarm.snd"

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
				CreatureObject(pPlayer):setFaction(FACTIONIMPERIAL)
        			CreatureObject(pPlayer):setFactionStatus(1)
				
				CreatureObject(pPlayer):playMusicMessage(musicTemplate)
				CreatureObject(pPlayer):playMusicMessage(musicTemplate)
				CreatureObject(pPlayer):playMusicMessage(musicTemplate)
			end
		end
	else
		print("0 players!")
	end
end 
