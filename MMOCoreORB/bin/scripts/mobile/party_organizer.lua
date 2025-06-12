party_organizer = Creature:new {
    objectName = "",
    customName = "Party Organizer",
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

    templates = {"object/mobile/dressed_noble_old_human_female_01.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "party_organizer_convo_template",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(party_organizer, "party_organizer")

