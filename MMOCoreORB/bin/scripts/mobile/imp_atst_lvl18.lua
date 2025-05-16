imp_atst_lvl18_enemy = Creature:new {
    objectName = "",
    customName = "AT-ST (lvl18)",
    socialGroup = "imperial",
    faction = "imperial",
    mobType = MOB_ANDROID,
    level = 18,
    chanceHit = 0.5,
    damageMin = 200,
    damageMax = 300,
    baseXp = 200,
    baseHAM = 1800,
    baseHAMmax = 2200,
    armor = 0,
    resists = {25,25,25,25,25,25,25,25,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,
    lightsaberColor = 2,
    templates = {"object/mobile/atst.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_tier_2", chance = 10000000}
			}
		}
	},
    defaultAttack = "defaultdroidattack",
    defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
    --primaryWeapon = "luke_skywalker_weapons",
    --secondaryWeapon = "none",
    conversationTemplate = ""
    --primaryAttacks = merge(lightsabermaster,forcepowermaster),
    --secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(imp_atst_lvl18_enemy, "imp_atst_lvl18_enemy")

