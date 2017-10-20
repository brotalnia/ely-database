-- Add missing rare creature Baron Bloodbane.
-- He dropped Royal Seal of Alexis prior to 1.3 and was near the naxxramas portal.
-- 1.3 Patch Notes: "Royal Seal of Alexis no longer drops off of Baron Bloodbane. It is now only obtainable via the quest Ramstein, no longer has a minimum level requirement, and is Bind on Acquire. Existing Royal Seal of Alexis items have not been changed."
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (10819, 0, 0, 6380, 0, 0, 0, 'Baron Bloodbane', NULL, 0, 59, 59, 3998, 3998, 0, 0, 3489, 16, 16, 0, 1, 1.14286, 1, 4, 100, 130, 0, 50, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 10819, 0, 0, 0, 0, 0, 0, 0, 0, 12555, 11734, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 10819, 0, 0, 8388624, 0, 0, '');
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (10819, 11019, 0, 0);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1081901, 10819, 13, 0, 100, 1, 10000, 12000, 0, 0, 11, 12555, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Bloodbane - Pummel Target');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4000, 37, 0, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 4338, 100, 0, 1, 5, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 4608, 50, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 2043, 20, 1, -2043, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 16999, 60, 0, 1, 1, 4000);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (66900, 10819, 0, 0, 10819, 3104.2, -3711.8, 132.547, 2.32201, 19800, 0, 0, 3998, 0, 0, 0, 0, 0, 0);

-- Add patch condition to Andorgos' gossip options.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4019, 37, 9, 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4719, -1, 717, 4019);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4720, -1, 718, 4019);
UPDATE `gossip_menu_option` SET `condition_id`=4719 WHERE `menu_id`=6644 && `id`=0;
UPDATE `gossip_menu_option` SET `condition_id`=4720 WHERE `menu_id`=6644 && `id`=1;

-- -- Add patch condition to Betina Bigglezink gossip options.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4015, 37, 5, 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (50414, -1, 4015, 50413);
UPDATE `gossip_menu_option` SET `condition_id`=50414 WHERE `menu_id`=3651 && `id` IN (1,2);

-- Nexus Crystal replaced Large Brilliant Shard
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4026, 37, 6, 2);
INSERT INTO `disenchant_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (64, 14344, 100, 0, 1, 1, 4026);
INSERT INTO `disenchant_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (65, 14344, 100, 0, 1, 2, 4026);

-- Despawn Dire Maul until 1.3.
UPDATE `creature` SET `patch_min`=1 WHERE `map`=429;
-- Despawn Blackwing Lair until 1.6.
UPDATE `creature` SET `patch_min`=4 WHERE `map`=469;
-- Despawn Zul'Gurub until 1.7.
UPDATE `creature` SET `patch_min`=5 WHERE `map`=309;
-- Despawn AQ20 (Ruins of AQ) until 1.9.
UPDATE `creature` SET `patch_min`=7 WHERE `map`=509;
-- Despawn AQ40 (Temple of AQ) until 1.9.
UPDATE `creature` SET `patch_min`=7 WHERE `map`=531;
-- Despawn Naxxramas until 1.11.
UPDATE `creature` SET `patch_min`=9 WHERE `map`=533;

-- Stables were changed in 1.4.
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95100;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95101;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95102;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95103;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95104;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95105;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95106;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95107;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95108;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95109;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95110;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95111;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95112;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95113;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95114;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95115;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95116;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95117;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95118;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95119;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95120;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95121;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95122;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95123;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95124;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95125;
UPDATE `creature` SET `patch_min`=2, `patch_max`=10 WHERE `guid`=95126;

-- Add old stables, spawned in 1.2 and 1.3.
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (174, 10179, 0, 0, 0, -5452.32, -613.089, 394.51, 4.29351, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (176, 11150, 0, 0, 0, -5447.83, -617.37, 394.511, 3.19395, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (4155, 4778, 0, 0, 0, -5532.46, -1358.99, 398.694, 3.04284, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (4156, 4780, 0, 0, 0, -5529.51, -1376.1, 398.789, 3.57943, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (6404, 7704, 1, 0, 0, -849.765, -4885.79, 21.8995, 1.15192, 180, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (6405, 7706, 1, 0, 0, -846.074, -4884.12, 21.2854, 2.54818, 180, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (6614, 4270, 1, 0, 0, 2161.67, -4648.08, 50.3632, 4.18879, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (6617, 359, 1, 0, 0, 2153.65, -4657.14, 49.9992, 1.51844, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (8465, 305, 1, 0, 0, -3848.56, -4402.28, 10.3649, 2.37365, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (14806, 306, 0, 0, 0, -781.823, -611.991, 15.2348, 2.25148, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (14807, 305, 0, 0, 0, -774.887, -606.126, 15.2348, 2.30383, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (24048, 306, 1, 0, 0, -3848.26, -4393.54, 10.2239, 5.44543, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (26644, 12148, 1, 0, 0, -2285.41, -389.98, -9.20741, 5.95157, 375, 0, 0, 500, 444, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (26654, 12151, 1, 0, 0, -2283.82, -394.645, -9.14653, 0.907571, 375, 0, 0, 500, 444, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (48577, 7322, 1, 0, 0, 10126.5, 2527.85, 1323.9, 3.1765, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (49183, 10322, 1, 0, 0, 10130.7, 2532.25, 1323.63, 4.10152, 300, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (81385, 306, 0, 0, 0, -9444.04, -1412.16, 46.9049, 1.72788, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (81388, 305, 0, 0, 0, -9438.08, -1411.84, 47.0352, 1.65806, 270, 0, 0, 64, 53, 0, 0, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (81391, 385, 0, 236, 0, -9456.64, -1386.59, 47.1554, 1.39626, 180, 0, 0, 64, 490, 0, 0, 0, 0, 1);
-- Creature addon for old stables.
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (6404, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (6405, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (6614, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (6617, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (8465, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (14806, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (14807, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (24048, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (26644, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (26654, 0, 0, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (48577, 0, 3, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (49183, 0, 3, 1, 16, 0, 0, NULL);
