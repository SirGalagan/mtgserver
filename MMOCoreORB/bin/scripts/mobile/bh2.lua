bh2_enemy = Creature:new {
    objectName = "",
    customName = "Bounty Hunter",
    socialGroup = "thug",
    faction = "thug",
    level = 5,
    chanceHit = 0.3,
    damageMin = 45,
    damageMax = 50,
    baseXp = 180,
    baseHAM = 200,
    baseHAMmax = 225,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    templates = {"object/mobile/dressed_bountyhunter_trainer_01.iff"},
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
    -- conversationTemplate = "seron_kai",
    primaryAttacks = merge(pistoleermid,carbineermid,marksmanmid),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(bh2_enemy, "bh2_enemy")

