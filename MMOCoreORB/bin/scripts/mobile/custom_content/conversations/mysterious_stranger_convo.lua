mysterious_stranger_convo_template = ConvoTemplate:new {
    initialScreen = "start",
    templateType = "Lua",
    luaClassHandler = "mysterious_stranger_convo_handler",
    screens = {}
}

start = ConvoScreen:new {
    id = "start",
    customDialogText = "You seek answers, don't you? I know someone who can help.",
    stopConversation = "false",
    options = {
        {"Who are you talking about?", "vantos_info"},
        {"No thanks, I'll find my own path.", "goodbye"}
    }
}
mysterious_stranger_convo_template:addScreen(start)

vantos_info = ConvoScreen:new {
    id = "vantos_info",
    customDialogText = "His name is Vantos. He lives deep in the forests of Corellia. I can mark the location for you... or take you there.",
    stopConversation = "false",
    options = {
        {"Mark the location, I'll make my way there.", "mark_waypoint"},
        {"Yes, teleport me close to him.", "teleport"},
        {"On second thought, nevermind.", "goodbye"}
    }
}
mysterious_stranger_convo_template:addScreen(vantos_info)

mark_waypoint = ConvoScreen:new {
    id = "mark_waypoint",
    customDialogText = "I've marked the location on your datapad. May the Force be with you.",
    stopConversation = "true",
    options = {}
}
mysterious_stranger_convo_template:addScreen(mark_waypoint)

teleport = ConvoScreen:new {
    id = "teleport",
    customDialogText = "*The stranger raises a hand. In a flash, your surroundings shift...*",
    stopConversation = "true",
    options = {}
}
mysterious_stranger_convo_template:addScreen(teleport)

goodbye = ConvoScreen:new {
    id = "goodbye",
    customDialogText = "Very well. The path is yours to choose.",
    stopConversation = "true",
    options = {}
}
mysterious_stranger_convo_template:addScreen(goodbye)

addConversationTemplate("mysterious_stranger_convo_template", mysterious_stranger_convo_template)

