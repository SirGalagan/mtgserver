bh1_enemy = Creature:new {
    objectName = "",
    customName = "Bounty Hunter (leader)",
    socialGroup = "thug",
    faction = "thug",
    level = 7,
    chanceHit = 0.3,
    damageMin = 55,
    damageMax = 60,
    baseXp = 150,
    baseHAM = 270,
    baseHAMmax = 300,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    templates = {"object/mobile/bossk.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_tier_1", chance = 10000000}
			}
		}
	},
    primaryWeapon = "stormtrooper_carbine",
    secondaryWeapon = "none",
    conversationTemplate = "",
    -- conversationTemplate = "seron_kai",
    primaryAttacks = merge(pistoleermaster,carbineermaster,marksmanmaster),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(bh1_enemy, "bh1_enemy")


