md7z_npc = Creature:new {
    objectName = "",
    customName = "MD-7Z",
    socialGroup = "townsperson",
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
    optionsBitmask = 265,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    templates = {"object/mobile/ra7_bug_droid.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "md7z_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(md7z_npc, "md7z_npc")

