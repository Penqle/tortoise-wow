-- Do not check effect index for Mother's Milk aura condition.
UPDATE `conditions` SET `value2`=-1 WHERE `type`=1 && `value1`=16468;
