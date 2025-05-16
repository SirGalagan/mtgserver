om5 = Creature:new {
    customName = "OM-5",
    socialGroup = "neutral",
    faction = "",
    mobType = MOB_NPC,
    level = 4,
    chanceHit = 0.35,
    damageMin = 50,
    damageMax = 80,
    baseXp = 1000,
    baseHAM = 3000,
    baseHAMmax = 3500,
    armor = 0,
    resists = {15,15,15,15,15,15,15,15,15},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = NONE,
    creatureBitmask = HERD,
    optionsBitmask = AIENABLED + CONVERSABLE,
    diet = HERBIVORE,

    templates = {"object/mobile/battle_droid.iff"},
    lootGroups = {},
    	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "battle_droid_weapons",
	secondaryWeapon = "unarmed",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pistoleermaster,carbineermaster,marksmanmaster),
	secondaryAttacks = { },
    conversationTemplate = "om5_convo_template",
    attacks = merge(marksmannovice)
}

CreatureTemplates:addCreatureTemplate(om5, "om5")

