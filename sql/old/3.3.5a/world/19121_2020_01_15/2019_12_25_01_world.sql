-- 
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `guid` IN (66811,66812,66880,66810,66877,67245,66876,67244,67133,67091,67097,67096,67098,67099,66860);
UPDATE `creature` SET `position_x`=-287.625336, `position_y`=-248.157379, `position_z`=15.033414, `orientation`=5.400887 WHERE `guid`= 67133;
UPDATE `creature` SET `position_x`=-287.953674, `position_y`=-290.882690, `position_z`=20.455458, `orientation`=4.992473 WHERE `guid`= 67149;
UPDATE `creature` SET `position_x`=-251.959885, `position_y`=-279.733002, `position_z`=15.209331 WHERE `guid`= 66880;

DELETE FROM `creature_addon` WHERE `guid` IN (85584,67088,67087);
DELETE FROM `creature` WHERE `guid` IN (85584,67088,67087);
DELETE FROM `linked_respawn` WHERE `guid` IN (85584,67088,67087);


DELETE FROM `creature_equip_template` WHERE `Creatureid` IN (18794,22407,25115);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES
(18794, 4, 19980, 19980, 0), -- 18794
(18794, 3, 12421, 0, 0), -- 18794
(18794, 2, 13718, 0, 0), -- 18794
(18794, 1, 14618, 0, 0), -- 18794
(22407, 6, 1910, 13610, 2551), -- 22407
(22407, 5, 3367, 13610, 2551), -- 22407
(22407, 4, 2695, 13610, 2551), -- 22407
(22407, 3, 1902, 13610, 2551), -- 22407
(22407, 2, 3346, 13610, 2551), -- 22407
(22407, 1, 3362, 13610, 2551), -- 22407
(25115, 2, 34596, 34590, 0), -- 25115
(25115, 1, 31743, 34588, 0); -- 25115

UPDATE `creature` SET `equipment_id`=-1 WHERE `id` IN (18794,22407,25115);
DELETE FROM `creature` WHERE `guid` IN (66844,66849,66853,66854,66883, 66888, 66893, 67087, 67088, 68738);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(66844, 18631, 555, 3, 1, 0, 1, -360.47573, -261.38497, 12.68642, 6.201027, 7200, 0, 0, 0, 0, 0),
(66849, 18631, 555, 3, 1, 0, 1, -360.35812, -268.02179, 12.68686, 0.122045, 7200, 0, 0, 0, 0, 0),
(66853, 18631, 555, 3, 1, 0, 1, -313.30258, -268.90744, 12.68361, 3.209616, 7200, 0, 0, 0, 0, 0),
(66854, 18796, 555, 3, 1, 0, 1, -431.59906, -196.09413, 12.68912, 1.51927, 7200, 0, 0, 0, 0, 2),
(66883, 18794, 555, 3, 1, 0, -1,-138.49711, -71.4171, 8.0668, 4.649072, 7200, 0, 0, 0, 0, 0),
(66888, 18794, 555, 3, 1, 0, -1,-174.36454, -71.2073, 8.0672, 4.707983, 7200, 0, 0, 0, 0, 0),
(66893, 18794, 555, 3, 1, 0, -1,-157.13359, -51.8795, 8.0718, 4.645149, 7200, 0, 0, 0, 0, 0),
(67087, 18794, 555, 3, 1, 0, -1,-157.09144, -13.0580, 8.0718, 4.660861, 7200, 0, 0, 0, 0, 0),
(67088, 18794, 555, 3, 1, 0, -1,-138.56492, 6.409202, 8.0718, 4.598028, 7200, 0, 0, 0, 0, 0),
(68738, 18794, 555, 3, 1, 0, -1,-174.35505, 6.896342, 8.0718, 4.688349, 7200, 0, 0, 0, 0, 0);
 
UPDATE `creature` SET `orientation`=0.022214 WHERE `guid` IN (66853, 67245, 66877, 66810);
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE `guid` IN (67248);

DELETE FROM `creature_addon` WHERE `guid` IN (66854,66844,66849,66853,66810,67248,66880);
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES
(66854, 668540, 0, 1),
(66844, 0, 8, 1),
(66849, 0, 8, 1),
(66853, 0, 8, 1),
(66810, 0, 8, 1),
(66880, 0, 0, 1),
(67248, 672480, 0, 1);

DELETE FROM `waypoint_data` WHERE `id` IN (668540,672480);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(668540, 1, -431.59899, -196.09399, 12.68910, 1.519270, 0, 0, 0, 100, 0),
(668540, 2, -427.69046, -173.98111, 12.85872, 1.586018, 0, 0, 0, 100, 0),
(668540, 3, -429.15615, -156.17640, 12.81885, 1.472135, 0, 0, 0, 100, 0),
(668540, 4, -421.06964, -138.27380, 13.30665, 1.279713, 0, 0, 0, 100, 0),
(668540, 5, -427.66757, -114.31536, 12.68915, 2.210410, 0, 0, 0, 100, 0),
(668540, 6, -434.12530, -128.57087, 12.70553, 4.499842, 0, 0, 0, 100, 0),
(668540, 7, -437.27182, -152.70719, 12.36017, 4.558748, 0, 0, 0, 100, 0),
(668540, 8, -430.35965, -164.06910, 12.53223, 5.261678, 0, 0, 0, 100, 0),
(668540, 9, -436.86901, -180.61929, 13.03278, 4.374177, 0, 0, 0, 100, 0),
(672480,1, -249.33099, -281.855, 16.4914, 5.309800, 0, 0, 0, 100, 0),
(672480,2, -237.70388, -278.939, 17.0863, 0.483321, 0, 0, 0, 100, 0),
(672480,3, -231.84585, -269.813, 17.0863, 1.622149, 0, 0, 0, 100, 0),
(672480,4, -233.26937, -254.501, 17.0863, 1.845988, 0, 0, 0, 100, 0),
(672480,5, -245.76385, -245.834, 17.0863, 2.682437, 0, 0, 0, 100, 0),
(672480,6, -258.52417, -246.559, 12.6796, 3.283267, 0, 0, 0, 100, 0),
(672480,7, -274.94870, -250.880, 12.6817, 3.617061, 0, 0, 0, 100, 0),
(672480,8, -281.15856, -263.627, 12.6817, 4.610585, 0, 0, 0, 100, 0),
(672480,9, -274.11102, -275.567, 12.6817, 5.423469, 0, 0, 0, 100, 0),
(672480,10, -274.11102, -275.567, 12.6817, 5.423469, 0, 0, 0, 100, 0),
(672480,11, -262.74783, -279.464, 12.6817, 6.004661, 0, 0, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (67248);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(67248,67248,0,0,515,0,0),
(67248,66811,2,90,515,0,0),
(67248,66812,2,270,515,0,0),
(67248,66880,4,270,515,0,0);