test4_npc = Creature:new {
    objectName = "",
    customName = "Test4",
    socialGroup = "jedi",
    faction = "",
    level = 90,
    chanceHit = 0.8,
    damageMin = 400,
    damageMax = 800,
    baseXp = 10000,
    baseHAM = 20000,
    baseHAMmax = 24000,
    armor = 1,
    resists = {35,35,35,35,35,35,35,35,35},
    pvpBitmask = NONE,
    creatureBitmask = PACK,
    optionsBitmask = 264,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_dark_jedi_human_female_01.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "seron_kai_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(test4_npc, "test4_npc")

