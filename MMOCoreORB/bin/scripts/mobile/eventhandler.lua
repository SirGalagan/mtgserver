eventhandler_npc = Creature:new {
    objectName = "",
    customName = "Event Handler",
    socialGroup = "townsperson",
    faction = "",
    level = 1,
    chanceHit = 0.8,
    damageMin = 400,
    damageMax = 800,
    baseXp = 100,
    baseHAM = 20,
    baseHAMmax = 24,
    armor = 1,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = NONE,
    creatureBitmask = PACK,
    optionsBitmask = 265,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    templates = {"object/mobile/ra7_bug_droid.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "eventhandler_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(eventhandler_npc, "eventhandler_npc")

