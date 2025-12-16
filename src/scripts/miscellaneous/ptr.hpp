#include <cinttypes>
#include <utility>
#include <vector>

// Config
struct BossLocation
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

static constexpr uint16 MAP{ 44 };

static const BossLocation bossLocation[] =
{
    {232.119843f, 25.800516f, 30.823233f, 3.145022f} // Mariella
};

static constexpr uint32 ITEM_BAG{ 4500 };         // Bag item which should be given out
static constexpr uint32 SPELL_VISUAL{ 24240 };    // Visual spell
static constexpr uint32 MONEY_AMOUNT{ 10000000 }; // Define how much money the player should get
static constexpr uint8 PLAYERS_REQUIRED{ 10 };    // Players required for being teleported

// Warlock
static const std::list<std::uint32_t> m_lWarlockBIS =
{
    22506, // Plagueheart Circlet
    21608, // Amulet of Vek'nilash
    22507, // Plagueheart Shoulderpads
    23050, // Cloak of the Necropolis
    22504, // Plagueheart Robe
    21186, // Rockfury Bracers
    22807, // Wraith Blade
    23049, // Sapphiron's Left Eye
    22820, // Wand of Fates
    21585, // Dark Storm Gauntlets
    22730, // Eyestalk Waist Cord
    23070, // Leggings of Polarity
    22508, // Plagueheart Sandals
    23031, // Band of the Inevitable
    19379, // Neltharion's Tear
    21709, // Ring of the Fallen God
    23046  // The Restrained Essence of Sapphiron
};

static const std::list<std::uint32_t> m_lWarlockSpells =
{
    // Weapons
    201, // One-Handed Swords
    227, // Staves
    1180 // Daggers
};

// Mage
static const std::list<std::uint32_t> m_lMageBIS =
{
    22498, // Frostfire Circlet
    23057, // Gem of Trapped Innocents
    22983, // Rime Covered Mantle
    23050, // Cloak of the Necropolis
    22496, // Frostfire Robe
    23021, // The Soul Harvester's Bindings
    22807, // Wraith Blade
    23049, // Sapphiron's Left Eye
    22821, // Doomfinger
    21585, // Dark Storm Gauntlets
    22730, // Eyestalk Waist Cord
    23070, // Leggings of Polarity
    22500, // Frostfire Sandals
    23237, // Ring of the Eternal Flame
    23062, // Frostfire Ring
    23046, // The Restrained Essence of Sapphiron
    19379  // Neltharion's Tear
};

static const std::list<std::uint32_t> m_lMageSpells =
{
    // Weapons
    201, // One-Handed Swords
    227, // Staves
    1180 // Daggers
};

// Hunter
static const std::list<std::uint32_t> m_lHunterBIS =
{
    22438, // Cryptstalker Headpiece
    23053, // Stormrage's Talisman of Seething
    22439, // Cryptstalker Spaulders
    23045, // Shroud of Dominion
    22436, // Cryptstalker Tunic
    22443, // Cryptstalker Wristguards
    22816, // Hatchet of Sundered Bone
    22802, // Kingsfall
    22812, // Nerubian Slavemaker
    16571, // General's Chain Gloves
    22442, // Cryptstalker Girdle
    22437, // Cryptstalker Legguards
    22440, // Cryptstalker Boots
    23067, // Ring of the Cryptstalker
    22961, // Band of Reanimation
    21670, // Badge of the Swarmguard
    23041, // Slayer's Crest

    19319  // Harpy Hide Quiver
};

static const std::list<std::uint32_t> m_lHunterSpells =
{
    674,   // Dual Wield
    264,   // Bows
    201,   // One-Handed Swords
    197,   // Two-Handed Axes
    227,   // Staves
    200,   // Polearms
    202,   // Two-Handed Swords
    196,   // One-Handed Axes
    266,   // Guns
    1180,  // Daggers
    15590, // Fist Weapons
    5011,  // Crossbows
    3127,  // Parry
};

// Paladin
static const std::list<std::uint32_t> m_lHolyPaladinBIS =
{
    19375, // Mish'undare, Circlet of the Mind Flayer
    23057, // Gem of Trapped Innocents
    22429, // Redemption Spaulders
    23050, // Cloak of the Necropolis
    22425, // Redemption Tunic
    21604, // Bracelets of Royal Redemption
    23056, // Hammer of the Twisting Nether
    23075, // Death's Bargain
    23006, // Libram of Light
    20264, // Peacekeeper Gauntlets
    21582, // Grasp of the Old God
    22427, // Redemption Legguards
    22430, // Redemption Boots
    19382, // Pure Elementium Band
    23066, // Ring of Redemption
    23047, // Eye of the Dead
    19395  // Rejuvenating Gem
};

static const std::list<std::uint32_t> m_lRetributionPaladinBIS =
{
    21387, // Avenger's Crown
    18404, // Onyxia Tooth Pendant
    21391, // Avenger's Pauldrons
    23045, // Shroud of Dominion
    21389, // Avenger's Breastplate
    22936, // Wristguards of Vengeance
    22691, // Corrupted Ashbringer
    23203, // Libram of Fervor
    21623, // Gauntlets of the Righteous Champion
    23219, // Girdle of the Mentor
    21390, // Avenger's Legguards
    21388, // Avenger's Greaves
    23038, // Band of Unnatural Forces
    21205, // Signet Ring of the Bronze Dragonflight
    22321, // Heart of Wyrmthalak
    19289  // Darkmoon Card: Maelstrom
};

static const std::list<std::uint32_t> m_lProtectionPaladinBIS =
{
    21387, // Avenger's Crown
    22732, // Mark of C'Thun
    21639, // Pauldrons of the Unrelenting
    22938, // Cryptfiend Silk Cloak
    21389, // Avenger's Breastplate
    18754, // Fel Hardened Bracers
    23577, // The Hungering Cold
    22818, // The Plague Bearer
    22401, // Libram of Hope
    21674, // Gauntlets of Steadfast Determination
    21598, // Royal Qiraji Belt
    19855, // Bloodsoaked Legplates
    21706, // Boots of the Unwavering Will
    21200, // Signet Ring of the Bronze Dragonflight
    21601, // Ring of Emperor Vek'lor
    19431, // Styleen's Impeding Scarab
    18406  // Onyxia Blood Talisman
};

static const std::list<std::uint32_t> m_lPaladinSpells =
{
    // Weapons
    199,  // Two-Handed Maces
    201,  // One-Handed Swords
    197,  // Two-Handed Axes
    200,  // Polearms
    202,  // Two-Handed Swords
    196,  // One-Handed Axes
    198,  // One-Handed Maces
    3127, // Parry
    107,  // Block

    // Proficiencies
    750    // Plate Mail
};

// Priest
static const std::list<std::uint32_t> m_lHolyPriestBIS =
{
    22514, // Circlet of Faith
    21712, // Amulet of the Fallen God
    22515, // Shoulderpads of Faith
    22960, // Cloak of Suturing
    22512, // Robe of Faith
    21604, // Bracelets of Royal Redemption
    23056, // Hammer of the Twisting Nether
    23048, // Sapphiron's Right Eye
    23009, // Wand of the Whispering Dead
    22517, // Gloves of Faith
    21582, // Grasp of the Old God
    22513, // Leggings of Faith
    22516, // Sandals of Faith
    23061, // Ring of Faith
    22939, // Band of Unanswered Prayers
    23027, // Warmth of Forgiveness
    23047  // Eye of the Dead
};

static const std::list<std::uint32_t> m_lShadowPriestBIS =
{
    23035, // Preceptor's Hat
    18814, // Choker of the Fire Lord
    22983, // Rime Covered Mantle
    22731, // Cloak of the Devoured
    23220, // Crystal Webbed Robe
    21611, // Burrower Bracers
    22988, // The End of Dreams
    23049, // Sapphiron's Left Eye
    21603, // Wand of Qiraji Nobility
    21585, // Dark Storm Gauntlets
    19400, // Firemaw's Clutch
    19133, // Fel Infused Leggings
    19131, // Snowblind Shoes
    21709, // Ring of the Fallen God
    21210, // Signet Ring of the Bronze Dragonflight
    19379, // Neltharion's Tear
    23046  // The Restrained Essence of Sapphiron
};

static const std::list<std::uint32_t> m_lPriestSpells =
{
    // Weapons
    227, // Staves
    198, // One-Handed Maces
    1180 // Daggers
};

// Rogue
static const std::list<std::uint32_t> m_lSwordRogueBIS =
{
    22478, // Bonescythe Helmet
    19377, // Prestor's Talisman of Connivery
    22479, // Bonescythe Pauldrons
    23045, // Shroud of Dominion
    22476, // Bonescythe Breastplat
    22483, // Bonescythe Bracers
    23054, // Gressil, Dawn of Ruin
    23577, // The Hungering Cold
    22812, // Nerubian Slavemaker
    22481, // Bonescythe Gauntlets
    21586, // Belt of Never-ending Agony
    22477, // Bonescythe Legplates
    22480, // Bonescythe Sabatons
    23060, // Bonescythe Ring
    23038, // Band of Unnatural Forces
    23041, // Slayer's Crest
    22954  // Kiss of the Spider
};

static const std::list<std::uint32_t> m_lDaggerRogueBIS =
{
    22478, // Bonescythe Helmet
    19377, // Prestor's Talisman of Connivery
    22479, // Bonescythe Pauldrons
    23045, // Shroud of Dominion
    22476, // Bonescythe Breastplat
    22483, // Bonescythe Bracers
    22802, // Kingsfall
    21126, // Death's Sting
    22812, // Nerubian Slavemaker
    22481, // Bonescythe Gauntlets
    21586, // Belt of Never-ending Agony
    22477, // Bonescythe Legplates
    22480, // Bonescythe Sabatons
    23060, // Bonescythe Ring
    23038, // Band of Unnatural Forces
    23041, // Slayer's Crest
    22954  // Kiss of the Spider
};

static const std::list<std::uint32_t> m_lRogueSpells =
{
    // Weapons
    674,   // Dual Wield
    264,   // Bows
    201,   // One-Handed Swords
    198,   // One-Handed Maces
    266,   // Guns
    1180,  // Daggers
    15590, // Fist Weapons
    5011,  // Crossbows
    3127   // Parry
};

// Shaman
static const std::list<std::uint32_t> m_lRestorationShamanBIS =
{
    22466, // Earthshatter Headpiece
    21712, // Amulet of the Fallen God
    22467, // Earthshatter Spaulders
    21583, // Cloak of Clarity
    22464, // Earthshatter Tunic
    22471, // Earthshatter Wristguards
    23056, // Hammer of the Twisting Nether
    22819, // Shield of Condemnation
    22396, // Totem of Life
    21619, // Gloves of the Messiah
    22470, // Earthshatter Girdle
    22465, // Earthshatter Legguards
    22468, // Earthshatter Boots
    21620, // Ring of the Martyr
    23065, // Ring of the Earthshatterer
    17064, // Shard of the Scale
    19395  // Rejuvenating Gem
};

static const std::list<std::uint32_t> m_lElementalShamanBIS =
{
    19375, // Mish'undare, Circlet of the Mind Flayer
    22943, // Malice Stone Pendant
    21376, // Stormcaller's Pauldrons
    23050, // Cloak of the Necropolis
    21671, // Robes of the Battleguard
    21464, // Shackles of the Unscarred
    22988, // The End of Dreams
    23049, // Sapphiron's Left Eye
    23199, // Totem of the Storm
    21585, // Dark Storm Gauntlets
    22730, // Eyestalk Waist Cord
    21375, // Stormcaller's Leggings
    21373, // Stormcaller's Footguards
    21707, // Ring of Swarming Thought
    21709, // Ring of the Fallen God
    19379, // Neltharion's Tear
    23046, // The Restrained Essence of Sapphiron
};

static const std::list<std::uint32_t> m_lEnhancementShamanBIS =
{
    18817, // Crown of Destruction
    18404, // Onyxia Tooth Pendant
    21684, // Mantle of the Desert's Fury
    23045, // Shroud of Dominion
    21374, // Stormcaller's Hauberk
    21602, // Qiraji Execution Bracers
    22798, // Might of Menethil
    22395, // Totem of Rage
    21624, // Gauntlets of Kalimdor
    21586, // Belt of Never-ending Agony
    21651, // Scaled Sand Reaver Leggings
    21705, // Boots of the Fallen Prophet
    17063, // Band of Accuria
    23038, // Band of Unnatural Forces
    22321, // Heart of Wyrmthalak
    19289, // Darkmoon Card: Maelstrom
};

static const std::list<std::uint32_t> m_lShamanSpells =
{
    // Weapons
    199,   // Two-Handed Maces
    197,   // Two-Handed Axes
    227,   // Staves
    196,   // One-Handed Axes
    198,   // One-Handed Maces
    1180,  // Daggers
    15590, // Fist Weapons
    107    // Block
};

// Druid
static const std::list<std::uint32_t> m_lRestorationDruidBIS =
{
    21615, // Don Rigoberto's Lost Hat
    21712, // Amulet of the Fallen God
    22491, // Dreamwalker Spaulders
    22960, // Cloak of Suturing
    22488, // Dreamwalker Tunic
    21604, // Bracelets of Royal Redemption
    23056, // Hammer of the Twisting Nether
    23048, // Sapphiron's Right Eye
    22399, // Idol of Health
    22493, // Dreamwalker Handguards
    21582, // Grasp of the Old God
    22489, // Dreamwalker Legguards
    22492, // Dreamwalker Boots
    21620, // Ring of the Martyr
    22939, // Band of Unanswered Prayers
    23047, // Eye of the Dead
    23027  // Warmth of Forgiveness
};

static const std::list<std::uint32_t> m_lTankDruidBIS =
{
    21693, // Guise of the Devourer
    22732, // Mark of C'Thun
    20194, // Defiler's Leather Shoulders
    22938, // Cryptfiend Silk Cloak
    23226, // Ghoul Skin Tunic
    22663, // Polar Bracers
    943,   // Warden Staff
    23198, // Idol of Brutality
    21605, // Gloves of the Hidden Temple
    21675, // Thick Qirajihide Belt
    22740, // Outrider's Leather Pants
    19381, // Boots of the Shadow Flame
    21601, // Ring of Emperor Vek'lor
    23018, // Signet of the Fallen Defender
    13966, // Mark of Tyranny
    11811  // Smoking Heart of the Mountain
};

static const std::list<std::uint32_t> m_lBalanceDruidBIS =
{
    19375, // Mish'undare, Circlet of the Mind Flayer
    23057, // Gem of Trapped Innocents
    22983, // Rime Covered Mantle
    23050, // Cloak of the Necropolis
    19682, // Bloodvine Vest
    23021, // The Soul Harvester's Bindings
    22988, // The End of Dreams
    23049, // Sapphiron's Left Eye
    23197, // Idol of the Moon
    21585, // Dark Storm Gauntlets
    22730, // Eyestalk Waist Cord
    19683, // Bloodvine Leggings
    19684, // Bloodvine Boots
    23025, // Seal of the Damned
    21709, // Ring of the Fallen God
    19379, // Neltharion's Tear
    23046, // The Restrained Essence of Sapphiron
};

static const std::list<std::uint32_t> m_lFeralDruidBIS =
{
    8345,  // Wolfshead Helm
    19377, // Prestor's Talisman of Connivery
    21665, // Mantle of Wicked Revenge
    21710, // Cloak of the Fallen God
    23226, // Ghoul Skin Tunic
    21602, // Qiraji Execution Bracers
    22988, // The End of Dreams
    13385, // Tome of Knowledge
    23198, // Idol of Brutality
    21672, // Gloves of Enforcement
    21586, // Belt of Never-ending Agony
    23071, // Leggings of Apocalypse
    21493, // Boots of the Vanguard
    23038, // Band of Unnatural Forces
    19432, // Circle of Applied Force
    19406, // Drake Fang Talisman
    23041  // Slayer's Crest
};

static const std::list<std::uint32_t> m_lDruidSpells =
{
    // Weapons
    199,   // Two-Handed Maces
    227,   // Staves
    198,   // One-Handed Maces
    1180,  // Daggers
    15590  // Fist Weapons
};

// Warrior
static const std::list<std::uint32_t> m_lProtectionWarriorBIS =
{
    22418, // Dreadnaught Helmet
    22732, // Mark of C'Thun
    22419, // Dreadnaught Pauldrons
    22938, // Cryptfiend Silk Cloak
    22416, // Dreadnaught Breastplate
    22423, // Dreadnaught Bracers
    23577, // The Hungering Cold
    23043, // The Face of Death
    19368, // Dragonbreath Hand Cannon
    22421, // Dreadnaught Gauntlets
    22422, // Dreadnaught Waistguard
    22417, // Dreadnaught Legplates
    22420, // Dreadnaught Sabatons
    23059, // Ring of the Dreadnaught
    21601, // Ring of Emperor Vek'lor
    19431, // Styleen's Impeding Scarab
    19406  // Drake Fang Talisman
};

static const std::list<std::uint32_t> m_lFuryWarriorBIS =
{
    12640, // Lionheart Helm
    18404, // Onyxia Tooth Pendant
    21330, // Conqueror's Spaulders
    23045, // Shroud of Dominion
    23000, // Plated Abomination Ribcage
    22936, // Wristguards of Vengeance
    23054, // Gressil, Dawn of Ruin
    23577, // The Hungering Cold
    17069, // Striker's Mark
    21581, // Gauntlets of Annihilation
    19137, // Onslaught Girdle
    22385, // Titanic Leggings
    19381, // Boots of the Shadow Flame
    23038, // Band of Unnatural Forces
    19384, // Master Dragonslayer's Ring
    19406, // Drake Fang Talisman
    21670  // Badge of the Swarmguard
};

static const std::list<std::uint32_t> m_lWarriorSpells =
{
    // Weapons
    674,   // Dual Wield
    199,   // Two-Handed Maces
    264,   // Bows
    201,   // One-Handed Swords
    197,   // Two-Handed Axes
    227,   // Staves
    200,   // Polearms
    202,   // Two-Handed Swords
    196,   // One-Handed Axes
    198,   // One-Handed Maces
    266,   // Guns
    1180,  // Daggers
    15590, // Fist Weapons
    5011,  // Crossbows
    3127,  // Parry
    107,   // Block

    // Proficiencies
    750,   // Plate Mail

    // Abilities
    2458,  // Berserker Stance
    71     // Defensive Stance
};

static const std::list<std::uint32_t> m_lWorldBuffs =
{
    22888, // Rallying Cry of the Dragonslayer
    24425, // Spirit of Zandalar
    16609, // Warchief's Blessing
    22818, // Mol'dar's Moxie
    22820, // Slip'kik's Savvy
    22817, // Fengus' Ferocity
    15366, // Songflower Serenade
    23737  // Sayge's Dark Fortune of Stamina
};


enum class ClassesAndRoles : uint32
{
    WARLOCK = 20,
    MAGE,
    HUNTER,
    PALADIN_HOLY,
    PALADIN_RETRIBUTION,
    PALADIN_PROTECTION,
    PRIEST_HOLY,
    PRIEST_SHADOW,
    ROGUE_SWORD,
    ROGUE_DAGGER,
    SHAMAN_RESTORATION,
    SHAMAN_ELEMENTAL,
    SHAMAN_ENCHANCEMENT,
    DRUID_RESTORATION,
    DRUID_TANK,
    DRUID_BALANCE,
    DRUID_FERAL,
    WARRIOR_PROTECTION,
    WARRIOR_FURY
};

static const std::vector<std::tuple<ClassesAndRoles, std::list<std::uint32_t>, std::list<std::uint32_t>>> m_vBisItemsAndSpells =
{
    std::make_tuple(ClassesAndRoles::WARLOCK, m_lWarlockBIS, m_lWarlockSpells),
    std::make_tuple(ClassesAndRoles::MAGE, m_lMageBIS, m_lMageSpells),
    std::make_tuple(ClassesAndRoles::HUNTER, m_lHunterBIS, m_lHunterSpells),
    std::make_tuple(ClassesAndRoles::PALADIN_HOLY, m_lHolyPaladinBIS, m_lPaladinSpells),
    std::make_tuple(ClassesAndRoles::PALADIN_RETRIBUTION, m_lRetributionPaladinBIS, m_lPaladinSpells),
    std::make_tuple(ClassesAndRoles::PALADIN_PROTECTION, m_lProtectionPaladinBIS, m_lPaladinSpells),
    std::make_tuple(ClassesAndRoles::PRIEST_HOLY, m_lHolyPriestBIS, m_lPriestSpells),
    std::make_tuple(ClassesAndRoles::PRIEST_SHADOW, m_lShadowPriestBIS, m_lPriestSpells),
    std::make_tuple(ClassesAndRoles::ROGUE_SWORD, m_lSwordRogueBIS, m_lRogueSpells),
    std::make_tuple(ClassesAndRoles::ROGUE_DAGGER, m_lDaggerRogueBIS, m_lRogueSpells),
    std::make_tuple(ClassesAndRoles::SHAMAN_RESTORATION, m_lRestorationShamanBIS, m_lShamanSpells),
    std::make_tuple(ClassesAndRoles::SHAMAN_ELEMENTAL, m_lElementalShamanBIS, m_lShamanSpells),
    std::make_tuple(ClassesAndRoles::SHAMAN_ENCHANCEMENT, m_lEnhancementShamanBIS, m_lShamanSpells),
    std::make_tuple(ClassesAndRoles::DRUID_RESTORATION, m_lRestorationDruidBIS, m_lDruidSpells),
    std::make_tuple(ClassesAndRoles::DRUID_TANK, m_lTankDruidBIS, m_lDruidSpells),
    std::make_tuple(ClassesAndRoles::DRUID_BALANCE, m_lBalanceDruidBIS, m_lDruidSpells),
    std::make_tuple(ClassesAndRoles::DRUID_FERAL, m_lFeralDruidBIS, m_lDruidSpells),
    std::make_tuple(ClassesAndRoles::WARRIOR_PROTECTION, m_lProtectionWarriorBIS, m_lWarriorSpells),
    std::make_tuple(ClassesAndRoles::WARRIOR_FURY, m_lFuryWarriorBIS, m_lWarriorSpells)
};

/*

REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `phase_quest_action`, `script_name`) VALUES
(2000100, 10341, 0, 0, 0, 'Keklord Faelan Tordring', 'PTR NPC', 0, 60, 60, 700000, 700000, 5000000, 5000000, 4500, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'ptr_npc_keklord'),
(2000101, 16259, 0, 0, 0, 'Turtle', 'PTR NPC', 0, 60, 60, 700000, 700000, 5000000, 5000000, 4500, 35, 4, 1.5, 1.5, 0.2, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'ptr_npc_vendor');

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(3000009, 2000100, 0, 0, 0, 451, 0, 0, 4579.22, -300.771, 270.233, 1.6003, 25, 25, 0, 100, 100, 0, 1, 200),
(3000010, 2000101, 0, 0, 0, 451, 0, 0, 4577.31, -301.759, 270.235, 1.53745, 25, 25, 0, 100, 100, 0, 1, 200);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES
(1000100, 1000100);

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(1000100, 'Hi, thanks for participating in Scarlet Citadel test waves.$B\nPlease feel free to take your role and get ported to the dungeon!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(2000101, 13510, 0, 0, 0, 0), -- Flask of the Titans
(2000101, 13511, 0, 0, 0, 0), -- Flask of Distilled Wisdom
(2000101, 13512, 0, 0, 0, 0), -- Flask of Supreme Power
(2000101, 13513, 0, 0, 0, 0), -- Flask of Chromatic Resistance
(2000101, 20081, 0, 0, 0, 0), -- Swiftness of Zanza
(2000101, 13452, 0, 0, 0, 0), -- Elixir of the Mongoose
(2000101, 20007, 0, 0, 0, 0), -- Mageblood Potion
(2000101, 3825, 0, 0, 0, 0),  -- Elixir of Fortitude
(2000101, 13445, 0, 0, 0, 0), -- Elixir of Superior Defense
(2000101, 20004, 0, 0, 0, 0), -- Major Troll's Blood Potion
(2000101, 9088, 0, 0, 0, 0),  -- Gift of Arthas
(2000101, 12451, 0, 0, 0, 0), -- Juju Power
(2000101, 9206, 0, 0, 0, 0),  -- Elixir of Giants
(2000101, 12460, 0, 0, 0, 0), -- Juju Might
(2000101, 12820, 0, 0, 0, 0), -- Winterfall Firewater
(2000101, 13454, 0, 0, 0, 0), -- Greater Arcane Elixir
(2000101, 9264, 0, 0, 0, 0),  -- Elixir of Shadow Power
(2000101, 21546, 0, 0, 0, 0), -- Elixir of Greater Firepower
(2000101, 17708, 0, 0, 0, 0), -- Elixir of Frost Power
(2000101, 13461, 0, 0, 0, 0), -- Greater Arcane Protection Potion
(2000101, 13457, 0, 0, 0, 0), -- Greater Fire Protection Potion
(2000101, 13456, 0, 0, 0, 0), -- Greater Frost Protection Potion
(2000101, 13458, 0, 0, 0, 0), -- Greater Nature Protection Potion
(2000101, 13459, 0, 0, 0, 0), -- Greater Shadow Protection Potion
(2000101, 13928, 0, 0, 0, 0), -- Grilled Squid
(2000101, 20452, 0, 0, 0, 0), -- Smoked Desert Dumplings
(2000101, 13931, 0, 0, 0, 0), -- Nightfin Soup
(2000101, 21151, 0, 0, 0, 0), -- Rumsey Rum Black Label
(2000101, 20748, 0, 0, 0, 0), -- Brilliant Mana Oil
(2000101, 20749, 0, 0, 0, 0), -- Brilliant Wizard Oil
(2000101, 18262, 0, 0, 0, 0), -- Elemental Sharpening Stone
(2000101, 13444, 0, 0, 0, 0), -- Major Mana Potion
(2000101, 3387, 0, 0, 0, 0),  -- Limited Invulnerability Potion
(2000101, 9030, 0, 0, 0, 0),  -- Restorative Potion
(2000101, 5634, 0, 0, 0, 0),  -- Free Action Potion
(2000101, 20520, 0, 0, 0, 0), -- Dark Rune
(2000101, 5175, 0, 0, 0, 0),  -- Earth Totem
(2000101, 5176, 0, 0, 0, 0),  -- Fire Totem
(2000101, 5177, 0, 0, 0, 0),  -- Water Totem
(2000101, 5178, 0, 0, 0, 0);  -- Air Totem

*/
