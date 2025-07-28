lift_operator_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "lift_operator_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Ready?",
    stopConversation = "false",
    options = {
	{"Let's go!", "lets_go"},
    }
}
lift_operator_convo_template:addScreen(greeting)


lets_go = ConvoScreen:new {
    id = "lets_go",
    customDialogText = "Alright!",
    stopConversation = "true",
    options = {}
}
lift_operator_convo_template:addScreen(lets_go)


addConversationTemplate("lift_operator_convo_template", lift_operator_convo_template)

