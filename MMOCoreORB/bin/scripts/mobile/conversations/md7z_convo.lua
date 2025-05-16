md7z_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "md7z_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Hello, my name is MD-7Z! Master Vantos sent me. He said I should hand over these one to you!",
    stopConversation = "false",
    options = {
        {"Thank you!", "crystals"},
    }
}
md7z_convo_template:addScreen(greeting)

crystals = ConvoScreen:new {
    id = "crystals",
    customDialogText = "Take this!",
    stopConversation = "true",
    options = {}
}
md7z_convo_template:addScreen(crystals)

addConversationTemplate("md7z_convo_template", md7z_convo_template)

