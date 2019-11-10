-- Azurous: Immune to Arcane. Immune to Fear.
UPDATE `creature_template` SET `school_immune_mask`=64, `mechanic_immune_mask`=16 WHERE `entry`=10202;

-- Spellmaw: Immune to Arcane. Immune to Fear, Silence, Snare, Stun.
UPDATE `creature_template` SET `school_immune_mask`=64, `mechanic_immune_mask`=16+256+1024+2048 WHERE `entry`=10662;

-- Manaclaw: Immune to Arcane. Immune to Root, Snare, Freeze.
UPDATE `creature_template` SET `school_immune_mask`=64, `mechanic_immune_mask`=64+1024+4096 WHERE `entry`=10663;
UPDATE `creature_template_addon` SET `auras` = '17010' WHERE `entry` = 10663;

-- Scryer: Immune to Arcane.
UPDATE `creature_template` SET `school_immune_mask`=64 WHERE `entry`=10664;
REPLACE INTO `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (10664, 0, 0, 0, 1, 16, 0, 0, '8279 18943');
DELETE FROM `creature_addon` WHERE `guid`=42267;

-- Waypoints for Sergeant Houser
DELETE FROM `creature_movement` WHERE `id`=38435;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(38435, 1, 1682.45, 416.902, -62.298, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(38435, 2, 1705.67, 422.108, -62.361, 8400, 0, 3843502, 0, 0, 0, 0, 0, 0, 0, 1.8, 0, 0),
(38435, 3, 1689.15, 417.493, -62.298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38435, 4, 1706.23, 422.453, -62.364, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(38435, 5, 1682.45, 416.902, -62.298, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(38435, 6, 1690.97, 418.036, -62.298, 8400, 0, 3843506, 0, 0, 0, 0, 0, 0, 0, 1.73, 0, 0),
(38435, 7, 1689.85, 417.388, -62.298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38435, 8, 1706.23, 422.453, -62.364, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Waypoint scripts for Sergeant Houser
DELETE FROM `creature_movement_scripts` WHERE `id`=3843502;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843502, 0, 39, 3843501, 3843502, 0, 0, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text 1');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843502, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Emote Point');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843502, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1963, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text 2');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843502, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Emote Talk');
DELETE FROM `creature_movement_scripts` WHERE `id`=3843506;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843506, 0, 39, 3843501, 3843502, 0, 0, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text 1');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843506, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Emote Point');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843506, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1963, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text 2');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843506, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Emote Talk');
DELETE FROM `event_scripts` WHERE `id`=3843501;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1964, 1965, 1966, 1967, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text');
DELETE FROM `event_scripts` WHERE `id`=3843502;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3843502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1968, 1969, 1970, 1971, 0, 0, 0, 0, 0, 'Sergeant Houser - Say Text');

-- Events list for Practice Dummy
DELETE FROM `creature_ai_events` WHERE `creature_id`=5652;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (565201, 5652, 0, 11, 0, 100, 0, 0, 0, 0, 0, 565201, 0, 0, 'Practice Dummy - Set Unkillable on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (565202, 5652, 0, 7, 0, 100, 0, 0, 0, 0, 0, 565201, 0, 0, 'Practice Dummy - Set Unkillable on Evade');
DELETE FROM `creature_ai_scripts` WHERE `id`=565201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (565201, 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Practice Dummy - Set Unkillable');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (565201, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Practice Dummy - Disable Combat Movement');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (565201, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Practice Dummy - Disable Melee Attack');
UPDATE `creature_template` SET `level_min`=25, `level_max`=25, `ai_name`='EventAI', `flags_extra`=`flags_extra`+131072 WHERE `entry`=5652;

-- Events list for Travist Bosk
DELETE FROM `creature_ai_events` WHERE `creature_id`=5663;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (566301, 5663, 0, 1, 0, 100, 1, 1000, 1000, 10000, 10000, 566301, 0, 0, 'Travist Bosk - Attack Nearby Practice Dummy');
DELETE FROM `creature_ai_scripts` WHERE `id`=566301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (566301, 0, 26, 0, 0, 0, 0, 5652, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Travist Bosk - Attack Nearby Practice Dummy');
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=5663;
UPDATE `creature_template` SET `gossip_menu_id`=0, `faction`=1154 WHERE `entry`=5663;

-- Events list for Eldin Partridge
DELETE FROM `creature_ai_events` WHERE `creature_id`=5664;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (566401, 5664, 0, 1, 0, 100, 1, 1000, 1000, 10000, 10000, 566401, 0, 0, 'Eldin Partridge - Attack Nearby Practice Dummy');
DELETE FROM `creature_ai_scripts` WHERE `id`=566401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (566401, 0, 26, 0, 0, 0, 0, 5652, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eldin Partridge - Attack Nearby Practice Dummy');
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=5664;
UPDATE `creature_template` SET `gossip_menu_id`=0, `faction`=1154 WHERE `entry`=5664;

-- Events list for Alyssa Blaye
DELETE FROM `creature_ai_events` WHERE `creature_id`=5665;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (566501, 5665, 0, 1, 0, 100, 1, 1000, 1000, 10000, 10000, 566501, 0, 0, 'Alyssa Blaye - Attack Nearby Practice Dummy');
DELETE FROM `creature_ai_scripts` WHERE `id`=566501;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (566501, 0, 26, 0, 0, 0, 0, 5652, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alyssa Blaye - Attack Nearby Practice Dummy');
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=5665;
UPDATE `creature_template` SET `gossip_menu_id`=0, `faction`=1154 WHERE `entry`=5665;

-- Wayponts for Thomas Miller
DELETE FROM `creature_movement` WHERE `id`=79723;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(79723, 1, -8831.28, 543.109, 96.8344, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(79723, 2, -8823.8, 554.302, 95.1343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 3, -8816.18, 563.58, 94.1516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 4, -8812.27, 575.284, 94.8673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 5, -8798.45, 588.131, 97.2749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 6, -8781.38, 601.002, 97.395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 7, -8770.7, 609.208, 97.2416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 8, -8761.96, 617.745, 99.1796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 9, -8757.63, 628.577, 102.216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 10, -8759.15, 642.457, 103.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 11, -8770.64, 661.869, 103.528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 12, -8787.04, 680.217, 102.245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 13, -8804.12, 683.305, 100.683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 14, -8815.72, 680.448, 98.2183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 15, -8831.55, 674.228, 98.3358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 16, -8843.12, 667.22, 97.8051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 17, -8852.2, 659.229, 96.9603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 18, -8841.74, 637.862, 95.1661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 19, -8834.06, 634.756, 94.3203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 20, -8817.96, 641.332, 94.2293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 21, -8811.88, 634.469, 94.2293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 22, -8813.45, 625.373, 94.1306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 23, -8827.66, 620.367, 94.2332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 24, -8846.61, 601.6, 92.6069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 25, -8859.18, 589.015, 92.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 26, -8874.99, 572.27, 93.4734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 27, -8883.26, 572.174, 92.8046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 28, -8886.9, 579.094, 92.9168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 29, -8889.38, 585.29, 93.3191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 30, -8869.45, 596.649, 92.4409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 31, -8860.44, 601.856, 92.161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 32, -8847.27, 610.523, 92.6533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 33, -8837.06, 617.396, 93.0252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 34, -8834.75, 618.401, 93.3229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 35, -8827.87, 621.207, 94.1001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 36, -8809.26, 603.528, 96.2749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 37, -8806.62, 593.729, 97.1852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 38, -8820.32, 573.328, 94.1915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 39, -8830.69, 558.865, 94.8851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79723, 40, -8834.06, 549.867, 96.194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Thomas Miller
DELETE FROM `creature_ai_events` WHERE `creature_id`=3518;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (351801, 3518, 0, 1, 0, 100, 1, 20000, 45000, 20000, 45000, 351801, 0, 0, 'Thomas Miller - Say Text OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=351801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (351801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 1102, 1103, 1104, 0, 0, 0, 0, 0, 'Thomas Miller - Say Text');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=3518;

-- Spawn position for Justin.
UPDATE `creature` SET `position_x`=-8582.03, `position_y`=633.634, `position_z`=96.338, `orientation`=4.98933 WHERE `guid`=79815;

-- Spawn position for Brandon.
UPDATE `creature` SET `position_x`=-8580.092, `position_y`=634.187, `position_z`=96.338, `orientation`=5.129, `MovementType`=0 WHERE `guid`=79817;
DELETE FROM `creature_movement` WHERE `id`=79817;

-- Spawn position for Roman.
UPDATE `creature` SET `position_x`=-8583.88, `position_y`=633.127, `position_z`=96.338, `orientation`=4.98933, `MovementType`=0 WHERE `guid`=79816;
DELETE FROM `creature_movement` WHERE `id`=79816;

-- Events list for Justin
DELETE FROM `creature_ai_events` WHERE `creature_id`=1368;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (136801, 1368, 0, 1, 0, 100, 1, 35000, 60000, 35000, 60000, 136801, 0, 0, 'Justin - Say Text OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=136801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136801, 0, 39, 136801, 136802, 0, 0, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Justin - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136801, 0, 39, 136803, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Brandon and Roman - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136801;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 150, 151, 152, 0, 0, 0, 0, 0, 'Justin - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136802;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, 154, 155, 156, 0, 0, 0, 0, 0, 'Justin - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136803;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136803, 2, 39, 136804, 136805, 0, 0, 79817, 0, 9, 2, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Brandon - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136803, 10, 39, 136806, 136807, 0, 0, 79816, 0, 9, 2, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Roman - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136804;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 157, 158, 166, 0, 0, 0, 0, 0, 'Brandon - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136805;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, 168, 169, 170, 0, 0, 0, 0, 0, 'Brandon - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136806;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171, 172, 173, 174, 0, 0, 0, 0, 0, 'Roman - Say Text');
DELETE FROM `event_scripts` WHERE `id`=136807;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 176, 177, 0, 0, 0, 0, 0, 0, 'Roman - Say Text');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=1368;

-- Waypoints for Justin.
DELETE FROM `creature_movement` WHERE `id`=79815;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(79815, 1, -8582.03, 633.634, 96.3386, 1800000, 0, 7981501, 0, 0, 0, 0, 0, 0, 0, 5.02218, 0, 0),
(79815, 2, -8582.03, 633.634, 96.3386, 1000, 0, 7981502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 3, -8592.9, 656.706, 98.215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 4, -8603.73, 656.529, 98.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 5, -8616.8, 653.192, 98.877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 6, -8638.93, 656.882, 101.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 7, -8652.71, 660.539, 100.896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 8, -8663.02, 670.676, 100.304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 9, -8669.88, 678.648, 99.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 10, -8675.11, 685.278, 98.608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 11, -8693.1, 707.655, 97.018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 12, -8704.13, 721.515, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 13, -8715.06, 737.284, 97.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 14, -8725.33, 751.855, 98.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 15, -8730.63, 759.914, 98.186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 16, -8729.58, 773.227, 98.045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 17, -8719.73, 787.05, 97.497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 18, -8717.58, 797.687, 97.095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 19, -8725.29, 811.882, 97.227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 20, -8727.36, 825.57, 96.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 21, -8724.79, 839.923, 96.092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 22, -8714.8, 851.813, 96.761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 23, -8708.47, 858.245, 97.006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 24, -8698.47, 866.606, 97.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 25, -8691.03, 872.861, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 26, -8680.25, 880.963, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 27, -8660.5, 897.437, 97.581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 28, -8660.09, 905.128, 97.394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 29, -8667.05, 913.248, 96.338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 30, -8673.76, 909.402, 96.338, 0, 0, 7981530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 31, -8675.49, 909.244, 96.3384, 1800000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80119, 0, 0),
(79815, 32, -8675.49, 909.244, 96.3384, 1000, 0, 7981502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 33, -8667.05, 913.248, 96.338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 34, -8660.09, 905.128, 97.394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 35, -8660.5, 897.437, 97.581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 36, -8680.25, 880.963, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 37, -8691.03, 872.861, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 38, -8698.47, 866.606, 97.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 39, -8708.47, 858.245, 97.006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 40, -8714.8, 851.813, 96.761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 41, -8724.79, 839.923, 96.092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 42, -8727.36, 825.57, 96.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 43, -8725.29, 811.882, 97.227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 44, -8717.58, 797.687, 97.095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 45, -8719.73, 787.05, 97.497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 46, -8729.58, 773.227, 98.045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 47, -8730.63, 759.914, 98.186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 48, -8725.33, 751.855, 98.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 49, -8715.06, 737.284, 97.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 50, -8704.13, 721.515, 97.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 51, -8693.1, 707.655, 97.018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 52, -8675.11, 685.278, 98.608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 53, -8669.88, 678.648, 99.344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 54, -8663.02, 670.676, 100.304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 55, -8652.71, 660.539, 100.896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 56, -8638.93, 656.882, 101.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 57, -8616.8, 653.192, 98.877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 58, -8603.73, 656.529, 98.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79815, 59, -8592.9, 656.706, 98.215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Waypoint scripts for Justin.
DELETE FROM `creature_movement_scripts` WHERE `id`=7981501;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981501, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Justin - Disband Creature Group');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981501, 1, 3, 0, 0, 66, 2, 79817, 0, 9, 2, 0, 0, 0, 0, -8580.092, 634.187, 96.338, 5.129, 0, 'Brandon - Move to point');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981501, 1, 3, 0, 0, 66, 2, 79816, 0, 9, 2, 0, 0, 0, 0, -8583.88, 633.127, 96.338, 4.98933, 0, 'Roman - Move to point');
DELETE FROM `creature_movement_scripts` WHERE `id`=7981502;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1090, 0, 0, 0, 0, 0, 0, 0, 0, 'Justin - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981502, 0, 78, 1, 0, 0, 0, 79817, 0, 9, 2, 0, 0, 0, 0, 2.19769, 0, 0, 1.9, 0, 'Brandon - Follow Justin');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981502, 0, 78, 1, 0, 0, 0, 79816, 0, 9, 2, 0, 0, 0, 0, 2.19769, 0, 0, 4.50248, 0, 'Roman - Follow Justin');
DELETE FROM `creature_movement_scripts` WHERE `id`=7981530;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981530, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Justin - Disband Creature Group');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981530, 1, 3, 0, 0, 66, 2, 79816, 0, 9, 2, 0, 0, 0, 0, -8673.38, 911.824, 96.3384, 2.25631, 0, 'Roman - Move to point');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7981530, 1, 3, 0, 0, 66, 2, 79817, 0, 9, 2, 0, 0, 0, 0, -8674.68, 910.761, 96.3384, 2.25631, 0, 'Brandon - Move to poin');







Justin
149 - And that's how Lothar killed thirty six orcs with his bare hands!
150 - And so the knights stood before the charging Horde and held their ground as a thousand berserk orcs came through the valley.
151 - They say he can turn into a raven sometimes.
152 - You know why orc eyes glow red? It's because they drink blood!
153 - There is no spoon.
154 - I swear, people have actually seen them. Pandaren really do exist!
155 - And then the rabbit just bit his head off... I swear.
156 - You know there are crocolisks in the Canals. They were brought from the swamp as pets, but got thrown in the canals.

Brandon
147 - Really?
157 - Wow.
158 - Oh yeah, I heard about that.
166 - Oh c'mon, that's not true.
167 - That's neat.
168 - My father says that's just a story.
169 - Can you imagine?
170 - Sounds kinda like one of Billy's fish stories to me.

Roman
171 - I thought I heard something.
172 - I think I see something.
173 - Eww.... that's not a fish!
174 - I got worm guts on my shoes.
175 - Something smells funny.
176 - I hope that was a fish!
177 - I don't think there's any fish in these canals.