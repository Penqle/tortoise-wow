#ifndef DEF_LOWER_KARAZHAN_HALLS_H
#define DEF_LOWER_KARAZHAN_HALLS_H

enum
{
	DATA_BROOD_QUEEN_ARAXXNA,
	DATA_BLACKWALD_II,
	DATA_CLAWLORD_HOWLFANG,
	DATA_GRIZIKIL,
	DATA_MOROES,
	DATA_DR_CHAMPION,
	DATA_MAX_ENCOUNTER,

	DATA_MOROES_STAGE,
	DATA_DR_APPRETINCE_FIRST,
	DATA_DR_APPRETINCE_SECOND,

	NPC_DARK_RIDER_CHAMPION = 61204,
	NPC_BROOD_QUEEN_ARAXXNA = 61221,
	NPC_LORD_BLACKWALD_II = 61222,
	NPC_MOROES = 61225,
};

class instance_lower_karazhan_halls : public ScriptedInstance
{
public:
	instance_lower_karazhan_halls(Map* pMap);
	~instance_lower_karazhan_halls() override {}

	void Initialize() override;

	void OnCreatureCreate(Creature* pCreature) override;
	void OnCreatureRespawn(Creature* pCreature) override;

	uint32 GetData(uint32 uiData) override;
	uint64 GetData64(uint32 uiData) override;
	void SetData(uint32 uiType, uint32 uiData) override;

	void Update(uint32 diff) override;

	const char* Save() override { return m_strInstData.c_str(); }
	void Load(const char* chrIn) override;

	bool IsEncounterInProgress() const override;

protected:
	uint64 m_uiBossGUID[DATA_MAX_ENCOUNTER]{};
	uint32 m_uiBossState[DATA_MAX_ENCOUNTER]{};
	uint64 m_uiDRChampionGUID{};
	uint64 m_uiDRAppretinceGUID[2]{};
	uint32 m_uiMoroesStage{};
	std::string m_strInstData{};
};

#endif
