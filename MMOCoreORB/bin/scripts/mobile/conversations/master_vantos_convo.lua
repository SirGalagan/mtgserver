vantos_convo_template = ConvoTemplate:new {
    initialScreen = "greeting",
    templateType = "Lua",
    luaClassHandler = "vantos_convo_handler",
    screens = {}
}

greeting = ConvoScreen:new {
    id = "greeting",
    customDialogText = "I recognize this lightsaber... Seron would never part with it lightly. If he sent you, your path is important. I'm happy to train you, if you are ready!",
    stopConversation = "false",
    options = {
        {"I am ready, Master.", "begin_training"},
        {"I need more time.", "deny"}
    }
}
vantos_convo_template:addScreen(greeting)

begin_training = ConvoScreen:new {
    id = "begin_training",
    customDialogText = "I will try to help you... Feel the Force flowing through you.",
    stopConversation = "true",
    options = {}
}
vantos_convo_template:addScreen(begin_training)

upgrade_to_padawan = ConvoScreen:new {
    id = "upgrade_to_padawan",
    customDialogText = "I was following your progress... I think you are ready to take the next steps!",
    stopConversation = "false",
    options = {
        {"Yes, Master. I am ready.", "upgrade_to_padawan"}
    }
}
vantos_convo_template:addScreen(upgrade_to_padawan)

already_padawan = ConvoScreen:new {
    id = "already_padawan",
    customDialogText = "You are already progressing well. Continue your training.",
    stopConversation = "true",
    options = {}
}
vantos_convo_template:addScreen(already_padawan)

knight_ready = ConvoScreen:new {
    id = "knight_ready",
    customDialogText = "You are ready to take your Trials of Knighthood. The Force is strong with you.",
    stopConversation = "true",
    options = {}
}
vantos_convo_template:addScreen(knight_ready)

deny = ConvoScreen:new {
    id = "deny",
    customDialogText = "Return when you are prepared. The Force is patient.",
    stopConversation = "true",
    options = {}
}
vantos_convo_template:addScreen(deny)

bounty_hunter_intro = ConvoScreen:new {
	    id = "bounty_hunter_intro",
	        customDialogText = "You are back alreadt? Why are you here?",
		    stopConversation = "false",
		        options = {
				        {"What? You sent a message to us!", "bounty_hunter_trigger"}
					    }
				    }
				    vantos_convo_template:addScreen(bounty_hunter_intro)

				    bounty_hunter_trigger = ConvoScreen:new {
					        id = "bounty_hunter_trigger",
						    customDialogText = "It's a trap... RUN AND HIDE!",
						        stopConversation = "true",
							    options = {}
						    }
						    vantos_convo_template:addScreen(bounty_hunter_trigger)



addConversationTemplate("vantos_convo_template", vantos_convo_template)
