hangar_officer = Creature:new {
    objectName = "",
    customName = "Hangar Officer",
    socialGroup = "imperial",
    faction = "imperial",
    level = 10,
    chanceHit = 0.8,
    damageMin = 40,
    damageMax = 80,
    baseXp = 750,
    baseHAM = 800,
    baseHAMmax = 1000,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,0},
    pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = 264+JTLINTERESTING,
    diet = HERBIVORE,

    templates = {"object/mobile/dressed_imperial_officer_m.iff"},
    lootGroups = {
                {
                        groups = {
                                {group = "imperial_tier_2", chance = 10000000}
                        }
                }
    },
    conversationTemplate = "hangar_officer_convo_template",
    primaryWeapon = "imperial_carbine",
    secondaryWeapon = "imperial_pistol",
    reactionStf = "@npc_reaction/military",
    -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
    -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
    primaryAttacks = marksmanmaster,
    secondaryAttacks = marksmanmaster

}

CreatureTemplates:addCreatureTemplate(hangar_officer, "hangar_officer")

