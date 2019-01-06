INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20000, 6, 36, 1, -16.4, -383.07, 61.78, 2.9, 'Instance Teleport : Deadmines');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20001, 6, 0, 1, 2893.18, -783.32, 160.9, -1.176, 'Instance Teleport : Scarlet Monastery');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20002, 6, 43, 1, -163.49, 132.9, -73.66, 5.83, 'Instance Teleport : Wailing Caverns');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20003, 6, 33, 1, -229.135, 2109.18, 76.8898, 1.267, 'Instance Teleport : Shadowfang Keep');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20004, 6, 47, 1, 1943, 1544.63, 82, 1.38, 'Instance Teleport : Razorfen Kraul');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20005, 6, 48, 1, -151.89, 106.96, -39.87, 4.53, 'Instance Teleport : Blackfathom Deeps');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20006, 6, 70, 1, -226.8, 49.09, -46.03, 1.39, 'Instance Teleport : Uldaman');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20007, 6, 90, 1, -332.22, -2.28, -150.86, 2.77, 'Instance Teleport : Gnomeregan');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20008, 6, 129, 1, 2592.55, 1107.5, 51.29, 4.74, 'Instance Teleport : Razorfen Downs');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20009, 6, 109, 1, -319.24, 99.9, -131.85, 3.19, 'Instance Teleport : Sunken Temple');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20010, 6, 209, 1, 1213.52, 841.59, 8.93, 6.09, 'Instance Teleport : Zul\'Farrak');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20011, 6, 230, 1, 458.32, 26.52, -70.67, 4.95, 'Instance Teleport : Blackrock Deepth');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20012, 6, 389, 1, 3.81, -14.82, -17.84, 4.39, 'Instance Teleport : Ragefire');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20013, 6, 349, 1, 752.91, -616.53, -33.11, 1.37, 'Instance Teleport : Maraudon Purple Entrance');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20014, 6, 349, 1, 1019.69, -458.31, -43.43, 0.31, 'Instance Teleport : Maraudon Orange Entrance');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20015, 6, 309, 1, -11916.1, -1230.53, 92.5334, 4.71, 'Instance Teleport : Zul\'Gurub');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20016, 6, 509, 1, -8429.74, 1512.14, 31.9074, 2.56, 'Instance Teleport : Ruins of Ahn\'Qiraj');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20017, 6, 0, 1, -4979.5, -884.83, 501.65, 5.38, 'Start Zone : Alliance');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20018, 6, 1, 1, 1434.42, -4402, 25.23, 1.663, 'Start Zone : Horde');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20019, 6, 34, 1, 54.23, 0.28, -18.34, 6.26, 'Instance Teleport : Stockade');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20020, 6, 409, 1, 1096, -467, -104.6, 3.64, 'Instance Teleport : Molten Core');
INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES (20021, 6, 249, 1, 29.1607, -71.3372, -8.18032, 4.58, 'Instance Teleport : Onyxia');


950, 625


-- Set all existing kill events to only trigger for players to avoid breaking anything.
UPDATE `creature_ai_events` SET `event_param3`=1, `event_param4`=0 WHERE `event_type`=5;
-- Twilight Lord Kelris yells upon killing a pet.
UPDATE `creature_ai_events` SET `event_param3`=0 WHERE `id`=483205;


-- Remove custom text entries and fix chat type and sound id of Amnennar's texts.
DELETE FROM `script_texts` WHERE `entry`=-1129000;
UPDATE `broadcast_text` SET `Type`=1, `Sound`=5825 WHERE `ID`=6187;
DELETE FROM `script_texts` WHERE `entry`=-1129001;
UPDATE `broadcast_text` SET `Type`=1, `Sound`=5828 WHERE `ID`=6189;
DELETE FROM `script_texts` WHERE `entry`=-1129002;
UPDATE `broadcast_text` SET `Type`=1, `Sound`=5829 WHERE `ID`=6190;
DELETE FROM `script_texts` WHERE `entry`=-1129003;
UPDATE `broadcast_text` SET `Type`=1, `Sound`=5827 WHERE `ID`=6192;
DELETE FROM `script_texts` WHERE `entry`=-1129004;
UPDATE `broadcast_text` SET `Sound`=5826 WHERE `ID`=6188;

-- Events list for Amnennar the Coldbringer
DELETE FROM `creature_ai_events` WHERE `creature_id`=7358;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735801, 7358, 0, 4, 0, 100, 0, 0, 0, 0, 0, 735801, 0, 0, 'Amnennar the Coldbringer - Yell on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735802, 7358, 0, 5, 0, 100, 1, 5000, 5000, 0, 0, 735802, 0, 0, 'Amnennar the Coldbringer - Say on Killed Unit');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735803, 7358, 0, 2, 0, 100, 0, 80, 66, 0, 0, 735803, 0, 0, 'Amnennar the Coldbringer - Yell at 80% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735804, 7358, 0, 2, 0, 100, 0, 33, 1, 0, 0, 735804, 0, 0, 'Amnennar the Coldbringer - Cast Summon Frost Spectres and Yell at 33% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735805, 7358, 0, 2, 0, 100, 0, 66, 33, 0, 0, 735805, 0, 0, 'Amnennar the Coldbringer - Cast Summon Frost Spectres and Yell at 66% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735806, 7358, 0, 33, 0, 100, 1, 10000, 10000, 0, 0, 735806, 0, 0, 'Amnennar the Coldbringer - Move Away on Target Rooted');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (735807, 7358, 0, 6, 0, 100, 0, 0, 0, 0, 0, 735807, 0, 0, 'Amnennar the Coldbringer - Kill Frost Spectres on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=735801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6187, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=735802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6188, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=735803;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6192, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=735804;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4483, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6190, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735804, 0, 15, 12642, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Cast Spell');
DELETE FROM `creature_ai_scripts` WHERE `id`=735805;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4483, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6189, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735805, 0, 15, 12642, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Cast Spell');
DELETE FROM `creature_ai_scripts` WHERE `id`=735806;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735806, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Amnennar the Coldbringer - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=735807;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735807, 0, 68, 8585, 2, 8585, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amnennar the Coldbringer - Kill Frost Spectres');
DELETE FROM `event_scripts` WHERE `id`=8585;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8585, 0, 48, 100, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frost Spectre - Die');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (73580, 'Razorfen Downs - Amnennar the Coldbringer', 15530, 100, 1, 0, 0, 128, 0, 0, 2, 2, 0, 15530, 80, 1, 0, 0, 64, 0, 0, 2, 6, 0, 15531, 100, 1, 0, 0, 64, 10, 15, 10, 15, 0, 13009, 100, 1, 0, 0, 0, 8, 8, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=73580, `AIName`='EventAI', `ScriptName`='' WHERE `entry`=7358;






SELECT guid, owner_guid, itemEntry, creatorGuid, count, duration, flags, randomPropertyId as 'random_prop_id', durability, text as 'itemTextId'
FROM item_instance



UPDATE `creature_template` SET `lootid`=15550, `mingold`=31705, `maxgold`=41408 WHERE `entry`=16152;

-- orig
DELETE FROM `creature_ai_scripts` WHERE `id`=735806;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (735806, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Amnennar the Coldbringer - Move Away from Target');



DELETE FROM `creature_ai_scripts` WHERE `id`=148701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (148701, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Splinter Fist Enslaver - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=242801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (242801, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Jailor Marlgen - Move Away from Target');
UPDATE `creature_ai_events` SET `event_type`=33, `event_param1`=10000, `event_param2`=10000, `event_param3`=0, `event_param4`=0 WHERE `id` IN (148701, 242801);
UPDATE `creature_ai_events` SET `event_type`=33, `event_param1`=`event_param3`, `event_param2`=`event_param4`, `event_param3`=0, `event_param4`=0 WHERE `id` IN (238705, 188901, 227601, 9503, 449402, 218401, 59901, 903801, 904103, 971702, 59601, 446001, 828301, 1373901, 1224202, 1373801, 1224302, 1188301, 1521301);
DELETE FROM `creature_ai_scripts` WHERE `id`=238705;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (238705, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Hillsbrad Councilman - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=188901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (188901, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Dalaran Wizard - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=227601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (227601, 0, 20, 18, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Magistrate Henry Maleb - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=9503;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9503, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Defias Smuggler - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=449402;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (449402, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Scarlet Spellbinder - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=218401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (218401, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 2428, 'Lady Moongazer - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=59901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (59901, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Marisa du\'Paige - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=903801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (903801, 0, 20, 18, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Seeth\'rel - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=904103;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (904103, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Warder Stilgiss - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=971702;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (971702, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Bloodaxe Summoner - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=59601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (59601, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Brainwashed Noble - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=446001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (446001, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Murkgill Lord - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=828301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (828301, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Slave Master Blackheart - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1373901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1373901, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Maraudos - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1224202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1224202, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Spirit of Maraudos - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1373801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1373801, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Veng - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1224302;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1224302, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Spirit of Veng - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1188301, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Twilight Master - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=1521301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1521301, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Twilight Overlord - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=212003;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (212003, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 20792, 'Archmage Ataeric - Move Away from Target');
DELETE FROM `creature_ai_scripts` WHERE `id`=212002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (212002, 0, 20, 18, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2428, 'Archmage Ataeric - Move Away from Target');


-- Gossip menu for Kalaran Windblade.
DELETE FROM `npc_gossip` WHERE `npc_guid`=5921;
INSERT INTO `conditions` VALUES (250, 9, 3441, 1, 0, 0, 0); -- Has Incomplete Quest Divine Retribution
INSERT INTO `conditions` VALUES (251, 8, 3454, 0, 0, 0, 0); -- Completed Quest The Torch of Retribution
INSERT INTO `conditions` VALUES (252, 2, 10515, 1, 0, 0, 1); -- Not Have Item Torch of Retribution
INSERT INTO `conditions` VALUES (253, -1, 251, 252, 0, 0, 0);
INSERT INTO `gossip_menu` VALUES (1323, 1953, 0);
INSERT INTO `gossip_menu` VALUES (1322, 1954, 0);
INSERT INTO `gossip_menu` VALUES (1321, 1955, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1323, 0, 0, 'Tell me what drives this vengeance?', 4430, 1, 1, 1322, 0, 0, 0, 0, '', 0, 250);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1323, 2, 0, 'Kalaran, I have misplaced my torch. I require another.', 7773, 1, 1, -1, 0, 1323, 0, 0, '', 0, 253);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1322, 0, 0, 'Continue please.', 4432, 1, 1, 1321, 0, 0, 0, 0, '', 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1321, 0, 0, 'Let me confer with my colleagues.', 4434, 1, 1, -1, 0, 1321, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=1323;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1323, 0, 15, 19797, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kalaran Windblade - Cast Spell Conjure Torch of Retribution');
DELETE FROM `gossip_scripts` WHERE `id`=1321;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1321, 0, 7, 3441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kalaran Windblade - Complete Quest Divine Retribution');
UPDATE `creature_template` SET `gossip_menu_id`=1323, `ScriptName`='' WHERE `entry`=8479;

-- Gossip menu for Zamael Lunthistle.
INSERT INTO `conditions` VALUES (254, 9, 3377, 1, 0, 0, 0); -- Has Incomplete Quest Prayer to Elune
INSERT INTO `gossip_menu` VALUES (1285, 1920, 0);
INSERT INTO `gossip_menu` VALUES (1286, 1922, 0);
INSERT INTO `gossip_menu` VALUES (1287, 1921, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1285, 0, 0, 'I wish to hear your tale.', 4408, 1, 1, 1287, 0, 0, 0, 0, '', 0, 254);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1287, 0, 0, 'Please continue, Zamael.', 4410, 1, 1, 1286, 0, 0, 0, 0, '', 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1286, 0, 0, 'Let me think about it, Zamael.', 4412, 1, 1, -1, 0, 1286, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=1286;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1286, 0, 7, 3377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamael Lunthistle - Complete Quest Prayer to Elune');
UPDATE `creature_template` SET `gossip_menu_id`=1285, `ScriptName`='' WHERE `entry`=8436;
