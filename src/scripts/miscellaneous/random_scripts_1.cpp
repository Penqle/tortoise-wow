#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"
#include <algorithm>

template <typename EntityT, typename Functor>
void DoAfterTime(EntityT* entity, uint32 p_time, Functor&& function)
{
    entity->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), entity->m_Events.CalculateTime(p_time));
}


class DemorphAfterTime : public BasicEvent 
{
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override 
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) 
            player->DeMorph();

        return false;
    }

private:
    uint64 player_guid;
};

class DismountAfterTime : public BasicEvent
{
public:
    explicit DismountAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->Unmount(false);

        return false;
    }

private:
    uint64 player_guid;
};

bool ItemUseSpell_character_rename(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer) return false;

    pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
    pPlayer->GetSession()->SendNotification("Please choose a new name.\nYou will be disconnected in 5 seconds.");
    pPlayer->SaveToDB();
    DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer]() { player->GetSession()->KickPlayer(); });
    return true;
}

#define ALICE_GROW_LBOUNDARY 1.05f
#define ALICE_GROW_RBOUNDARY 1.15f
#define ALICE_BELITTLE_LBOUNDARY 0.85f
#define ALICE_BELITTLE_RBOUNDARY 0.95f
bool ItemUseSpell_alice_wonderland_scale(Player* pPlayer, Item* pItem, const SpellCastTargets&) 
{
    float scale;
    float taurenVariance = pPlayer->GetRace() == RACE_TAUREN ? (pPlayer->GetGender() == GENDER_MALE ? 0.35f : 0.25f) : 0;
    float currentNormalizedScale = pPlayer->GetObjectScale() - taurenVariance;

    if (pItem->GetEntry() == 50021) // Strange Bottle
    {
        if (currentNormalizedScale == ALICE_BELITTLE_LBOUNDARY)
        {
            ChatHandler(pPlayer).SendSysMessage("|cffff8040You can't be smaller!|r");
            return true;
        }

        scale = frand(ALICE_BELITTLE_LBOUNDARY, currentNormalizedScale == 1 ? ALICE_BELITTLE_RBOUNDARY : currentNormalizedScale);
    }
    else
    {
        if (currentNormalizedScale == ALICE_GROW_RBOUNDARY)
        {
            ChatHandler(pPlayer).SendSysMessage("|cffff8040You can't grow more!|r");
            return true;
        }

        scale = frand(currentNormalizedScale == 1 ? ALICE_GROW_LBOUNDARY : currentNormalizedScale, ALICE_GROW_RBOUNDARY);
    }

    pPlayer->SetObjectScale(static_cast<float>(floor((scale * 100) + 0.5) / 100) + taurenVariance);
    return false;
}

class DanceAfterTime : public BasicEvent
{
public:
    explicit DanceAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);

        return false;
    }

private:
    uint64 player_guid;
};

bool ItemUseSpell_summer_vestment(Player* pPlayer, Item* pItem, const SpellCastTargets&) 
{
    pPlayer->m_Events.AddEvent(new DanceAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(1500));
    return false;
}

bool ItemUseSpell_sword_of_truth(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).SendSysMessage(urand(50200, 50210));
    return false;
}

bool ItemUseSpell_hairdye(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    uint8 color = 0;
    
    switch (pItem->GetEntry())
    {
    // Night Elves
    case 50107: color = 0; break; // Grass Green
    case 50108: color = 1; break; // Green
    case 50109: color = 2; break; // Dark Green
    case 50110: color = 3; break; // Aquamarine
    case 50111: color = 4; break; // White
    case 50112: color = 5; break; // Blue
    case 50113: color = 6; break; // Dark Blue
    case 50114: color = 7; break; // Purple
    case 81101: color = 8; break; // Black
    // Humans
    case 50115: color = 0; break; // Black
    case 50116: color = 1; break; // Crushed Garnet
    case 50117: color = 2; break; // Havana Brown
    case 50118: color = 3; break; // Copper Shimmer
    case 50119: color = 4; break; // Reddish Blonde
    case 50120: color = 5; break; // Sunflower Blonde
    case 50121: color = 6; break; // Beeline Honey
    case 50122: color = 7; break; // Pure Diamond
    case 50123: color = 8; break; // Dark Ash Grey
    case 50124: color = 9; break; // Light Ash Grey
    // Gnomes
    case 50125: color = 0; break; // Black
    case 50126: color = 1; break; // Chocolate Brown
    case 50127: color = 2; break; // Ash Blonde
    case 50128: color = 3; break; // Diamond Blonde
    case 50129: color = 4; break; // Dream Purple
    case 50130: color = 5; break; // Ruby Fusion
    case 50131: color = 6; break; // Steel Blue
    case 50132: color = 7; break; // Pure Green
    case 50133: color = 8; break; // Shining Pink
    // Dwarves
    case 50134: color = 0; break; // Copper Shimmer
    case 50135: color = 1; break; // Reddish Blonde
    case 50136: color = 2; break; // Dark Orange
    case 50137: color = 3; break; // Ash Blonde
    case 50138: color = 4; break; // Light Auburn
    case 50139: color = 5; break; // Black
    case 50140: color = 6; break; // Caramel
    case 50141: color = 7; break; // Light Ash Grey
    case 50142: color = 8; break; // Dark Ash Grey
    // Trolls
    case 50143: color = 0; break; // Purple
    case 50144: color = 1; break; // Red
    case 50145: color = 2; break; // Orange
    case 50146: color = 3; break; // Yellow
    case 50147: color = 4; break; // Grass Green
    case 50148: color = 5; break; // Mint Blue
    case 50149: color = 6; break; // Light Blue
    case 50150: color = 7; break; // Dark Blue
    case 50151: color = 8; break; // Ash Grey
    case 50152: color = 9; break; // Snow White
    // Orcs
    case 50153: color = 0; break; // Blue Black
    case 50154: color = 1; break; // Oak Brown
    case 50155: color = 2; break; // Dark Purple
    case 50156: color = 3; break; // Lilac Violet
    case 50157: color = 4; break; // Rich Purple
    case 50158: color = 5; break; // Black
    case 50159: color = 6; break; // Dark Ash Grey
    case 50160: color = 7; break; // Light Ash Grey
    // Undeads
    case 50161: color = 0; break; // Lime Green
    case 50162: color = 1; break; // Ash Rose
    case 50163: color = 2; break; // Mud Brown
    case 50164: color = 3; break; // Green Blonde
    case 50165: color = 4; break; // Ash Blonde
    case 50167: color = 5; break; // Mint Blue
    case 50168: color = 6; break; // Mud Green
    case 50169: color = 7; break; // Light Teal 
    case 50170: color = 8; break; // Dirty Purple
    case 50171: color = 9; break; // Ash Black
    // High Elves
    case 80650: color = 0; break; // Sunflower Blond
    case 80651: color = 1; break; // Ash Blond
    case 80652: color = 2; break; // Ruby Rush
    case 80653: color = 3; break; // Cinnamon
    case 80654: color = 4; break; // Wheat Brown
    case 80655: color = 5; break; // Sand Blond
    case 80656: color = 6; break; // Coral Red
    case 80657: color = 7; break; // Honey Blond
    case 80658: color = 8; break; // Starry Night
    case 80659: color = 9; break; // Crab Legs
    case 80665: color = 10; break; // Azure Sky
    // Goblins
    case 80660: color = 0; break; // Copper 
    case 80661: color = 1; break; // Ruby
    case 80662: color = 2; break; // Red
    case 80663: color = 3; break; // Purple
    case 80664: color = pPlayer->GetGender() == GENDER_MALE ? 0 : 4; break; // Black 
    }
    pPlayer->SetByteValue(PLAYER_BYTES, 3, color);
    pPlayer->UpdateAppearance();
    return false;
}

bool ItemUseSpell_turtle_party(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->AddAura(8067);
    return false;
}

bool ItemUseSpell_item_winter_tree(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
	if (!pPlayer)
		return false;
	if (pPlayer->InBattleGround())
		return false;

    GameObject* other_tree = pPlayer->FindNearestGameObject(1000070, 15.0F);

    if (other_tree)
        other_tree->SetRespawnTime(1);

    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());    

    pPlayer->SummonGameObject(1000070, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    return false;
}

bool ItemUseSpell_item_roleplay_effect(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    // summon runes to mark the ground, helpful for raid enocunters
    if (pPlayer->GetMap() && pPlayer->GetMap()->IsDungeon())
    {
        float dis{ 20.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        //x += dis * cos(pPlayer->GetOrientation());
        //y += dis * sin(pPlayer->GetOrientation());

        switch (pItem->GetEntry())
        {
        case 51410:
            // purple Raid Management: Purple Mark
            pPlayer->SummonGameObject(2005013, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 120, true);
            break;
        case 51411:
            // red Raid Management: Red Mark
            pPlayer->SummonGameObject(2005012, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 120, true);
            break;
        case 51412:
            // blue Raid Management: Blue Mark
            pPlayer->SummonGameObject(2005011, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 120, true);
            break;
        default:
            break;
        }
        return false;
    }
    else
    {
        ChatHandler(pPlayer).SendSysMessage("Can't place rune here! You need to be in a dungeon or in a raid.");
        return false;
    }
}

bool ItemUseSpell_item_holy_strike_book(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->IsMoving())
        return false;

    if (pPlayer->GetClass() != CLASS_PALADIN)
        return false;

    switch (pItem->GetEntry())
    {
    case 51270:
        pPlayer->LearnSpell(678, false);
        break;
    case 51271:
        pPlayer->LearnSpell(1866, false);
        break;
    case 51272:
        pPlayer->LearnSpell(680, false);
        break;
    case 51273:
        pPlayer->LearnSpell(2495, false);
        break;
    case 51274:
        pPlayer->LearnSpell(5569, false);
        break;
    case 51275:
        pPlayer->LearnSpell(10332, false);
        break;
    case 51276:
        pPlayer->LearnSpell(10333, false);
        break;
    default: break;
    }
    return true;
}

bool ItemUseSpell_item_holy_wings(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{    
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    pPlayer->SummonCreature(51525, x, y, z, pPlayer->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 15000, true);
    float px, py, pz;
    float add = 0.5F;
    pPlayer->GetRelativePositions(add, 0.0F, 0.0F, px, py, pz);
    pPlayer->NearLandTo(px, py, pz, pPlayer->GetOrientation());
    pPlayer->PlayDirectMusic(3221);
    pPlayer->HandleEmote(EMOTE_ONESHOT_ROAR);
    pPlayer->SummonGameObject(1000330, px, py, pz - 1.06F, pPlayer->GetOrientation(), 0.0F, 0.0F, 0.0F, 0.0F, 15, true); // Golden Aura
    return false;
}

bool ItemUseSpell_shop_racechange(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->IsInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->GetDeathState() == CORPSE))
    {
        pPlayer->GetSession()->SendNotification("Can't change race at this moment!");
        return false;
    }

    uint32 race = pPlayer->GetRace();
    uint32 bytes = pPlayer->GetUInt32Value(PLAYER_BYTES);
    uint32 bytes2 = pPlayer->GetUInt32Value(PLAYER_BYTES_2);
    uint8 player_class = pPlayer->GetClass();
    uint8 player_gender = pPlayer->GetGender();

    switch (pItem->GetEntry())
    {
    case 50603: // Human
        if (pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_SHAMAN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 101058307 : 100730885;
        race = RACE_HUMAN;
        break;
    case 50604: // Gnome
        if (pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_PRIEST || pPlayer->GetClass() == CLASS_PALADIN || pPlayer->GetClass() == CLASS_SHAMAN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 67372546 : 131076;
        race = RACE_GNOME;
        break;
    case 50605: // Dwarf
        if (pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_WARLOCK || pPlayer->GetClass() == CLASS_SHAMAN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 50528773 : 34406912;
        race = RACE_DWARF;
        break;
    case 50606: // Night Elf
        if (pPlayer->GetClass() == CLASS_MAGE || pPlayer->GetClass() == CLASS_WARLOCK || pPlayer->GetClass() == CLASS_PALADIN || pPlayer->GetClass() == CLASS_SHAMAN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 132615 : 67503620;
        race = RACE_NIGHTELF;
        break;
    case 50607: // Orc
        if (pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_PRIEST || pPlayer->GetClass() == CLASS_PALADIN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 84214788 : 84214788;
        race = RACE_ORC;
        break;
    case 50608: // Troll
        if (pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_PALADIN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 33751041 : 131587;
        race = RACE_TROLL;
        break;
    case 50609: // Tauren
        if (pPlayer->GetClass() == CLASS_PRIEST || pPlayer->GetClass() == CLASS_MAGE || pPlayer->GetClass() == CLASS_ROGUE || pPlayer->GetClass() == CLASS_PALADIN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 17105153 : 393736;
        race = RACE_TAUREN;
        break;
    case 50610: // Undead
        if (pPlayer->GetClass() == CLASS_PALADIN || pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_SHAMAN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 117703426 : 151126786;
        race = RACE_UNDEAD;
        break;
    case 50612: // High Elf
        if (pPlayer->GetClass() == CLASS_WARLOCK || pPlayer->GetClass() == CLASS_SHAMAN || pPlayer->GetClass() == CLASS_DRUID)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 132873 : 117768707;
        race = RACE_HIGH_ELF;
        break;
    case 50613: // Goblin
        if (pPlayer->GetClass() == CLASS_PRIEST || pPlayer->GetClass() == CLASS_SHAMAN || pPlayer->GetClass() == CLASS_DRUID || pPlayer->GetClass() == CLASS_PALADIN)
        {
            pPlayer->GetSession()->SendNotification("This race does not support your class.");
            return false;
        }
        bytes = pPlayer->GetGender() == GENDER_MALE ? 16843522 : 2;
        race = RACE_GOBLIN;
        break;
    }

    uint32 freeSpots = 0;

    for (int i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; ++i)
    {
        if (!pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            ++freeSpots;
    }

    for (int i = INVENTORY_SLOT_BAG_START; i < INVENTORY_SLOT_BAG_END; ++i)
    {
        if (Bag* pBag = (Bag*)pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
        {
            for (uint32 j = 0; j < pBag->GetBagSize(); ++j)
            {
                if (!pPlayer->GetItemByPos(i, j))
                    ++freeSpots;
            }
        }
    }

    if (freeSpots < 5)
    {
        pPlayer->GetSession()->SendNotification("You need at least 5 free bag slots.");
        return false;
    }

    bytes2 |= (pPlayer->GetUInt32Value(PLAYER_BYTES_2) & 0xFFFFFF00);
	if (pPlayer->ChangeRace(race, player_gender, bytes, bytes2))
	{
		uint32 Count = 1;
		pPlayer->DestroyItemCount(pItem, Count, false);
        pPlayer->AddItem(80699, 1); // add appearance token. This should always work because we just removed a race change token from inventory.
		pPlayer->SaveInventoryAndGoldToDB();
		//pPlayer->GetSession()->LogoutPlayer(false);
		return true;
	}
    else
    {
        pPlayer->GetSession()->SendNotification("Race change failed. You will be disconnected.");
        //have to disconnect to restore proper state back.
        pPlayer->GetSession()->LogoutPlayer(false);
    }
    return false;
}

bool ItemUseSpell_item_supercharged_chronoboon_displacer(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
	if (!pPlayer) 
        return false;	

	if (!pPlayer->RestoreSuspendedWorldBuffs())
	{ 
		if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(pItem->GetProto()->Spells[0].SpellId))
		{
			DoAfterTime(pPlayer, 1500, [player = pPlayer, spellId = spellInfo->Id]()
			{
				player->RemoveSpellCooldown(spellId, true);
			});
		}
	}
	
	return true;
}

bool ItemUseSpell_item_chronoboon_displacer(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
	if (!pPlayer) 
        return false;

	if (!pPlayer->SuspendWorldBuffs())
	{
		if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(pItem->GetProto()->Spells[0].SpellId))
		{
			DoAfterTime(pPlayer, 1500, [player = pPlayer, spellId = spellInfo->Id]()
			{
				player->RemoveSpellCooldown(spellId, true);
			}
			);
		}
	}

	return true;
}

bool ItemUseSpell_item_warlock_soulwell_ritual(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
	SpellCastResult castResult = SPELL_CAST_OK;

	if (pPlayer->IsMoving() || pPlayer->IsBeingTeleported())
		castResult = SPELL_FAILED_MOVING;
	else if (pPlayer->IsInCombat())
		castResult = SPELL_FAILED_AFFECTING_COMBAT;
	else if (pPlayer->GetDeathState() == CORPSE)
		castResult = SPELL_FAILED_CASTER_DEAD;

	if (castResult == SPELL_CAST_OK)
	{
		// reagent soul shard 5
		uint32 ritualReagent = 6265;
		uint32 reagentCount  = 5;
		if (!pPlayer->HasItemCount(ritualReagent, reagentCount, false))
		{
			pPlayer->GetSession()->SendNotification("Missing reagent: Soul Shard(%u)", reagentCount);
			castResult = SPELL_CAST_OK;  // to remove accidental cooldown
		}
		else
		{
			float dis{ 2.0F };
			float x, y, z;
			pPlayer->GetSafePosition(x, y, z);
			x += dis * cos(pPlayer->GetOrientation());
			y += dis * sin(pPlayer->GetOrientation());
			pPlayer->PMonsterEmote("%s begins a Soulwell ritual.", nullptr, false, pPlayer->GetName());
			pPlayer->SummonGameObject(1000087, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, true);
			pPlayer->DestroyItemCount(ritualReagent, reagentCount, true);
			pPlayer->SaveInventoryAndGoldToDB();

			return true;
		}
	}

	ItemPrototype const* proto = pItem->GetProto();

	if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(proto->Spells[0].SpellId))
	{
		if (castResult != SPELL_CAST_OK)
			Spell::SendCastResult(pPlayer, spellInfo, castResult);

		DoAfterTime(pPlayer, 1500, [player = pPlayer, spellId = spellInfo->Id]()
		{
			player->RemoveSpellCooldown(spellId, true);
		});
	}
	return true;
}

bool GOHello_go_portable_wormhole(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->IsInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->GetDeathState() == CORPSE) || pPlayer->IsMoving())
        ChatHandler(pPlayer).PSendSysMessage("The wormhole is currently unstable.");
    else
    {
        pPlayer->TeleportTo((pPlayer->GetTeam() == ALLIANCE) ? WorldLocation(0, -8828.231445f, 627.927490f, 94.055664f, 0.0f) : WorldLocation(1, 1653.7f, -4416.6f, 16.8f, 0.65f));

        if (pPlayer->GetQuestStatus(60104) == QUEST_STATUS_INCOMPLETE)
        {
            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(51573);

            if (cInfo != nullptr)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }
    return true;
}

struct go_survival_tent : public GameObjectAI
{
    explicit go_survival_tent(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 10.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 10.0f);

                for (Player* pPlayer : players)
                {
                    pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_RESTING);
                    pPlayer->SetRestBonus(static_cast<float>(pPlayer->GetRestBonus() + (sObjectMgr.GetXPForLevel(pPlayer->GetLevel()) * 0.000575)));
                }
                m_uiUpdateTimer = 1000;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_survival_tent(GameObject* gameobject)
{
    return new go_survival_tent(gameobject);
}

struct go_campfire_rested : public GameObjectAI
{
    explicit go_campfire_rested(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 5.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 5.0f);

                for (Player* pPlayer : players)
                {
                    pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_RESTING);
                    pPlayer->SetRestBonus(static_cast<float>(pPlayer->GetRestBonus() + (sObjectMgr.GetXPForLevel(pPlayer->GetLevel()) * 0.000125)));
                }
                m_uiUpdateTimer = 2500;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_campfire_rested(GameObject* gameobject)
{
    return new go_campfire_rested(gameobject);
}

bool GOHello_go_radio(Player* pPlayer, GameObject* pGo)
{
    switch (pGo->GetEntry())
    {
    case 1000055: // Speedy's Jukebox
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Teldrassil'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Brill's Tavern'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Ashenvale'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Darkmoon Faire'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Thunderbluff'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Goldshire Inn'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Magic'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Baby Murloc Song'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Barrens'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Tinker Town'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Dark Forest'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Maexxna'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Orgrimmar'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Soggy Night'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 14);
        break;
    case 1000078: // Frosty's Jukebox
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 100.3 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 101.5 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        break;
    case 3000105: // Zeppelin's Shortwave Radio
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Mudsprocket'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Emerald Forest'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Pandaria'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Wilderness'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Cozy Tavern'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        break;
    case 1000077: // Goblin Radio KABOOM-Box X23B76
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 204.3 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 204.5 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        break;
    }
    pPlayer->SEND_GOSSIP_MENU(90300, pGo->GetGUID());
    return true;
}

bool GOSelect_go_radio(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    int sound = 0;
    switch (pGo->GetEntry())
    {
    case 1000055: // Speedy's Jukebox
        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1: sound = 4536; break;
        case GOSSIP_ACTION_INFO_DEF + 2: sound = 5355; break;
        case GOSSIP_ACTION_INFO_DEF + 3: sound = 5532; break;
        case GOSSIP_ACTION_INFO_DEF + 4: sound = 8440; break;
        case GOSSIP_ACTION_INFO_DEF + 5: sound = 7077; break;
        case GOSSIP_ACTION_INFO_DEF + 6: sound = 4516; break;
        case GOSSIP_ACTION_INFO_DEF + 7: sound = 6669; break;
        case GOSSIP_ACTION_INFO_DEF + 8: sound = 8485; break;
        case GOSSIP_ACTION_INFO_DEF + 9: sound = 2536; break;
        case GOSSIP_ACTION_INFO_DEF + 10: sound = 7196; break;
        case GOSSIP_ACTION_INFO_DEF + 11: sound = 5376; break;
        case GOSSIP_ACTION_INFO_DEF + 12: sound = 8887; break;
        case GOSSIP_ACTION_INFO_DEF + 13: sound = 5055; break;
        case GOSSIP_ACTION_INFO_DEF + 14: sound = 6836; break;
        }
        break;
    case 1000078: // Frosty's Jukebox
        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1: sound = 4516; break;
        case GOSSIP_ACTION_INFO_DEF + 2: sound = 8440; break;
        }
        break;
    case 3000105: // Zeppelin's Shortwave Radio
        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1: sound = 30221; break;
        case GOSSIP_ACTION_INFO_DEF + 2: sound = 30220; break;
        case GOSSIP_ACTION_INFO_DEF + 3: sound = 30218; break;
        case GOSSIP_ACTION_INFO_DEF + 4: sound = 30217; break;
        case GOSSIP_ACTION_INFO_DEF + 5: sound = 30216; break;
        }
        break;
    case 1000077: // Goblin Radio KABOOM-Box X23B76
        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1: sound = 30221; break;
        case GOSSIP_ACTION_INFO_DEF + 2: sound = 30215; break;
        }
        break;
    }
    pPlayer->PlayDirectMusic(sound);
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_to_stormwind(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == ALLIANCE)
        pPlayer->TeleportTo(0, -8828.231445f, 627.927490f, 94.055664f, 0.0f);

    return true;
}

bool GOHello_go_portal_to_darnassus(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == ALLIANCE)
        pPlayer->TeleportTo(1, 9962.712891f, 2280.142822f, 1341.394409f, 0.0f);

    return true;
}

bool GOHello_go_stormwind_fountain(Player* pPlayer, GameObject* pGo)
{
    int32 coin = 51600 + urand(0, 45);
    pPlayer->AddItem(coin);
    pPlayer->PlayDirectSound(1204, pPlayer);
    pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

    int32 timer = 30 + urand(0, 70);

    pGo->SetRespawnTime(timer * MINUTE);
    pGo->Despawn();
    pGo->UpdateObjectVisibility();
    return true;
}

enum
{
    BCT_RESET_TALENTS = 66833,
    BCT_SAVE_PRIMARY_SPEC = 66834,
    BCT_SAVE_SECONDARY_SPEC = 66835,
};

uint32 GetTabAmount(Player* player)
{
    auto unlockedTabs = player->GetPlayerVariable(PlayerVariables::UnlockedSpecTabs);

    uint32 tabs = 2;
    if (!unlockedTabs)
        player->SetPlayerVariable(PlayerVariables::UnlockedSpecTabs, std::to_string(tabs));
    else
    {
        try {
            tabs = std::stoi(unlockedTabs.value());
        }
        catch (...) {}
    }
    return tabs;
}

bool GOHello_go_brainwashing_device(Player* pPlayer, GameObject* pGo)
{
	if (pPlayer->GetLevel() >= 10 && pPlayer->HasSpell(46002))
	{

        if (pPlayer->IsInCombat())
        {
            pPlayer->GetSession()->SendNotification("You're in combat.");
            return false;
        }

        uint32 tabs = GetTabAmount(pPlayer);

        std::string activateText{};

		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, BCT_RESET_TALENTS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		// Primary
		if (pPlayer->HasSavedTalentSpec(1))
		{
			activateText = ("Activate 1st Specialization " + pPlayer->SpecTalentPoints(1));
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, activateText.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
		}

		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, BCT_SAVE_PRIMARY_SPEC, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

		// Secondary
		if (pPlayer->HasSavedTalentSpec(2))
		{
			activateText = ("Activate 2nd Specialization " + pPlayer->SpecTalentPoints(2));
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, activateText.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
		}

		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, BCT_SAVE_SECONDARY_SPEC, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);

        bool offeredTab = false;

        if (tabs >= 3)
        {
            if (pPlayer->HasSavedTalentSpec(3))
            {
                activateText = ("Activate 3rd Specialization " + pPlayer->SpecTalentPoints(3));
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, activateText.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
            }

            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Save 3rd Specialization.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        }
        else
        {
            offeredTab = true;
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, "Buy 3rd Specialization tab for 100 gold.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
        }

        if (tabs >= 4)
        {
            if (pPlayer->HasSavedTalentSpec(4))
            {
                activateText = ("Activate 4th Specialization " + pPlayer->SpecTalentPoints(4));
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, activateText.c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
            }

            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Save 4th Specialization.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
        }
        else
        {
            if (!offeredTab)
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, "Buy 4th Specialization tab for 200 gold.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
        }
	}

    pPlayer->SEND_GOSSIP_MENU(90350, pGo->GetGUID());

    return true;
}



bool GOSelect_go_brainwashing_device(Player* pPlayer, GameObject* pGo, const uint32 uiSender, const uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOD_DISARM);
        if (pPlayer->ResetTalents(false))
        {
            pPlayer->AddAura(27880);
        }
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOD_DISARM);
        pPlayer->ActivateTalentSpec(1);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOD_DISARM);
        pPlayer->ActivateTalentSpec(2);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        if (pPlayer->GetFreeTalentPoints())
            pPlayer->GetSession()->SendNotification("You have unspent talent points.");
        else
            pPlayer->SaveTalentSpec(1);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        if (pPlayer->GetFreeTalentPoints())
            pPlayer->GetSession()->SendNotification("You have unspent talent points.");
        else
            pPlayer->SaveTalentSpec(2);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOD_DISARM);
        pPlayer->ActivateTalentSpec(3);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        if (pPlayer->GetFreeTalentPoints())
            pPlayer->GetSession()->SendNotification("You have unspent talent points.");
        else
            pPlayer->SaveTalentSpec(3);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOD_DISARM);
        pPlayer->ActivateTalentSpec(4);
    }
    else if (uiAction == GOSSIP_ACTION_INFO_DEF + 9)
    {
        if (pPlayer->GetFreeTalentPoints())
            pPlayer->GetSession()->SendNotification("You have unspent talent points.");
        else
            pPlayer->SaveTalentSpec(4);
    }
    //I know ill fix it later


    if (uiAction == GOSSIP_ACTION_INFO_DEF + 10 || uiAction == GOSSIP_ACTION_INFO_DEF + 11)
    {
        uint32 cost = uiAction == GOSSIP_ACTION_INFO_DEF + 10 ? 100 : 200;
        

        if (pPlayer->GetMoney() < (cost * GOLD))
        {
            pPlayer->GetSession()->SendNotification("Not enough money.");
            return true;
        }

        uint32 unlockedTab = uiAction == GOSSIP_ACTION_INFO_DEF + 10 ? 3 : 4;
        uint32 tabs = GetTabAmount(pPlayer);

        //prevent unlocking already unlocked tabs or skipping a number
        if (unlockedTab == tabs || (unlockedTab == 4 && tabs == 2))
            return true;

        //ok all good.
        pPlayer->LogModifyMoney(-(int32)cost * GOLD, "Spec Machine");
        pPlayer->SetPlayerVariable(PlayerVariables::UnlockedSpecTabs, std::to_string(unlockedTab));
        ChatHandler(pPlayer).SendSysMessage("Specialization tab bought.");
    }

	pPlayer->CLOSE_GOSSIP_MENU();

    return true;
}

// Refreshment Portal GO

struct refreshment_portal_clicks : public GameObjectAI
{
    explicit refreshment_portal_clicks(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
        portal_life = 25 * IN_MILLISECONDS;
        clickers = 0;
        needed_clickers = 3;
        hold = 0;
        needed_hold = 3 * IN_MILLISECONDS;
        portal_timed_out = false;
    }

    uint32 m_uiUpdateTimer;
    uint32 portal_life;
    int clickers;
    int needed_clickers;
    int hold;
    int needed_hold;

    bool portal_timed_out;

    void UpdateAI(uint32 const uiDiff) override
    {

        if (portal_life < uiDiff)
            portal_timed_out = true;
        else
            portal_life -= uiDiff;

        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 5.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 1.0f);

            if (portal_timed_out)
            {
                // stop players channeling in case nobody clicks
                for (auto clicker : players)
                    if (clicker->HasAura(29423))
                        clicker->RemoveAurasDueToSpell(29423);
                me->Delete();
                return;
            }

            clickers = 0;

            for (auto clicker : players)
                if (clicker->HasAura(29423))
                    clickers++;

            if (clickers >= needed_clickers)
            {
                if (hold >= needed_hold)
                {
                    for (auto clicker : players)
                        if (clicker->HasAura(29423))
                        {
                            // stop players channeling
                            clicker->RemoveAurasDueToSpell(29423);
                            // cast visual arcane explosion
                            clicker->CastSpell(clicker, 16510, false);
                        }

                    float x = me->GetPositionX();
                    float y = me->GetPositionY();
                    float z = me->GetPositionZ();

                    // summon orange basket clickable object
                    me->SummonGameObject(1000084, x, y, z + 0.375f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, true);

                    // despawn portal
                    me->Delete();
                    return;
                }
                else
                    hold += IN_MILLISECONDS;
            }
            m_uiUpdateTimer = 1000;
        }
        else
            m_uiUpdateTimer -= uiDiff;
    }

    bool OnUse(Unit* Unit) override
    {

        if (!Unit->ToPlayer())
            return false;

        if (!Unit->ToPlayer()->IsInCombat() && !Unit->ToPlayer()->IsBeingTeleported()
            && Unit->ToPlayer()->GetDeathState() != CORPSE && !Unit->ToPlayer()->IsMoving())
        {
            Unit->ToPlayer()->CastSpell(Unit->ToPlayer(), 29423, false);
        }

        return true;
    }
};

GameObjectAI* GetAI_refreshment_portal_clicks(GameObject* gameobject)
{
    return new refreshment_portal_clicks(gameobject);
}

// Refreshment table GO

struct refreshment_table_clicks : public GameObjectAI
{

    explicit refreshment_table_clicks(GameObject* pGo) : GameObjectAI(pGo)
    {
        max_stacks = 40 * 4;                       // 40 players, 4 stacks per player
        stacks_handed_out = 0;
        table_life = 3 * MINUTE * IN_MILLISECONDS;
        stand = nullptr;
    }

    int max_stacks;
    int stacks_handed_out;
    int table_life;
    GameObject* stand;

    void UpdateAI(uint32 const uiDiff) override
    {

        if (!stand)
        {
            // summon table under the food
            float x = me->GetPositionX();
            float y = me->GetPositionY();
            float z = me->GetPositionZ();

            stand = me->SummonGameObject(2008758, x, y, z - 0.88f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, true);
        }

        if (table_life < uiDiff || stacks_handed_out >= max_stacks)
        {
            stand->Delete();
            me->Delete();
        }
        else
            table_life -= uiDiff;
    }

    bool OnUse(Unit* Unit) override
    {

        if (!Unit->ToPlayer())
            return false;

        if (stacks_handed_out < max_stacks && Unit->ToPlayer()->GetItemCount(83004, true) < 80)
            if (Unit->ToPlayer()->AddItem(83004, 20))
                stacks_handed_out++;

        return true;
    }

};

GameObjectAI* GetAI_refreshment_table_clicks(GameObject* gameobject)
{
    return new refreshment_table_clicks(gameobject);
}


// Soulwell Portal GO

struct soulwell_portal_clicks : public GameObjectAI
{
    explicit soulwell_portal_clicks(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
        portal_life = 25 * IN_MILLISECONDS;
        clickers = 0;
        needed_clickers = 3;
        hold = 0;
        needed_hold = 3 * IN_MILLISECONDS;
        portal_timed_out = false;
    }

    uint32 m_uiUpdateTimer;
    uint32 portal_life;
    int clickers;
    int needed_clickers;
    int hold;
    int needed_hold;

    bool portal_timed_out;

    void UpdateAI(uint32 const uiDiff) override
    {

        if (portal_life < uiDiff)
            portal_timed_out = true;
        else
            portal_life -= uiDiff;

        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 5.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 1.0f);

            if (portal_timed_out)
            {
                // stop players channeling in case nobody clicks
                for (auto clicker : players)
                    if (clicker->HasAura(45924))
                        clicker->RemoveAurasDueToSpell(45924);
                me->Delete();
                return;
            }

            clickers = 0;

            for (auto clicker : players)
                if (clicker->HasAura(45924))
                    clickers++;

            if (clickers >= needed_clickers)
            {
                if (hold >= needed_hold)
                {
                    for (auto clicker : players)
                        if (clicker->HasAura(45924))
                        {
                            // stop players channeling
                            clicker->RemoveAurasDueToSpell(45924);
                            // cast visual arcane explosion
                            clicker->CastSpell(clicker, 16510, false);
                        }

                    float x = me->GetPositionX();
                    float y = me->GetPositionY();
                    float z = me->GetPositionZ();

                    // summon orange basket clickable object
                    me->SummonGameObject(1000089, x, y, z + 0.375f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, true);

                    // despawn portal
                    me->Delete();
                    return;
                }
                else
                    hold += IN_MILLISECONDS;
            }
            m_uiUpdateTimer = 1000;
        }
        else
            m_uiUpdateTimer -= uiDiff;
    }

    bool OnUse(Unit* Unit) override
    {

        if (!Unit->ToPlayer())
            return false;

        if (!Unit->ToPlayer()->IsInCombat() && !Unit->ToPlayer()->IsBeingTeleported()
            && Unit->ToPlayer()->GetDeathState() != CORPSE && !Unit->ToPlayer()->IsMoving())
        {
            Unit->ToPlayer()->CastSpell(Unit->ToPlayer(), 45924, false);
        }

        return true;
    }
};

GameObjectAI* GetAI_soulwell_portal_clicks(GameObject* gameobject)
{
    return new soulwell_portal_clicks(gameobject);
}

// soulwell GO

struct soulwell_clicks : public GameObjectAI
{

    explicit soulwell_clicks(GameObject* pGo) : GameObjectAI(pGo)
    {
        max_healthstones = 40;
        healthstones_handed_out = 0;
        soulwell_life = 3 * MINUTE * IN_MILLISECONDS;
        itemSoulStone = 9421; // untalented
    }

    int max_healthstones;
    int healthstones_handed_out;
    int soulwell_life;
    int itemSoulStone;

    void UpdateAI(uint32 const uiDiff) override
    {

        if (soulwell_life < uiDiff || healthstones_handed_out >= max_healthstones)
            me->Delete();
        else
            soulwell_life -= uiDiff;
    }

    bool OnUse(Unit* Unit) override
    {

        if (!Unit->ToPlayer())
            return false;

        if (me->GetOwner() && me->GetOwner()->ToPlayer())
        {
            if (me->GetOwner()->ToPlayer()->HasSpell(18692))        // 1/2 improved healthstone talent
                itemSoulStone = 19012;
            if (me->GetOwner()->ToPlayer()->HasSpell(18693))        // 2/2 improved healthstone talent
                itemSoulStone = 19013;
        }

        if (healthstones_handed_out < max_healthstones && Unit->ToPlayer()->GetItemCount(itemSoulStone, true) == 0)
        {
            Unit->ToPlayer()->AddItem(itemSoulStone, 1);
            healthstones_handed_out++;
        }

        return true;
    }

};

GameObjectAI* GetAI_soulwell_clicks(GameObject* gameobject)
{
    return new soulwell_clicks(gameobject);
}

bool GossipHello_npc_aspirant_shadewalker(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66836, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66837, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90343, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_aspirant_shadewalker(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Creature->MonsterSay(66166, 7, 0);
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        p_Creature->MonsterSay(66167, 7, 0);
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

#define ELUNE_WINTER_QUEST 50318     
#define EGGNOG_ITEM        17198      
#define MOONKIN_FED        19705      

bool GossipHello_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->HasAura(MOONKIN_FED))
    {
        pCreature->MonsterSay(66114);
        pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
    }
    else
    {
        if (pPlayer->GetQuestStatus(ELUNE_WINTER_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (pPlayer->HasItemCount(EGGNOG_ITEM, 1, 0))
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66838, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(90318, pCreature->GetGUID());
    }
    return true;
}

bool GossipSelect_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (!pCreature)
        return true;

    if (!pPlayer)
        return true;

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66114);
        pCreature->MonsterTextEmote(90319);
        pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
        pPlayer->AddItem(51248); // Add Snow Covered Feather
        if (pPlayer->HasItemCount(EGGNOG_ITEM, 1, false))
        {
            pPlayer->DestroyItemCount(EGGNOG_ITEM, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        pCreature->AddAura(MOONKIN_FED);

        SpellAuraHolder* holder = pCreature->GetSpellAuraHolder(MOONKIN_FED);
        holder->SetAuraDuration(300000); // 5 minutes
        holder->UpdateAuraDuration();
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_tinsel(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90335, pCreature->GetGUID());
    return true;
}


bool GossipHello_npc_misletoe(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90336, pCreature->GetGUID());
    return true;
}

bool GossipHello_npc_frosty(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66839, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(90326, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_frosty(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->TeleportTo(813, -2568.90F, 1193.84F, 62.63F, 3.6F);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_save_sharkAI : public ScriptedPetAI
{
    npc_save_sharkAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (uiEmote == TEXTEMOTE_SHOO)
        {
            if (m_creature && m_creature->IsAlive())
            {
                if (pPlayer->ToPlayer()->GetQuestStatus(80383) == QUEST_STATUS_INCOMPLETE)
                {
                    if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(81002))
                        pPlayer->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                    m_creature->MonsterTextEmote(66840);
                    m_creature->GetMotionMaster()->MoveConfused();
                }
            }
        }
    }
};

CreatureAI* GetAI_npc_save_shark(Creature* pCreature) { return new npc_save_sharkAI(pCreature); }

bool GossipHello_npc_vip_invite(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80382) == QUEST_STATUS_INCOMPLETE)
    {
        switch (pCreature->GetEntry())
        {
        case 3391: // Gazlowe
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66841, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            break;
        case 2496: // Baron Revilgaz
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66842, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            break;
        }
    }

    if (pPlayer->GetQuestStatus(40180) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60254, 1, false))
    {
        switch (pCreature->GetEntry())
        {
        case 2496: // Baron Revilgaz
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66843, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            break;
        }
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_vip_invite(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66115);
        CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(81000);
        pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->MonsterSay(66116);
        CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(81001);
        pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->DestroyItemCount(60254, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        pCreature->MonsterYell(66117);
        auto faction1 = sObjectMgr.GetFactionEntry(21); // Booty Bay
        if (faction1)
        {
            pPlayer->GetReputationMgr().SetSingleReputation(faction1, -12000);

            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60333))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_chihkoaAI : public ScriptedPetAI
{
    npc_chihkoaAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->IsAlive())
        {
            if (uiEmote == TEXTEMOTE_DANCE)
                m_creature->MonsterSay(66118);

            if (pPlayer->ToPlayer()->GetQuestStatus(50328) == QUEST_STATUS_INCOMPLETE)
            {
                if (pPlayer->ToPlayer()->GetDrunkValue() > 0)
                {
                    int32 dummy_player{ 70011 };
                    CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(dummy_player);

                    if (cInfo != nullptr)
                        pPlayer->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }

            }
        }
    }
};

CreatureAI* GetAI_npc_chihkoa(Creature* pCreature)
{
    return new npc_chihkoaAI(pCreature);
}

struct npc_scripted_companionAI : public ScriptedPetAI
{
    bool init = false;

    npc_scripted_companionAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
        init = false;
    }

    void UpdatePetOOCAI(const uint32 uiDiff)
    {
        if (!init && m_creature && m_creature->IsAlive() && m_creature->IsPet())
        {
            init = true;
            m_creature->GetMotionMaster()->MoveFollow(m_creature->GetCharmerOrOwnerPlayerOrPlayerItself(),
                PET_FOLLOW_DIST,
                270.0f * (M_PI_F / 180.0f));
        }
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->IsAlive() && m_creature->IsPet())
        {
            if (uiEmote == TEXTEMOTE_DANCE)
                m_creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
        }
    }
};

CreatureAI* GetAI_npc_scripted_companion(Creature* pCreature)
{
    return new npc_scripted_companionAI(pCreature);
}

struct lil_foot_petAI : public ScriptedPetAI
{
    bool init = false;

    lil_foot_petAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
        init = false;
    }

    void UpdatePetOOCAI(const uint32 uiDiff)
    {
        if (!init && m_creature && m_creature->IsAlive() && m_creature->IsPet())
        {
            init = true;
            m_creature->PMonsterSay(66100);
            m_creature->GetMotionMaster()->MoveFollow(m_creature->GetCharmerOrOwnerPlayerOrPlayerItself(),
                PET_FOLLOW_DIST,
                270.0f * (M_PI_F / 180.0f));
        }
    }

};

CreatureAI* GetAI_lil_foot_pet(Creature* pCreature)
{
    return new lil_foot_petAI(pCreature);
}

#define ONCE_UPON_A_SHEEP        60005
#define LOST_FARM_SHEEP_ITEM     51220
#define DELICIOUS_ELWYNN_TRUFFLE 51218
#define WOOL_WILL_WORL           60008
#define FLOCK_OF_WOOL            51223

bool GossipHello_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ONCE_UPON_A_SHEEP) == QUEST_STATUS_INCOMPLETE)
    {
        if (pPlayer->HasItemCount(DELICIOUS_ELWYNN_TRUFFLE, 0))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66844, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        else
        {
            pCreature->MonsterSay(66119);
            pCreature->GetMotionMaster()->MoveConfused();
        }
    }
    if (pPlayer->GetQuestStatus(WOOL_WILL_WORL) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66845, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    pPlayer->SEND_GOSSIP_MENU(90310, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer)
            return false;

        pCreature->MonsterSay(66120);
        pCreature->MonsterTextEmote(66846);
        pCreature->ForcedDespawn();
        pPlayer->AddItem(LOST_FARM_SHEEP_ITEM);
        if (pPlayer->HasItemCount(DELICIOUS_ELWYNN_TRUFFLE, 1, false))
        {
            pPlayer->DestroyItemCount(DELICIOUS_ELWYNN_TRUFFLE, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (!pPlayer)
            return false;

        int chance_array[100];

        for (int i = 0; i < 100; i++)
        {
            int chance_array = i;
        }

        int chance_rand = rand() % 100;

        if (chance_rand[chance_array] >= 80)
        {
            pCreature->MonsterSay(66120);
            pPlayer->AddItem(FLOCK_OF_WOOL, 1);
        }
        else
        {
            pCreature->MonsterSay(66119);
            pCreature->GetMotionMaster()->MoveFleeing(pPlayer, 100);
            pPlayer->KnockBack(2.0F, 3.0F, 3.0F);
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_title_masker(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66847, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    if (pPlayer->IsIgnoringTitles())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66848, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    else if (pPlayer->GetMoney() >= 50000)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66849, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->SEND_GOSSIP_MENU(90003, pCreature->GetGUID());
    return true;
}

bool GossipSelect_title_masker(Player* player, Creature* creature, uint32 sender, uint32 action) {
    if (action > GOSSIP_ACTION_INFO_DEF) {
        bool hideRank = action == GOSSIP_ACTION_INFO_DEF + 2;
        player->SetIgnoringTitles(hideRank);
        if (hideRank) {
            player->ModifyMoney(-50000);
            ChatHandler(player).PSendSysMessage("|cffff8040You carefully place 5 gold coins in the dealer's hand.|r");
        }
        ChatHandler(player).SendSysMessage("Please logout and login again!");
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}


bool GossipHello_npc_flying_machine(Player* player, Creature* creature)
{
    if (creature->GetEntry() == 50597) // Blackstone Island
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Fly to Sparkwater Port.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        player->SEND_GOSSIP_MENU(52098, creature->GetGUID());
        return true;
    }
    else if (creature->GetEntry() == 50598) // Sparkwater Port
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Fly to Blackstone Island.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        player->SEND_GOSSIP_MENU(52099, creature->GetGUID());
        return true;
    }
    return false;
}

bool GossipSelect_npc_flying_machine(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (!creature || !player)
        return true;

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        player->ActivateTaxiPathTo(1619, 0, true); // Weeeee!
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        player->ActivateTaxiPathTo(1633, 0, true); // Weeeee!
    player->CLOSE_GOSSIP_MENU();
    return true;
}

enum DressingBoxes
{
    FESTIVALE_GARMENTS = 50022,
    DEMON_HUNTER = 50023,
    CRIMSON_INQUISITOR = 50025,
    KULTIRAS_GUARD = 50382,
    THERAMORE_GUARD = 50383,
    DWARF_MOUNTAINEER = 50386,
    NIGHTWATCHMAN = 50388,
    STROMGARDE_GURAD = 50384,
    SCHOLOMANCE_STUDENT = 50101,
    DARKMASTER = 50509,
    GOLDWEAVE_RAINMENT = 50511,
    NECROMANCER = 50513,
    STORMWIND_GUARD = 50381,
    DARNASSUS_SENTINEL = 50385,
    ORGRIMMAR_GUARD = 50389,
    THUNDER_BLUFF_GUARD = 50390,
    SENJIN_GUARD = 50416,
    DEATHGUARD = 50387,
    HIDDEN_SET = 50024,

    FASHION_COIN = 51217
};

bool GossipHello_rented_mount(Player* player, Creature* mount)
{    
    if (player->GetMountID())
        return false;

    switch (mount->GetEntry())
    {
        case 51560:
        case 51561:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66850, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90365, mount->GetGUID());
            return true;
        case 51580:
        case 51581:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66851, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90368, mount->GetGUID());
            return true;
        case 51588:
        case 51589:
        case 51587:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66852, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90369, mount->GetGUID());
            return true;
        case 4779:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66853, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90381, mount->GetGUID());
            return true;
        case 4710:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66854, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90381, mount->GetGUID());
            return true;
        case 12354:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66855, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90382, mount->GetGUID());
            return true;
        case 12355:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66856, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(90382, mount->GetGUID());
            return true;
        default:
            break;
    }
    return true;
}

bool GossipSelect_rented_mount(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    uint32 spell{ 0 };

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1 && !pPlayer->GetMountID())
    {
        if (pPlayer->GetMoney() >= 50)
        {
            switch (pCreature->GetEntry())
            {
                case 51560: spell = 468;    break; // White Stallion
                case 51561: spell = 471;    break; // Palomino
                case 51580: spell = 6653;   break; // Dire Riding Wolf
                case 51581: spell = 580;    break; // Timber Riding Wolf
                case 51588: spell = 17462;  break; // Red Skeletal Horse
                case 51589: spell = 17463;  break; // Blue Skeletal Horse
                case 51587: spell = 17464;  break; // Brown Skeletal Horse
                case 4779:  spell = 6899;   break; // Brown Riding Ram
                case 4710:  spell = 6777;   break; // Gray Riding Ram
                case 12354: spell = 18990;  break; // Brown Riding Kodo
                case 12355: spell = 18989;  break; // Gray Riding Kodo
                default:
                    break;
            }
            pPlayer->CastSpell(pPlayer, spell, true);
            pPlayer->ModifyMoney(-50);
        }
        else
            pPlayer->GetSession()->SendNotification("You don't have enough money!");
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_flying_mount(Player* pPlayer, Creature* pCreature)
{
    switch (pCreature->GetEntry())
    {
    case 51562: // Goldshire Gryphon
        if (pPlayer->GetQuestRewardStatus(60070))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66857, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());
        pPlayer->SEND_GOSSIP_MENU(90366, pCreature->GetGUID());
        return true;
    case 51685: // Darkshore Wyvern
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66858, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(1, pCreature->GetGUID());
        return true;
    case 51569: // Riding Gryphon
    case 51686: // Beaky (Gryphon)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66858, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(90366, pCreature->GetGUID());
        return true;
    case 65018: // Alormion (Bronze Drake)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66859, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(51674, pCreature->GetGUID());
        return true;
    case 60539: // Durotar Wyvern
        if (pPlayer->GetQuestRewardStatus(40298))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66860, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());
        pPlayer->SEND_GOSSIP_MENU(60539, pCreature->GetGUID());
        return true;
    case 61217: // Zephyra
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66858, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->SEND_GOSSIP_MENU(61217, pCreature->GetGUID());
        return true;
    }
    return false;
}


void SetFlying(Player* player, uint32 duration, uint32 mountDisplay, uint32 removeEntry = 0, uint32 count = 0)
{
    if (player->IsMounted())
    {
        player->GetSession()->SendNotification("You are mounted.");
        return;
    }

    player->GetSession()->SendNotification("You will be dismounted in %u seconds.", duration);
    if (removeEntry)
    {
        player->DestroyItemCount(removeEntry, count ? count : 1, true);
        player->SaveInventoryAndGoldToDB();
    }
    player->InterruptNonMeleeSpells(true);
    if (SpellAuraHolder* pAura = player->AddAura(47036))
    {
        pAura->SetAuraDuration(duration * IN_MILLISECONDS);
        pAura->SetAuraMaxDuration(duration * IN_MILLISECONDS);
        player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, mountDisplay);
    }
}

bool GossipSelect_npc_flying_mount(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->HasItemCount(422, 1)) // Goldshire Quest Gryphon
        {
            SetFlying(p_Player, 30, 18274, 422, 1);
        }
        else
            p_Player->GetSession()->SendNotification("Requires Dwarven Mild.");

    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2 || uiAction == GOSSIP_ACTION_INFO_DEF + 3 || uiAction == GOSSIP_ACTION_INFO_DEF + 4 || uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        uint32 mountId = 0;
        switch (uiAction)
        {
        case GOSSIP_ACTION_INFO_DEF + 2: mountId = 295;   break; // Gryphon
        case GOSSIP_ACTION_INFO_DEF + 3: mountId = 18274; break; // Wywern
        case GOSSIP_ACTION_INFO_DEF + 4: mountId = 18279; break; // Bronze Drake
        case GOSSIP_ACTION_INFO_DEF + 6: mountId = 1936; break; // Zephyra
        }

        SetFlying(p_Player, 45, mountId);
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        if (p_Player->HasItemCount(3770, 1)) // Durotar Quest wyvern
        {
            SetFlying(p_Player, 30, 295, 3770, 1);
        }
        else
            p_Player->GetSession()->SendNotification("Requires Mutton Chop.");
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}
#define KODO_CALFLING 51599

enum palkeoteEvents
{
    EVENT_WEAKNESS = 1,
    EVENT_FEAR
};

enum palkeoteSpells
{
    SPELL_CURSE_OF_WEAKNESS = 11708,
    SPELL_FEAR = 26580
};

struct palkeoteAI : public ScriptedAI
{
    palkeoteAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    EventMap m_events;
    bool calfActive = false;

    void Reset()
    {
        m_events.Reset();
        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->SetFactionTemplateId(m_creature->GetCreatureInfo()->faction);
        calfActive = false;
    }

    void Aggro()
    {
        m_events.ScheduleEvent(EVENT_WEAKNESS, Seconds(urand(4, 8)));
        m_events.ScheduleEvent(SPELL_FEAR, Seconds(urand(8, 12)));
    }

    void JustRespawned()
    {
        Reset();
    }

    void UpdateAI(const uint32 diff)
    {
        if (calfActive)
            return;

        if (m_creature->GetHealthPercent() < 20)
        {
            calfActive = true;

            m_creature->CombatStop(true);
            m_creature->ClearInCombat();
            m_creature->SetFactionTemplateId(35);
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);


            ThreatList const& tList = m_creature->GetThreatManager().getThreatList();
            for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
            {
                Unit* pUnit = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());
                if (pUnit && (pUnit->GetTypeId() == TYPEID_PLAYER))
                {
                    CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(51598);
                    pUnit->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }
            }

            m_creature->ForcedDespawn(10 * 1000);

            float fX, fY, fZ;
            m_creature->GetRandomPoint(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 60.0f, fX, fY, fZ);
            m_creature->SummonCreature(KODO_CALFLING, fX, fY, fZ, 0.0F, TEMPSUMMON_TIMED_DESPAWN, 10 * 1000);
            m_creature->SetWalk(true);
            m_creature->GetMotionMaster()->MovePoint(0, fX, fY, fZ + 1.0F);
            return;
        }

        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(diff);
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_WEAKNESS:
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CURSE_OF_WEAKNESS);
                m_events.Repeat(Seconds(urand(4, 8)));
                break;
            case EVENT_FEAR:
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FEAR);
                m_events.Repeat(Seconds(urand(8, 12)));
                break;
            }
        }

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_palkeote(Creature* _Creature)
{
    return new palkeoteAI(_Creature);
}

bool GossipHello_npc_ropaw(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66861, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(urand(90650, 90667), p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_ropaw(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Creature->MonsterSay(urand(90560, 90628));
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_ArenaMaster(Player* player, Creature* creature)
{
    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, 66862, GOSSIP_SENDER_MAIN, 1);
    if (player->GetGroup())
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, 66863, GOSSIP_SENDER_MAIN, 2);
    player->PlayerTalkClass->SendGossipMenu(195007, creature->GetGUID());

    return true;
}

bool GossipSelect_ArenaMaster(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    switch (action)
    {
    case 1:
    case 2:
        player->AddToArenaQueue(action == 2);
        break;
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

#define MINING_PICK 2901
#define ORNATE_SPLYGLASS 5507
#define LIGHT_LEATHER 2318

#define FACTION_RATCHET 470

#define MINING_ENCHANT_5 906
#define SPELL_VISUAL 14867

#define DEFAULT_MINER_TEXT 70000
#define UNAVAILABLE_TEXT 70001
#define ALREADY_INSTALLED_TEXT 70002

bool GossipHello_MiningEnchanter(Player* player, Creature* creature)
{
    if (player->GetReputationRank(FACTION_RATCHET) >= REP_FRIENDLY)
    {
        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
        if (item && item->GetEnchantmentId(PERM_ENCHANTMENT_SLOT) == MINING_ENCHANT_5)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66864, GOSSIP_SENDER_MAIN,
                GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(ALREADY_INSTALLED_TEXT, creature->GetGUID());
        }
        else
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66865, GOSSIP_SENDER_MAIN,
                GOSSIP_ACTION_INFO_DEF + 2);
            player->SEND_GOSSIP_MENU(DEFAULT_MINER_TEXT, creature->GetGUID());
        }

        return true;
    }

    player->SEND_GOSSIP_MENU(UNAVAILABLE_TEXT, creature->GetGUID());
    return true;
}

bool GossipSelect_MiningEnchanter(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    bool error = false;
    const char* text;

    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        text = "Sorry, no refunds.";
        error = true;
    }

    Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
    if (!error && (!item || item->GetEntry() != MINING_PICK))
    {
        text = "I can't inspect your pick if you don't equip it!";
        error = true;
    }

    if (!error && (!player->HasItemCount(ORNATE_SPLYGLASS) || !player->HasItemCount(LIGHT_LEATHER, 10)))
    {
        text = "Either bring me the materials or quit wasting my time!";
        error = true;
    }

    if (!error)
    {
        player->DestroyItemCount(ORNATE_SPLYGLASS, 1, true);
        player->DestroyItemCount(LIGHT_LEATHER, 10, true);
        player->SaveInventoryAndGoldToDB();

        creature->SendSpellGo(creature, SPELL_VISUAL);

        item->ClearEnchantment(PERM_ENCHANTMENT_SLOT);
        item->SetEnchantment(PERM_ENCHANTMENT_SLOT, MINING_ENCHANT_5, 0, 0);
    }
    else
        creature->MonsterSay(text);

    player->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_mysterious_stranger(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80388) // Stay awhile and listen...
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_LAUGH);
        pQuestGiver->MonsterSayToPlayer("What would misery, frustration, and pain bring you? Fame? Glory?", pPlayer);
        ChatHandler(pPlayer).PSendSysMessage("If you complete this quest you will become mortal. In this mode you only have one life and can only trade and group up with other mortal players. Your bag, bank and mail items will be destroyed.");
    }
    return false;
}

bool QuestRewarded_npc_mysterious_stranger(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80388) // Stay awhile and listen...
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_TALK);
        pQuestGiver->MonsterSayToPlayer("You are aware this won't be easy, now go and stay safe on your journey.", pPlayer);
        if (pPlayer->SetupHardcoreMode())
            return true;
    }
    return false;
}

#define OK_TEXT 70003
#define NOT_GUILD_TEXT 70004
#define ON_CAST_TEXT 70005
#define TRAVELER_GUILD_ID 172

bool GossipHello_DinkaDinker(Player* player, Creature* creature)
{
    if (player->GetGuildId() == TRAVELER_GUILD_ID)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66866, GOSSIP_SENDER_MAIN,
            GOSSIP_ACTION_INFO_DEF + 1);
        player->SEND_GOSSIP_MENU(OK_TEXT, creature->GetGUID());
        return true;
    }

    player->SEND_GOSSIP_MENU(NOT_GUILD_TEXT, creature->GetGUID());
    return true;
}

bool GossipSelect_DinkaDinker(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        creature->CastSpell(player, SPELL_VISUAL, true);
        player->AddAura(130); // Slow Fall
        creature->MonsterSay(ON_CAST_TEXT);
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}


enum AlahthalasQuests
{
    ASSISTING_CHILDREN_OF_THE_SUN = 80250,
    NPC_CUSTOM_OBJECTIVE_ASSISTING_CHILDREN_OF_THE_SUN = 80229,
    TO_ALAHTHALAS = 80251,
    CRYSTAL_CLEAR_TASK = 80002,
    RELICS_IN_FERALAS = 80003,
    WELCOME_TO_ALAHTHALAS = 80256
};

bool GossipHello_npc_caledra(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ASSISTING_CHILDREN_OF_THE_SUN) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66867, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(40070) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66868, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    if (pPlayer->GetQuestStatus(40070) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->SEND_GOSSIP_MENU(60313, pCreature->GetGUID());
    }
    else pPlayer->SEND_GOSSIP_MENU(90372, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_caledra(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(30070, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(30071, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(30072, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->SEND_GOSSIP_MENU(30073, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->SEND_GOSSIP_MENU(30074, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66869, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->SEND_GOSSIP_MENU(30075, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_ASSISTING_CHILDREN_OF_THE_SUN))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->SEND_GOSSIP_MENU(30076, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pCreature->SummonCreature(1748, -8531.43F, 389.04F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 160 * IN_MILLISECONDS);
        pCreature->SummonCreature(4968, -8529.29F, 386.67F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 160 * IN_MILLISECONDS);
        pCreature->SummonCreature(7999, -8526.58F, 392.94F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 160 * IN_MILLISECONDS);
        pCreature->SummonCreature(2784, -8522.30F, 392.11F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 160 * IN_MILLISECONDS);
        pCreature->SummonCreature(7937, -8524.31F, 394.68F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 160 * IN_MILLISECONDS);
        pCreature->SummonCreature(80877, -8524.59F, 390.27F, 108.38F, 3.82F, TEMPSUMMON_TIMED_DESPAWN, 170 * IN_MILLISECONDS);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                bolvar->SetWalk(true);
                bolvar->GetMotionMaster()->MovePoint(0, -8547.55F, 376.93F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->SetWalk(true);
                bolvar->GetMotionMaster()->MovePoint(0, -8546.75F, 376.99F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* jaina = player->FindNearestCreature(4968, 30.0F))
            {
                jaina->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                jaina->SetWalk(true);
                jaina->GetMotionMaster()->MovePoint(0, -8544.79F, 373.77F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* jaina = player->FindNearestCreature(4968, 30.0F))
            {
                jaina->SetWalk(true);
                jaina->GetMotionMaster()->MovePoint(0, -8544.50F, 373.97F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                tirande->SetWalk(true);
                tirande->GetMotionMaster()->MovePoint(0, -8545.80F, 381.02F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->SetWalk(true);
                tirande->GetMotionMaster()->MovePoint(0, -8545.41F, 380.89F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* magni = player->FindNearestCreature(2784, 30.0F))
            {
                magni->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                magni->SetWalk(true);
                magni->GetMotionMaster()->MovePoint(0, -8540.34F, 374.64F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* magni = player->FindNearestCreature(2784, 30.0F))
            {
                magni->SetWalk(true);
                magni->GetMotionMaster()->MovePoint(0, -8540.89F, 375.41F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* mekkatorque = player->FindNearestCreature(7937, 30.0F))
            {
                mekkatorque->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                mekkatorque->SetWalk(true);
                mekkatorque->GetMotionMaster()->MovePoint(0, -8540.60F, 381.78F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                vereesa->SetWalk(true);
                vereesa->GetMotionMaster()->MovePoint(0, -8538.79F, 379.00F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->SetWalk(true);
                vereesa->GetMotionMaster()->MovePoint(0, -8539.31F, 379.04F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66121);
            }
            });
        DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66122);
            }
            });
        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66123);
            }
            });
        DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66124);
            }
            });
        DoAfterTime(pPlayer, 40 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66125);
            }
            });
        DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66126);
            }
            });
        DoAfterTime(pPlayer, 50 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterYell(66127);
            }
            });
        DoAfterTime(pPlayer, 55 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* magni = player->FindNearestCreature(2784, 30.0F))
            {
                magni->HandleEmote(EMOTE_ONESHOT_TALK);
                magni->MonsterSay(66128);
            }
            });
        DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* mekkatorque = player->FindNearestCreature(7937, 30.0F))
            {
                mekkatorque->HandleEmote(EMOTE_ONESHOT_YES);
                mekkatorque->MonsterSay(66128);
            }
            });
        DoAfterTime(pPlayer, 65 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66130);
            }
            });
        DoAfterTime(pPlayer, 70 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_YES);
                vereesa->MonsterSay(66131);
            }
            });
        DoAfterTime(pPlayer, 75 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
                vereesa->MonsterSay(66132);
            }
            });
        DoAfterTime(pPlayer, 80 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66133);
            }
            });
        DoAfterTime(pPlayer, 85 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->HandleEmote(EMOTE_ONESHOT_TALK);
                bolvar->MonsterSay(66134);
            }
            });
        DoAfterTime(pPlayer, 90 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->HandleEmote(EMOTE_ONESHOT_TALK);
                bolvar->MonsterSay(66135);
            }
            });
        DoAfterTime(pPlayer, 95 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_NO);
                tirande->MonsterSay(66136);
            }
            });
        DoAfterTime(pPlayer, 100 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* magni = player->FindNearestCreature(2784, 30.0F))
            {
                magni->HandleEmote(EMOTE_ONESHOT_NO);
                magni->MonsterSay(66137);
            }
            });
        DoAfterTime(pPlayer, 105 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* mekkatorque = player->FindNearestCreature(2784, 30.0F))
            {
                mekkatorque->HandleEmote(EMOTE_ONESHOT_YES);
                mekkatorque->MonsterSay(66138);
            }
            });
        DoAfterTime(pPlayer, 110 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* mekkatorque = player->FindNearestCreature(2784, 30.0F))
            {
                mekkatorque->HandleEmote(EMOTE_ONESHOT_YES);
                mekkatorque->MonsterSay(66139);
            }
            });
        DoAfterTime(pPlayer, 115 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* jaina = player->FindNearestCreature(4968, 30.0F))
            {
                jaina->HandleEmote(EMOTE_ONESHOT_TALK);
                jaina->MonsterSay(66140);
            }
            });
        DoAfterTime(pPlayer, 120 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66141);
            }
            });
        DoAfterTime(pPlayer, 125 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66142);
            }
            });
        DoAfterTime(pPlayer, 130 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* jaina = player->FindNearestCreature(4968, 30.0F))
            {
                jaina->HandleEmote(EMOTE_ONESHOT_TALK);
                jaina->MonsterSay(66143);
            }
            });
        DoAfterTime(pPlayer, 135 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_YES);
                vereesa->MonsterSay(66144);
            }
            });
        DoAfterTime(pPlayer, 140 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->HandleEmote(EMOTE_ONESHOT_TALK);
                tirande->MonsterSay(66145);
            }
            });
        DoAfterTime(pPlayer, 145 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->HandleEmote(EMOTE_ONESHOT_YES);
                bolvar->MonsterSay(66146);
            }
            });
        DoAfterTime(pPlayer, 155 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->HandleEmote(EMOTE_ONESHOT_YES);
                vereesa->MonsterSay(66147);
            }
            });
        DoAfterTime(pPlayer, 150 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* bolvar = player->FindNearestCreature(1748, 30.0F))
            {
                bolvar->SetWalk(true);
                bolvar->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 150 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* jaina = player->FindNearestCreature(4968, 30.0F))
            {
                jaina->SetWalk(true);
                jaina->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 150 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* tirande = player->FindNearestCreature(7999, 30.0F))
            {
                tirande->SetWalk(true);
                tirande->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 150 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* magni = player->FindNearestCreature(2784, 30.0F))
            {
                magni->SetWalk(true);
                magni->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 150 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* mekkatorque = player->FindNearestCreature(7937, 30.0F))
            {
                mekkatorque->SetWalk(true);
                mekkatorque->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 160 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (Creature* vereesa = player->FindNearestCreature(80877, 30.0F))
            {
                vereesa->SetWalk(true);
                vereesa->GetMotionMaster()->MovePoint(0, -8502.77F, 409.88F, 108.38F);
            }
            });
        DoAfterTime(pPlayer, 161 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60322))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            });
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipHello_npc_elsharin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66870, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90371, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_elsharin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66148);
        //float dis{ 1.0F };
        //float x, y, z;
        //pPlayer->GetSafePosition(x, y, z);
        //x += dis * cos(pPlayer->GetOrientation());
        //y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000220, -9002.817F, 883.549F, 29.58F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_sunkiss(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66871, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90371, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_sunkiss(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay(66149, 10);
        pPlayer->TeleportTo(0, -9009.26F, 883.30F, 29.62F, 0.57F);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_alahthalas(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
        pPlayer->TeleportTo(0, 4225.31F, -2723.46F, 121.87F, 0.70F);
    return true;
}

// Goblin starting zone

enum GoblinStartingZone
{
    QUEST_ME_NOT_ANY_KIND_OF_ORC = 80108,
    QUEST_GREEN_GOES_RED = 80110,
    QUEST_SHADOW_ON_THE_PLATEAU = 80107,
    ZONE_STONETALON_MOUNTAINS = 406,
    ZONE_DUROTAR = 14,
    NPC_TOMB_SHADOW = 80120
};

bool GOHello_go_fm_acquisition(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetZoneId() != ZONE_DUROTAR && pPlayer->GetQuestStatus(QUEST_ME_NOT_ANY_KIND_OF_ORC) == QUEST_STATUS_COMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, 66872, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(100100, pGo->GetGUID());
    return true;
}

bool GOSelect_go_fm_acquisition(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pPlayer->HasItemCount(6948, 1, 0))
        {
            pPlayer->DestroyItemCount(6948, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        pPlayer->ActivateTaxiPathTo(1619, 0, true); // Weeeee!
    }
    return true;
}

enum RefugeeNPCs
{
    NPC_NERT_STONETALON = 80100,
    NPC_NERT_BLASTENTOM = 80121,
    NPC_GRIZZLE_THE_ENFORCER = 80124,
    NPC_MAYTEN_BOOMRIFLE = 80125,
    NPC_LEYTI_QUICKTONGUEM = 80126,
    NPC_WIZETTE_ICEWHISTLE = 80128,
    NPC_AMRI_DEMONDEAL = 80127,
    NPC_SPRAT_NOZZLETON = 80122
};

bool GossipHello_npc_nert_blastentom(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(80100, pCreature->GetGUID());
    return true;
}

bool QuestComplete_npc_garthok(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_GREEN_GOES_RED)
    {
        Creature* NertBlastenton = pQuestGiver->SummonCreature(NPC_NERT_BLASTENTOM, 286.33F, -4717.00F, 13.78F, 2.68F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* GrizzleEnforcer = pQuestGiver->SummonCreature(NPC_GRIZZLE_THE_ENFORCER, 288.25F, -4721.18F, 13.34F, 2.50F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* MaytenBoomfire = pQuestGiver->SummonCreature(NPC_MAYTEN_BOOMRIFLE, 290.45F, -4717.65F, 13.34F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* LeytiQuicktongue = pQuestGiver->SummonCreature(NPC_LEYTI_QUICKTONGUEM, 293.18F, -4716.50F, 13.09F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* WizetteIcewhistle = pQuestGiver->SummonCreature(NPC_WIZETTE_ICEWHISTLE, 290.78F, -4720.42F, 13.08F, 2.29F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* AmriDemondeal = pQuestGiver->SummonCreature(NPC_AMRI_DEMONDEAL, 289.36F, -4723.89F, 12.91F, 2.80F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* SpratNozzleton = pQuestGiver->SummonCreature(NPC_SPRAT_NOZZLETON, 293.27F, -4719.20F, 12.74F, 2.87F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);

        DoAfterTime(NertBlastenton, 5 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = NertBlastenton]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);

            if (!player)
                return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66873, player);
        });

        DoAfterTime(GrizzleEnforcer, 13 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = GrizzleEnforcer]()
        {
                auto player = ObjectAccessor::FindPlayer(playerGuid);

                if (!player)
                    return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66874, player);
        });

        DoAfterTime(NertBlastenton, 21 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = NertBlastenton]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66875, player);
        });

        DoAfterTime(LeytiQuicktongue, 23 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = LeytiQuicktongue]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_BOW);
            me->MonsterTextEmote(66876);
        });

        DoAfterTime(WizetteIcewhistle, 31 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = WizetteIcewhistle]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66877, player);
        });

        DoAfterTime(AmriDemondeal, 39 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = AmriDemondeal]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66878, player);
        });

        DoAfterTime(SpratNozzleton, 48 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = SpratNozzleton]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66879, player);
        });

        DoAfterTime(pQuestGiver, 53 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_LAUGH);
            me->MonsterTextEmote(66880);
            me->MonsterSayToPlayer(66881, player);
        });
    }
    return false;
}

bool QuestAccept_npc_nert_blastentom(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_ME_NOT_ANY_KIND_OF_ORC)
    {
        DoAfterTime(pQuestGiver, 2 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_NO);
            me->MonsterSayToPlayer(66882, player);
        });

        DoAfterTime(pQuestGiver, 8 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_QUESTION);
            me->MonsterSayToPlayer(66883, player);
        });


        DoAfterTime(pQuestGiver, 14 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_LAUGH);
            me->MonsterSayToPlayer(66884, player);
        });


        DoAfterTime(pQuestGiver, 18 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->SetWalk(true);
            me->GetMotionMaster()->MovePoint(0, 1799.06F, 1349.06F, 144.95F, 4.04F, 1.7F);
            me->MonsterTextEmote(66885);
        });

        DoAfterTime(pQuestGiver, 20 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->MonsterSayToPlayer(66886, player);
        });

        DoAfterTime(pQuestGiver, 35 * IN_MILLISECONDS,
            [me = pQuestGiver]()
        {
            me->DespawnOrUnsummon();
        });
    }
    return false;
}

struct npc_tomb_shadowAI : public ScriptedAI
{
    npc_tomb_shadowAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66168);
    }

    void Reset() {}

    void KilledUnit(Unit* victim) {}

    void JustDied(Unit*)
    {
        m_creature->MonsterSay(66169);
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;
        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_npc_tomb_shadow(Creature* _Creature)
{
    return new npc_tomb_shadowAI(_Creature);
}

enum HighElfStartingZone
{
    QUEST_CLEARING_OUT_VERMINS = 80203,
    QUEST_GATHERING_INTEL = 80204,
    NPC_CUSTOM_OBJECTIVE_GATHERING_INTEL = 80203,
    NPC_CUSTOM_OBJECTIVE_BURNT_WHEELS = 80204,
    QUEST_SLAKING_THEIR_THIRST = 80205,
    QUEST_BURNT_WHEELS = 80206,
    NPC_CUSTOM_OBJECTIVE_ITEM_SCRAPPING = 80206,
    NPC_ALISHA_SUNBLADE = 80210,
    NPC_CUSTOM_OBJECTIVE_SUNBLADE_RENUNION = 80211,
    QUEST_SUNBLADE_RENUNION = 80208,
    QUEST_PORTING_TO_GOLDSHIRE = 80209,
    NPC_CUSTOM_OBJECTIVE_PORTING_TO_GOLDSHIRE = 80212
};

bool QuestAccept_npc_kathy_wake(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_CLEARING_OUT_VERMINS)
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_NO);
        pQuestGiver->MonsterSayToPlayer(66887, pPlayer);
    }
    return false;
}

#define EMPTY_BARREL  80209
#define FILLED_BARREL 80210

bool GOHello_go_farstrider_well(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(EMPTY_BARREL, 1))
    {
        pPlayer->DestroyItemCount(EMPTY_BARREL, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();

        pPlayer->AddItem(FILLED_BARREL);
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Empty Barrel.");

    return true;
}

bool GossipHello_npc_malvinah_sunblade(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(QUEST_BURNT_WHEELS) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66888, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(QUEST_SUNBLADE_RENUNION) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66889, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(100200, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_malvinah_sunblade(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pCreature, 1 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_CRY);
            me->MonsterSayToPlayer(66890, player);
        });

        DoAfterTime(pCreature, 5 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66891, player);
        });

        DoAfterTime(pCreature, 10 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_CRY);
            me->MonsterSayToPlayer(66892, player);
        });

        DoAfterTime(pCreature, 15 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66893, player);
        });

        DoAfterTime(pCreature, 20 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66894, player);
        });

        DoAfterTime(pCreature, 25 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            me->MonsterSayToPlayer(66895, player);
            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_BURNT_WHEELS);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());
        });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        DoAfterTime(pCreature, 2 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->SetCastingTarget(player);
            me->HandleEmote(EMOTE_ONESHOT_CRY);
            me->MonsterSayToPlayer(66896, player);
            me->SummonCreature(NPC_ALISHA_SUNBLADE, -5628.99F, -4319.46F, 401.18F, 4.4F, TEMPSUMMON_TIMED_DESPAWN, 25 * 1000);
        });


        DoAfterTime(pCreature, 8 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66897, player);
        });


        DoAfterTime(pCreature, 14 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66898, player);
        });


        DoAfterTime(pCreature, 19 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pCreature]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            me->MonsterSayToPlayer(66899, player);
            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_SUNBLADE_RENUNION);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

#define DARK_KEY 80216

#define ID_GOBJECT_SHADOWFORGECAGE_RESET 1

bool GOHello_go_shadowforge_cage(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(DARK_KEY, 1))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
        {
            gAI->SetData(ID_GOBJECT_SHADOWFORGECAGE_RESET, 1);
        }

        CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_ITEM_SCRAPPING);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        Creature* Alisha = pPlayer->FindNearestCreature(NPC_ALISHA_SUNBLADE, 5.0F);

        if (Alisha)
        {
            Alisha->MonsterSayToPlayer(66900, pPlayer);
            // Change it later to real coords.
            float fX, fY, fZ;
            Alisha->GetRandomPoint(Alisha->GetPositionX(), Alisha->GetPositionY(), Alisha->GetPositionZ(), 15.0f, fX, fY, fZ);
            Alisha->GetMotionMaster()->MovePoint(0, -5831.14F, -4119.65F, 387.77F, 0, 3.0F);
            Alisha->SetWalk(false);

            DoAfterTime(Alisha, 25 * IN_MILLISECONDS,
                [playerGuid = pPlayer->GetObjectGuid(), me = Alisha]()
            {
                me->DespawnOrUnsummon();
            });
        }
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Dark Key.");

    return true;
}

struct go_shadowforge_cage : public GameObjectAI
{
    explicit go_shadowforge_cage(GameObject* pGo) : GameObjectAI(pGo)
    {}

    uint32 BackTimer = 0;
    char DebugInfo[32];

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }

    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == ID_GOBJECT_SHADOWFORGECAGE_RESET)
        {
            BackTimer = 25 * IN_MILLISECONDS;
        }
        GameObjectAI::SetData(id, value);
    }

    virtual const char* GetDebugInfo() override
    {
        sprintf(DebugInfo, "BackTimer %u", BackTimer);
        return DebugInfo;
    }

};

GameObjectAI* GetAI_shadoforge_cage(GameObject* Obj)
{
    return new go_shadowforge_cage(Obj);
}


bool GossipHello_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(QUEST_PORTING_TO_GOLDSHIRE) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66901, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(100201, pCreature->GetGUID());
        return true;
    }
    pPlayer->SEND_GOSSIP_MENU(100202, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->HandleEmote(EMOTE_ONESHOT_SPELLPRECAST);
        pCreature->MonsterSay(66170);
        pPlayer->SummonGameObject(3000204, -5660.109F, -4258.419F, 407.899F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_goldshire(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(QUEST_PORTING_TO_GOLDSHIRE) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->TeleportTo(0, -9464.0f, 62.0f, 56.0f, 0.0f);
        CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_PORTING_TO_GOLDSHIRE);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        // Remove Hearthstone:
        if (pPlayer->HasItemCount(6948, 1, 0))
        {
            pPlayer->DestroyItemCount(6948, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
    }

    return true;
}

#define WHIZZBOT_MIN_AGGRO_TEXT 80000
#define WHIZZBOT_MAX_AGGRO_TEXT 80005
#define WHIZZBOT_MIN_DIE_TEXT   80011
#define WHIZZBOT_MAX_DIE_TEXT   80016

struct npc_whizzbotAI : public ScriptedAI
{
    npc_whizzbotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(irand(WHIZZBOT_MIN_AGGRO_TEXT, WHIZZBOT_MAX_AGGRO_TEXT));
    }

    void Reset() {}

    void KilledUnit(Unit* victim) {}

    void JustDied(Unit*)
    {
        m_creature->MonsterSay(irand(WHIZZBOT_MIN_DIE_TEXT, WHIZZBOT_MAX_DIE_TEXT));
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;
        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_npc_whizzbot(Creature* _Creature)
{
    return new npc_whizzbotAI(_Creature);
}

bool GOHello_go_crypt_door(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(QUEST_SHADOW_ON_THE_PLATEAU) == QUEST_STATUS_INCOMPLETE)
    {
        pGo->UseDoorOrButton();
        pGo->SummonCreature(NPC_TOMB_SHADOW, 1626.74F, 1698.38F, 146.65F, 5.708F, TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);

        DoAfterTime(pGo, 10 * IN_MILLISECONDS,
            [me = pGo]()
        {
            me->ResetDoorOrButton();
        });
    }
    return false;
}

bool GOHello_go_translocation_orb(Player* pPlayer, GameObject* pGo)
{
    switch (pGo->GetEntry())
    {
    case 3000224: pPlayer->TeleportTo(0, 4235.40F, -2778.20F, 20.65F, 6.25F); break;
    case 3000225: pPlayer->TeleportTo(0, 4225.31F, -2723.46F, 121.87F, 0.70F); break;
    default: break;
    }

    return true;
}

#define GAMBLING_TEXT 80602
#define OPT1 "1 silver coin."
#define OPT2 "10 silver coins."
#define OPT3 "50 silver coins."
#define OPT4 "1 gold coin."

#define COIN_SOUND 1204

#define SPELL_FIREWORK 11543

#define FIVE_MINUTES 5 * 60

#define GAMBLING_QUEST 80306
#define DUMMY_GAMBLING_OBJECTIVE 80600

struct GamblerInfo
{
    uint32 betCount;
    uint32 lastBet;
    time_t timestamp;
};

std::unordered_map<uint64, GamblerInfo> gamblingRecords;

uint32 handleRecords(Player* pPlayer, uint32 amount, int result)
{
    GamblerInfo currentInfo{};
    uint32 newAmount = 0;
    time_t currentTime = time(nullptr);

    if (!gamblingRecords.count(pPlayer->GetGUID()))
    {
        currentInfo =
        {
            0,
            amount,
            currentTime
        };
    }
    else
        currentInfo = gamblingRecords[pPlayer->GetGUID()];

    // Reset count if amount is different or last bet is older than 5 minutes.
    if (currentInfo.lastBet != amount || currentInfo.timestamp < currentTime - FIVE_MINUTES)
        currentInfo.betCount = 0;
    currentInfo.betCount++;

    if (currentInfo.betCount == 3 && currentInfo.lastBet == amount)
    {
        if (result > 75)
            newAmount = amount * 3;

        currentInfo.betCount = 0;
    }
    else if (result > 50)
        newAmount = amount * 2;
    else
        currentInfo.betCount = 0;

    currentInfo.lastBet = amount;
    currentInfo.timestamp = currentTime;
    gamblingRecords[pPlayer->GetGUID()] = currentInfo;

    return newAmount;
}

bool GossipHello_npc_agne_gambler(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->HasItemCount(50745, 1, false))
    {
        pPlayer->GetSession()->SendNotification("You cannot gamble anymore.");
        return false;
    }

    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);

    pPlayer->SEND_GOSSIP_MENU(GAMBLING_TEXT, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_agne_gambler(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    uint32 amount;
    uint32 amountToAward;
    uint8 result = 0;

    switch (uiAction)
    {
    case GOSSIP_ACTION_INFO_DEF + 1:
        amount = 100;
        break;
    case GOSSIP_ACTION_INFO_DEF + 2:
        amount = 1000;
        break;
    case GOSSIP_ACTION_INFO_DEF + 3:
        amount = 5000;
        break;
    case GOSSIP_ACTION_INFO_DEF + 4:
        amount = 10000;
        break;
    default:
        return true;
    }

    if (pPlayer->GetMoney() < amount)
    {
        pPlayer->GetSession()->SendNotification("You don't have enough money!");
        pPlayer->PlayerTalkClass->CloseGossip();
        return true;
    }

    pPlayer->ModifyMoney(amount * -1);

    pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    pCreature->PlayDirectSound(COIN_SOUND, pPlayer); // Coin sound

    result = urand(1, 100);

    pCreature->PMonsterEmote("%s rolls a dice for %s... %u!", nullptr, false,
                             pCreature->GetName(), pPlayer->GetName(), result);

    amountToAward = handleRecords(pPlayer, amount, result);
    if (amountToAward > 0)
    {
        pPlayer->ModifyMoney(amountToAward);

        if (amountToAward >= amount * 3)
        {
            pCreature->PMonsterEmote("STREAK!");
            pPlayer->SendSpellGo(pPlayer, SPELL_FIREWORK);
        }
        else
            pPlayer->HandleEmote(EMOTE_ONESHOT_CHEER);
    }
    else
        pPlayer->HandleEmote(EMOTE_ONESHOT_CRY);

    pPlayer->CLOSE_GOSSIP_MENU();

    // Complete quest if it's active and incomplete
    if (pPlayer->GetQuestStatus(GAMBLING_QUEST) == QUEST_STATUS_INCOMPLETE) // What's Yours is Ours
    {
        CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(DUMMY_GAMBLING_OBJECTIVE);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool GossipHello_npc_rov(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80310) == QUEST_STATUS_INCOMPLETE) // Quark's Justice
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66902, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(80603, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_rov(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        Creature* sturk = pPlayer->FindNearestCreature(80604, 20.0F); // Sturk

        if (!sturk)
        {
            pCreature->MonsterSay(66171);
            return false;
        }

        pCreature->MonsterSay(66172);
        pCreature->GetMotionMaster()->MovePoint(1, 2025.37f, -4633.34f, 29.55f, 0, 2.0F);
        pCreature->SetWalk(true);

        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer, sturkGuid = sturk->GetObjectGuid()]()
        {
            Map* map = player->GetMap();
            if (!map)
                return;

            Creature* creature = map->GetCreature(CreatureGuid);
            Creature* sturk_mob = map->GetCreature(sturkGuid);

            if (!creature || !sturk_mob)
                return;

            creature->Attack(sturk_mob, true);

            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(80606);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());
        });

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS,
            [ me = sturk]()
        {
            me->MonsterSay(66173);
            me->GetMotionMaster()->MovePoint(1, 2026.39f, -4645.33f, 29.66f, 0, 5.0F);
            me->SetWalk(false);
        });

        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer, sturkGuid = sturk->GetObjectGuid()]()
        {
            Map* map = player->GetMap();
            if (!map)
                return;

            Creature* creature = map->GetCreature(CreatureGuid);
            Creature* sturk_mob = map->GetCreature(sturkGuid);

            if (!creature || !sturk_mob)
                return;


            creature->ForcedDespawn(300);
            sturk_mob->ForcedDespawn(300);
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_deino(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(80302)) // To Amani'Alor!
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66903, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(pCreature->GetDefaultGossipMenuId(), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_deino(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer(66904, pPlayer);

        float dis{ -3.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        x += dis * cos(pPlayer->GetOrientation());
        y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000240, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000241, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_amanialor(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(80302)) // To Amani'Alor!
        pPlayer->TeleportTo(1, 2862.1F, 2450.4F, 148.33F, 0.33F);
    return true;
}

bool QuestAccept_npc_teslinah(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80261) // Teslinah's Search I
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);
        pQuestGiver->MonsterSayToPlayer(66905, pPlayer);
    }
    return false;
}

bool GossipHello_npc_iluria(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80315) == QUEST_STATUS_INCOMPLETE) // Apple a Day...
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66927, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    pPlayer->SEND_GOSSIP_MENU(1, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_iluria(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(80865, 1);
        pCreature->MonsterSayToPlayer(66928, pPlayer);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_applebough(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80315) // Apple a Day
    {
        pQuestGiver->CastSpell(pQuestGiver, 5570, true); // Insects
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);

        if (pQuestGiver->GetDisplayId() == 18356) // Green
        {
            pQuestGiver->SetDisplayId(18029); // Yellow
            pQuestGiver->MonsterSayToPlayer(66929, pPlayer);
        }
        else
            pQuestGiver->MonsterSayToPlayer(66930, pPlayer);
    }
    return false;
}

bool QuestRewarded_npc_applebough(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80315) // Apple a Day
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
        // I don't understand why he's not cheering? Model has /cheer animation.
        pQuestGiver->SetDisplayId(18356); // Green
        pQuestGiver->MonsterSayToPlayer(66931, pPlayer);
        return true;
    }

    return false;
}

bool QuestComplete_npc_voldana(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80393)
    {

        DoAfterTime(pQuestGiver, 3 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66932, player);
        });

        DoAfterTime(pQuestGiver, 9 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66933, player);
        });

        DoAfterTime(pQuestGiver, 15 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66934, player);
        });

        DoAfterTime(pQuestGiver, 23 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_CRY);
            me->MonsterSayToPlayer(66935, player);
        });

        DoAfterTime(pQuestGiver, 30 * IN_MILLISECONDS,
            [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]()
        {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->HandleEmote(EMOTE_ONESHOT_TALK);
            me->MonsterSayToPlayer(66936, player);
        });

    }
    return false;
}

bool GOHello_go_kheyna_wormhole(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 3000246)
    {
        if (pPlayer->GetQuestStatus(80407) == QUEST_STATUS_INCOMPLETE)
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(81252))
                pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pPlayer->GetQuestStatus(80407) == QUEST_STATUS_COMPLETE)
            if (pPlayer->FindNearestCreature(81041, 15.0F))
                return true;
        if (pPlayer->GetQuestStatus(80409) == QUEST_STATUS_COMPLETE)
        {
            if (pPlayer->FindNearestCreature(65019, 15.0F))
                return true;

            Creature* chromie = pGo->SummonCreature(65019, pGo->GetPositionX() + 1.0F, pGo->GetPositionY() + 1.0F, pGo->GetPositionZ(), pGo->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);

            DoAfterTime(chromie, 2 * IN_MILLISECONDS,
                [playerGuid = pPlayer->GetObjectGuid(), me = chromie]()
            {
                me->HandleEmote(EMOTE_ONESHOT_TALK);
                me->MonsterSay(66174);
            });
        }
        else
            if (!pPlayer->FindNearestCreature(81041, 15.0F))
            {
                pGo->SummonCreature(81041, pGo->GetPositionX() + 1.0F, pGo->GetPositionY() + 1.0F, pGo->GetPositionZ(), pGo->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);
            }
        return true;
    }
    else
    {
        if (pPlayer->GetQuestStatus(80395) == QUEST_STATUS_INCOMPLETE)
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(80007))
                pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pPlayer->FindNearestCreature(81041, 15.0F))
            return true;

        if (pPlayer->GetQuestStatus(80395) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(80395) == QUEST_STATUS_COMPLETE || pPlayer->GetQuestStatus(80396) == QUEST_STATUS_COMPLETE) // A Glittering Opportunity
            pGo->SummonCreature(81041, pGo->GetPositionX() + 1.0F, pGo->GetPositionY() + 1.0F, pGo->GetPositionZ(), pGo->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);
        return true;
    }
}

bool QuestRewarded_npc_norvok(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 70022)
    {
        pQuestGiver->MonsterSay(66175);

        Creature* Taupo = pPlayer->FindNearestCreature(70020, 10.0F);

        if (Taupo && Taupo->IsAlive())
        {
            DoAfterTime(Taupo, 3 * IN_MILLISECONDS,
                [playerGuid = pPlayer->GetObjectGuid(), me = Taupo]()
            {

               me->HandleEmote(EMOTE_ONESHOT_TALK);
               me->MonsterSay(66176);
            });
        }

        return true;
    }

    return false;
}

bool ItemUseSpell_item_gnome_enlargement(Player* pPlayer, Item* pItem, const SpellCastTargets&) 
{
    if (pPlayer->GetRace() == RACE_GNOME)
    {
        if (pPlayer->GetObjectScale() == 1.6F)
        {
            pPlayer->GetSession()->SendNotification("You can't grow more!");
            return false;
        }
        pPlayer->SetObjectScale(1.6F);
        return true;
    }
    else
    {
        pPlayer->GetSession()->SendNotification("GREAT NEWS!!! YOU ARE JELLY NOW!");
        pPlayer->SetObjectScale(0.6F);
        pPlayer->SetDisplayId(12349);
        return true;
    }

}


bool ItemUseSpell_item_tauren_shrink(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->GetRace() == RACE_TAUREN)
    {
        //taurens by default do not have 1.0 as scale so this shrinks them.
        if (pPlayer->GetObjectScale() < DEFAULT_TAUREN_FEMALE_SCALE)
        {
            pPlayer->GetSession()->SendNotification("You can't shrink more!");
            return false;
        }
        pPlayer->SetObjectScale(pPlayer->GetGender() == GENDER_MALE ? 1.0f : 0.9f);
        return true;
    }
    else
    {
        if (pPlayer->GetHealth() >= pPlayer->GetMaxHealth() / 10)
        {
            pPlayer->DealDamage(pPlayer, pPlayer->GetMaxHealth() / 10, nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_SHADOW, nullptr, false);
            pPlayer->Say("Ouch..", LANG_UNIVERSAL);
        }
        return true;
    }

}

bool GOHello_go_shagu_shisha(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40003) == QUEST_STATUS_INCOMPLETE) // Puffing Peace
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60301))
        {
            pPlayer->KilledMonster(cInfo, ObjectGuid());
            pPlayer->CastSpell(pPlayer, 26389, false);
            return true;
        }
    }
    return false;
}

bool QuestRewarded_npc_malanys_cloudpiercer(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40010) // Antler's Guidance
    {
        pQuestGiver->SetDisplayId(12034); // Nigth Elf
        pQuestGiver->CastSpell(pQuestGiver, 21178, false);
        return true;
    }

    if (pQuest->GetQuestId() == 40012) // The White Stag and the Moon (A)
    {
        pQuestGiver->SetDisplayId(1991); // Deer(A)
        pQuestGiver->MonsterSayToPlayer(67031, pPlayer);
        return true;
    }

    return false;
}

bool QuestRewarded_npc_ilyara_skyvault(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40011) // Antler�s Guidance
    {
        pQuestGiver->SetDisplayId(2121); // Tauren
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_WAVE);
        return true;
    }

    if (pQuest->GetQuestId() == 40013) // The White Stag and the Moon (H)
    {
        pQuestGiver->SetDisplayId(2161); // Deer(H)
        pQuestGiver->MonsterSayToPlayer(67032, pPlayer);
        return true;
    }

    return false;
}

// Scarlet Monastery raid attunement quest scripts:
#define QUEST_YOUNG_AND_FOOLISH 80702

bool GossipHello_npc_questions_and_answers(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80721) == QUEST_STATUS_INCOMPLETE) // Grim News
        switch (pCreature->GetEntry())
        {
        case 1515: 
            if (pPlayer->GetQuestStatusData(80721)->m_creatureOrGOcount[0] == 0)
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66937, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            break;
        case 1952: 
            if (pPlayer->GetQuestStatusData(80721)->m_creatureOrGOcount[1] == 0)
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66938, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            break;
        case 2215:
            if (pPlayer->GetQuestStatusData(80721)->m_creatureOrGOcount[2] == 0)
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66939, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            break;
        }

    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, 66940, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_questions_and_answers(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        switch (pCreature->GetEntry())
        {
        case 1515: // Executor Zygand
            pCreature->MonsterSayToPlayer(66941, pPlayer);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50665))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
            break;
        case 1952: // High Executor Hadrec
            pCreature->MonsterSayToPlayer(66942, pPlayer);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50666))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
            break;
        case 2215: // High Executor Darthalia
            pCreature->HandleEmote(EMOTE_ONESHOT_POINT);
            pCreature->MonsterSayToPlayer(66943, pPlayer);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50667))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
            break;
        }
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        pPlayer->SEND_VENDORLIST(pCreature->GetGUID());
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_vladeus_springriverAI : public ScriptedAI
{
    npc_vladeus_springriverAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    ShortTimeTracker m_despawnCheckTimer;

    void Reset() override
    {
        m_despawnCheckTimer.Reset(5000);
    }

    void DamageTaken(Unit* pAttacker, uint32& damage) override
    {
        if ((int32(m_creature->GetHealth()) - int32(damage)) < m_creature->GetMaxHealth() * 0.1f)
        {
            damage = 0;

            m_creature->MonsterSay(66177);
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);

            ThreatList const& tList = m_creature->GetThreatManager().getThreatList();
            for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
            {
                Unit* pUnit = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());
                if (pUnit && (pUnit->GetTypeId() == TYPEID_PLAYER))
                {
                    if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50670))
                        pUnit->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }
            }

            m_creature->CombatStop(true);
            m_creature->SetFactionTemplateId(35);
        }
    }

    void UpdateAI(uint32 const diff) override
    {
        ScriptedAI::UpdateAI(diff);

        m_despawnCheckTimer.Update(diff);
        if (m_despawnCheckTimer.Passed())
        {
            m_despawnCheckTimer.Reset(5000);
            if (!m_creature->IsInCombat() && !m_creature->FindNearestPlayer(VISIBILITY_DISTANCE_NORMAL))
                m_creature->DespawnOrUnsummon();
        }
    }

    void EnterCombat(Unit* pVictim) override
    {
        if (pVictim && pVictim->IsPlayer())
            m_creature->MonsterSay(66178);
    }
};

CreatureAI* GetAI_npc_vladeus_springriver(Creature* _Creature) { return new npc_vladeus_springriverAI(_Creature); }

bool GossipHello_npc_vladeus_springriver(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80703) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(80703)->m_creatureOrGOcount[0] == 1)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66944, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(51683, pCreature->GetGUID());
    return true;
}

static std::vector<ObjectGuid> followed_units;

bool GossipSelect_npc_vladeus_springriver(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->CombatStop();
        pCreature->MonsterSay(66179);
        pCreature->GetMotionMaster()->MoveFollow(pPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
        pCreature->UpdateSpeed(MOVE_RUN, false, pCreature->GetSpeedRate(MOVE_RUN) * 1.5);
        followed_units.push_back(pPlayer->GetObjectGuid());
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_captain_stoutfist(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80703) == QUEST_STATUS_INCOMPLETE && (std::find(followed_units.begin(), followed_units.end(), pPlayer->GetObjectGuid()) != followed_units.end()))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66945, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_captain_stoutfist(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50671))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        pCreature->MonsterSay(66180);
        if (Creature* prisoner = pPlayer->FindNearestCreature(50674, 30.0F))
        {
            prisoner->GetMotionMaster()->Clear();
            prisoner->DespawnOrUnsummon();
        }

        auto itr = std::find(followed_units.begin(), followed_units.end(), pPlayer->GetObjectGuid());
        if (itr != followed_units.end())
            followed_units.erase(itr);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_vladeus_interrogation(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80705) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(80705)->m_creatureOrGOcount[0] == 0)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66946, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (pPlayer->GetQuestStatus(80706) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(80706)->m_creatureOrGOcount[0] == 0)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, 66947, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    return true;
}

bool GossipSelect_npc_vladeus_interrogation(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    // The Means of Persuading:
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterTextEmote(66948);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66949, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->MonsterSayToPlayer(66950, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66951, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        pCreature->MonsterSayToPlayer(66952, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66953, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        pCreature->MonsterSayToPlayer(66954, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66955, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pCreature->MonsterSayToPlayer(66956, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66957, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        pPlayer->SEND_GOSSIP_MENU(51684, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        pCreature->MonsterSayToPlayer(66958, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66959, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50675))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    // Seeking Justice or Vengeance:
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pCreature->MonsterSayToPlayer(66960, pPlayer);
        pCreature->MonsterTextEmote(66961);
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66962, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pCreature->MonsterSayToPlayer(66963, pPlayer);
        pCreature->MonsterTextEmote(66964);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66965, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 9)
    {
        pCreature->MonsterSayToPlayer(66966, pPlayer);
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66967, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 10)
    {
        pCreature->MonsterSayToPlayer(66968, pPlayer);
        pCreature->HandleEmote(EMOTE_ONESHOT_BEG);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66969, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 11)
    {
        pCreature->MonsterSayToPlayer(66970, pPlayer);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66971, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 12)
    {
        pCreature->MonsterSayToPlayer(66972, pPlayer);
        pCreature->MonsterTextEmote(66973);
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66974, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
        pPlayer->SEND_GOSSIP_MENU(51685, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 13)
    {
        pCreature->MonsterTextEmote(66975);
        pCreature->HandleEmote(EMOTE_ONESHOT_CRY);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50675))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    return true;
}

bool QuestRewarded_npc_brother_crowley(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || ! pPlayer) return false;

    if (pQuest->GetQuestId() == 80708) // Scarlet Aid
    {
        DoAfterTime(pQuestGiver, 2 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
            me->MonsterSayToPlayer(66976, player);});
        DoAfterTime(pQuestGiver, 10 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->MonsterSayToPlayer(66977, player); });
        DoAfterTime(pQuestGiver, 18 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->MonsterSayToPlayer(66978, player); });
        DoAfterTime(pQuestGiver, 28 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->MonsterSayToPlayer(66979, player);
            me->HandleEmote(EMOTE_ONESHOT_QUESTION); });
    }
    return false;
}

bool GossipHello_npc_maverick(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80722) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(80722)->m_creatureOrGOcount[0] == 0)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66980, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (pPlayer->GetQuestStatus(80722) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(80722)->m_creatureOrGOcount[1] == 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66981, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(51691, pCreature->GetGUID());
        return true;
    }

    pPlayer->SEND_GOSSIP_MENU(51690, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_maverick(Player* pPlayer, Creature* maverick, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        maverick->MonsterSayToPlayer(66982, pPlayer);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50668))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        maverick->SetWalk(true);
        maverick->GetMotionMaster()->MovePoint(0, 2545.8F, -651.11F, 78.8F);
        maverick->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);

        DoAfterTime(maverick, 40 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = maverick]() {
            me->SummonCreature(50680, 2552.95F, -650.62F, 80.09F, 3.20F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60 * IN_MILLISECONDS);
            me->SummonGameObject(2005011, 2545.8F, -651.11F, 78.8F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 100, true);
            });
        DoAfterTime(maverick, 41 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = maverick]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->MonsterSayToPlayer(66983, player);
            me->SummonCreature(50680, 2544.84F, -658.78F, 79.53F, 1.5F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60 * IN_MILLISECONDS);
            });
        DoAfterTime(maverick, 44 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = maverick]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;

            me->MonsterSayToPlayer(66984, player);
            me->CastSpell(me, 25148, true);
            me->HandleEmote(EMOTE_STATE_SLEEP);
            me->SetStandState(UNIT_STAND_STATE_SLEEP);
            me->SummonCreature(50682, 2558.14F, -663.63F, 88.68F, 2.19F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 120 * IN_MILLISECONDS);
            });
        DoAfterTime(maverick, 53 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = maverick]() {
            me->SummonCreature(50681, 2544.84F, -658.78F, 79.53F, 1.5F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60 * IN_MILLISECONDS);
            });
        DoAfterTime(maverick, 54 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = maverick]() {
            me->SummonCreature(50681, 2546.42F, -643.44F, 80.20F, 4.6F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60 * IN_MILLISECONDS);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        Creature* varimathras_spawned = pPlayer->FindNearestCreature(2425, 30.0F);

        if (!varimathras_spawned)
        {
            Creature* varimathras = pPlayer->SummonCreature(2425, 2552.95F, -650.62F, 80.09F, 3.20F, TEMPSUMMON_TIMED_DESPAWN, 180 * IN_MILLISECONDS);
            varimathras->MonsterSayToPlayer(66985, pPlayer);
        }

        if (pPlayer->GetQuestStatusData(80722)->m_itemcount[0] == 0)
        {
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(50670))
            {
                pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);
                pPlayer->KilledMonster(cInfo, ObjectGuid());
                pPlayer->AddItem(53010, 1);
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_scarlet_magicianAI : public ScriptedAI
{
    npc_scarlet_magicianAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset(){}

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->IsInCombat())
        {
            if (m_creature->GetEntry() == 50680)
                m_creature->CastSpell((Unit*)nullptr, 23017, true);
            else           
                m_creature->CastSpell((Unit*)nullptr, 13540, true);
        }
        DoMeleeAttackIfReady();
    }
    void EnterCombat()
    {
        m_creature->MonsterSay(66181);
    }
    void JustRespawned(){}
};

CreatureAI* GetAI_npc_scarlet_magician(Creature* _Creature) { return new npc_scarlet_magicianAI(_Creature); }

bool GOHello_go_gunthers_favor(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80725) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(53011, 1, false))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
        {
            gAI->SetData(1, 1);
        }

        pGo->SummonCreature(50683, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pGo->GetOrientation(), 
                            TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60 * IN_MILLISECONDS);
    }
    return true;
}

struct go_gunthers_favor : public GameObjectAI
{
    explicit go_gunthers_favor(GameObject* pGo) : GameObjectAI(pGo) {}

    uint32 BackTimer = 0;

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }
    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == 1)
            BackTimer = 60 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_go_gunthers_favor(GameObject* Obj) { return new go_gunthers_favor(Obj); }

struct npc_alphus_wordwillAI : public ScriptedAI
{
    npc_alphus_wordwillAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool speech_1 = false;
    bool speech_2 = false;
    bool speech_3 = false;
    bool speech_4 = false;

    void Reset() {}

    void Aggro(Unit* pWho) override
    {
        m_creature->MonsterSay(66182);
    }

    void UpdateAI(const uint32 diff)
    {
        std::list<Player*> players;
        GetPlayersWithinRange(players, 20);

        if (m_creature->GetHealthPercent() < 80 && m_creature->GetHealthPercent() > 70)
        {
            if (!speech_1)
            {
                speech_1 = true;
                m_creature->MonsterSay(66183);
            }
        }
        if (m_creature->GetHealthPercent() < 60 && m_creature->GetHealthPercent() > 50)
        {
            if (!speech_2)
            {
                speech_2 = true;
                m_creature->MonsterSay(66184);
            }
        }
        if (m_creature->GetHealthPercent() < 30 && m_creature->GetHealthPercent() > 20)
        {
            if (!speech_3)
            {
                speech_3 = true;
                m_creature->MonsterSay(66185);
            }
        }
        if (m_creature->GetHealthPercent() < 10)
        {
            if (!speech_4)
            {
                speech_4 = true;
                m_creature->MonsterSay(66186);
            }
            m_creature->CombatStop(true);
            m_creature->ClearInCombat();
            m_creature->SetFactionTemplateId(35);
            m_creature->CastSpell((Unit*)nullptr, 11426, true);
            m_creature->SummonGameObject(1000177, m_creature->GetPositionX() + 1.0F, m_creature->GetPositionY() + 1.0F, m_creature->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 150, true);
        }
        DoMeleeAttackIfReady();
    }
    void EnterCombat() {}
    void JustRespawned() {}
};

CreatureAI* GetAI_npc_alphus_wordwill(Creature* _Creature) { return new npc_alphus_wordwillAI(_Creature); }



bool GossipHello_npc_bloodsail_traitor(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(55030) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(55030)->m_creatureOrGOcount[0] == 0)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, 66986, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_bloodsail_traitor(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
        pCreature->MonsterSayToPlayer(66987, pPlayer);
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(91294))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    return true;
}

bool QuestAccept_npc_shalgrig(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 55051) // Return to Port!
    {
        Creature* spanessa = pPlayer->FindNearestCreature(91281, 30.0F);
        Creature* brizclang = pPlayer->FindNearestCreature(91280, 30.0F);

        if (spanessa && brizclang)
        {
            DoAfterTime(pQuestGiver, 1 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
                auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->HandleEmote(EMOTE_ONESHOT_TALK);
                me->MonsterSayToPlayer(66988, player);
                });
            DoAfterTime(pQuestGiver, 3 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
                auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->HandleEmote(EMOTE_ONESHOT_CHEER);
                me->MonsterSayToPlayer(66989, player);
                });
            DoAfterTime(pQuestGiver, 5 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), me = pQuestGiver]() {
                auto player = ObjectAccessor::FindPlayer(playerGuid);
                if (!player) return;
                me->HandleEmote(EMOTE_ONESHOT_WAVE);
                me->MonsterSayToPlayer(66990, player);
                });
            return true;
        }
        else
        {
            pQuestGiver->HandleEmote(EMOTE_ONESHOT_WAVE);
            pQuestGiver->MonsterSayToPlayer(66990, pPlayer);
            return true;
        }
    }
    return false;
}

bool QuestAccept_npc_ansirem(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40166) // The Tower of Lapidis IV
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pQuestGiver, 18 * IN_MILLISECONDS, [ npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 1449, false);
            });
        DoAfterTime(pQuestGiver, 20 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), npc = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            npc->MonsterSayToPlayer(66991, player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60327))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            });

        return true;
    }
    return false;
}

bool QuestRewarded_npc_ansirem(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 55040) // Returning Property
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_BOW);
        pQuestGiver->SummonGameObject(2005011, pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ(), pPlayer->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 5, true);
        pQuestGiver->CastSpell(pPlayer, 10157, false);
        pQuestGiver->MonsterSayToPlayer(66992, pPlayer);
        return true;
    }
    return true;
}

bool GossipHello_npc_ansirem(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40561) == QUEST_STATUS_INCOMPLETE) // Preparation for Divination
    {
        Creature* ansirem = pPlayer->FindNearestCreature(2543, 10.0F);
        if (ansirem && !pPlayer->HasItemCount(60815, 1))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66993, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(2543, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_ansirem(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer->HasItemCount(60815, 1))
        {
            pPlayer->AddItem(60815);
        }
        if (pPlayer->HasItemCount(60815, 1, false))
        {
            pCreature->MonsterSay(66187);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }
    return true;
}

bool QuestRewarded_npc_pazzle_brightwrench(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 55043) // The Brightwater Logs
    {
        DoAfterTime(pQuestGiver, 1 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), npc = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            npc->HandleEmote(EMOTE_ONESHOT_EAT_NOSHEATHE);
            npc->MonsterSayToPlayer(66994, player);
            });
        DoAfterTime(pQuestGiver, 3 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), npc = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            npc->HandleEmote(EMOTE_ONESHOT_LAUGH);
            npc->MonsterSayToPlayer(66995, player);
            });
        return true;
    }
    return true;
}

bool GossipHello_npc_hizzle(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(55048) == QUEST_STATUS_INCOMPLETE && pPlayer->HasAura(50060))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66996, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_hizzle(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(91296))
        {
            pPlayer->KilledMonster(cInfo, ObjectGuid());

            if (Group* pGroup = pPlayer->GetGroup())
            {
                for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    if (Player* pMember = itr->getSource())
                    {
                        if (pMember == pPlayer)
                            continue;

                        pMember->KilledMonster(cInfo, ObjectGuid());
                    }
                }
            }
        }

        pCreature->MonsterSay(66188);
        pPlayer->RemoveAurasDueToSpell(50060);
        pPlayer->RemoveMiniPet();
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_barthos(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer)
        return false;

    if (pQuest->GetQuestId() == 55211) // Occelation Inhibited Disk!
    {
        pQuestGiver->HandleEmote(69);
        pQuestGiver->MonsterSayToPlayer(66997, pPlayer);
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);

        DoAfterTime(pQuestGiver, 6 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), npc = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            npc->MonsterSayToPlayer(66998, player);
            });
        DoAfterTime(pQuestGiver, 12 * IN_MILLISECONDS, [playerGuid = pPlayer->GetObjectGuid(), npc = pQuestGiver]() {
            auto player = ObjectAccessor::FindPlayer(playerGuid);
            if (!player) return;
            npc->MonsterSayToPlayer(66999, player);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(91301))
                player->KilledMonster(cInfo, ObjectGuid());
            });
        DoAfterTime(pQuestGiver, 14 * IN_MILLISECONDS, [npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_NONE);
            });
    }
    return false;
}

bool eventInProgress = false;

bool GossipHello_npc_zuljin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80801) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 67000, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (eventInProgress == true && pPlayer->GetQuestStatus(65007) == QUEST_STATUS_COMPLETE && pPlayer->GetQuestStatus(65008) == QUEST_STATUS_NONE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 67001, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(80867, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_zuljin(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
        pCreature->MonsterSayToPlayer(67002, pPlayer);
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67003, player);
            c->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67004, player);
            c->HandleEmote(EMOTE_ONESHOT_NO);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67005, player);
            c->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67006, player);
            c->HandleEmote(EMOTE_ONESHOT_YES);
            });
        DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67007, player);
            c->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67008, player);
            c->HandleEmote(EMOTE_ONESHOT_YES);
            });
        DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67009, player);
            c->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            });
        DoAfterTime(pPlayer, 40 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterYell(67010);
            c->HandleEmote(EMOTE_ONESHOT_BATTLEROAR);
            });
        DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterYell(67011);
            c->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(91320))
                player->KilledMonster(cInfo, ObjectGuid());
            c->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            c->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
            }); 
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->MonsterSayToPlayer(67012, pPlayer);
        pCreature->HandleEmote(EMOTE_ONESHOT_NO);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_harlus(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(55225) == QUEST_STATUS_INCOMPLETE) // The Hawk's Vigil
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 67013, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(52119, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_harlus(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetCastingTarget(pPlayer);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67014, player);
            c->HandleEmote(EMOTE_ONESHOT_LAUGH);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67015, player);
            c->HandleEmote(EMOTE_ONESHOT_NO);
            });
        DoAfterTime(pPlayer, 9 * IN_MILLISECONDS, [player = pPlayer, c = pCreature]() {
            c->MonsterSayToPlayer(67016, player);
            c->SetFactionTemporary(14, TEMPFACTION_RESTORE_RESPAWN);
            c->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
            c->ClearCastingTarget();
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_ardaen_evermoon(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40121) // Alpha Aggresion
    {
        pQuestGiver->MonsterSayToPlayer(67033, pPlayer);
        return true;
    }

    return false;
}

struct npc_naxiarAI : public ScriptedAI
{
    npc_naxiarAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66189);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_naxiar(Creature* _Creature) { return new npc_naxiarAI(_Creature); }

bool QuestAccept_npc_truthseeker_magellas(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40106 || pQuest->GetQuestId() == 40114) //Gates of Uldum  //Uldum Awaits
    {
        if (pPlayer->AddItem(60102)) first_item_added = true;
        if (pPlayer->AddItem(60103)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40106);
            pPlayer->RemoveQuest(40114);
            pPlayer->SetQuestStatus(40107, QUEST_STATUS_NONE);
            pPlayer->SetQuestStatus(40115, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}


bool QuestRewarded_npc_magus_bromley(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40127) // The Dampening Must End
    {
        pQuestGiver->MonsterSayToPlayer(67034, pPlayer);
        return true;
    }

    if (pQuest->GetQuestId() == 40124) //  Interfering Naga
    {
        pQuestGiver->MonsterSayToPlayer(67017, pPlayer);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, c = pQuestGiver]() {
            c->MonsterSayToPlayer(67018, player);
            c->HandleEmote(EMOTE_ONESHOT_NO);
            c->CastSpell(c, 1449, false);
            });

        return true;
    }

    return false;
}

bool QuestRewarded_npc_lord_rog(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40024) // Lord Rog's Exiles
    {
        Creature* speaker_ganzih = pPlayer->FindNearestCreature(91411, 30.0F);
        if (speaker_ganzih)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = speaker_ganzih]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer(67019, player);
                });
            return true;
        }
    }
    return false;
}

bool QuestAccept_npc_ganzih(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40026) // Lord Rog's Favor
    {
        Creature* lord_rog = pPlayer->FindNearestCreature(91289, 30.0F);

        if (lord_rog)
        {
            lord_rog->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
            lord_rog->CastSpell(pQuestGiver, 13236, false);

            DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = lord_rog]() {
                npc->MonsterSayToPlayer(67020, player);
                });
            DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = lord_rog]() {
                npc->CastSpell(npc, 5906, false);
                });
            DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = lord_rog]() {
                npc->MonsterSayToPlayer(67021, player);

                if (CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(60313))
                    player->KilledMonster(cInfo, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
                });
            return true;
        }
    }
    return false;
}

struct npc_speaker_gantoAI : public ScriptedAI
{
    npc_speaker_gantoAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay(66190);
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_speaker_ganto(Creature* _Creature) { return new npc_speaker_gantoAI(_Creature); }

bool QuestRewarded_npc_magtoor(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40030) // Noboru the Cudgel
    {
        Creature* exile1 = pPlayer->FindNearestCreature(60421, 40.0F);
        if (exile1)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = exile1]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer(67022, player);
                });

        Creature* exile2 = pPlayer->FindNearestCreature(60422, 40.0F);
        if (exile2)
            DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = exile2]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer(67023, player);
                });

        Creature* exile3 = pPlayer->FindNearestCreature(60423, 40.0F);
        if (exile3)
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = exile3]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer(67024, player);
                });

        Creature* exile4 = pPlayer->FindNearestCreature(60424, 40.0F);
        if (exile4)
            DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = exile4]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer(67025, player);
                });
            return true;
        }
    }

    return false;
}


bool GossipHello_glyph_master(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, 66628, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->HasSpell(SPELL_SLOW_AND_STEADY))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66629, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pPlayer->HasSpell(SPELL_EXHAUSTION_MODE))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66630, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    if (pPlayer->HasSpell(SPELL_WAR_MODE))
    {
        if (pPlayer->GetLevel() == 60 || !pPlayer->GetQuestStatus(55055) == QUEST_STATUS_COMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66631, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
    }

    if (pPlayer->HasSpell(SPELL_VARGANT_MODE) && (pPlayer->GetLevel() < 60))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 67035, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);

    if (pPlayer->HasSpell(SPELL_BOARING_MODE) && (pPlayer->GetLevel() < 60))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 67037, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);

    // info about glyphs
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66632, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66633, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66634, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, 66635, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);

    pPlayer->SEND_GOSSIP_MENU(51547, pCreature->GetGUID());
    return true;
}

bool GossipSelect_glyph_master(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->SEND_VENDORLIST(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pPlayer->HasChallenge(CHALLENGE_SLOW_AND_STEADY))
            pPlayer->RemoveSpell(SPELL_SLOW_AND_STEADY, false, false);        
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        if (pPlayer->HasChallenge(CHALLENGE_EXHAUSTION_MODE))
            pPlayer->RemoveSpell(SPELL_EXHAUSTION_MODE, false, false);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
    {
        if (pPlayer->HasChallenge(CHALLENGE_WAR_MODE))
        {
            pPlayer->CompleteQuest(55055);
            pPlayer->RemoveSpell(SPELL_WAR_MODE, false, false);
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 9)
    {
        if (pPlayer->HasChallenge(CHALLENGE_VAGRANT_MODE))
            pPlayer->RemoveSpell(SPELL_VARGANT_MODE, false, false);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 10)
    {
        if (pPlayer->HasChallenge(CHALLENGE_BOARING_MODE))
            pPlayer->RemoveSpell(SPELL_BOARING_MODE, false, false);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->SEND_GOSSIP_MENU(52129, pCreature->GetGUID());
        return true;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 6)
    {
        pPlayer->SEND_GOSSIP_MENU(52130, pCreature->GetGUID());
        return true;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 7)
    {
        pPlayer->SEND_GOSSIP_MENU(52131, pCreature->GetGUID());
        return true;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 8)
    {
        pPlayer->SEND_GOSSIP_MENU(52132, pCreature->GetGUID());
        return true;
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct ZulJinMovementStages
{
    float x;
    float y;
    float z;
    float o;
};
static ZulJinMovementStages const zjmovement[] =
{
    { 1879.89f, 220.57f, 60.10f, 3.56f }, // 0
    { 1875.24f, 218.92f, 61.10f, 3.48f }, // 1
    { 1300.997f, 338.57f, -60.08f, 0.00f }, // 2 Sylvanas Room for Player
    { 1295.29f, 329.69f, -60.08f, 4.28f }, // 3 Sylv room for Zuljin
    { 1297.57f, 331.80f, -60.08f, 4.33f }, // 4 Sylv Room Guard 1
    { 1293.81f, 333.30f, -60.08f, 4.43f }, // 5 Sylv Room Guard 2
    { 1292.52f, 324.65f, -58.45f, 4.46f }, // 6 Talking to Sylv
    { 1298.23f, 340.94f, -60.08f, 1.41f }, // 7 Final portal leaving Sylv
    {1296.27f, 334.79f, -60.08f, 1.39f} // 8 Final Zul jin location before leaving

};

 ObjectGuid playerOnQuestGUID;

bool QuestAccept_npc_zuljin(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer)
        return false;

    switch (pQuest->GetQuestId())
    {
    case 65008: // An audience with the Queen
    {
        playerOnQuestGUID = pPlayer->GetGUIDLow();

        pQuestGiver->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER | UNIT_NPC_FLAG_GOSSIP);
        pQuestGiver->PMonsterSay(66191);
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_NPC);
        Creature* guard1 = pQuestGiver->FindNearestCreature(65144, 20, true);
        Creature* guard2 = pQuestGiver->FindNearestCreature(65144, 20, true, guard1);
        GameObject* portal{ nullptr };


        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->GetMotionMaster()->MovePoint(0, zjmovement[0].x, zjmovement[0].y, zjmovement[0].z);
            });
        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->CastSpell(npc, 23017, false);
            });
        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            GameObject* portal = npc->SummonGameObject(4000001, zjmovement[1].x, zjmovement[1].y, zjmovement[1].z, zjmovement[1].o, 0, 0, 0, 0, 10000);

            DoAfterTime(player, 22 * IN_MILLISECONDS, [portal = portal]() {
                if (portal)
                    portal->Despawn();
                });
            });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver, guard1 = guard1, guard2 = guard2]() {
            npc->GetMotionMaster()->MovePoint(0, zjmovement[1].x, zjmovement[1].y, zjmovement[1].z);
            guard1->GetMotionMaster()->MovePoint(0, zjmovement[1].x, zjmovement[1].y, zjmovement[1].z);
            guard2->GetMotionMaster()->MovePoint(0, zjmovement[1].x, zjmovement[1].y, zjmovement[1].z);
            });
        break;
    }
    case 65010: // Bringing them home
    {
        GameObject* portal{ nullptr };

        pQuestGiver->MonsterSay(66192);
        pQuestGiver->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

        DoAfterTime(pPlayer, 2 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->GetMotionMaster()->MovePoint(0, 3020.22f, 2397.66f, 188.25f, 3.58f);
            });
        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->CastSpell(npc, 23017, false);
            });
        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            GameObject* portal = npc->SummonGameObject(4000001, 3017.30f, 2395.70f, 188.26f, 0, 0, 0, 0, 10000);

            DoAfterTime(player, 30 * IN_MILLISECONDS, [portal = portal]() {
                if (portal)
                    portal->Despawn();
                });
            });
    }

    }
   
    return false;
}

struct npc_zuljinAI : public ScriptedAI
{
    npc_zuljinAI(Creature* c) : ScriptedAI(c) { Reset(); }

    int phase = 0;
    uint32 gossipTimer;
    bool complete;
    bool havePlayer;
    Player* playerOnQuest;
    void Reset() 
    {
        phase = 0;
        gossipTimer = 1000;
        complete = false;
        havePlayer = false;

        if (playerOnQuestGUID)
        {
            playerOnQuest = sObjectAccessor.FindPlayer(playerOnQuestGUID);
            playerOnQuestGUID.Clear();
        }

    }
    void UpdateAI(const uint32 uiDiff)
    {
        if (havePlayer) // reset if quest cancelled mid way
        {
            if (playerOnQuest)
            {
                if (!playerOnQuest->IsInWorld() || !playerOnQuest->IsAlive())
                {
                    Creature* guard1 = m_creature->FindNearestCreature(65144, 20, true);
                    guard1->DespawnOrUnsummon();
                    Creature* guard2 = m_creature->FindNearestCreature(65144, 20, true, guard1);
                    guard2->DespawnOrUnsummon();

                    m_creature->DespawnOrUnsummon();
                }
            }
            else
            {
                Creature* guard1 = m_creature->FindNearestCreature(65144, 20, true);
                guard1->DespawnOrUnsummon();
                Creature* guard2 = m_creature->FindNearestCreature(65144, 20, true, guard1);
                guard2->DespawnOrUnsummon();

                m_creature->DespawnOrUnsummon();
            }
        }

        switch (phase)
        {

            case 0: // Still in Tirisfall
            {
                if (eventInProgress)
                    m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
                else 
                    m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);

                //if (m_creature->GetZoneId() == 85 && m_creature->IsGossip()) // tirisfall
                //    m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                //else if (!m_creature->IsGossip())
                //    m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

                if (m_creature->FindNearestCreature(10181, 15, true) && !complete)
                    phase++;
                break;
            }
            case 1: // In Sylvanas chamber
            {
                eventInProgress = true;

                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 2.0f, true, false);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);
                Cell::VisitWorldObjects(me, searcher, 2.0f);
                for (Player* pPlayer : players)
                    if (pPlayer->GetQuestStatus(65008) == QUEST_STATUS_INCOMPLETE)
                    {
                        playerOnQuest = pPlayer;
                        havePlayer = true;
                        phase++;
                        break;
                    }

                break;
            }
            case 2:
            {
                m_creature->GetMotionMaster()->MovePoint(0, zjmovement[6].x, zjmovement[6].y, zjmovement[6].z);
                phase++;
                gossipTimer = 5000;
                break;
            }
            case 3:
            {
                if (Creature* sylvanas = m_creature->FindNearestCreature(10181, 15, true))
                {
                    sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                    sylvanas->PMonsterSay(66193);

                    if (playerOnQuest)
                    {
                        DoAfterTime(playerOnQuest, 10 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                varimathras->SetFacingToObject(sylvanas);
                                varimathras->HandleEmote(EMOTE_ONESHOT_TALK);
                                varimathras->PMonsterSay(66194);
                            }
                            });

                        DoAfterTime(playerOnQuest, 20 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, sylvanas = sylvanas]() {
                            if (Creature* varimathras = sylvanas->FindNearestCreature(2425, 25, true))
                            {
                                sylvanas->SetFacingToObject(varimathras);
                                sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                                sylvanas->PMonsterSay(66195);
                            }
                            });

                        DoAfterTime(playerOnQuest, 30 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                varimathras->SetFacingToObject(sylvanas);
                                varimathras->HandleEmote(EMOTE_ONESHOT_TALK);
                                varimathras->PMonsterSay(66196);
                            }
                            });

                        DoAfterTime(playerOnQuest, 40 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                sylvanas->SetFacingToObject(zuljin);
                                sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                                sylvanas->PMonsterSay(66197);
                            }
                            });

                        DoAfterTime(playerOnQuest, 50 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                zuljin->HandleEmote(EMOTE_ONESHOT_TALK);
                                zuljin->PMonsterSay(66198);
                            }
                            });

                        DoAfterTime(playerOnQuest, 60 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                sylvanas->SetFacingToObject(zuljin);
                                sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                                sylvanas->PMonsterSay(66199);
                                varimathras->PMonsterSay(66200);
                            }
                            });

                        DoAfterTime(playerOnQuest, 70 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            zuljin->HandleEmote(EMOTE_ONESHOT_TALK);
                            zuljin->PMonsterSay(66201);
                            });

                        DoAfterTime(playerOnQuest, 80 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                            sylvanas->PMonsterSay(66202);
                            });

                        DoAfterTime(playerOnQuest, 90 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            zuljin->HandleEmote(EMOTE_ONESHOT_TALK);
                            zuljin->PMonsterSay(66203);
                            });

                        DoAfterTime(playerOnQuest, 100 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                            sylvanas->PMonsterSay(66204);
                            });

                        DoAfterTime(playerOnQuest, 110 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            zuljin->HandleEmote(EMOTE_ONESHOT_TALK);
                            zuljin->PMonsterSay(66205);
                            });

                        DoAfterTime(playerOnQuest, 120 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            zuljin->HandleEmote(EMOTE_ONESHOT_TALK);
                            zuljin->PMonsterSay(66206);
                            });

                        DoAfterTime(playerOnQuest, 125 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                            sylvanas->PMonsterSay(66207);
                            });

                        DoAfterTime(playerOnQuest, 135 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                                sylvanas->PMonsterSay(66208);
                            }
                            });

                        DoAfterTime(playerOnQuest, 145 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                varimathras->SetFacingToObject(sylvanas);
                                varimathras->HandleEmote(EMOTE_ONESHOT_TALK);
                                varimathras->PMonsterSay(66209);
                            }
                            });

                        DoAfterTime(playerOnQuest, 155 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                sylvanas->SetFacingToObject(varimathras);
                                sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                                sylvanas->PMonsterSay(66210);
                            }
                            });

                        DoAfterTime(playerOnQuest, 165 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (Creature* varimathras = zuljin->FindNearestCreature(2425, 25, true))
                            {
                                varimathras->SetFacingToObject(sylvanas);
                                varimathras->HandleEmote(EMOTE_ONESHOT_TALK);
                                varimathras->PMonsterSay(66211);
                            }
                            });

                        DoAfterTime(playerOnQuest, 170 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            sylvanas->SetFacingToObject(zuljin);
                            sylvanas->HandleEmote(EMOTE_ONESHOT_TALK);
                            sylvanas->PMonsterSay(66212);
                            });

                        DoAfterTime(playerOnQuest, 175 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            zuljin->MonsterTextEmote(66213);
                            });

                        DoAfterTime(playerOnQuest, 180 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, sylvanas = sylvanas]() {
                            if (playerOnQuest && playerOnQuest->FindNearestCreature(zuljin->GetEntry(), 20, true))
                            {
                                zuljin->SetFacingToObject(playerOnQuest);
                                zuljin->PMonsterSay(66214, playerOnQuest->GetName());

                                playerOnQuest->SetQuestStatus(65008, QUEST_STATUS_COMPLETE);
                            }
                            });

                        DoAfterTime(playerOnQuest, 195 * IN_MILLISECONDS, [playerOnQuest = playerOnQuest, zuljin = m_creature, phase = phase]() {
                            zuljin->SummonGameObject(4000001, zjmovement[7].x, zjmovement[7].y, zjmovement[7].z, zjmovement[7].o, 0, 0, 0, 0, 5 * MINUTE);
                            zuljin->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER | UNIT_NPC_FLAG_GOSSIP);
                            zuljin->ForcedDespawn(120 * IN_MILLISECONDS);
                            eventInProgress = false;
                            });
                    }
                }

                phase++;
                break;
            }
            case 4:
            {
                complete = true;
                break;
            }
        }

        ScriptedAI::UpdateAI(uiDiff);
    }
};

bool QuestRewarded_npc_zul_jin(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    switch (pQuest->GetQuestId())
    {
        case 65008: // Da Banshees Favour in Undercity
        {


                Quest const* pQuest = sObjectMgr.GetQuestTemplate(65013);
                pPlayer->AddQuest(pQuest, pQuestGiver);

                Creature* guard1 = pQuestGiver->FindNearestCreature(65144, 20, true);
                Creature* guard2 = pQuestGiver->FindNearestCreature(65144, 20, true, guard1);

                if (!guard1 || !guard2)
                    return false;

                ObjectGuid guardGuid1 = guard1->GetObjectGuid();
                ObjectGuid guardGuid2 = guard2->GetObjectGuid();
                ObjectGuid zuljinGuid = pQuestGiver->GetObjectGuid();

                if (pPlayer)
                {
                    DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [pPlayer, zuljinGuid, guardGuid1, guardGuid2]()
                    {
                        if (!pPlayer->IsInWorld())
                            return;

                        if (Creature* zuljin = pPlayer->GetMap()->GetCreature(zuljinGuid))
                            zuljin->GetMotionMaster()->MovePoint(0, zjmovement[7].x, zjmovement[7].y, zjmovement[7].z);
                        if (Creature* guard1 = pPlayer->GetMap()->GetCreature(guardGuid1))
                            guard1->GetMotionMaster()->MovePoint(0, zjmovement[7].x, zjmovement[7].y, zjmovement[7].z);
                        if (Creature* guard2 = pPlayer->GetMap()->GetCreature(guardGuid2))
                            guard2->GetMotionMaster()->MovePoint(0, zjmovement[7].x, zjmovement[7].y, zjmovement[7].z);
                    });
                }
            break;
        }
        case 65010: // The Horde's Council
        {

            break;
        }
    }

    return false;
}

CreatureAI* GetAI_npc_zulJin(Creature* _Creature) { return new npc_zuljinAI(_Creature); }


struct npc_guard_emoteAI : public ScriptedAI
{
    uint32 m_uiTimer;

    npc_guard_emoteAI(Creature* m_creature) : ScriptedAI(m_creature)
    {
        Reset();
    }

    bool CheckEmoteCooldown()
    {
        if (m_uiTimer == 0) m_uiTimer = time(nullptr) + 0;
        if (time(nullptr) >= m_uiTimer)
        {
            m_uiTimer = time(nullptr) + 120; // Cooldown time of Emote interaction
            return true;
        }
        return false;
    }

    void ReceiveEmote(Player* pPlayer, const uint32 uiEmote) override

    {
        if (m_creature->GetGUID() && m_creature->IsAlive() && !m_creature->IsInCombat() && m_creature->IsWithinLOSInMap(pPlayer) && !pPlayer->HasStealthAura())
        {
            switch (pPlayer->GetTeam())
            {
                case ALLIANCE:
                {
                    // Human Guards
                    if (m_creature->GetEntry() == 68)
                    {
                        switch (uiEmote)
                        {

                            // General greeting
                            case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66215, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66216, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66217, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66218, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66219, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                            case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Salute
                            case TEXTEMOTE_SALUTE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66220, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66221, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66222, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66223, Language::LANG_COMMON); break; }
                                            case 5: {break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Bye
                            case TEXTEMOTE_BYE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66224, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66225, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66226, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66227, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66228, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Joke
                            case TEXTEMOTE_JOKE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66229, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66230, Language::LANG_COMMON); break; }
                                            case 3: {break; }
                                            case 4: {m_creature->MonsterSay(66231, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66232, Language::LANG_COMMON); break; }
                                            case 6: {m_creature->MonsterSay(66233, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                            case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_POINT); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            //Flex
                            case TEXTEMOTE_FLEX:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66234, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66235, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66236, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66237, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Taunt
                            case TEXTEMOTE_TAUNT:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 3);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66238, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66239, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66240, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Tickle
                            case TEXTEMOTE_TICKLE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 3);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66241, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66242, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66243, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACK1H); break; }
                                            case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }
                        }
                    }

                    // Nightelf Guards
                    if (m_creature->GetEntry() == 4262)
                    {
                        switch (uiEmote)
                        {

                            // General greeting
                            case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66244, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66245, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66246, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66247, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66248, Language::LANG_COMMON); break; }
                                            case 6: {m_creature->MonsterSay(66249, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                            case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Salute
                            case TEXTEMOTE_SALUTE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66250, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66251, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66252, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66253, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Bye
                            case TEXTEMOTE_BYE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66254, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66255, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66256, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66257, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Joke
                            case TEXTEMOTE_JOKE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66258, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66259, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66260, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66261, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66262, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Flex
                            case TEXTEMOTE_FLEX:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66263, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66264, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66265, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66266, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD);  break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX);  break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_BOW); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Taunt
                            case TEXTEMOTE_TAUNT:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66267, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66268, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66269, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66270, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Tickle
                            case TEXTEMOTE_TICKLE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 3);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66271, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66272, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66273, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED);  break; }
                                        }
                                    }
                                }
                                break;
                            }
                        }
                    }

                    // Dwarf Guards
                    if (m_creature->GetEntry() == 5595)
                    {
                        switch (uiEmote)
                        {

                            // General greeting
                            case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66274, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66275, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66276, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66277, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66278, Language::LANG_COMMON); break; }
                                            case 6: {m_creature->MonsterSay(66279, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Salute
                            case TEXTEMOTE_SALUTE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66280, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66281, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66282, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66283, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }

                                        }
                                    }
                                }
                                break;
                            }

                            // Bye
                            case TEXTEMOTE_BYE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66284, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66285, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66286, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66287, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Joke
                            case TEXTEMOTE_JOKE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66288, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66289, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66290, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66291, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Flex
                            case TEXTEMOTE_FLEX:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66292, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66293, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66294, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66295, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Taunt
                            case TEXTEMOTE_TAUNT:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66296, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66297, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66298, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66299, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66301, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_ROAR); break; }
                                            case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Tickle
                            case TEXTEMOTE_TICKLE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66302, Language::LANG_COMMON); break; }
                                            case 2: {m_creature->MonsterSay(66303, Language::LANG_COMMON); break; }
                                            case 3: {m_creature->MonsterSay(66304, Language::LANG_COMMON); break; }
                                            case 4: {m_creature->MonsterSay(66305, Language::LANG_COMMON); break; }
                                            case 5: {m_creature->MonsterSay(66306, Language::LANG_COMMON); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                            case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED); break; }
                                        }
                                    }
                                }
                                break;
                            }
                        }
                    }

                    // EasterEgg
                    if (m_creature->GetEntry() == 3296)
                    {
                        if (uiEmote == TEXTEMOTE_LAUGH)
                        {
                            if (m_creature->GetDistance3dToCenter(pPlayer) <= 40.f)
                            {
                                if (CheckEmoteCooldown())
                                {
                                    m_creature->MonsterSay(66306, Language::LANG_ORCISH); // "kek" for alliance
                                    m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
                                }
                            }
                        }
                    }
                    break;
                }

                case HORDE:
                {
                    // Orc Guards
                    if (m_creature->GetEntry() == 3296)
                    {
                        switch (uiEmote)
                        {

                            // General greeting
                            case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66307, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66308, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66309, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66310, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66311, Language::LANG_ORCISH); break; }
                                            case 6: {m_creature->MonsterSay(66312, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                            case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Salute
                            case TEXTEMOTE_SALUTE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66313, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66314, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66315, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66316, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66317, Language::LANG_ORCISH); break; }
                                            case 6: { break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Bye
                            case TEXTEMOTE_BYE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66318, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66319, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66320, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66321, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Joke
                            case TEXTEMOTE_JOKE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66322, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66323, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66324, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66325, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_NO); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_POINT); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Flex
                            case TEXTEMOTE_FLEX:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66326, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66327, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66328, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66329, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66330, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                            case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Taunt
                            case TEXTEMOTE_TAUNT:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66331, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66332, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66333, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66334, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Tickle
                            case TEXTEMOTE_TICKLE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 3);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66335, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66336, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66337, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_ATTACKUNARMED); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }
                        }

                        // Easteregg Poke (WC3)
                        if (uiEmote == TEXTEMOTE_POKE)
                        {
                            if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                            {
                                if (CheckEmoteCooldown())
                                {
                                    m_creature->MonsterSay(66338, Language::LANG_ORCISH);
                                    m_creature->HandleEmote(EMOTE_ONESHOT_ROAR);
                                }
                            }
                        }
                    }

                    // Bluffwatch
                    if (m_creature->GetEntry() == 3084)
                    {
                        switch (uiEmote)
                        {

                            // General greeting
                            case TEXTEMOTE_HAIL: case TEXTEMOTE_HELLO: case TEXTEMOTE_WAVE: case TEXTEMOTE_GREET:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 6);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66339, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66340, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66341, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66342, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66343, Language::LANG_ORCISH); break; }
                                            case 6: {m_creature->MonsterSay(66344, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: case 6: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Salute
                            case TEXTEMOTE_SALUTE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66345, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66346, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66347, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66348, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66349, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_SALUTE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Bye
                            case TEXTEMOTE_BYE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 20.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 7);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66350, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66351, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66352, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66353, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66354, Language::LANG_ORCISH); break; }
                                            case 6: {m_creature->MonsterSay(66355, Language::LANG_ORCISH); break; }
                                            case 7: {m_creature->MonsterSay(66356, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: case 5: case 6: case 7: {m_creature->HandleEmote(EMOTE_ONESHOT_WAVE); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Joke
                            case TEXTEMOTE_JOKE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66357, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66358, Language::LANG_ORCISH); break; }
                                            case 3: {break; }
                                            case 4: {m_creature->MonsterSay(66359, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_TALK); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Flex
                            case TEXTEMOTE_FLEX:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66360, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66361, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66362, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66363, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: {m_creature->HandleEmote(EMOTE_ONESHOT_APPLAUD); break; }
                                            case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_FLEX); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Taunt
                            case TEXTEMOTE_TAUNT:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 10.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 5);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66364, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66365, Language::LANG_ORCISH); break; }
                                            case 3: {m_creature->MonsterSay(66366, Language::LANG_ORCISH); break; }
                                            case 4: {m_creature->MonsterSay(66367, Language::LANG_ORCISH); break; }
                                            case 5: {m_creature->MonsterSay(66368, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_RUDE); break; }
                                            case 5: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                        }
                                    }
                                }
                                break;
                            }

                            // Tickle
                            case TEXTEMOTE_TICKLE:
                            {
                                if (m_creature->GetDistance3dToCenter(pPlayer) < 5.f)
                                {
                                    if (CheckEmoteCooldown())
                                    {
                                        const auto TextRandom = urand(1, 4);
                                        switch (TextRandom)
                                        {
                                            case 1: {m_creature->MonsterSay(66369, Language::LANG_ORCISH); break; }
                                            case 2: {m_creature->MonsterSay(66370, Language::LANG_ORCISH); break; }
                                            case 3: {break; }
                                            case 4: {m_creature->MonsterSay(66371, Language::LANG_ORCISH); break; }
                                        }
                                        switch (TextRandom)
                                        {
                                            case 1: case 2: case 3: {m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH); break; }
                                            case 4: {m_creature->HandleEmote(EMOTE_ONESHOT_NO); break; }
                                        }
                                    }
                                }
                                break;
                            }
                        }
                    }
                    break;
                }
            }
        }
    }

    void Reset() {}
};

CreatureAI* GetAI_npc_guard_emote(Creature* m_creature)
{
    return new npc_guard_emoteAI(m_creature);
}

void AddSC_random_scripts_1()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "glyph_master";
    newscript->pGossipHello = &GossipHello_glyph_master;
    newscript->pGossipSelect = &GossipSelect_glyph_master;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magtoor";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_magtoor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_speaker_ganto";
    newscript->GetAI = &GetAI_npc_speaker_ganto;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ganzih";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_ganzih;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lord_rog";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_lord_rog;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magus_bromley";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_magus_bromley;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_truthseeker_magellas";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_truthseeker_magellas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_naxiar";
    newscript->GetAI = &GetAI_npc_naxiar;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ardaen_evermoon";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ardaen_evermoon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_harlus";
    newscript->pGossipHello = &GossipHello_npc_harlus;
    newscript->pGossipSelect = &GossipSelect_npc_harlus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_zuljin";
    newscript->pGossipHello = &GossipHello_npc_zuljin;
    newscript->pGossipSelect = &GossipSelect_npc_zuljin;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_zuljin;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_zul_jin;
    newscript->GetAI = &GetAI_npc_zulJin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_barthos";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_barthos;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_hizzle";
    newscript->pGossipHello = &GossipHello_npc_hizzle;
    newscript->pGossipSelect = &GossipSelect_npc_hizzle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_pazzle_brightwrench";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_pazzle_brightwrench;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ansirem";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_ansirem;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ansirem;
    newscript->pGossipHello = &GossipHello_npc_ansirem;
    newscript->pGossipSelect = &GossipSelect_npc_ansirem;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_shalgrig";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_shalgrig;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bloodsail_traitor";
    newscript->pGossipHello = &GossipHello_npc_bloodsail_traitor;
    newscript->pGossipSelect = &GossipSelect_npc_bloodsail_traitor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_alphus_wordwill";
    newscript->GetAI = &GetAI_npc_alphus_wordwill;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_gunthers_favor";
    newscript->pGOHello = &GOHello_go_gunthers_favor;
    newscript->GOGetAI = &GetAI_go_gunthers_favor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_scarlet_magician";
    newscript->GetAI = &GetAI_npc_scarlet_magician;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_maverick";
    newscript->pGossipHello = &GossipHello_npc_maverick;
    newscript->pGossipSelect = &GossipSelect_npc_maverick;
    newscript->RegisterSelf();


    newscript = new Script;
    newscript->Name = "npc_brother_crowley";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_brother_crowley;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vladeus_interrogation";
    newscript->pGossipHello = &GossipHello_npc_vladeus_interrogation;
    newscript->pGossipSelect = &GossipSelect_npc_vladeus_interrogation;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_stoutfist";
    newscript->pGossipHello = &GossipHello_npc_captain_stoutfist;
    newscript->pGossipSelect = &GossipSelect_npc_captain_stoutfist;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vladeus_springriver";
    newscript->pGossipHello = &GossipHello_npc_vladeus_springriver;
    newscript->pGossipSelect = &GossipSelect_npc_vladeus_springriver;
    newscript->GetAI = &GetAI_npc_vladeus_springriver;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_questions_and_answers";
    newscript->pGossipHello = &GossipHello_npc_questions_and_answers;
    newscript->pGossipSelect = &GossipSelect_npc_questions_and_answers;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ilyara_skyvault";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ilyara_skyvault;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_malanys_cloudpiercer";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_malanys_cloudpiercer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_shagu_shisha";
    newscript->pGOHello = &GOHello_go_shagu_shisha;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_flying_mount";
    newscript->pGossipHello = &GossipHello_npc_flying_mount;
    newscript->pGossipSelect = &GossipSelect_npc_flying_mount;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_gnome_enlargement";
    newscript->pItemUseSpell = &ItemUseSpell_item_gnome_enlargement;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_tauren_shrink";
    newscript->pItemUseSpell = &ItemUseSpell_item_tauren_shrink;
    newscript->RegisterSelf();
    
    newscript = new Script;
    newscript->Name = "npc_norvok";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_norvok;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_kheyna_wormhole";
    newscript->pGOHello = &GOHello_go_kheyna_wormhole;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sunkiss";
    newscript->pGossipHello = &GossipHello_npc_sunkiss;
    newscript->pGossipSelect = &GossipSelect_npc_sunkiss;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_applebough";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_applebough;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_applebough;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_iluria";
    newscript->pGossipHello = &GossipHello_npc_iluria;
    newscript->pGossipSelect = &GossipSelect_npc_iluria;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_amanialor";
    newscript->pGOHello = &GOHello_go_portal_amanialor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_deino";
    newscript->pGossipHello = &GossipHello_npc_deino;
    newscript->pGossipSelect = &GossipSelect_npc_deino;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_rov";
    newscript->pGossipHello = &GossipHello_npc_rov;
    newscript->pGossipSelect = &GossipSelect_npc_rov;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_agne_gambler";
    newscript->pGossipHello = &GossipHello_npc_agne_gambler;
    newscript->pGossipSelect = &GossipSelect_npc_agne_gambler;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_translocation_orb";
    newscript->pGOHello = &GOHello_go_translocation_orb;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_crypt_door";
    newscript->pGOHello = &GOHello_go_crypt_door;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_whizzbot";
    newscript->GetAI = &GetAI_npc_whizzbot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_goldshire";
    newscript->pGOHello = &GOHello_go_portal_goldshire;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magistrix_ishalah";
    newscript->pGossipHello = &GossipHello_npc_magistrix_ishalah;
    newscript->pGossipSelect = &GossipSelect_npc_magistrix_ishalah;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_shadowforge_cage";
    newscript->pGOHello = &GOHello_go_shadowforge_cage;
    newscript->GOGetAI = &GetAI_shadoforge_cage;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_malvinah_sunblade";
    newscript->pGossipHello = &GossipHello_npc_malvinah_sunblade;
    newscript->pGossipSelect = &GossipSelect_npc_malvinah_sunblade;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_farstrider_well";
    newscript->pGOHello = &GOHello_go_farstrider_well;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kathy_wake";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_kathy_wake;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tomb_shadow";
    newscript->GetAI = &GetAI_npc_tomb_shadow;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nert_blastentom";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_nert_blastentom;
    newscript->pGossipHello = &GossipHello_npc_nert_blastentom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_garthok";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_garthok;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_voldana";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_voldana;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_fm_acquisition";
    newscript->pGOHello = &GOHello_go_fm_acquisition;
    newscript->pGOGossipSelect = &GOSelect_go_fm_acquisition;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_alahthalas";
    newscript->pGOHello = &GOHello_go_portal_alahthalas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_elsharin";
    newscript->pGossipHello = &GossipHello_npc_elsharin;
    newscript->pGossipSelect = &GossipSelect_npc_elsharin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_caledra";
    newscript->pGossipHello = &GossipHello_npc_caledra;
    newscript->pGossipSelect = &GossipSelect_npc_caledra;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_mysterious_stranger";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_mysterious_stranger;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_mysterious_stranger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "arena_master";
    newscript->pGossipHello = &GossipHello_ArenaMaster;
    newscript->pGossipSelect = &GossipSelect_ArenaMaster;
    newscript->RegisterSelf(false);

    newscript = new Script;
    newscript->Name = "npc_ropaw";
    newscript->pGossipHello = &GossipHello_npc_ropaw;
    newscript->pGossipSelect = &GossipSelect_npc_ropaw;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "palkeote";
    newscript->GetAI = &GetAI_palkeote;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "rented_mount";
    newscript->pGossipHello = &GossipHello_rented_mount;
    newscript->pGossipSelect = &GossipSelect_rented_mount;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_aspirant_shadewalker";
    newscript->pGossipHello = &GossipHello_npc_aspirant_shadewalker;
    newscript->pGossipSelect = &GossipSelect_npc_aspirant_shadewalker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lost_farm_sheep";
    newscript->pGossipHello = &GossipHello_npc_lost_farm_sheep;
    newscript->pGossipSelect = &GossipSelect_npc_lost_farm_sheep;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_shivering_moonkin";
    newscript->pGossipHello = &GossipHello_npc_shivering_moonkin;
    newscript->pGossipSelect = &GossipSelect_npc_shivering_moonkin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frosty";
    newscript->pGossipHello = &GossipHello_npc_frosty;
    newscript->pGossipSelect = &GossipSelect_npc_frosty;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_save_shark";
    newscript->GetAI = &GetAI_npc_save_shark;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vip_invite";
    newscript->pGossipHello = &GossipHello_npc_vip_invite;
    newscript->pGossipSelect = &GossipSelect_npc_vip_invite;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tinsel";
    newscript->pGossipHello = &GossipHello_npc_tinsel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_misletoe";
    newscript->pGossipHello = &GossipHello_npc_misletoe;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chihkoa";
    newscript->GetAI = &GetAI_npc_chihkoa;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_scripted_companion";
    newscript->GetAI = &GetAI_npc_scripted_companion;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "lil_foot_pet";
    newscript->GetAI = &GetAI_lil_foot_pet;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "title_masker";
    newscript->pGossipHello = &GossipHello_title_masker;
    newscript->pGossipSelect = &GossipSelect_title_masker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mining_enchanter";
    newscript->pGossipHello = &GossipHello_MiningEnchanter;
    newscript->pGossipSelect = &GossipSelect_MiningEnchanter;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "dinka_dinker";
    newscript->pGossipHello = &GossipHello_DinkaDinker;
    newscript->pGossipSelect = &GossipSelect_DinkaDinker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_campfire_rested";
    newscript->GOGetAI = &GetAI_go_campfire_rested;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_brainwashing_device";
    newscript->pGOHello = &GOHello_go_brainwashing_device;
    newscript->pGOGossipSelect = &GOSelect_go_brainwashing_device;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_flying_machine";
    newscript->pGossipHello = &GossipHello_npc_flying_machine;
    newscript->pGossipSelect = &GossipSelect_npc_flying_machine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_stormwind_fountain";
    newscript->pGOHello = &GOHello_go_stormwind_fountain;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portable_wormhole";
    newscript->pGOHello = &GOHello_go_portable_wormhole;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_survival_tent";
    newscript->GOGetAI = &GetAI_go_survival_tent;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_radio";
    newscript->pGOHello = &GOHello_go_radio;
    newscript->pGOGossipSelect = &GOSelect_go_radio;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_refreshment_portal";
    newscript->GOGetAI = &GetAI_refreshment_portal_clicks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_refreshment_table";
    newscript->GOGetAI = &GetAI_refreshment_table_clicks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_soulwell_portal";
    newscript->GOGetAI = &GetAI_soulwell_portal_clicks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_soulwell";
    newscript->GOGetAI = &GetAI_soulwell_clicks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "shop_racechange";
    newscript->pItemUseSpell = &ItemUseSpell_shop_racechange;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_holy_wings";
    newscript->pItemUseSpell = &ItemUseSpell_item_holy_wings;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_character_rename";
    newscript->pItemUseSpell = &ItemUseSpell_character_rename;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_scaler";
    newscript->pItemUseSpell = &ItemUseSpell_alice_wonderland_scale;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_summer_vestment";
    newscript->pItemUseSpell = &ItemUseSpell_summer_vestment;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_sword_of_truth";
    newscript->pItemUseSpell = &ItemUseSpell_sword_of_truth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_hairdye";
    newscript->pItemUseSpell = &ItemUseSpell_hairdye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_schnapps";
    newscript->pItemUseSpell = &ItemUseSpell_turtle_party;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_winter_tree";
    newscript->pItemUseSpell = &ItemUseSpell_item_winter_tree;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_roleplay_effect";
    newscript->pItemUseSpell = &ItemUseSpell_item_roleplay_effect;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_holystrike_libram";
    newscript->pItemUseSpell = &ItemUseSpell_item_holy_strike_book;
    newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "item_supercharged_chronoboon_displacer";
	newscript->pItemUseSpell = &ItemUseSpell_item_supercharged_chronoboon_displacer;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "item_chronoboon_displacer";
	newscript->pItemUseSpell = &ItemUseSpell_item_chronoboon_displacer;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "item_warlock_soulwell_ritual";
	newscript->pItemUseSpell = &ItemUseSpell_item_warlock_soulwell_ritual;
	newscript->RegisterSelf();
    
    newscript = new Script;
    newscript->Name = "npc_guard_emote";
    newscript->GetAI = &GetAI_npc_guard_emote;
    newscript->RegisterSelf();
}
