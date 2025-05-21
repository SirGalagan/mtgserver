luke4 = Creature:new {
    objectName = "",
    customName = "Luke4 Full",
    socialGroup = "rebel",
    faction = "rebel",
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
    lightsaberColor = 6,
    outfit = "luke_outfit",
    templates = {"object/mobile/dressed_luke_skywalker.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rebel_tier_2", chance = 10000000}
			}
		}
	},
    primaryWeapon = "light_jedi_weapons",
    secondaryWeapon = "none",
    conversationTemplate = "",
    primaryAttacks = merge(lightsabermaster,forcepowermaster),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(luke4, "luke4")

