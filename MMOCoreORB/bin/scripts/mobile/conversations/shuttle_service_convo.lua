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
	{"Back home on Tatooine!", "tatooine"},
	{"Back to Jabba's Palace!", "jabba"}
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

tatooine = ConvoScreen:new {
    id = "tatooine",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(tatooine)

jabba = ConvoScreen:new {
    id = "jabba",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(jabba)


addConversationTemplate("shuttle_service_convo_template", shuttle_service_convo_template)

