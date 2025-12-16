#ifndef _CHARACTER_DATABASE_CACHE_H
#define _CHARACTER_DATABASE_CACHE_H

#include "Common.h"

// pet_spell_cooldown
struct PetSpellCoodown
{
    uint32 spell;
    uint64 time;
};

typedef turtle_vector<PetSpellCoodown, Category_Pet> PetSpellCDs;

// pet_spell
struct PetSpellCache
{
    uint32 spell;
    uint8  active;
};
typedef turtle_vector<PetSpellCache, Category_Pet> PetSpells;

// pet_aura
struct PetAuraCache
{
    uint64 caster_guid;
    uint32 item_guid, spell;
    uint32 stackcount, remaincharges;
    int32 maxduration, remaintime;
    uint32 effIndexMask;

    int32 basepoints[3];
    uint32 periodictime[3];
};
typedef turtle_vector<PetAuraCache, Category_Pet> PetAuras;


struct CharacterPetCache
{
    // character_pet
    uint32 id, entry, modelid, level, exp, loyalty;
    uint32 slot, curhealth, curmana, curhappiness, resettalents_cost;
    uint32 resettalents_time, CreatedBySpell, PetType;
    int32 trainpoint, loyaltypoints;
    uint64 owner, savetime;
    uint8 Reactstate;
    std::string name, abdata, TeachSpelldata;
    bool renamed;
    // pet_spell
    PetSpells   spells;
    // pet_spell_cooldown
    PetSpellCDs spellCooldown;
    // pet_aura
    PetAuras    auras;
};

typedef turtle_vector<CharacterPetCache*, Category_Pet> CharPetVector;
typedef std::map<uint32 /*owner guid*/, CharPetVector> CharPetMap;
typedef std::map<uint32 /*pet guid*/, CharacterPetCache*> PetGuidToPetMap;

class CharacterDatabaseCache
{
    public:
        CharacterDatabaseCache();
        ~CharacterDatabaseCache();

        void LoadAll(uint32 singlePetId = 0);

        void LoadCharacterPet(uint32 singlePetId);
        void LoadPetSpell(uint32 singlePetId);
        void LoadPetSpellCooldown(uint32 singlePetId);
        void LoadPetAura(uint32 singlePetId);

        CharacterPetCache* GetCharacterPetCacheByOwnerAndId(uint64 owner, uint32 id);
        CharacterPetCache* GetCharacterCurrentPet(uint64 owner);
        CharacterPetCache* GetCharacterPetByOwnerAndEntry(uint64 owner, uint32 entry);
        CharacterPetCache* GetCharacterPetByOwner(uint64 owner);
        CharacterPetCache* GetCharacterPetById(uint32 id); // Very slow method (iterates over all the stored pets)
        void CharacterPetSetOthersNotInSlot(CharacterPetCache* pCache);
        void InsertCharacterPet(CharacterPetCache* cache);
        void DeleteCharacterPetById(uint32 id);
        CharPetMap const& GetCharPetsMap() const { return m_petsByCharacter; }
        uint32 GetNextAvailablePetNumber(uint32 minimumValue) const;

    protected:
        // @TODO: Lock these structures for thread safety, and process stable opcodes per map
        CharPetMap      m_petsByCharacter;
        PetGuidToPetMap m_petsByGuid;

};

extern CharacterDatabaseCache sCharacterDatabaseCache;


#endif
