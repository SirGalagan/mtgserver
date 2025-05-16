ahsoka = Creature:new {
    objectName = "",
    customName = "Ahsoka Tano",
    socialGroup = "rebel",
    faction = "rebel",
    level = 10,
    chanceHit = 0.3,
    damageMin = 55,
    damageMax = 60,
    baseXp = 300,
    baseHAM = 500,
    baseHAMmax = 600,
    armor = 2,
    resists = {0,0,0,0,0,0,0,0,0},
    --pvpBitmask = ATTACKABLE,
    --creatureBitmask = NONE,
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = AIENABLED,
    diet = HERBIVORE,

    -- templates = {"object/mobile/r3.iff"},
    -- templates = {"object/creature/player/togruta_female.iff"},
    templates = {"object/mobile/dressed_noble_old_human_male_02.iff"},
    lootGroups = {},
    lightsaberColor = 32,
    primaryWeapon = "luke_skywalker_weapons",
    secondaryWeapon = "none",
    conversationTemplate = "",
    outfit = "ahsoka_outfit",
    -- conversationTemplate = "seron_kai",
    primaryAttacks = merge(lightsabermaster,forcepowermaster),
    secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(ahsoka, "ahsoka")


