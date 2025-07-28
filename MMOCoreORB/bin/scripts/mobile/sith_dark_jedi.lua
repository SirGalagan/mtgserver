sith_dark_jedi = Creature:new {
    objectName = "",
    customName = "Sith Dark Jedi",
    socialGroup = "imperial",
    faction = "imperial",
    level = 20,
    chanceHit = 0.6,
    damageMin = 120,
    damageMax = 150,
    baseXp = 2000,
    baseHAM = 5000,
    baseHAMmax = 6000,
    armor = 1,
    resists = {25,25,25,25,25,25,25,25,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_dark_jedi_elder_male_devorian_02.iff"},
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
    primaryAttacks = merge(lightsabermaster,forcewielder),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(sith_dark_jedi, "sith_dark_jedi")

