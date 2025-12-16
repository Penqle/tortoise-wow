-- Hunters can Freezing Trap and Scatter Shot Solnius and Erennius. Please make NPC 60748 Immune to Disorient and Horrify.
update creature_template set mechanic_immune_mask = 2794143579 where entry in (60747,60748);
-- Seller with npcID: 61900 (GUID: 2582753) shouldn't sell item with ID: 41295.
delete from npc_vendor where entry = 61900 and item = 41295;