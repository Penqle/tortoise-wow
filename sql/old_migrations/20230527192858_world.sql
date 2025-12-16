REPLACE INTO `transports` (`guid`, `entry`, `name`, `period`) VALUES (13, 176533, 'Stormwind and Southshore', 350818);

SET @taxiPathID = 1630;
SET @moveSpeed = 50; -- default 30.
SET @accelRate = 2; -- default 1.

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (176533, 15, 3015, 'The Windrider', 0, 40, 1, @taxiPathID, @moveSpeed, @accelRate, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Node Southshore to Stormwind: 189
-- Node Stormwind to Southshore: 190