r3p5 = Creature:new {
    objectName = "",
    customName = "R3-P5",
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
    --templates = {"object/mobile/21b_surgical_droid.iff"},
    templates = {"object/mobile/r3.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "r3p5_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(r3p5, "r3p5")

