luke_lvl15_enemy = Creature:new {
    objectName = "",
    customName = "Luke Skywalker (lvl20)",
    socialGroup = "rebel",
    faction = "rebel",
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
    lightsaberColor = 4,
    outfit = "lord_hethrir_outfit",
    templates = {"object/mobile/luke_skywalker.iff"},
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

CreatureTemplates:addCreatureTemplate(luke_lvl15_enemy, "luke_lvl15_enemy")

