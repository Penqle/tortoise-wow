-- Move PROC_EX_NO_PERIODIC to 0x0020000.
UPDATE `spell_proc_event` SET `procEx` = `procEx` | 0x0020000 WHERE (`procEx` & 0x0080000);
UPDATE `spell_proc_event` SET `procEx` = `procEx` - 0x0080000 WHERE (`procEx` & 0x0080000);

-- Make Elemental Focus proc on cast end.
UPDATE `spell_proc_event` SET `procEx` = `procEx` | 0x0080000 WHERE `entry`=16164;
