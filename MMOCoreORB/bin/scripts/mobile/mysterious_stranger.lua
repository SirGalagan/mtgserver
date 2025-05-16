mysterious_stranger_npc = Creature:new {
    objectName = "",
    customName = "mysterious stranger",
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
    optionsBitmask = 264,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_commoner_tatooine_ishitib_male_02.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "mysterious_stranger_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(mysterious_stranger_npc, "mysterious_stranger_npc")

