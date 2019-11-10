-- NG-5 Explosives (Blue)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (47482, 19601, 1, 1168.44, 51.1277, 0.0603573, 5.48173, 0, 0, 0.39009, -0.920777, -60, -60, 100, 1, 0, 0, 0, 10);
-- NG-5 Explosives (Red)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (47483, 19592, 1, 1048.82, -442.209, 4.7429, 2.17129, 0, 0, 0.884603, 0.466344, -60, -60, 100, 1, 0, 0, 0, 10);


-- Based on these videos:
-- https://www.youtube.com/watch?v=XenYBxrB_EM
-- https://www.youtube.com/watch?v=XohhDItp7Xs

-- Script for item NG-5 Explosives (Blue).
DELETE FROM `event_scripts` WHERE `id`=694;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (694, 0, 76, 19601, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168.44, 51.1277, 0.0603573, 5.48173, 0, 'Set NG-5 Charge (Blue) - Respawn NG-5 Explosives (Blue)');

-- Script for item NG-5 Explosives (Red).
DELETE FROM `event_scripts` WHERE `id`=693;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (693, 0, 76, 19592, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048.82, -442.209, 4.7429, 2.17129, 0, 'Set NG-5 Charge (Red) - Respawn NG-5 Explosives (Red)');

-- Condition to check the npc entry.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (3316, 16, 3988, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (3317, 16, 3989, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (3318, 16, 3991, 0, 0, 0, 0);

-- Script for item Remote Detonator (Red).
DELETE FROM `event_scripts` WHERE `id`=691;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (691, 0, 13, 0, 0, 0, 0, 20899, 50, 11, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Activate Venture Co. Explosives Wagon');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (691, 0, 41, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Despawn NG-5 Explosives (Red)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (691, 3, 68, 20899, 2, 3988, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Operators');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (691, 3, 68, 20899, 2, 3991, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Deforesters');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (691, 3, 68, 20899, 2, 3989, 100, 20899, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Red - Start Script on All Venture Co. Loggers');

-- Script for item Remote Detonator (Blue).
DELETE FROM `event_scripts` WHERE `id`=692;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (692, 0, 13, 0, 0, 0, 0, 19547, 50, 11, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Activate Venture Co. Explosives Wagon');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (692, 0, 41, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Despawn NG-5 Explosives (Blue)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (692, 3, 68, 20899, 2, 3988, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Operators');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (692, 3, 68, 20899, 2, 3991, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Deforesters');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (692, 3, 68, 20899, 2, 3989, 100, 19547, 50, 11, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate Blue - Start Script on All Venture Co. Loggers');

-- Script to run on nearby npcs after using Remote Detonator.
DELETE FROM `event_scripts` WHERE `id`=20899;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20899, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate: Venture Co. Npc - Set Run');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20899, 1, 3, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Remote Detonate: Venture Co. Npc - Move to Exploded Wagon');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20899, 5, 39, 20900, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate: Venture Co. Npc - Chance to Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20899, 25, 20, 6, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 117, 'Remote Detonate: Venture Co. Npc - Move Home');

-- Script to say npc texts after using Remote Detonator.
DELETE FROM `event_scripts` WHERE `id`=20900;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1568, 1571, 1572, 0, 0, 0, 0, 0, 3316, 'Remote Detonate: Venture Co. Operator - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1570, 0, 0, 0, 0, 0, 0, 0, 3317, 'Remote Detonate: Venture Co. Logger - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (20900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1569, 1573, 0, 0, 0, 0, 0, 0, 3318, 'Remote Detonate: Venture Co. Deforester - Say Text');


-- Flame of Stormwind
DELETE FROM `spell_scripts` WHERE `id`=29137;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29137, 0, 15, 29101, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Stormwind');

-- Flame of Ironforge
DELETE FROM `spell_scripts` WHERE `id`=29135;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29135, 0, 15, 29102, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Ironforge');

-- Flame of Darnassus
DELETE FROM `spell_scripts` WHERE `id`=29126;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29126, 0, 15, 29099, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Cleansing Flames - Create Flame of Darnassus');

-- Flame of Undercity
DELETE FROM `spell_scripts` WHERE `id`=29139;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29139, 0, 15, 29133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Undercity');

-- Flame of Orgrimmar
DELETE FROM `spell_scripts` WHERE `id`=29136;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29136, 0, 15, 29130, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Orgrimmar');

-- Flame of Thunder Bluff
DELETE FROM `spell_scripts` WHERE `id`=29138;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29138, 0, 15, 29132, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Cleansing Flames - Create Flame of Thunder Bluff');







-- BRD pool for Large Mithril Bound Chest and Large Solid Chest.
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`, `patch_min`, `patch_max`) VALUES (42910, 1, 'BRD: Large Chest', 0, 0, 0, 10);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (349151, 42910, 0, 'BRD: Large Mithril Bound Chest', 0, 0, 10);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (349152, 42910, 0, 'BRD: Large Solid Chest', 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (349151, 153469, 229, 86.8551, -587.501, 30.6085, 3.05779, 0, 0, 0.999122, 0.0418896, 36000, 36000, 100, 1, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (349152, 153464, 229, 86.8551, -587.501, 30.6085, 3.05779, 0, 0, 0.999122, 0.0418896, 36000, 36000, 100, 1, 0, 0, 0, 10);

-- Add Pooling for Large Solid Chest 153463 & Large Mithril Bound Chest 153468 - Hearthglen
DELETE FROM `gameobject` WHERE `id` IN (153463,153468);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(45486, 153463, 0, 2939.019, -1376.045, 167.2374, -1.186824, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(45493, 153468, 0, 2939.019, -1376.045, 167.2374, -1.186824, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Mithril Bound Chest
(45516, 153463, 0, 2989.212, -1601.668, 184.4491, 2.495821, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(45520, 153468, 0, 2989.212, -1601.668, 184.4491, 2.495821, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Mithril Bound Chest
(45537, 153463, 0, 2851.745, -1403.158, 148.9066, 0.523598, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(45553, 153468, 0, 2851.745, -1403.158, 148.9066, 0.523598, 0, 0, 0, 0, 7200, 7200, 100, 1); -- Large Mithril Bound Chest

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(39801, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1'),
(39802, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #2'),
(39803, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #3'),
(39934, 1, 'Western Plaguelands (51-58) - Master Chest Pool');

-- Add to Western Plaguelands (51-58) - Master Chest Pool 39934
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(39801, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1'),
(39802, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #2'),
(39803, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #3');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(45486, 39801, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(45493, 39801, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(45516, 39802, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(45520, 39802, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(45537, 39803, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(45553, 39803, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)');









-- Remove no longer needed text entries.
DELETE FROM `script_texts` WHERE `entry` IN (-1000264, -1000265, -1000266, -1000267, -1000268, -1000269, -1000270, -1000271, -1000272, -1000273, -1000948, -1000949, -1000950, -1000951, -1000952, -1000953, -1000954, -1000955, -1000956, -1000957);

-- -1000264
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=845;
-- -1000265
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=846;
-- -1000266
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=847;
-- -1000269
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=849;
-- -1000270
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=850;
-- -1000271
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=851;
-- -1000273
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=890;









-- Change damage school for Mad Voidwalker to shadow.
-- https://github.com/cmangos/classic-db/commit/9ea616d6b08b78a134cb7e73dab81edc6c867d9c
UPDATE `creature_template` SET `dmg_school`=5 WHERE `entry`=15146;

-- Add passive auras for multiple creatures.
-- https://github.com/cmangos/classic-db/commit/3713775cff93072f5482a1851c20f1a19e46a144

-- Passive aura for Dalaran Shield Guard.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (227102);
DELETE FROM `creature_ai_events` WHERE `creature_id`=2271;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (227101, 2271, 0, 2, 0, 100, 0, 15, 0, 0, 0, 227101, 0, 0, 'Dalaran Shield Guard - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=227101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (227101, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Shield Guard - Flee');
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2271, 0, 0, 1, 16, 0, 0, '3284');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2271);

-- Passive aura for Manahound.
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (87180, 'Blasted Lands - Manahound', 3604, 100, 1, 0, 0, 0, 8, 13, 21, 33, 0, 20817, 100, 1, 0, 0, 0, 2, 13, 6, 18, 0, 14331, 100, 1, 0, 0, 0, 3, 8, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (8718, 0, 0, 1, 16, 0, 0, '12787');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=8718);

-- Passive aura for Hillsbrad Footman.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2268, 0, 0, 1, 16, 0, 0, '3418');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2268);

-- Passive aura for Sergeant Malthus.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (814, 0, 0, 1, 16, 0, 0, '3637 18146');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=814);

-- Passive aura for Kurzen Jungle Fighter.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (937, 0, 0, 1, 16, 0, 0, '3637');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=937);

-- Events list for Kurzen Medicine Man
DELETE FROM `creature_ai_scripts` WHERE `id` IN (94003, 94004);
DELETE FROM `creature_ai_events` WHERE `creature_id`=940;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (94001, 940, 0, 1, 0, 100, 1, 1000, 1000, 600000, 600000, 94001, 0, 0, 'Kurzen Medicine Man - Cast Inner Fire OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (94002, 940, 0, 2, 0, 100, 0, 15, 0, 0, 0, 94002, 0, 0, 'Kurzen Medicine Man - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=94001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (94001, 0, 15, 588, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen Medicine Man - Cast Spell Inner Fire');
DELETE FROM `creature_ai_scripts` WHERE `id`=94002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (94002, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen Medicine Man - Flee');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (9400, 'Stranglethorn Vale - Kurzen Medicine Man', 6077, 100, 15, 0, 20, 32, 0, 0, 20, 30, 0, 6064, 100, 15, 0, 0, 0, 0, 0, 30, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id`=9400 WHERE `entry`=940;

-- Passive aura for Ironpatch.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2547, 0, 0, 1, 16, 0, 0, '3637');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2547);

 -- Passive aura for Living Flame.
DELETE FROM `creature_spells` WHERE `entry`=34170;
UPDATE `creature_template` SET `spell_list_id`=0 WHERE `entry`=3417;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (3417, '5111');

-- Passive aura for Dragonmaw Centurion
DELETE FROM `creature_ai_scripts` WHERE `id` IN (103604, 103606);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1036;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (103601, 1036, 0, 2, 0, 100, 0, 15, 0, 0, 0, 103601, 0, 0, 'Dragonmaw Centurion - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (103602, 1036, 0, 4, 0, 15, 0, 0, 0, 0, 0, 103602, 0, 0, 'Dragonmaw Centurion - Random Say on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=103601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (103601, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Centurion - Flee');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (10360, 'Wetlands - Dragonmaw Centurion', 7164, 100, 0, 0, 0, 32, 1, 3, 15, 30, 0, 1672, 100, 1, 0, 0, 0, 0, 0, 12, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (1036, 0, 0, 1, 16, 0, 0, '643 3418');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=1036);

-- Passive aura for Ma'ruk Wyrmscale.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2090, 0, 0, 1, 16, 0, 0, '3418');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2090);

-- Passive aura for Glutton.
DELETE FROM `creature_ai_events` WHERE `id`=856701;
DELETE FROM `creature_ai_scripts` WHERE `id`=856701;
UPDATE `creature_template_addon` SET `auras`='8876 12627' WHERE `entry`=8567;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=8567);

-- Passive aura for Kam Deepfury.
DELETE FROM `creature_spells` WHERE `entry`=16660;
UPDATE `creature_template` SET `spell_list_id`=0 WHERE `entry`=1666;
UPDATE `creature_template_addon` SET `auras`='3418' WHERE `entry`=1666;

-- Passive aura for Sergent Bly.
UPDATE `creature_template_addon` SET `auras`='3637 5301' WHERE `entry`=7604;

-- Passive aura for Kurzen Subchief.
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (978, 0, 0, 1, 16, 0, 0, '3284');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=978);

-- Passive aura for Sergeant Durgen Stormpike.
INSERT INTO `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (13777, 3, 0, 0, 1, 16, 0, 0, '5301');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=13777);

-- Passive aura for Lieutenant Haggerdin.
INSERT INTO `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (13841, 3, 0, 0, 1, 16, 0, 0, '5301');
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=13841);


-- Remove player controlled flag from Nathanos Blightcaller and his pets.
UPDATE `creature_template` SET `unit_flags`=4160 WHERE `entry` IN (11885, 11878, 12208);



UPDATE `gameobject_loot_template` SET `maxcount` = 4 WHERE `item` = 11018;

-- mass revive spell
DELETE FROM `spell_scripts` WHERE `id`=26683;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (26683, 0, 68, 26683, 3, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Start Script on All Players');
DELETE FROM `event_scripts` WHERE `id`=26683;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (26683, 0, 15, 24341, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Revive on Self');

UPDATE `mangos_string` SET `content_default`='You set waterwalk mode to %s for %s.' WHERE `entry`=338;
UPDATE `mangos_string` SET `content_default`='Your waterwalk mode has been turned %s by %s.' WHERE `entry`=339;
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (351, 'You set wallclimb mode to %s for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (352, 'Your wallclimb mode has been turned %s by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- Molten War Golem should have massive frost vulnerability.
-- https://www.wowhead.com/npc=8908/molten-war-golem#comments
UPDATE `creature_template` SET `frost_res`=-10000 WHERE `entry`=8908;

-- Tar mobs should have fire vulnerability.
-- https://classic.wowhead.com/npc=6517/tar-beast#comments
-- https://classic.wowhead.com/npc=6527/tar-creeper#screenshots
-- https://classic.wowhead.com/npc=6519/tar-lord#comments
-- https://classic.wowhead.com/npc=6518/tar-lurker#comments
UPDATE `creature_template` SET `fire_res`=-300 WHERE `entry` IN (6518, 6519, 6527, 6517);

-- Creatures with vulnerability in cmangos db.
UPDATE `creature_template` SET `frost_res`=-52 WHERE `entry`=8909;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11461;
UPDATE `creature_template` SET `fire_res`=-55 WHERE `entry`=11462;
UPDATE `creature_template` SET `fire_res`=-56 WHERE `entry`=11464;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11465;
UPDATE `creature_template` SET `frost_res`=-40 WHERE `entry`=11502;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11664;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11666;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11667;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11668;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=12143;
UPDATE `creature_template` SET `frost_res`=-186 WHERE `entry`=12265;

-- Fix gossip option for Torwa Pathfinder.
UPDATE `gossip_menu_option` SET `action_menu_id` = 2201 WHERE `menu_id` = 2188 AND `id` = 0 AND `action_menu_id` = 2189;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(2201, 2835, 0);