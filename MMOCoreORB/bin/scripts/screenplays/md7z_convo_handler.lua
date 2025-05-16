md7z_convo_handler = conv_handler:new {}

function md7z_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    print("md7z_convo_handler:getInitialScreen")
    local convoTemplate = LuaConversationTemplate(pConvTemplate)
    return convoTemplate:getScreen("greeting")
end

function md7z_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
    local screen = LuaConversationScreen(pConvScreen)
    local screenID = screen:getScreenID()
    print("md7z_convo_handler:runScreenHandlers")
    if screenID == "crystals" then
	   print("screen crystals")
        -- Correct way to make the NPC follow the player
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
	if (pInventory ~= nil) then
	     local crystalID = createLoot(pInventory, "color_crystals", 1, true)
	     if (crystalID ~= nil) then
	     local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
	     colorCrystal:setColor(0) -- Optional: sets it to a specific color
	     colorCrystal:updateCrystal(0)
	end
end
	local pItem = giveItem(pInventory, "object/weapon/melee/sword/crafted_saber/sword_lightsaber_one_handed_gen1.iff", -1)
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(1) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(1)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(2) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(2)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(3) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(3)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(4) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(4)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(5) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(5)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(6) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(6)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(10) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(10)
        end
end
        local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
        if (pInventory ~= nil) then
             local crystalID = createLoot(pInventory, "color_crystals", 1, true)
             if (crystalID ~= nil) then
             local colorCrystal = LuaLightsaberCrystalComponent(getSceneObject(crystalID))
             colorCrystal:setColor(12) -- Optional: sets it to a specific color
             colorCrystal:updateCrystal(12)
        end
end

    end
    print("before pConvScreen")
    return pConvScreen
end

