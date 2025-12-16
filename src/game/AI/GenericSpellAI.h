// Original code from Nostalrius
// Updated by Giperion
// Turtle Project

#pragma once

#define DEFAULT_MIN_CD 10000
#define DEFAULT_MAX_CD 20000
#define DEFAULT_TARGET GENERIC_TARGET_AUTO

#define GLOBAL_CD_MS 1500
//#define DEBUG_ON

enum eAITargetType : unsigned char
{
	GENERIC_TARGET_VICTIM = 0,
	GENERIC_TARGET_SELF = 1,
	GENERIC_TARGET_HOSTILE_RAND = 2,
	GENERIC_TARGET_HOSTILE_RAND_NOT_TOP = 3,
	GENERIC_TARGET_HOSTILE_IN_RANGE = 4,
	GENERIC_TARGET_FRIEND_NEED_HEAL = 5,
	GENERIC_TARGET_FRIEND_DISPELL_CC = 6,

	GENERIC_TARGET_AUTO = 100
};

enum
{
	SPELL_FLAG_CM = 0x001,
	SPELL_FLAG_APPLY_AURA = 0x002,
	SPELL_FLAG_CAST_ON_AGGRO = 0x004,
	SPELL_FLAG_STOP_ATTACK_TARGET = 0x008,
};

// Generic pour spells simples
struct GenericAISpell
{
	uint32 spellId;

	uint32 minCD;
	uint32 maxCD; /* Ou 0 si pas repetable.*/

	uint32 initialMinCD;
	uint32 initialMaxCD;

	uint8 target;

	uint32 timer;

	// Variables en interne.
	float minRange;
	float maxRange;
	uint32 healValue;

	uint32 spellFlags;
	uint32 targetAuraState;

	uint32 SpellCastFlag = 0;
};

struct MobSpellEntry
{
	uint32 entry;
	GenericAISpell spell;
};


CreatureAI* GetAI_GenericSpellAI(Creature* pCreature);
GenericAISpell BuildGenericAISpell(uint32 spellId, uint32 minCD, uint32 maxCD, uint32 target);
void LoadSpellCacheData(GenericAISpell* spellToModify, SpellEntry const* spellInfos);


//void LoadGenericAISpellsData();

struct GenericSpellMob : public ScriptedAI
{
	turtle_vector<GenericAISpell, Category_AI> m_uiSpells;
	// Si 'true', le mob attaquera a distance tant qu'il aura du mana.
	bool isDistanceCaster;
	bool bCanFightInMelee = true;

	GenericSpellMob(Creature* pCreature);
	GenericAISpell& AddSpell(uint32 spellId, uint32 CDmin, uint32 CDmax, eAITargetType target);
	GenericAISpell& AddSpell(GenericAISpell insertSpell);
	void Finalize();
	virtual void Reset() override;
	virtual void UpdateAI(const uint32 uiDiff) override;

protected:
	void InitializeGenericSpellAI();
};