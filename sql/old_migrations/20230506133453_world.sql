-- Allow unlimited stock for khadgar tomes
UPDATE npc_vendor SET maxcount = 0, incrtime = 0 WHERE item IN(985, 1567, 4158, 8881);


