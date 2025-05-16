reb_troop_lvl10_enemy = Creature:new {
    objectName = "",
    customName = "Rebel Trooper (lvl10)",
    socialGroup = "rebel",
    faction = "rebel",
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
    templates = {"object/mobile/dressed_rebel_trooper_bith_m_01.iff",
		"object/mobile/dressed_rebel_trooper_twk_male_01.iff",
		"object/mobile/dressed_rebel_trooper_twk_female_01.iff",
		"object/mobile/dressed_rebel_trooper_human_female_01.iff",
		"object/mobile/dressed_rebel_trooper_human_male_01.iff",
		"object/mobile/dressed_rebel_trooper_sullustan_male_01.iff"},
    -- templates = {"object/mobile/dressed_rebel_trooper_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rebel_tier_1", chance = 10000000}
			}
		}
	},
    primaryWeapon = "rebel_weapons_light",
    secondaryWeapon = "none",
    conversationTemplate = "",
    primaryAttacks = merge(riflemanmid,pistoleermid,carbineermid,marksmanmid),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(reb_troop_lvl10_enemy, "reb_troop_lvl10_enemy")

