-- Azshara hippogryphs drop low level greys #6028.
delete from creature_loot_template where mincountOrRef = -30017 and entry in (6375,6377,6378,6379,6380,6648);