-- DB update 2019_05_20_01 -> 2019_05_22_00
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2019_05_20_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2019_05_20_01 2019_05_22_00 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1558177528536551500'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1558177528536551500');

-- Pathing for Guardian Lasher Entry: 33430
SET @NPC := 136608;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2409.214,`position_y`=39.68574,`position_z`=430.8202 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2409.214,39.68574,430.8202,0,0,0,0,100,0),
(@PATH,2,2419.765,55.44238,432.5078,0,0,0,0,100,0),
(@PATH,3,2412.965,68.34785,436.2759,0,0,0,0,100,0),
(@PATH,4,2392.464,56.26165,433.3107,0,0,0,0,100,0);

-- Pathing for Guardian Lasher Entry: 33430
SET @NPC := 136606;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2279.508,`position_y`=-143.8644,`position_z`=435.7896 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2279.508,-143.8644,435.7896,0,0,0,0,100,0),
(@PATH,2,2294.608,-141.4411,434.8279,0,0,0,0,100,0),
(@PATH,3,2297.896,-140.7821,434.6606,0,0,0,0,100,0),
(@PATH,4,2300.045,-107.6998,432.8321,0,0,0,0,100,0),
(@PATH,5,2282.262,-122.0434,432.8238,0,0,0,0,100,0),
(@PATH,6,2262.708,-113.97,431.0626,0,0,0,0,100,0),
(@PATH,7,2246.123,-120.2917,433.473,0,0,0,0,100,0),
(@PATH,8,2252.349,-127.7779,432.1354,0,0,0,0,100,0);

-- Pathing for Guardian Lasher Entry: 33430
SET @NPC := 136604;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2348.184,`position_y`=-33.40479,`position_z`=425.1163 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2348.184,-33.40479,425.1163,0,0,0,0,100,0),
(@PATH,2,2321.229,-1.325779,426.4646,0,0,0,0,100,0),
(@PATH,3,2314.177,14.98683,429.6667,0,0,0,0,100,0),
(@PATH,4,2318.373,3.474962,427.6927,0,0,0,0,100,0),
(@PATH,5,2346.51,-30.4225,424.8373,0,0,0,0,100,0),
(@PATH,6,2325.816,-64.16115,426.2005,0,0,0,0,100,0);

-- Pathing for Winter Revenant Entry: 34134 (3 entry from Creature table)
SET @NPC := 136272;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1863.794,`position_y`=-291.2315,`position_z`=412.549 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1863.794,-291.2315,412.549,0,0,0,0,100,0),
(@PATH,2,1863.79,-270.939,412.549,0,0,0,0,100,0),
(@PATH,3,1863.947,-228.3612,412.549,0,0,0,0,100,0),
(@PATH,4,1869.661,-213.3534,412.5491,0,0,0,0,100,0),
(@PATH,5,1865.418,-223.9702,412.5492,0,0,0,0,100,0),
(@PATH,6,1864.278,-260.7524,412.5491,0,0,0,0,100,0);

 -- Pathing for Winter Revenant Entry: 34134
SET @NPC := 136273;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1923.732,`position_y`=-359.4886,`position_z`=421.7067 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1923.732,-359.4886,421.7067,0,0,0,0,100,0),
(@PATH,2,1910.024,-354.7222,418.0154,0,0,0,0,100,0),
(@PATH,3,1918.405,-348.7433,419.1237,0,0,0,0,100,0),
(@PATH,4,1939.619,-338.1754,423.0634,0,0,0,0,100,0),
(@PATH,5,1963.408,-334.0208,424.2783,0,0,0,0,100,0),
(@PATH,6,1980.856,-335.2691,424.5296,0,0,0,0,100,0),
(@PATH,7,1986.183,-330.6932,425.169,0,0,0,0,100,0),
(@PATH,8,1995.423,-314.1808,429.2899,0,0,0,0,100,0),
(@PATH,9,1991.416,-322.2818,428.0239,0,0,0,0,100,0),
(@PATH,10,1986.513,-331.125,425.358,0,0,0,0,100,0),
(@PATH,11,1985.857,-349.7383,423.7158,0,0,0,0,100,0),
(@PATH,12,1981.682,-366.153,421.861,0,0,0,0,100,0),
(@PATH,13,1977.274,-369.6335,421.7955,0,0,0,0,100,0),
(@PATH,14,1979.401,-369.707,421.2126,0,0,0,0,100,0),
(@PATH,15,1984.034,-359.9644,422.6329,0,0,0,0,100,0),
(@PATH,16,1984.393,-335.8026,424.7922,0,0,0,0,100,0),
(@PATH,17,1988.928,-328.356,425.7399,0,0,0,0,100,0),
(@PATH,18,1995.36,-317.4339,428.2936,0,0,0,0,100,0),
(@PATH,19,1986.51,-331.1359,425.4233,0,0,0,0,100,0),
(@PATH,20,1985.911,-349.9874,423.6323,0,0,0,0,100,0),
(@PATH,21,1981.283,-367.6224,421.5562,0,0,0,0,100,0),
(@PATH,22,1977.089,-370.4861,421.7415,0,0,0,0,100,0),
(@PATH,23,1980.1,-368.3475,421.1914,0,0,0,0,100,0),
(@PATH,24,1983.74,-359.1452,422.7472,0,0,0,0,100,0),
(@PATH,25,1984.766,-343.7218,423.7823,0,0,0,0,100,0),
(@PATH,26,1995.432,-314.0199,429.2879,0,0,0,0,100,0),
(@PATH,27,1989.344,-326.1992,426.7511,0,0,0,0,100,0),
(@PATH,28,1982.792,-334.583,424.959,0,0,0,0,100,0),
(@PATH,29,1966.594,-333.5218,424.746,0,0,0,0,100,0),
(@PATH,30,1947.611,-335.2066,424.0862,0,0,0,0,100,0),
(@PATH,31,1926.362,-345.1485,420.9026,0,0,0,0,100,0),
(@PATH,32,1910.392,-351.3752,417.4246,0,0,0,0,100,0),
(@PATH,33,1920.583,-357.5619,420.6503,0,0,0,0,100,0),
(@PATH,34,1930.703,-367.3549,424.857,0,0,0,0,100,0),
(@PATH,35,1948.212,-376.7307,427.6352,0,0,0,0,100,0);

 -- Pathing for Winter Revenant Entry: 34134
SET @NPC := 136282;
SET @PATH := @NPC * 10;
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@NPC,34134,603,3,1,1819.619,-357.7437,413.1524,0.42,604800,0, 2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1819.619,-357.7437,413.1524,0,0,0,0,100,0),
(@PATH,2,1805.549,-360.7479,413.217,0,0,0,0,100,0),
(@PATH,3,1794.583,-359.7582,412.7976,0,0,0,0,100,0),
(@PATH,4,1781.751,-356.4551,412.6638,0,0,0,0,100,0),
(@PATH,5,1767.5,-360.8076,412.4928,0,0,0,0,100,0),
(@PATH,6,1786.507,-358.0201,412.7365,0,0,0,0,100,0),
(@PATH,7,1804.042,-360.811,413.1808,0,0,0,0,100,0),
(@PATH,8,1815.088,-359.1276,413.0786,0,0,0,0,100,0),
(@PATH,9,1826.932,-355.8406,413.2609,0,0,0,0,100,0),
(@PATH,10,1837.789,-356.2162,413.0187,0,0,0,0,100,0),
(@PATH,11,1851.447,-344.2731,412.6318,0,0,0,0,100,0),
(@PATH,12,1860.773,-334.8643,412.6426,0,0,0,0,100,0),
(@PATH,13,1874.715,-338.0733,412.809,0,0,0,0,100,0),
(@PATH,14,1882.154,-355.1157,412.7476,0,0,0,0,100,0),
(@PATH,15,1872.645,-369.4694,413.3637,0,0,0,0,100,0),
(@PATH,16,1862.287,-378.0733,413.9054,0,0,0,0,100,0),
(@PATH,17,1850.775,-374.4587,412.9799,0,0,0,0,100,0),
(@PATH,18,1841.932,-359.4829,413.0605,0,0,0,0,100,0),
(@PATH,19,1823.803,-358.0992,412.858,0,0,0,0,100,0);

--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
