imp_st_lvl15_enemy = Creature:new {
    objectName = "",
    customName = "Stormtrooper",
    socialGroup = "imperial",
    faction = "imperial",
    level = 20,
    chanceHit = 0.390000,
    damageMin = 100,
    damageMax = 150,
    baseXp = 1914,
    baseHAM = 3400,
    baseHAMmax = 4200,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    templates = {"object/mobile/stormtrooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_tier_2", chance = 10000000}
			}
		}
	},
    primaryWeapon = "imperial_weapons_light",
    secondaryWeapon = "none",
    conversationTemplate = "",
    primaryAttacks = merge(riflemanmid,pistoleermid,carbineermid,marksmanmid),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(imp_st_lvl15_enemy, "imp_st_lvl15_enemy")

