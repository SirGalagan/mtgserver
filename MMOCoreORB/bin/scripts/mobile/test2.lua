test2_npc = Creature:new {
    objectName = "",
    customName = "Test2",
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

    templates = {"object/mobile/dressed_jedi_trainer_chiss_male_01.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "seron_kai_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(test2_npc, "test2_npc")

