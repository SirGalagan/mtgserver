jedi_master_vantos_npc = Creature:new {
    objectName = "",
    customName = "Jedi Master Vantos",
    socialGroup = "jedi",
    faction = "",
    level = 1,
    chanceHit = 0.0,
    damageMin = 4,
    damageMax = 8,
    baseXp = 100,
    baseHAM = 100,
    baseHAMmax = 150,
    armor = 1,
    resists = {0,0,0,0,0,0,0,0,0},
    --pvpBitmask = NONE,
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK,
    optionsBitmask = 264,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_jedi_trainer_twilek_female_01.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "vantos_convo_template",
    -- conversationTemplate = "seron_kai",
    attacks = {}
}

CreatureTemplates:addCreatureTemplate(jedi_master_vantos_npc, "jedi_master_vantos_npc")

