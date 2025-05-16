vantos_convo_handler = conv_handler:new {}

function vantos_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("vantos -start1")
    local ObjectManager = require("managers.object.object_manager")
    local QuestManager = require("managers.quest.quest_manager")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    print("vantos -start2")
    local playerID = SceneObject(pPlayer):getObjectID()
    print("vantos=playerID")
    -- Stage checks
    local completed = readData(playerID .. ":vantos:completed") == 1
    local padawanUpgraded = false --readData(playerID .. ":vantos:padawan_upgraded") == 1
    local knightReady = readData(playerID .. ":vantos:knight_ready") == 1
    local bhTriggered = readData(playerID .. ":vantos:bh_triggered") == 1

    -- Debugging prints
    print("=== Vantos Handler: getInitialScreen Debug ===")
    print("completed =", completed)
    print("padawanUpgraded =", padawanUpgraded)
    print("knightReady =", knightReady)

    -- Determine which conversation screen to show
    if knightReady then
	print("Returning knight_ready screen")
        return convoTemplate:getScreen("knight_ready")
    elseif padawanUpgraded then
        print("Returning padawan upgrade screen")
	return convoTemplate:getScreen("already_padawan")
    elseif completed then
	print("Returning completed screen")
        return convoTemplate:getScreen("upgrade_to_padawan")
    elseif not bhTriggered then
	print("Returning bounty_hunter_intro screen")
	return convoTemplate:getScreen("bounty_hunter_intro")
    else
	print("else")
        return convoTemplate:getScreen("greeting")
    end
    print("End")
end

function vantos_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    local playerID = SceneObject(pPlayer):getObjectID()

    if (screenID == "begin_training") then
        CreatureObject(pPlayer):sendSystemMessage("\\#FFFF00\\I will train you in the ways of the Force. Your journey begins now!")

        if not CreatureObject(pPlayer):hasSkill("force_title_jedi_padawan") then
            awardSkill(pPlayer, "force_title_jedi_rank_01")
            CreatureObject(pPlayer):playEffect("clienteffect/trap_electric_01.cef", "")
            CreatureObject(pPlayer):playMusicMessage("sound/music_become_jedi.snd")
        end

        -- Add padawan novice skills
        awardSkill(pPlayer, "force_abilities_novice")
        awardSkill(pPlayer, "force_defense_novice")
        awardSkill(pPlayer, "lightsaber_1hand_novice")

        CreatureObject(pPlayer):awardExperience("force_rank_xp", 1000, true)
        writeData(playerID .. ":vantos:completed", 1)

    elseif screenID == "upgrade_to_padawan" then
        -- Completing Padawan Trials
        self:completePadawanTrials(pPlayer)
        writeData(playerID .. ":vantos:padawan_upgraded", 1)

    elseif screenID == "advance_knight_ready" then
        -- In future, advancing to knight stage
        writeData(playerID .. ":vantos:knight_ready", 1)
    elseif screenID == "bounty_hunter_trigger" then
	            writeData(playerID .. ":vantos:bh_triggered", 1)
		    CreatureObject(pNpc):setMaxHAM(100)
		    CreatureObject(pNpc):setHAM(100)

		    local zone = SceneObject(pNpc):getZoneName()
		    local x = SceneObject(pNpc):getPositionX()
		    local y = SceneObject(pNpc):getPositionY()
		    local z = SceneObject(pNpc):getPositionZ()


		    local pLeader = spawnMobile("corellia", "bh1_enemy", 600, x+2, y, z+2, 0, 360)
		    if pLeader ~= nil then
		             CreatureObject(pLeader):engageCombat(pNpc)
		    end

	            local pPartner = spawnMobile("corellia", "bh2_enemy", 600, x-2, y, z-2, 0, 360)
		    if pPartner ~= nil then
		             CreatureObject(pPartner):engageCombat(pNpc)
	 end
    end

    return pConvScreen
end

function vantos_convo_handler:completePadawanTrials(pPlayer)
    if not pPlayer then
        return
    end

    local pGhost = CreatureObject(pPlayer):getPlayerObject()

    if not pGhost then
        return
    end

    local sui = SuiMessageBox.new("JediTrials", "emptyCallback")
    sui.setTitle("@jedi_trials:padawan_trials_title")
    sui.setPrompt("@jedi_trials:padawan_trials_completed")
    sui.sendTo(pPlayer)

    if not CreatureObject(pPlayer):hasSkill("force_title_jedi_rank_01") then
        awardSkill(pPlayer, "force_title_jedi_rank_01")
    end

    awardSkill(pPlayer, "force_title_jedi_rank_02")
    writeScreenPlayData(pPlayer, "PadawanTrials", "completedTrials", 1)

    CreatureObject(pPlayer):playEffect("clienteffect/trap_electric_01.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/music_become_jedi.snd")

    PlayerObject(pGhost):setJediState(2)
	CreatureObject(pPlayer):awardExperience("jedi_general", 50000, true)
    local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

    if not pInventory or SceneObject(pInventory):isContainerFullRecursive() then
        CreatureObject(pPlayer):sendSystemMessage("@jedi_spam:inventory_full_jedi_robe")
    else
        local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_jedi_padawan.iff", -1)
	local pItem = giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_training.iff", -1)
    end
    --local pItem = giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_one_handed_gen1.iff",-1)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	if (pInventory ~= nil) then
	   local crystalID = createLoot(pInventory, "color_crystals", 1, true)
	   if (crystalID ~= nil) then
		local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
		colorCrystal:setColor(29) -- Optional: sets it to a specific color
		colorCrystal:updateCrystal(29)
	   end
	end


    sendMail("system", "@jedi_spam:welcome_subject", "@jedi_spam:welcome_body", CreatureObject(pPlayer):getFirstName())

    if VillageJediManagerCommon ~= nil then
        VillageJediManagerCommon.setJediProgressionScreenPlayState(pPlayer, VILLAGE_JEDI_PROGRESSION_COMPLETED_PADAWAN_TRIALS)
    end
end

