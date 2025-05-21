luke3 = Creature:new {
    objectName = "",
    customName = "Luke3 Robe01",
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
    lightsaberColor = 2,
    --outfit = "jedi_robe01_outfit",
    templates = {"object/mobile/anakin_robe.iff"},
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

CreatureTemplates:addCreatureTemplate(luke3, "luke3")

