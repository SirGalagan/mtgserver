om5_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "om5_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Don't leave me...",
    stopConversation = "false",
    options = {
        {"Follow me!", "follow"},
        {"Sorry", "deny"}
    }
}
om5_convo_template:addScreen(greeting)

follow = ConvoScreen:new {
    id = "follow",
    customDialogText = "Roger. Roger.",
    stopConversation = "true",
    options = {}
}
om5_convo_template:addScreen(follow)

deny = ConvoScreen:new {
    id = "deny",
    customDialogText = "Unit shutting down...",
    stopConversation = "true",
    options = {}
}
om5_convo_template:addScreen(deny)

addConversationTemplate("om5_convo_template", om5_convo_template)

