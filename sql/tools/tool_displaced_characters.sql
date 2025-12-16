
SET @POSX = 1829.1; 
SET @POSY = 1385.9; 
SET @POSZ = 148.7; 
SET @DISTANCE = 300; 

UPDATE `characters` SET `position_x`=-233, `position_y`=-7177, `position_z`=16.52 WHERE `map`=1 && @DISTANCE > SQRT(((@POSX  - position_x) * (@POSX  - position_x)) + ((@POSY - position_y) * (@POSY - position_y)) + ((@POSZ - position_z) * (@POSZ - position_z)));

SET @POSX = -5630.9; 
SET @POSY = -4324.9; 
SET @POSZ = 401.6; 
SET @DISTANCE = 300; 

UPDATE `characters` SET `position_x`=3212.63, `position_y`=-2501.44, `position_z`=111.71 WHERE `map`=0 && @DISTANCE > SQRT(((@POSX  - position_x) * (@POSX  - position_x)) + ((@POSY - position_y) * (@POSY - position_y)) + ((@POSZ - position_z) * (@POSZ - position_z)));