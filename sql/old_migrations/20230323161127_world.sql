-- Add check for anything that hooks into NetClient::ProcessMessage.
INSERT INTO `warden_scans` (`id`, `type`, `str`, `data`, `address`, `length`, `result`, `flags`, `comment`) VALUES (90, 0, NULL, NULL, 5470880, 8, '558BEC8B156CD4C0', 6, 'Packet Reading Hook');
