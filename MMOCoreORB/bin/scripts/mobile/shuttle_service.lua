shuttle_service = Creature:new {
    objectName = "",
    customName = "Officer",
    socialGroup = "townsperson",
    faction = "",
    level = 1,
    chanceHit = 0.8,
    damageMin = 4,
    damageMax = 8,
    baseXp = 1000,
    baseHAM = 2000,
    baseHAMmax = 24000,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = NONE,
    creatureBitmask = PACK,
    optionsBitmask = 265,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    templates = {"object/mobile/dressed_imperial_officer_m.iff"},
    --templates = {"object/mobile/r3.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "shuttle_service_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(shuttle_service, "shuttle_service")

