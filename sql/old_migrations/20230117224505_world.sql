-- Fixed questtest ~by RMJ
UPDATE quest_template SET Details = 'Desolace is a land at war. The centaurs wage war with each other, and we believe the victor among them will spill out and threaten our strongholds. That, we cannot allow.$B$BWe must learn how to beat the centaurs, and to do that... we must ally with one of the clans. The Magram centaurs war with the Gelkis. If you fight the Gelkis then the Magram might consider an alliance.$B$BEarn the favor of the Magrams then speak with Warug, in the Magram village in southeastern Desolace.' WHERE entry = 1385;


-- Fixed Rich Thorium Vein tick rate https://github.com/slowtorta/turtlewow-bug-tracker/issues/251
UPDATE gameobject_template SET data4 = 3, data5 = 5 WHERE entry = 175404;