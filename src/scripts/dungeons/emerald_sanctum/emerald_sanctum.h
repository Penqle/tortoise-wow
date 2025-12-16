#ifndef DEF_EMERALD_SANCTUM_H
#define DEF_EMERALD_SANCTUM_H

enum
{
	DATA_SOLNIUS = 1,
	DATA_SANCTUM_DREAMER,
	DATA_SANCTUM_DRAGONKIN,
	DATA_SANCTUM_WYRM,
	DATA_SANCTUM_SUPRESSOR,
	DATA_SANCTUM_WYRMKIN,
	DATA_SANCTUM_SCALEBANE,
	DATA_ERENNIUS,
	MAX_DATA,
	SAY_PHASE_1,
	SPELL_CORROSIVE_BOLT = 56507,
	SPELL_EMERALD_ROT = 56508,
	SPELL_ACID_BREATH = 24839,
	MODEL_DRAGON = 15364,
	SPELL_DREAMESTATE = 56500,
	SPELL_REFLECTION = 27564,
	SPELL_POISON_BOLT_VOLLEY = 24099,
	SPELL_EMERALD_SUPRESSION = 56501,
	SPELL_EMERALD_AURA = 56502,
	SPELL_ACID_SPIT = 26050,
	SPELL_WYRMKINS_VENOM = 56503,
	SPELL_CLEAVE = 19983,
	SPELL_SCALEBANE_INTIMIDATION = 56504,
	SPELL_HOWL_OF_ERRENIUS = 56506,
	SPELL_CURSE_OF_ERENNIUS = 56505,
	SPELL_BANE_OF_ERANIKUS = 56510,
	SPELL_SANCTUM_MIND_DECAY = 56512,
	SPELL_DREAMFEVER = 56514,
	SPELL_EMERALD_INSTABILITY = 56516,
	SPELL_CALL_OF_NIGHTMARE = 46079,
	SPELL_EXPULSION_OF_CORRUPTION = 46081,
	SPELL_WALL_OF_ERENNIUS = 46080,
	SPELL_GREEN_DRAGON_BINDING = 46082,
	SPELL_SUMMON_PLAYER = 26229,

	NPC_SOLNIUS = 60748,
	NPC_SANCTUM_DREAMER = 60742,
	NPC_SANCTUM_DRAGONKIN = 60743,
	NPC_SANCTUM_WYRM = 60744,
	NPC_SANCTUM_SUPRESSOR = 61212,
	NPC_SANCTUM_WYRMKIN = 60745,
	NPC_SANCTUM_SCALEBANE = 60746,
	NPC_ERENNIUS = 60747,

	ERENNIUS_SAY_SOUND_1 = 60376,
	ERENNIUS_SAY_SOUND_2 = 60377,
	ERENNIUS_SAY_SOUND_3 = 60378,

	SOLNIUS_SAY_SOUND_1 = 60379,
	SOLNIUS_SAY_SOUND_2 = 60380,
	SOLNIUS_SAY_SOUND_3 = 60381,

	GO_ERRENIUS_CHEST = 2020042,
};

template <typename Functor>
void DoAfterTime(Creature* pCreature, const uint32& uiTime, Functor&& function)
{
	pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
}

class instance_emerald_sanctum : public ScriptedInstance
{
public:
	instance_emerald_sanctum(Map* pMap);
	~instance_emerald_sanctum() override {}

	void Initialize() override;

	void OnCreatureCreate(Creature* pCreature) override;
	void OnCreatureDeath(Creature* pCreature) override;

	uint64 GetData64(uint32 uiData) override;
	bool IsEncounterInProgress() const override;

	uint32 GetData(uint32 /*Type*/) override;
	void SetData(uint32 /*Type*/, uint32 /*Data*/) override;


	GuidList GetTrashGUID() { return m_mTrashGUID; }

protected:
	uint64 m_uiSolniusGUID;
	uint64 m_uiErenniusGUID;
	GuidList m_mTrashGUID;
	uint32 m_encounters[MAX_DATA]{};

};

#endif
