-- Fix dupliacate intellect stat on Mantle of the Fallen Prophet.
-- Assuming it should have beeen spirit instead.
UPDATE `item_template` SET `stat_type3`=6 WHERE `entry`=21684;
