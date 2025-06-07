shuttle_service_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "shuttle_service_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Greetings! Where our shuttle can take you?",
    stopConversation = "false",
    options = {
        {"Back home on Corellia!", "corellia"},
	{"Back home on Naboo!", "naboo"},
    }
}
shuttle_service_convo_template:addScreen(greeting)

corellia = ConvoScreen:new {
    id = "corellia",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(corellia)

naboo = ConvoScreen:new {
    id = "naboo",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(naboo)

addConversationTemplate("shuttle_service_convo_template", shuttle_service_convo_template)

