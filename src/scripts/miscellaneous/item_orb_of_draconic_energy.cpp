#include "Spell.h"
#include "ScriptMgr.h"

bool ItemUse_item_orb_of_draconic_energy(Player* player, Item* item, SpellCastTargets& targets)
{
	if (!player)
	{
		return true;
	}

	const auto spellInfo = sSpellMgr.GetSpellEntry(16053);
	if (!spellInfo)
	{
		return true;
	}

	const auto target = player->GetSelectedCreature();
	if (!target)
	{
		Spell::SendCastResult(player, spellInfo, SPELL_FAILED_BAD_TARGETS);
		return true;
	}

	// Emberstrife
	if (target->GetEntry() != 10321)
	{
		Spell::SendCastResult(player, spellInfo, SPELL_FAILED_BAD_TARGETS);
		return true;
	}

	if (target->GetHealthPercent() > 20.f)
	{
		Spell::SendCastResult(player, spellInfo, SPELL_FAILED_BAD_TARGETS);
        return true;
	}

	targets.setUnitTarget(target);
	return false;
}

void AddSC_item_orb_of_draconic_energy()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "item_orb_of_draconic_energy";
    newscript->pItemUse = &ItemUse_item_orb_of_draconic_energy;
    newscript->RegisterSelf();
}