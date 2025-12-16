-- Add periodic timer to list auras command.
UPDATE `mangos_string` SET `content_default`='id: %d eff: %d type: %d duration: %d maxduration: %d periodictimer: %d stacks: %d name: %s%s%s caster: %s' WHERE `entry`=468;
