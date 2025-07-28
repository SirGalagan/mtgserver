imp_officer_lvl15_enemy = Creature:new {
    objectName = "",
    customName = "Imperial Officer",
    socialGroup = "imperial",
    faction = "imperial",
    level = 25,
    chanceHit = 0.390000,
    damageMin = 150,
    damageMax = 200,
    baseXp = 2014,
    baseHAM = 3400,
    baseHAMmax = 5200,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    templates = {
                "object/mobile/dressed_imperial_officer_m.iff",
                "object/mobile/dressed_imperial_officer_m_2.iff",
                "object/mobile/dressed_imperial_officer_m_3.iff",
                "object/mobile/dressed_imperial_officer_m_4.iff",
                "object/mobile/dressed_imperial_officer_m_5.iff",
                "object/mobile/dressed_imperial_officer_m_6.iff",
	        "object/mobile/dressed_imperial_officer_f.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "imperial_tier_2", chance = 10000000}
			}
		}
	},
    primaryWeapon = "imperial_carbine",
    secondaryWeapon = "imperial_pistol",
    conversationTemplate = "",
    primaryAttacks = merge(riflemanmid,pistoleermid,carbineermid,marksmanmid),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(imp_officer_lvl15_enemy, "imp_officer_lvl15_enemy")

