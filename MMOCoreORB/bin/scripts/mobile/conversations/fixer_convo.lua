fixer_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "fixer_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Hello! What can I do for you?",
    stopConversation = "false",
    options = {
        {"Fix me!", "fix_me"},
    }
}
fixer_convo_template:addScreen(greeting)

fix_me = ConvoScreen:new {
    id = "fix_me",
    customDialogText = "You are fixed!",
    stopConversation = "true",
    options = {}
}
fixer_convo_template:addScreen(fix_me)

addConversationTemplate("fixer_convo_template", fixer_convo_template)

