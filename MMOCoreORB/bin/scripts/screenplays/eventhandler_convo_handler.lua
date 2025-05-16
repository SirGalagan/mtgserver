eventhandler_convo_handler = conv_handler:new {}

function eventhandler_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function eventhandler_convo_handler:spawnBattleUnitsNearPlayer(pPlayer)
    if not pPlayer then return end

    local planetName = SceneObject(pPlayer):getZoneName()
    local x = SceneObject(pPlayer):getWorldPositionX()
    local y = SceneObject(pPlayer):getWorldPositionY()
    --local z = SceneObject(pPlayer):getWorldPositionZ()
    local z = getWorldFloor(x,y,planetName)
    print("Planet: " .. planetName)
    print("x: " .. x)
    print("y: " .. y)
    print("z: " .. z)

    -- Distance from player to spawn units
    local offset = 30

    local vader = spawnMobile(planetName, "vader_lvl15_enemy", 0, x - offset, z, y, 0, 0)
    local luke = spawnMobile(planetName, "luke_lvl15_enemy", 0, x + offset, z, y, 0, 0)


    --AiAgent(luke):setAIDebug()
    AiAgent(luke):clearPatrolPoints()
    AiAgent(luke):setMovementState(AI_PATROLLING)
    AiAgent(luke):setNextPosition(x-offset, z, y, 0)
    print("x2: " .. x-offset)
    AiAgent(luke):setDefender(vader)
    AiAgent(luke):executeBehavior()

    AiAgent(vader):clearPatrolPoints()
    AiAgent(vader):setNextPosition(x+offset, z, y, 0)
    AiAgent(vader):setDefender(luke)
    AiAgent(vader):executeBehavior()

    for i = 1, 4, 1 do
	local imp = spawnMobile(planetName, "imp_st_lvl10_enemy", 0, x - offset, z, y+(1*i), 0, 0)
	local reb = spawnMobile(planetName, "reb_troop_lvl10_enemy", 0, x + offset, z, y+(1*i), 0, 0)
	AiAgent(imp):clearPatrolPoints()
	AiAgent(reb):clearPatrolPoints()
	AiAgent(imp):addObjectFlag(AI_STATIONARY)
	AiAgent(reb):addObjectFlag(AI_STATIONARY)
	AiAgent(imp):setMovementState(AI_PATROLLING)
	AiAgent(reb):setMovementState(AI_PATROLLING)
        z = getWorldFloor(x+offset,y,planetName)
	AiAgent(imp):setNextPosition(x+offset, z, y, 0)
	z = getWorldFloor(x-offset,y,planetName)
	AiAgent(reb):setNextPosition(x-offset, z, y, 0)
        AiAgent(imp):setDefender(reb)
	AiAgent(reb):setDefender(imp)
	AiAgent(imp):executeBehavior()
	AiAgent(reb):executeBehavior()
    end

    --AiAgent(luke):clearPatrolPoints()
    --AiAgent(luke):setNextPosition(x-offset, z, y+5, 0)
    --AiAgent(luke):setDefender(vader)

    --AiAgent(vader):clearPatrolPoints()
    --AiAgent(vader):setNextPosition(x+offset, z, y-5, 0)
    --AiAgent(luke):setDefender(vader)
  	--AiAgent(luke):stopWaiting()
	--AiAgent(luke):setWait(0)
	--AiAgent(luke):executeBehavior() 
	
	--AiAgent(vader):stopWaiting()
	--AiAgent(vader):setWait(0)
	--AiAgent(vader):executeBehavior()
end



function eventhandler_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    
    print("Player Faction: " .. CreatureObject(pPlayer):getFaction())
    if screenID == "faction_rebel" then
	CreatureObject(pPlayer):setFaction(FACTIONREBEL)
	CreatureObject(pPlayer):setFactionStatus(1)    
    elseif screenID == "faction_imperial" then   
	CreatureObject(pPlayer):setFaction(FACTIONIMPERIAL)
        CreatureObject(pPlayer):setFactionStatus(1)
    elseif screenID == "faction_neutral" then         
	CreatureObject(pPlayer):setFactionRank(0)
	CreatureObject(pPlayer):setFaction(0)
        CreatureObject(pPlayer):setFactionStatus(0)
    elseif screenID == "rebel_vs_imperial" then
	print("Event started: Rebel vs Imperial")
	self:spawnBattleUnitsNearPlayer(pPlayer)
    end

    return pConvScreen
end

