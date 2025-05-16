seron_kai_convo_template = ConvoTemplate:new {
	initialScreen = "greeting",
	templateType = "Lua",
	luaClassHandler = "seron_kai_convo_handler",
	screens = {}
}

greeting = ConvoScreen:new {
	id = "greeting",
	customDialogText = "I felt your presence before you arrived... The Force flows through you raw and untamed.",
	stopConversation = "false",
	options = {
		{"Who are you?", "introduce"},
		{"I don't know what you're talking about.", "deny"}
	}
}
seron_kai_convo_template:addScreen(greeting)

introduce = ConvoScreen:new {
	id = "introduce",
	customDialogText = "I am Seron Kai, once a wanderer, once a Jedi. I've traveled far, running away from it, but the Force just pulled back me to you.",
	stopConversation = "false",
	options = {
		{"The Force? Is this real?", "force_intro"},
		{"You must be mistaken.", "deny"}
	}
}
seron_kai_convo_template:addScreen(introduce)

force_intro = ConvoScreen:new {
	id = "force_intro",
	customDialogText = "There is no mistake. The Force surrounds you. But without guidance, it is a storm. You need guidance, training! A master... who can train you.",
	stopConversation = "false",
	options = {
		{"I want to learn.", "grant_power"},
		{"This sounds dangerous.", "deny"}
	}
}
seron_kai_convo_template:addScreen(force_intro)

grant_power = ConvoScreen:new {
	id = "grant_power",
	customDialogText = "*Seron closes his eyes, holding out a lightsaber hilt.* Take my lightsaber. Go to Coreallia and present it to Master Vantos, he will continue your training. Where I am going, such things are no longer needed...",
	stopConversation = "false",
	options = {
		{"May the force be with you!", "conv_end"}
	}
}
seron_kai_convo_template:addScreen(grant_power)

conv_end = ConvoScreen:new {
	        id = "conv_end",
	        customDialogText = "Good luck and may the force be with you!",
	        stopConversation = "true",
	        options = {}
}
seron_kai_convo_template:addScreen(conv_end)


deny = ConvoScreen:new {
	id = "deny",
	customDialogText = "Perhaps... not all are ready when the Force calls. But it will call again.",
	stopConversation = "true",
	options = {}
}
seron_kai_convo_template:addScreen(deny)

addConversationTemplate("seron_kai_convo_template", seron_kai_convo_template)

