party_organizer_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "party_organizer_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Greetings! Are you ready for a party?",
    stopConversation = "false",
    options = {
        {"Yes! Let's rock the party!", "party_yes"}
    }
}
party_organizer_convo_template:addScreen(greeting)

party_yes = ConvoScreen:new {
    id = "party_yes",
    customDialogText = "All set for a great party! Enjoy!",
    stopConversation = "true",
    options = {}
}
party_organizer_convo_template:addScreen(party_yes)


addConversationTemplate("party_organizer_convo_template", party_organizer_convo_template)

