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
        {"Back home!", "home"},
	{"Back to Jabba's Palace!", "jabba"},
	{"Take me to a planet!", "planets"},
	{"Take me to a trainer!", "trainers"},
	{"Event locations!", "events"}
    }
}
shuttle_service_convo_template:addScreen(greeting)

home = ConvoScreen:new {
    id = "home",
    customDialogText = "Where?",
    stopConversation = "false",
    options = {
	{"Back home on Corellia!", "corellia"},
        {"Back home on Naboo!", "naboo"},
        {"Back home on Tatooine!", "tatooine"}
    }
}
shuttle_service_convo_template:addScreen(home)


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

planets = ConvoScreen:new {
    id = "planets",
    customDialogText = "Which planet?",
    stopConversation = "false",
    options = {
        {"Nal Hutta!", "hutta_planet"},
        {"Moraband!", "moraband_planet"},
        {"Hoth!", "hoth_planet"},
        {"Mustafar!", "mustafar_planet"},
        {"Corellia!", "corellia_planet"},
        {"Tatooine!", "tatooine_planet"},
	{"Rori!", "rori_planet"},
	{"Talus!", "talus_planet"},
	{"Yavin4!", "yavin4_planet"},
	{"Dantooine!", "dantooine_planet"}
    }
}
shuttle_service_convo_template:addScreen(planets)

hutta_planet = ConvoScreen:new {
    id = "hutta_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(hutta_planet)

moraband_planet = ConvoScreen:new {
    id = "moraband_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(moraband_planet)

hoth_planet = ConvoScreen:new {
    id = "hoth_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(hoth_planet)

mustafar_planet = ConvoScreen:new {
    id = "mustafar_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(mustafar_planet)

corellia_planet = ConvoScreen:new {
    id = "corellia_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(corellia_planet)

tatooine_planet = ConvoScreen:new {
    id = "tatooine_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(tatooine_planet)

rori_planet = ConvoScreen:new {
    id = "rori_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(rori_planet)

talus_planet = ConvoScreen:new {
    id = "talus_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(talus_planet)

yavin4_planet = ConvoScreen:new {
    id = "yavin4_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(yavin4_planet)

dantooine_planet = ConvoScreen:new {
    id = "dantooine_planet",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(dantooine_planet)


trainers = ConvoScreen:new {
    id = "trainers",
    customDialogText = "Which trainer?",
    stopConversation = "false",
    options = {
        {"Lyra's Jedi Trainer!", "lyra_jedi"},
        {"Oho's Jedi Trainer!", "oho_jedi"},
        {"Creature Handler!", "creature_handler"}
    }
}
shuttle_service_convo_template:addScreen(trainers)

lyra_jedi = ConvoScreen:new {
    id = "lyra_jedi",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(lyra_jedi)


oho_jedi = ConvoScreen:new {
    id = "oho_jedi",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(oho_jedi)


creature_handler = ConvoScreen:new {
    id = "creature_handler",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(creature_handler)


events = ConvoScreen:new {
    id = "events",
    customDialogText = "Which event?",
    stopConversation = "false",
    options = {
        {"1. ???", "event_star_destroyer"}
    }
}
shuttle_service_convo_template:addScreen(events)

event_star_destroyer = ConvoScreen:new {
    id = "event_star_destroyer",
    customDialogText = "Sir! Yes! Sir!",
    stopConversation = "true",
    options = {}
}
shuttle_service_convo_template:addScreen(event_star_destroyer)


addConversationTemplate("shuttle_service_convo_template", shuttle_service_convo_template)

