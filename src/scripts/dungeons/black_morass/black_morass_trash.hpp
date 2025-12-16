/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsInfiniteDragonspawn
{
	static constexpr uint32 SPELL_REND{ 16509 };
	static constexpr uint32 SPELL_CLEAVE{ 19642 };
}

namespace nsInfiniteRiftGuard
{
	static constexpr uint32 SPELL_RUSHING_CHARGE{ 22911 };
	static constexpr uint32 SPELL_ECHOING_ROAR{ 10967 };
}

namespace nsInfiniteRiftWeaver
{
	static constexpr uint32 SPELL_TIME_STOP{ 23171 };
	static constexpr uint32 SPELL_SHADOW_SHOCK{ 20603 };
	static constexpr uint32 SPELL_DARKEN_VISION{ 5514 };
	static constexpr uint32 SPELL_MIND_BLAST{ 10947 };
}

namespace nsInfiniteWhelp
{
	static constexpr uint32 SPELL_ARCANE_EXPLOSION{ 26643 };

	enum class Phase : uint8
	{
		ONE,
		TWO
	};
}

namespace nsInfiniteTimeripper
{
	static constexpr uint32 NPC_DRAGONSPAWN{ 65123 };

	static constexpr uint32 AURA_SHADOWGUARD{ 19312 };

	enum class Phase : uint8
	{
		ONE,
		TWO,
		THREE,
		FOUR,
		FIVE
	};
}

namespace nsInfiniteRiftlord
{
	static constexpr uint32 SPELL_DEMO_SHOUT{ 19778 };
	static constexpr uint32 SPELL_WHIRLWIND{ 24236 };
	static constexpr uint32 SPELL_THUNDERCLAP{ 8732 };
}

namespace nsAqirAdd
{
	static constexpr uint32 NPC_CLERIC { 65107 };
	static constexpr uint32 NPC_WARRIOR{ 65108 };
	static constexpr uint32 NPC_DRONE{ 65109 };
	static constexpr uint32 NPC_POISONCLOUD{ 65120 };

	static constexpr uint32 SPELL_MIND_BLAST{ 26048 };
	static constexpr uint32 SPELL_HEAL{ 11642 };
	static constexpr uint32 SPELL_SHADOW_STRIKE{ 22574 };
	static constexpr uint32 SPELL_PIERCING_SHADOW{ 16429 };
	static constexpr uint32 SPELL_POISON_BOLT_VOLLEY{ 24099 };
	static constexpr uint32 SPELL_PLAGUE_CLOUD{ 23861 };
	static constexpr uint32 SPELL_SHIELD{ 10901 };

	static constexpr uint32 AURA_SHADOWFORM{ 15473 };
}

namespace nsSwampMob
{
	static constexpr uint32 NPC_PYTHON{ 65110 };
	static constexpr uint32 NPC_CROC{ 65111 };
	static constexpr uint32 NPC_TARANTULA{ 65112 };

	static constexpr uint32 SPELL_POISON{ 24097 };
	static constexpr uint32 SPELL_WOUND{ 16549 };
	static constexpr uint32 SPELL_PARALYZING_POISON{ 3609 };
}

namespace nsBossChronar
{
	static constexpr uint32 SPELL_SHOUT { 18328 };
	static constexpr uint32 SPELL_MORTAL_STRIKE { 13737 };
	static constexpr uint32 SPELL_SWEEPING_SLAM { 12887 };
	static constexpr uint32 SPELL_REFLECTION { 22067 };
	static constexpr uint32 SPELL_ENRAGE { 28131 };
	static constexpr uint32 SPELL_TELEPORT{ 26638 };
}

namespace nsBossHarbringer
{
	static constexpr uint32 NPC_LARVAE { 65115 };

	static constexpr uint32 SPELL_VEIL_OF_SHADOW { 28440 };
	static constexpr uint32 SPELL_SHADOWBOLT_VOLLEY { 25586 };
	static constexpr uint32 SPELL_SHADOWFORM { 16592 };
	static constexpr uint32 SPELL_SHADOW_BURST { 28447 };
	static constexpr uint32 SPELL_CAUSE_INSANITY { 26079 };
}

namespace nsBossEpochronos
{
	static constexpr uint32 SPELL_SAND_BREATH { 20717 };
	static constexpr uint32 SPELL_SWOOP { 23919 };
	static constexpr uint32 SPELL_ARCANE_BLAST { 24857 };
	static constexpr uint32 SPELL_BANISH { 18647 };
	static constexpr uint32 SPELL_TELEPORT{ 26638 };

	static constexpr uint32 NPC_LICH_KING { 65117 };
	static constexpr uint32 NPC_KAELTHAS { 65118 };
	static constexpr uint32 NPC_VASHJ { 65119 };
}

namespace nsShade
{
	static constexpr uint32 SPELL_SCREAMS{ 7074 };
	static constexpr uint32 SPELL_DEATHCOIL{ 28412 };
	static constexpr uint32 SPELL_DEATHNDECAY{ 11433 };
	static constexpr uint32 SPELL_CONE_OF_FIRE{ 19630 };
	static constexpr uint32 SPELL_AMPLIFY_FLAMES{ 9482 };
	static constexpr uint32 SPELL_PYROBLAST{ 20228 };
	static constexpr uint32 SPELL_CHAIN_LIGHTNING{ 23106 };
	static constexpr uint32 SPELL_LIGHTNING_BOLT{ 15234 };
	static constexpr uint32 SPELL_LIGHTNING_CLOUD{ 26550 };
	static constexpr uint32 SPELL_PLAGUE{ 19280 };
	static constexpr uint32 SPELL_DARKSTRIKE{ 19777 };

	static constexpr uint32 AURA_LIGHTNING_SHIELD{ 20545 };

	static constexpr uint32 NPC_LICH_KING{ 65117 };
	static constexpr uint32 NPC_KAELTHAS{ 65118 };
	static constexpr uint32 NPC_VASHJ{ 65119 };
}

namespace nsRotmaw
{
	static constexpr uint32 SPELL_CONSUME{ 25371 };
	static constexpr uint32 SPELL_MORTAL_WOUND{ 28467 };
	static constexpr uint32 SPELL_SUNDER{ 25051 };
	static constexpr uint32 SPELL_KNOCKBACK{ 10689 };
	static constexpr uint32 SPELL_ROT{ 7102 };
	static constexpr uint32 SPELL_TAIL_SWEEP{ 15847 };
}

namespace nsMosshear
{
	static constexpr uint32 AURA_THORNS{ 8148 };
	static constexpr uint32 SPELL_REJUV{ 20664 };
	static constexpr uint32 SPELL_DREDGE_SICKNESS{ 14535 };
	static constexpr uint32 SPELL_TANGLE_ROOTS{ 20699 };
	static constexpr uint32 SPELL_MOSS_FEET{ 6870 };
	static constexpr uint32 SPELL_MOSS_HANDS{ 6866 };
	static constexpr uint32 SPELL_STEALTH{ 1787 };

	enum class Phase : uint8
	{
		ONE,
		TWO,
		THREE
	};
}

namespace nsAntnormi
{
	static constexpr uint32 SPELL_THRASH{ 21919 };
	static constexpr uint32 SPELL_COWERING_ROAR{ 16096 };
	static constexpr uint32 SPELL_SHADOW_SHOCK{ 17234 };
	static constexpr uint32 SPELL_ENRAGE{ 28131 };
}

namespace nsInjuredDefender
{
	static constexpr uint32 SPELL_TELEPORT{ 26638 };

	static constexpr uint32 NPC_DEFENDER{ 65001 };
	static constexpr uint32 NPC_DRAGONSPAWN{ 65100 };

	enum class Phase : uint8
	{
		ONE,
		TWO,
		THREE,
		FOUR
	};
}

namespace nsLogisticalOfficer
{
	static constexpr uint32 SPELL_ARCANE_CHANNEL{ 23017 };
	static constexpr uint32 SPELL_TELEPORT{ 26638 };
	static constexpr uint32 SPELL_SUBTLETY{ 28398 };

	static constexpr uint32 NPC_DEFENDER{ 65001 };
	static constexpr uint32 NPC_DRAGONSPAWN{ 65100 };

	static constexpr uint32 GOB_GHOST_GATE{ 180322 };
	static constexpr uint32 GOB_SAND_WALL{ 2010865 };
	static constexpr uint32 GOB_PORTAL_GROUND_LEFT{ 5000099 };
	static constexpr uint32 GOB_PORTAL_GROUND_RIGHT{ 5000101 };
	static constexpr uint32 GOB_PORTAL_WATERFALL{ 2002582 };
	static constexpr uint32 GOB_PORTAL_AZSHARA_BUILDING{ 2002578 };
	static constexpr uint32 GOB_PORTAL_NAXX_ZIG{ 2002588 };
	static constexpr uint32 GOB_PORTAL_THUNDERBLUFF{ 2002587 };
	static constexpr uint32 GOB_PORTAL_STORMWIND{ 2002585 };
	static constexpr uint32 GOB_PORTAL_ORG{ 2002583 };
	static constexpr uint32 GOB_PORTAL_SUMMON{ 2010853 };
	static constexpr uint32 GOB_PORTAL_UC{ 2002588 };

	enum class Phase : uint8
	{
		ONE,
		TWO,
		THREE,
		FOUR,
		FIVE,
		SIX,
		SEVEN
	};
}

namespace nsTemporalBronzeDisc
{
	static constexpr uint32 NPC_LARGE_TIME_RIFT{ 91001 };

	static constexpr uint32 SPELL_TELEPORT{ 26638 };
	static constexpr uint32 SPELL_ARCANE_CHANNELING{ 23017 };
	static constexpr uint32 SPELL_ARCANE_EXPLOSION{ 22460 };

	struct cotDataStruct
	{
		time_t m_itemTimer{};
	};

	static cotDataStruct cotData{};
}