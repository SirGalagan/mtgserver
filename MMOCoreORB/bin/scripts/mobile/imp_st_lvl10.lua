imp_st_lvl10_enemy = Creature:new {
    objectName = "",
    customName = "Stormtrooper (lvl10)",
    socialGroup = "imperial",
    faction = "imperial",
    level = 10,
    chanceHit = 0.35,
    damageMin = 25,
    damageMax = 50,
    baseXp = 125,
    baseHAM = 300,
    baseHAMmax = 350,
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
				{group = "imperial_tier_1", chance = 10000000}
			}
		}
	},
    primaryWeapon = "imperial_weapons_light",
    secondaryWeapon = "none",
    conversationTemplate = "",
    primaryAttacks = merge(riflemanmid,pistoleermid,carbineermid,marksmanmid),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(imp_st_lvl10_enemy, "imp_st_lvl10_enemy")

