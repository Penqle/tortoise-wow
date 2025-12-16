-- Deleting item "Hyjal Nectar" (18300) from all vendors.
delete from npc_vendor_template where item = 18300;
delete from npc_vendor where item = 18300;