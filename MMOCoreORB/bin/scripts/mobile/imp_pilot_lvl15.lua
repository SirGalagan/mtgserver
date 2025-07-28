imp_pilot_lvl15_enemy = Creature:new {
    objectName = "",
    customName = "Imperial Pilot",
    socialGroup = "imperial",
    faction = "imperial",
    level = 15,
    chanceHit = 0.35,
    damageMin = 40,
    damageMax = 60,
    baseXp = 750,
    baseHAM = 800,
    baseHAMmax = 1500,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_stranded_imperial_pilot.iff"},
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

CreatureTemplates:addCreatureTemplate(imp_pilot_lvl15_enemy, "imp_pilot_lvl15_enemy")

