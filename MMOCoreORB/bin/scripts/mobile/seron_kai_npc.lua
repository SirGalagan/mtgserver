seron_kai_npc = Creature:new {
    objectName = "",
    customName = "Seron Kai",
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

    templates = {"object/mobile/dressed_jedi_trainer_old_human_male_01.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "seron_kai_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(seron_kai_npc, "seron_kai_npc")

