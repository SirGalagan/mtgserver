eventhandler_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "eventhandler_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Hello, Are you ready to start an Event?",
    stopConversation = "false",
    options = {
	{"Set faction", "faction_set"},
        {"Start Event - Rebel vs Imperial", "rebel_vs_imperial"},
        {"Bye-Bye", "deny"}
    }
}
eventhandler_convo_template:addScreen(greeting)

faction_set = ConvoScreen:new {
    id = "faction_set",
    customDialogText = "Take this!",
    stopConversation = "false",
    options = {
        {"Rebel/Droids", "faction_rebel"},
        {"Imperial/Clones", "faction_imperial"},
        {"Neutral", "faction_neutral"}
    }
}

eventhandler_convo_template:addScreen(faction_set)

faction_rebel = ConvoScreen:new {
    id = "faction_rebel",
    customDialogText = "Faction set to: Rebel",
    stopConversation = "true",
    options = {}
}

eventhandler_convo_template:addScreen(faction_rebel)


faction_imperial = ConvoScreen:new {
    id = "faction_imperial",
    customDialogText = "Faction set to: Imperial",
    stopConversation = "true",
    options = {}
}

eventhandler_convo_template:addScreen(faction_imperial)

faction_neutral = ConvoScreen:new {
    id = "faction_neutral",
    customDialogText = "Faction set to: Neutral",
    stopConversation = "true",
    options = {}
}

eventhandler_convo_template:addScreen(faction_neutral)

rebel_vs_imperial = ConvoScreen:new {
    id = "rebel_vs_imperial",
    customDialogText = "Lets the event begin! Rebel vs. Imperial",
    stopConversation = "true",
    options = {}
}

eventhandler_convo_template:addScreen(rebel_vs_imperial)


addConversationTemplate("eventhandler_convo_template", eventhandler_convo_template)

