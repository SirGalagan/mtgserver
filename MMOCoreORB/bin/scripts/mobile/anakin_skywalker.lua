anakin_skywalker = Creature:new {
	objectName = "",
	customName = "Anakin Skywalker TEST",
	mobType = MOB_NPC,
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 30,
	damageMin = 3450,
	damageMax = 5000,
	baseXp = 45000,
	baseHAM = 3352000,
	baseHAMmax = 3352000,
	armor = 2,
	resists = {85,85,95,95,95,95,95,95,135},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER + NOINTIMIDATE + NODOT,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/anakin_robe.iff"},
	lightsaberColor = 4,
	lootGroups = {},
	primaryWeapon = "light_jedi_weapons",
	secondaryWeapon = "none",
	conversationTemplate = "",
	--reactionStf = "@npc_reaction/military",
	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = { }

}

CreatureTemplates:addCreatureTemplate(anakin_skywalker, "anakin_skywalker")

