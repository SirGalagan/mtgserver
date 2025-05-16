vader_lvl15_enemy = Creature:new {
    objectName = "",
    customName = "Darth Vader (lvl15)",
    socialGroup = "imperial",
    faction = "imperial",
    level = 15,
    chanceHit = 0.6,
    damageMin = 60,
    damageMax = 120,
    baseXp = 200,
    baseHAM = 500,
    baseHAMmax = 600,
    armor = 1,
    resists = {25,25,25,25,25,25,25,25,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,
    scale = 1.15,

    templates = {"object/mobile/darth_vader.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_tier_2", chance = 10000000}
			}
		}
	},
    primaryWeapon = "darth_vader_weapons",
    secondaryWeapon = "none",
    conversationTemplate = "",
    primaryAttacks = merge(lightsabermaster,forcepowermaster),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(vader_lvl15_enemy, "vader_lvl15_enemy")

