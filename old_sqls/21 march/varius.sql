DELETE FROM `creature_movement_scripts` WHERE `id`=929801;
(929801, 1, 10, 14372, 180000, 0, 0, 0, 0, 0, 0, 0, 14372, 6, 10, 6387.13, -2481.36, 540.824, 4.25282, 0, 'Donova Snowden - Summon Creature'),
(929801, 1, 10, 14372, 180000, 0, 0, 0, 0, 0, 0, 0, 14372, 6, 10, 6393.32, -2468.99, 541.812, 4.25282, 0, 'Donova Snowden - Summon Creature'),
(929801, 1, 10, 14372, 180000, 0, 0, 0, 0, 0, 0, 0, 14372, 6, 10, 6390.48, -2475.06, 541.658, 4.25282, 0, 'Donova Snowden - Summon Creature'),
(929801, 2, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Donova Snowden - Set Run On'),
(929801, 2, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64922, 0, 'Donova Snowden - Set Orientation'),
(929801, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 6233, 0, 0, 0, 0, 0, 0, 0, 0, 'Donova Snowden - Say Text'),
(929801, 7, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63731, 0, 'Donova Snowden - Set Orientation'),
(929801, 14, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Donova Snowden - Add Flag Questgiver');


-- Events list for Cursed Sailor
DELETE FROM `creature_ai_scripts` WHERE `id` IN (115702);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1157;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (115701, 1157, 0, 4, 0, 20, 0, 0, 0, 0, 0, 115701, 0, 0, 'Cursed Sailor - Say on Aggro');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (11570, 'Wetlands - Cursed Sailor', 3360, 100, 1, 0, 0, 0, 8, 22, 40, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=11570 WHERE `entry`=1157;

-- Events list for Cursed Marine
DELETE FROM `creature_ai_scripts` WHERE `id` IN (115802);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1158;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (115801, 1158, 0, 4, 0, 20, 0, 0, 0, 0, 0, 115801, 0, 0, 'Cursed Marine - Say on Aggro');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (11580, 'Wetlands - Cursed Marine', 3360, 100, 1, 0, 0, 0, 4, 20, 30, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=11580 WHERE `entry`=1158;

-- Events list for First Mate Snellig
DELETE FROM `creature_ai_scripts` WHERE `id` IN (115901);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1159;
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (11590, 'Wetlands - First Mate Snellig', 6713, 100, 1, 0, 0, 0, 4, 19, 17, 28, 0, 3360, 100, 1, 0, 0, 0, 13, 15, 18, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='', `spells_template`=11590 WHERE `entry`=1159;

-- Events list for Captain Halyndor
DELETE FROM `creature_ai_scripts` WHERE `id` IN (116002);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1160;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (116001, 1160, 0, 4, 0, 90, 0, 0, 0, 0, 0, 116001, 0, 0, 'Captain Halyndor - Say on Aggro');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (11600, 'Wetlands - Captain Halyndor', 3389, 100, 0, 0, 0, 0, 7, 8, 11, 26, 0, 3360, 100, 1, 0, 0, 0, 3, 5, 11, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);



-- Gossip menu for Androl Oakhand.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (185, 7, 356, 150, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (186, 7, 356, 225, 0, 0, 0);
DELETE FROM `gossip_menu` WHERE `entry`=5665;
INSERT INTO `gossip_menu` VALUES (5665, 6961, 0);
INSERT INTO `gossip_menu` VALUES (5665, 6960, 185);
INSERT INTO `gossip_menu` VALUES (5665, 6793, 186);
UPDATE `creature_template` SET `gossip_menu_id`=5665 WHERE `entry`=3607;


-- Visual effect when summoning paladin mount
DELETE FROM `spell_scripts` WHERE `id`=13819;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13819, 0, 15, 31726, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Warhorse - Cast Spell Summon Holy Mount Visual');
DELETE FROM `spell_scripts` WHERE `id`=23214;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (23214, 0, 15, 31726, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Charger - Cast Spell Summon Holy Mount Visual');

-- Visual effect when summoning warlock mount
DELETE FROM `spell_scripts` WHERE `id`=5784;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (5784, 0, 15, 31725, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Felsteed - Cast Spell Summon Nightmare');
DELETE FROM `spell_scripts` WHERE `id`=23161;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (23161, 0, 15, 31725, 6, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Dreadsteed - Cast Spell Summon Nightmare');












-- Events list for Vol'jin
DELETE FROM `creature_ai_events` WHERE `creature_id`=10540;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1054001, 10540, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1054001, 0, 0, 'Vol\'jin - Play Sound on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=1054001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1054001, 0, 16, 5881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vol\'jin - Play Aggro Sound');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (105400, 'Orgrimmar - Vol\'jin', 16097, 100, 1, 0, 0, 0, 8, 12, 18, 22, 0, 17289, 100, 1, 0, 0, 0, 6, 8, 8, 12, 0, 17146, 100, 4, 0, 0, 0, 3, 5, 14, 16, 0, 17820, 100, 0, 0, 0, 0, 12, 14, 22, 26, 0, 20463, 100, 1, 0, 0, 8, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=105400, `AIName`='EventAI', `ScriptName`='', `Leash`=85 WHERE `entry`=10540;

-- Events list for Thrall
DELETE FROM `creature_ai_events` WHERE `creature_id`=4949;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (494901, 4949, 0, 4, 0, 100, 0, 0, 0, 0, 0, 494901, 0, 0, 'Thrall - Play Sound on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=494901;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (494901, 0, 16, 5880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Play Aggro Sound');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (49490, 'Orgrimmar - Thrall', 16033, 100, 1, 0, 0, 0, 2, 2, 9, 9, 0, 16034, 100, 1, 0, 0, 0, 8, 8, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id`=3664, `spells_template`=49490, `AIName`='EventAI', `ScriptName`='', `Leash`=120 WHERE `entry`=4949;

-- Gossip menu for Thrall.
DELETE FROM `npc_gossip` WHERE `npc_guid`=4770;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (6566, 9, 6566, 1, 0, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (3664, 0, 0, 'Please share your wisdom with me, Warchief.', 8308, 1, 1, 3665, 0, 0, 0, 0, '', 0, 6566);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (3665, 0, 0, 'What discoveries?', 8310, 1, 1, 3666, 0, 0, 0, '', 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (3666, 0, 0, 'Usurper?', 8312, 1, 1, 3667, 0, 0, 0, '', 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (3667, 0, 0, 'With all due respect, Warchief - why not allow them to be destroyed? Does this not strengthen our position?', 8314, 1, 1, 3668, 0, 0, 0, '', 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (3668, 0, 0, 'I... I did not think of it that way, Warchief.', 8316, 1, 1, 3669, 0, 0, 0, '', 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (3669, 0, 0, 'I live only to serve, Warchief! My life is empty and meaningless without your guidance.', 8318, 1, 1, 3670, 0, 0, 0, '', 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (3670, 0, 0, 'Of course, Warchief!', 8320, 1, 1, -1, 0, 3670, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=3670;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3670, 0, 7, 6566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Complete Quest What the Wind Carries');
INSERT INTO `gossip_menu` VALUES 
(3665, 5733, 0),
(3666, 5734, 0),
(3667, 5735, 0),
(3668, 5736, 0),
(3669, 5737, 0),
(3670, 5738, 0);

-- Completion script for quest For The Horde!
UPDATE `quest_template` SET `CompleteScript`=4974 WHERE `entry`=4974;
DELETE FROM `script_texts` WHERE `entry`=-1900109;
UPDATE `broadcast_text` SET `Type`=6, `EmoteId0`=22 WHERE `ID`=6013;
DELETE FROM `script_texts` WHERE `entry`=-1900108;
UPDATE `broadcast_text` SET `Type`=6, `EmoteId0`=22 WHERE `ID`=6014;
DELETE FROM `script_texts` WHERE `entry`=-1900107;
UPDATE `broadcast_text` SET `Type`=6, `EmoteId0`=22 WHERE `ID`=6015;
DELETE FROM `quest_end_scripts` WHERE `id`=4974;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Thrall - Remove Gossip Flag');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 0, 10, 10719, 30000, 0, 0, 0, 0, 0, 0, 2, 10719, 6, 10, -462.404, -2637.68, 96.0656, 5.8606, 0, 'For The Horde: Thrall - Summon Creature Herald of Thrall');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6013, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Thrall - Say Text 1');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6014, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Thrall - Say Text 2');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 15, 16609, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Thrall - Cast Spell Warchief\'s Blessing');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 316.5, -4737.3, 9.56, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1881, -4518.5, 27.74, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1804.3, -4344.9, -2.9, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1931.2, -4279.3, 29.9, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1550.3, -4186.2, 40.95, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1543.2, -4413.9, 10.14, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, 1678.6, -4355.3, 61.73, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 15, 10, 21003, 10000, 0, 0, 0, 0, 0, 0, 2, 21003, 6, 10, -2356.8, -1932.5, 96, 0, 0, 'For The Horde: Thrall - Summon Creature Warchief Blessing Generator');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4974, 30, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Thrall - Add Gossip Flag');
DELETE FROM `event_scripts` WHERE `id`=10719;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10719, 0, 4, 46, 514, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Herald of Thrall - Add Unattackable Flag');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10719, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6013, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Herald of Thrall - Say Text 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10719, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6015, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Herald of Thrall - Say Text 2');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10719, 15, 15, 16609, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Herald of Thrall - Cast Spell Warchief\'s Blessing');
DELETE FROM `event_scripts` WHERE `id`=21003;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (21003, 0, 15, 16609, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'For The Horde: Warchief Blessing Generator - Cast Spell Warchief\'s Blessing');


-- Change type of death text for The Windreaver.
UPDATE `broadcast_text` SET `Type`=3 WHERE `ID`=9668;
-- Change type of spawn text for The Windreaver.
UPDATE `broadcast_text` SET `Type`=3 WHERE `ID`=9669;
-- Change type of OOC text for The Windreaver.
UPDATE `broadcast_text` SET `Type`=3 WHERE `ID`=9679;

-- Remove evade together flag from boss group.
UPDATE `creature_groups` SET `flags`=11 WHERE `leader_guid` IN (58000, 58100, 58300, 1184054);

4206
40002
40004
40007
40009
40012
40014
40017
40019
40022
40024
40027
40187
40288




-- Texts
DELETE FROM `script_texts` WHERE `entry` IN (-1000357, -1000358, -1000359);
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=8327;

-- Target Alive
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1000, 46, 0, 0, 0, 0, 2);

-- Waypoints
DELETE FROM `script_waypoint` WHERE `entry`=11856;
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(11856, 1, 113.91, -350.13, 4.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
(11856, 2, 109.54, -350.08, 3.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 3, 106.95, -353.4, 3.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 4, 100.28, -338.89, 2.97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 5, 110.11, -320.26, 3.47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 6, 109.78, -287.8, 5.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 7, 105.02, -269.71, 4.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 8, 86.71, -251.81, 5.34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 9, 64.1, -246.38, 5.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 10, -2.55, -243.58, 6.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 11, -27.78, -267.53, -1.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 12, -31.27, -283.54, -4.36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 13, -28.96, -322.44, -9.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 14, -35.63, -360.03, -16.59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 15, -58.3, -412.26, -30.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 16, -58.88, -474.17, -44.54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 17, -45.92, -496.57, -46.26, 5000, 1185617, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11856, 18, -40.25, -510.07, -46.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 19, -38.88, -520.72, -46.06, 5000, 1185619, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Waypoint Scripts
DELETE FROM `creature_movement_scripts` WHERE `id`=1185617;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8328, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185617, 2, 10, 11910, 30000, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, -50.75, -500.77, -46.13, 0.4, 0, 'Protect Kaya: Summon Creature Grimtotem Ruffian');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185617, 2, 10, 11912, 30000, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, -40.05, -510.89, -46.05, 1.7, 0, 'Protect Kaya: Summon Creature Grimtotem Brute');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185617, 2, 10, 11913, 30000, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, -32.21, -499.2, -45.35, 2.8, 0, 'Protect Kaya: Summon Creature Grimtotem Sorcerer');
DELETE FROM `creature_movement_scripts` WHERE `id`=1185619;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185619, 0, 62, 6523, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Complete Map Event');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1185619, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Move Idle');

-- Script when the quest is accepted.
DELETE FROM `quest_start_scripts` WHERE `id`=6523;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (6523, 0, 61, 6523, 900, 0, 0, 0, 0, 0, 8, 0, 652302, 1013, 652301, 0, 0, 0, 0, 0, 'Protect Kaya: Start Scripted Map Event');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (6523, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8327, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Say Text');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (6523, 1, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Remove Quest Giver Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (6523, 3, 22, 105, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Set Faction');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (6523, 4, 60, 3, 0, 0, 1, 0, 0, 0, 0, 0, 11856, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Start Waypoints');
UPDATE `quest_template` SET `StartScript`=6523 WHERE `entry`=6523;

-- Script when the quest fails.
DELETE FROM `event_scripts` WHERE `id`=652301;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (652301, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 'Protect Kaya: Kaya Flathoof - Despawn');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (652301, 0, 70, 6523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Fail Quest');

-- Script when the quest is completed.
DELETE FROM `event_scripts` WHERE `id`=652302;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (652302, 0, 7, 6523, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Complete Quest');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (652302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8329, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (652302, 3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kaya: Kaya Flathoof - Despawn');

-- Correct faction and remove hardcoded script.
UPDATE `creature_template` SET `faction`=104, `AIName`='', `ScriptName`='' WHERE `entry`=11856;







-- CLUCK HINTERLANDS


-- Assign script to quest.
UPDATE `quest_template` SET `StartScript`=836 WHERE `entry`=836;

-- Escort Conditions Source 60 Yards
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1014, 25, 1, 60, 0, 0, 0);

-- Waypoints
DELETE FROM `script_waypoint` WHERE `entry`=7806;
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(7806, 1, 495.404, -3478.35, 114.837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 2, 492.705, -3486.11, 108.627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 3, 487.25, -3485.76, 107.89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 4, 476.852, -3489.88, 99.985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 5, 467.212, -3493.36, 99.819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 6, 460.017, -3496.98, 104.481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 7, 439.619, -3500.73, 110.534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 8, 428.326, -3495.87, 118.662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 9, 424.664, -3489.38, 121.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 10, 424.137, -3470.95, 124.333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 11, 421.791, -3449.24, 119.126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 12, 404.247, -3429.38, 117.644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 13, 335.465, -3430.72, 116.456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 14, 317.16, -3426.71, 116.226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 15, 331.18, -3464, 117.143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 16, 336.394, -3501.88, 118.201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 17, 337.251, -3544.76, 117.284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 18, 337.749, -3565.42, 116.797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 19, 336.011, -3597.36, 118.225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 20, 324.619, -3622.88, 119.811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 21, 308.027, -3648.6, 123.047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 22, 276.325, -3685.74, 128.356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 23, 239.981, -3717.33, 131.874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 24, 224.951, -3730.17, 132.125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 25, 198.708, -3768.29, 129.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 26, 183.758, -3791.07, 128.045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 27, 178.111, -3801.58, 128.37, 3000, 780627, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(7806, 28, 162.215, -3827.01, 129.424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 29, 141.665, -3864.52, 131.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 30, 135.302, -3880.09, 132.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 31, 122.461, -3910.07, 135.605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 32, 103.376, -3937.73, 137.342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 33, 81.4145, -3958.61, 138.469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 34, 55.3781, -3982, 136.52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 35, 13.9831, -4013.95, 126.903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 36, -21.658, -4048.71, 118.068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 37, -52.4431, -4081.21, 117.477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 38, -102.711, -4116.76, 118.666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 39, -92.9962, -4135.85, 119.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 40, -86.3913, -4153.33, 122.502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 41, -85.7461, -4163.6, 121.892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 42, -90.544, -4183.58, 117.587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 43, -110.224, -4205.86, 121.878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 44, -115.258, -4211.96, 121.878, 3000, 780644, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(7806, 45, -128.595, -4233.34, 117.766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 46, -135.359, -4258.12, 117.562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 47, -156.832, -4258.96, 120.059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 48, -167.12, -4274.1, 117.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 49, -176.291, -4287.59, 118.721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 50, -196.993, -4315.82, 117.588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 51, -209.329, -4331.67, 115.142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 52, -232.292, -4356.02, 108.543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 53, -232.16, -4370.9, 102.815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 54, -210.271, -4389.9, 84.167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 55, -187.94, -4407.53, 70.987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 56, -181.354, -4418.77, 64.778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 57, -170.53, -4440.44, 58.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 58, -141.429, -4465.32, 45.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 59, -120.994, -4487.09, 32.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 60, -104.135, -4501.84, 25.051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 61, -84.1547, -4529.44, 11.952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 62, -88.6989, -4544.63, 9.055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 63, -100.603, -4575.03, 11.388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 64, -106.909, -4600.41, 11.046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7806, 65, -106.832, -4620.5, 11.057, 5000, 780665, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Waypoint Scripts
DELETE FROM `creature_movement_scripts` WHERE `id`=780627;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3797, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780627, 0, 10, 7808, 60000, 0, 0, 0, 0, 0, 0, 0, 83603, 6, 1, 143.336, -3849.527, 130.52, 1, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Summon Marauding Owl 1');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780627, 0, 10, 7808, 60000, 0, 0, 0, 0, 0, 0, 0, 83603, 6, 1, 147.95, -3852.233, 130.97, 1, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Summon Marauding Owl 2');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780627, 0, 10, 7808, 60000, 0, 0, 0, 0, 0, 0, 0, 83603, 6, 1, 152.579, -3854.917, 131.53, 1, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Summon Marauding Owl 3');
DELETE FROM `event_scripts` WHERE `id`=83603;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83603, 0, 3, 0, 0, 3, 2, 0, 0, 0, 0, 1, 0, 0, 0, 202.214, -3765.112, 129.82, 1, 0, 'Find OOX-09/HL!: Marauding Owlbeast - Move to Point');
DELETE FROM `creature_movement_scripts` WHERE `id`=780644;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3797, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Say Text');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780644, 0, 10, 7809, 60000, 0, 0, 0, 0, 0, 0, 0, 83604, 6, 1, -147.848, -4289.631, 118.6, 1.2, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Vilebranch Ambusher 1');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780644, 0, 10, 7809, 60000, 0, 0, 0, 0, 0, 0, 0, 83604, 6, 1, -143.828, -4290.666, 119.64, 1.3, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Vilebranch Ambusher 2');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780644, 0, 10, 7809, 60000, 0, 0, 0, 0, 0, 0, 0, 83604, 6, 1, -140.905, -4291.569, 120.215, 1.3, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Vilebranch Ambusher 3');
DELETE FROM `event_scripts` WHERE `id`=83604;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83604, 0, 3, 0, 0, 3, 2, 0, 0, 0, 0, 1, 0, 0, 0, -134.238, -4226.133, 117.981, 0, 0, 'Find OOX-09/HL!: Vilebranch Ambusher - Move to Point');
DELETE FROM `creature_movement_scripts` WHERE `id`=780665;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780665, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Move Idle');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780665, 0, 62, 836, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: End Scripted Map Event');

-- Events list for Homing Robot OOX-09/HL
DELETE FROM `creature_ai_events` WHERE `creature_id`=7806;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780601, 7806, 0, 4, 0, 100, 0, 0, 0, 0, 0, 780601, 0, 0, 'Homing Robot OOX-09/HL - Say Text on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780602, 7806, 0, 21, 0, 100, 0, 0, 0, 0, 0, 780602, 0, 0, 'Homing Robot OOX-09/HL - Stand Up on Reached Home');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780603, 7806, 0, 1, 1, 100, 1, 3000, 3000, 3000, 3000, 780603, 0, 0, 'Homing Robot OOX-09/HL - Assist Escorting Player (Phase 1)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780604, 7806, 0, 0, 1, 100, 1, 3000, 3000, 3000, 3000, 780603, 0, 0, 'Homing Robot OOX-09/HL - Assist Escorting Player (Phase 1) - Copy');
DELETE FROM `creature_ai_scripts` WHERE `id`=780601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3795, 3796, 0, 0, 0, 0, 0, 0, 0, 'Homing Robot OOX-09/HL - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=780602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780602, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Homing Robot OOX-09/HL - Stand Up');
DELETE FROM `creature_ai_scripts` WHERE `id`=780603;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780603, 0, 72, 0, 0, 0, 0, 836, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Homing Robot OOX-09/HL - Assist Player');

-- Events list for Marauding Owlbeast
DELETE FROM `creature_ai_events` WHERE `creature_id`=7808;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780801, 7808, 0, 2, 0, 100, 1, 30, 0, 120000, 125000, 780801, 0, 0, 'Marauding Owlbeast - Cast Enrage at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780802, 7808, 0, 29, 0, 100, 0, 8, 1, 0, 0, 780802, 0, 0, 'Marauding Owlbeast - Move Random on Reached Point');
DELETE FROM `creature_ai_scripts` WHERE `id`=780802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780802, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Marauding Owlbeast - Move Random');

-- Events list for Vilebranch Ambusher
DELETE FROM `creature_ai_events` WHERE `creature_id`=7809;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780901, 7809, 0, 2, 0, 100, 0, 15, 0, 0, 0, 780901, 0, 0, 'Vilebranch Ambusher - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (780902, 7809, 0, 29, 0, 100, 0, 8, 1, 0, 0, 780902, 0, 0, 'Vilebranch Ambusher - Move Random on Reached Point');
DELETE FROM `creature_ai_scripts` WHERE `id`=780902;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (780902, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Vilebranch Ambusher - Move Random');

-- Script when the quest is accepted.
DELETE FROM `quest_start_scripts` WHERE `id`=836;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 0, 61, 836, 1200, 0, 0, 0, 0, 0, 8, 0, 83602, 1014, 83601, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Start Scripted Map Event');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Stand Up');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3794, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Say Text');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 1, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Remove Quest Giver Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 3, 22, 113, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Set Faction');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 3, 60, 3, 0, 0, 1, 0, 0, 0, 0, 0, 7806, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Start Waypoints');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 3, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Set Phase to 1');

-- Script when the quest fails.
DELETE FROM `event_scripts` WHERE `id`=83601;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83601, 0, 70, 836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Fail Quest');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83601, 0, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Reset Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83601, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83601, 3, 71, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Respawn');

-- Script when the quest is completed.
DELETE FROM `event_scripts` WHERE `id`=83602;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83602, 0, 7, 836, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Complete Quest');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3816, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83602, 0, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Reset Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83602, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83602, 3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find OOX-09/HL!: Homing Robot OOX-09/HL - Despawn');

-- Assign script to Homing Robot OOX-09/HL.
UPDATE `creature_template` SET `AIName`='EventAI', `ScriptName`='' WHERE `entry`=7806;



