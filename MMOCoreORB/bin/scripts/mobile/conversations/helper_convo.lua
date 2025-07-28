npc_helper_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "npc_helper_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Info printed",
    stopConversation = "true",
    options = {}
}
npc_helper_convo_template:addScreen(greeting)



addConversationTemplate("npc_helper_convo_template", npc_helper_convo_template)

