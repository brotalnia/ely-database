-- Quest: Patrol Schedules, ID: 330
DELETE FROM `creature_ai_events` WHERE `creature_id` = 604;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(60401, 604, 0, 11, 0, 100, 0, 0, 0, 0, 0, 60401, 0, 0, "Plague Spreader - Cast Birth on Spawn");

DELETE FROM `creature_ai_scripts` WHERE `id`=60401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60401, 0, 15, 26047, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Spreader - Cast Spell Birth');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60401, 0, 39, 60401, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Spreader - Start Script to Set Faction (21)');
DELETE FROM `event_scripts` WHERE `id`=60401;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60401, 2, 22, 21, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Spreader - Set Faction (21)');

UPDATE `creature_template` SET `unit_flags` = 4096 WHERE `entry` = 1421;
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60, `spawn_flags` = 1 WHERE `guid` = 1626 AND `id` = 1421;

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(1422, 20, 1421, 80, 0, 0, 0);

UPDATE `quest_template` SET `CompleteScript` = 330 WHERE `entry` = 330;

DELETE FROM `quest_end_scripts` WHERE `id`=330;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules - Corporal Sethman: npc\_flag questgiver removed');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 22, 7, 1, 0, 0, 1626, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules - Corporal Sethman: Set Faction (Private Merle)');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 60, 3, 1, 0, 1, 1626, 0, 9, 2, 0, 1421, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules - Corporal Sethman: Start Waypoints (Private Merle)');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 26, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Patrol Schedules - Corporal Sethman: npc\_flag questgiver added');

DELETE FROM `creature_movement_special` WHERE `id` = 1421;
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(1421,1,-11329.3,-236.289,74.6221,0,11,100),
(1421,2,-11329.3,-236.289,74.6221,0,11,100),
(1421,3,-11330.5,-224.416,75.2209,0,0,100),
(1421,4,-11321.5,-201.289,75.7666,0,0,100),
(1421,5,-11321.5,-201.289,75.7666,6000,142101,100),
(1421,6,-11342.3,-212.545,75.2202,0,0,100),
(1421,7,-11371.4,-215.524,75.2802,0,0,100),
(1421,8,-11378.1,-225.526,74.0602,0,0,100),
(1421,9,-11380.6,-235.847,69.3212,0,0,100),
(1421,10,-11381.2,-253.24,64.1387,0,0,100),
(1421,11,-11388.2,-273.483,59.8605,0,0,100),
(1421,12,-11387.9,-287.5,59.4897,0,0,100),
(1421,13,-11381.8,-317.855,65.0236,0,0,100),
(1421,14,-11366.9,-365.866,65.9376,0,142102,100),
(1421,15,-11355.5,-381.122,65.1301,0,0,100),
(1421,16,-11344.7,-381.814,65.1715,0,0,100),
(1421,17,-11300.1,-368.146,65.676,30000,142103,100);

DELETE FROM `creature_movement_scripts` WHERE `id` IN (142101, 142102, 142103);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(142101, 1, 35, 0, 0, 0, 0, 330, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Private Merle - Set Orientation"),
(142101, 2, 0, 1, 0, 0, 0, 330, 0, 21, 0, 229, 0, 0, 0, 0, 0, 0, 0, 0, "Private Merle - Say Text"),

(142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -11293, -370.476, 64.4972, 3.08568, 0, "Private Merle - Summon Creature (OOC Despawn 4000 ms)"),
(142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -11295.3, -359.83, 63.561, 4.18131, 0, "Private Merle - Summon Creature (OOC Despawn 4000 ms)"),
(142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -11291, -364.689, 64.1733, 3.44304, 0, "Private Merle - Summon Creature (OOC Despawn 4000 ms)"),
(142102, 0, 22, 33, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Private Merle - Set Faction"),

(142103, 0, 26, 0, 0, 0, 0, 604, 25, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Private Merle - Start Attack"),
(142103, 0, 18, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Private Merle - Despawn (8000 ms)");

UPDATE `broadcast_text` SET `emote_id1` = 14 WHERE `entry` = 229;