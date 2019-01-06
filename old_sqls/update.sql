UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27822;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27875;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27821;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27796;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27845;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27876;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27823;
UPDATE `npc_trainer` SET `build_min`=5302 WHERE `spell`=27843;

-- Fix quest The Completed Orb of Noh'Orahil.
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry` IN (4964, 4975);
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4964, 8, 7, 4964, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Completed Orb of Dar\'Orahil - Menara Voidrender: Complete Quest');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4975, 8, 7, 4975, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Completed Orb of Noh\'Orahil - Menara Voidrender: Complete Quest');
