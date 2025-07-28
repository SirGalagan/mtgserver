hangar_officer_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "hangar_officer_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "Sorry for this, but we have to stop and search every ship in the sector as a precaution. We are looking for some remnant jedi. Let's get over with it, shall we?",
    stopConversation = "false",
    options = {
        {"Ohhh, ohhh!", "party_starts"}
    }
}
hangar_officer_convo_template:addScreen(greeting)

party_starts = ConvoScreen:new {
    id = "party_starts",
    customDialogText = "Stormtroopers! We might have a problem over here!",
    stopConversation = "true",
    options = {}
}
hangar_officer_convo_template:addScreen(party_starts)


addConversationTemplate("hangar_officer_convo_template", hangar_officer_convo_template)

