r3p5_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "r3p5_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "[Beep, beep, beep]",
    stopConversation = "false",
    options = {
        {"What?! Vantos sent you? And to give me these?", "fix_me"},
    }
}
r3p5_convo_template:addScreen(greeting)

fix_me = ConvoScreen:new {
    id = "fix_me",
    customDialogText = "[beep, bip]!",
    stopConversation = "true",
    options = {}
}
r3p5_convo_template:addScreen(fix_me)

addConversationTemplate("r3p5_convo_template", r3p5_convo_template)

