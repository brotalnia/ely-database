-- These creatures had their factions changed in 1.11.
DELETE FROM `creature_template` WHERE `entry` IN (11102, 15102, 15105);
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (11102, 0, 0, 0, 10561, 0, 0, 0, 'Argent Rider', 'The Argent Dawn', 0, 60, 60, 4108, 4108, 0, 0, 4500, 814, 814, 0, 1.1, 1.14286, 0, 0, 96, 125, 0, 272, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 30, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 1083, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (11102, 9, 0, 0, 10561, 0, 0, 0, 'Argent Rider', 'The Argent Dawn', 0, 60, 60, 4108, 4108, 0, 0, 4500, 1625, 1625, 0, 1.1, 1.14286, 0, 0, 96, 125, 0, 272, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 30, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 1083, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (15102, 5, 0, 0, 15255, 0, 0, 0, 'Silverwing Emissary', NULL, 6508, 22, 22, 1042, 1042, 0, 0, 852, 1514, 1514, 2049, 1.03, 1.14286, 0, 0, 62, 75, 0, 98, 1, 1790, 1969, 0, 0, 0, 0, 0, 0, 0, 0, 34.6544, 47.6498, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 37, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (15102, 9, 0, 0, 15255, 0, 0, 0, 'Silverwing Emissary', NULL, 6508, 22, 22, 1042, 1042, 0, 0, 852, 1642, 1642, 2049, 1.03, 1.14286, 0, 0, 62, 75, 0, 98, 1, 1790, 1969, 0, 0, 0, 0, 0, 0, 0, 0, 34.6544, 47.6498, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 37, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (15105, 5, 0, 0, 15247, 0, 0, 0, 'Warsong Emissary', NULL, 6490, 30, 30, 1605, 1605, 852, 852, 1004, 1515, 1515, 2049, 1.08, 1.14286, 0, 0, 59, 80, 0, 122, 1, 2000, 2000, 2, 4352, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (15105, 9, 0, 0, 15247, 0, 0, 0, 'Warsong Emissary', NULL, 6490, 30, 30, 1605, 1605, 852, 852, 1004, 1641, 1641, 2049, 1.08, 1.14286, 0, 0, 59, 80, 0, 122, 1, 2000, 2000, 2, 4352, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 1, 0, 0, 0, 0, 0, 2, '');
UPDATE `creature` SET `patch_min`=5 WHERE `id` IN (15102, 15105);
UPDATE `creature_addon` SET `patch`=5 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (15102, 15105));
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry` IN (15102, 15105);

-- Objects added in 1.11.
UPDATE `gameobject_template` SET `patch`=9 WHERE `entry` IN (300066, 181206, 300068, 181146);
UPDATE `gameobject` SET `patch_min`=9 WHERE `id` IN (300066, 181206, 300068, 181146);

-- Models from 1.11.
UPDATE `creature_model_info` SET `patch`=5464 WHERE `modelid` IN (15928, 15929, 15931, 15937, 15938, 15939, 15940, 15941, 15942, 15945, 15946, 15958, 15960, 15961, 15962, 15963, 15964, 15969, 15970, 15971, 15978, 15983, 16012, 16013, 16014, 16015, 16016, 16024, 16026, 16027, 16028, 16029, 16030, 16032, 16033, 16034, 16035, 16060, 16063, 16064, 16066, 16074, 16075, 16076, 16077, 16078, 16081, 16082, 16093, 16094, 16095, 16096, 16102, 16104, 16105, 16106, 16107, 16108, 16109, 16110, 16111, 16129, 16130, 16131, 16132, 16135, 16136, 16137, 16138, 16139, 16143, 16144, 16145, 16146, 16147, 16148, 16149, 16150, 16151, 16152, 16153, 16154, 16155, 16156, 16157, 16158, 16159, 16160, 16161, 16162, 16163, 16164, 16167, 16168, 16169, 16170, 16171, 16172, 16173, 16174, 16175, 16176, 16177, 16178, 16179, 16180, 16181, 16188, 16191, 16197, 16204, 16205, 16212, 16213, 16218, 16219, 16220, 16221, 16229, 16230, 16231, 16232, 16233, 16234, 16235, 16236, 16237, 16238, 16239, 16240, 16252, 16279, 16282, 16309, 16326, 16327, 16328, 16329, 16334, 16335, 16336, 16337, 16338, 16339, 16340, 16341, 16354, 16355, 16356, 16357, 16358, 16359, 16360, 16361, 16412, 16413, 16414, 16431, 16432, 16433, 16434, 16435, 16436, 16438, 16442, 16443, 16444, 16445, 16446, 16447, 16448, 16508, 16513, 16528, 16533, 16534, 16539, 16541, 16582, 16585, 16586, 16587, 16590, 16594, 16595, 16596, 16597, 16598, 16599, 16600, 16601, 16603, 16604, 16605, 16606, 16607, 16608, 16609, 16611, 16612, 16614, 16622, 16916, 16925, 16927, 16937, 16938, 16939);

-- These items used a different spell id before 1.11.
-- https://web.archive.org/web/20060527151647/http://wow.allakhazam.com:80/db/item.html?witem=3087
DELETE FROM `item_template` WHERE `entry`=3087;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES (3087, 0, 0, 0, 'Mug of Shimmer Stout', 18115, 1, 0, 1, 45, 11, 0, 2047, 255, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 437, 0, -1, 0, -1, 4, 120000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 7, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES (3087, 9, 0, 0, 'Mug of Shimmer Stout', 18115, 1, 0, 1, 45, 11, 0, 2047, 255, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29236, 0, -1, 0, -1, 4, 120000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 7, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);
-- https://web.archive.org/web/20050323200434/http://wow.allakhazam.com:80/db/item.html?witem=13509
DELETE FROM `item_template` WHERE `entry`=13509;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES (13509, 0, 0, 0, 'Clutch of Foresight', 7247, 2, 0, 1, 21573, 5393, 0, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2139, 0, -1, 0, -1, 29, 180000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES (13509, 9, 0, 0, 'Clutch of Foresight', 7247, 2, 0, 1, 21573, 5393, 0, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29443, 0, -1, 0, -1, 24, 60000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);

ALTER TABLE `spell_bonus_data`
	ADD COLUMN `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry'  AFTER `comments`,
	ADD COLUMN `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry'  AFTER `build_min`;

-- These spells were added in 1.11 or had a different effect then.
UPDATE `spell_chain` SET `build_min`=5464 WHERE `spell_id` IN (28609, 28612, 29228);
UPDATE `spell_proc_event` SET `build_min`=5464 WHERE `entry` IN (11180, 23551, 23572, 28716, 28719, 28744, 28752, 28789, 28809, 28812, 28816, 28823, 28847, 28849, 29062, 29074, 29150, 29441, 29501, 30003, 30160);
UPDATE `spell_bonus_data` SET `build_min`=5464 WHERE `entry` IN (980, 10797, 29155, 29151);
UPDATE `spell_target_position` SET `build_min`=5464 WHERE `id` IN (29237, 28147, 29181, 29190, 28444, 29273, 29318, 28026, 28025, 30211, 29268, 29256, 29239, 29226, 29267, 29262, 29258, 29257, 29255, 29238, 29227, 29225, 29224, 29217, 29249, 29248, 29247, 29216, 29231, 28280);
UPDATE `spell_affect` SET `build_min`=5464 WHERE `entry` IN (11242, 11247, 12285, 12288, 12288, 12301, 12467, 12469, 12593, 12697, 12707, 12707, 12818, 12842, 15058, 15059, 15060, 16038, 16043, 16043, 16086, 16086, 16086, 16130, 16130, 16160, 16161, 16166, 16166, 16173, 16184, 16184, 16189, 16209, 16222, 16223, 16224, 16225, 16258, 16258, 16259, 16259, 16293, 16293, 16295, 16295, 16544, 20575, 23300, 27853, 27855, 28743, 28854, 28856, 28857);
UPDATE `spell_affect` SET `build_min`=5464 WHERE `entry` IN (16106, 16266, 26118, 28539, 28682, 28746, 28751, 28755, 28763, 28774, 28787, 28807, 28808, 28811, 28814, 28815, 28818, 28821, 28829, 28830, 28831, 28842, 28843, 28844, 28852, 28852, 28855, 28999, 29000, 29005, 29063, 29079, 29079, 29079, 29080, 29080, 29080, 29171, 29187, 29189, 29191, 29192, 29192, 29193, 29193, 29202, 29205, 29206, 29438, 29439, 29440, 30440, 30441);

-- Ironbark Protector did not have entangling roots before 1.11.
-- https://web.archive.org/web/20071101001926/http://wow.allakhazam.com:80/db/mob.html?wmob=11459
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1145902, 1145903);
DELETE FROM `creature_ai_events` WHERE `creature_id`=11459;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (11459, 1, 0, 0, 13489, 0, 0, 0, 'Ironbark Protector', NULL, 0, 57, 59, 16446, 17908, 0, 0, 6796, 91, 91, 0, 1, 1.14286, 1.5, 1, 361, 467, 0, 268, 1, 1166, 1283, 0, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 4, 8, 11459, 0, 0, 0, 0, 0, 0, 0, 0, 5568, 18670, 0, 0, 114590, 0, 859, 1127, '', 1, 3, 0, 0, 1, 0, 0, 0, 16384, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (11459, 9, 0, 0, 13489, 0, 0, 0, 'Ironbark Protector', NULL, 0, 57, 59, 16446, 17908, 0, 0, 6796, 91, 91, 0, 1, 1.14286, 1.5, 1, 361, 467, 0, 268, 1, 1166, 1283, 0, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 4, 8, 11459, 0, 0, 0, 0, 0, 0, 0, 0, 5568, 18670, 28858, 0, 114591, 0, 859, 1127, '', 1, 3, 0, 0, 1, 0, 0, 0, 16384, 0, 0, '');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (114590, 'Dire Maul - Ironbark Protector (Pre-1.11)', 5568, 100, 0, 0, 0, 0, 4, 6, 6, 18, 0, 18670, 100, 1, 0, 0, 0, 7, 9, 14, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (114591, 'Dire Maul - Ironbark Protector (Post-1.11)', 5568, 100, 0, 0, 0, 0, 4, 6, 6, 18, 0, 18670, 100, 1, 0, 0, 0, 7, 9, 14, 18, 0, 28858, 100, 1, 0, 0, 0, 9, 12, 19, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- This creature was added in 1.11 for the scourge invasion.
UPDATE `creature_template` SET `patch`=9 WHERE `entry`=14690;
UPDATE `creature` SET `patch_min`=9 WHERE `id`=14690;
UPDATE `creature_loot_template` SET `patch_min`=9 WHERE `entry`=14690;
UPDATE `creature_template_addon` SET `patch`=9 WHERE `entry`=14690;

-- These creatures have the wrong spell id assigned.
UPDATE `creature_template` SET `spell1`=16145 WHERE `entry`=1048;
UPDATE `creature_template` SET `spell1`=20743 WHERE `entry`=2425;
UPDATE `creature_template` SET `PetSpellDataId`=5801 WHERE `entry`=3619;
UPDATE `creature_template` SET `spell1`=0 WHERE `entry`=6243;
UPDATE `creature_template` SET `spell2`=16145 WHERE `entry`=8893;
UPDATE `creature_template` SET `spell2`=24616 WHERE `entry`=10479;
UPDATE `creature_template` SET `spell2`=24616 WHERE `entry`=10497;
UPDATE `creature_template` SET `spell2`=19983 WHERE `entry`=13020;
UPDATE `creature_template` SET `spell1`=20603, `minmana`=9736, `maxmana`=9736 WHERE `entry`=14521;

-- Set school immune mask for Atal'ai Deathwalker's Spirit instead of using a spell.
UPDATE `creature_template` SET `SchoolImmuneMask`=127 WHERE `entry`=8317;
DELETE FROM `creature_template_addon` WHERE `entry`=8317;

-- This npc uses the wrong mount id.
UPDATE `creature_template_addon` SET `mount`=10718 WHERE `entry`=10939;

-- These spawns appear to be wrong. Humanoids in the air.
DELETE FROM `creature` WHERE `guid` IN (53267, 54220);
DELETE FROM `creature_addon` WHERE `guid` IN (53267, 54220);

-- Transitions for taxi paths added in 1.11.
UPDATE `taxi_path_transitions` SET `build_min`=5464 WHERE `build_min`=0 && `inPath` IN (487, 486, 485, 484, 482, 481, 478, 477, 476, 474, 471, 470, 469, 467, 468, 466, 461, 460, 455, 454, 453, 452, 451, 450, 449, 465, 462, 473, 459, 458, 475, 464, 456);
UPDATE `taxi_path_transitions` SET `build_min`=5464 WHERE `build_min`=0 && `outPath` IN (487, 486, 485, 484, 482, 481, 478, 477, 476, 474, 471, 470, 469, 467, 468, 466, 461, 460, 455, 454, 453, 452, 451, 450, 449, 465, 462, 473, 459, 458, 475, 464, 456);

-- Proper name for column.
ALTER TABLE `creature_model_info`
	CHANGE COLUMN `patch` `build` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Game client build in which this exact version was added' AFTER `modelid`;

UPDATE `creature` SET `modelid`=0 WHERE `guid` IN (53944, 53945);
DELETE FROM `creature_model_info` WHERE `modelid`=10727;
INSERT INTO `creature_model_info` (`modelid`, `build`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_other_team`) VALUES (10727, 0, 2, 1.5, 0, 0, 0);
INSERT INTO `creature_model_info` (`modelid`, `build`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_other_team`) VALUES (10727, 5464, 2, 1.5, 0, 16150, 0);

-- Add build columns to trainer tables.
ALTER TABLE `npc_trainer`
	ADD COLUMN `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `reqlevel`,
	ADD COLUMN `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `npc_trainer_template`
	ADD COLUMN `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `reqlevel`,
	ADD COLUMN `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;


-- Add minimum patch to taverns added in 1.11.
ALTER TABLE `areatrigger_tavern`
	ADD COLUMN `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `name`;
UPDATE `areatrigger_tavern` SET `patch_min`=9 WHERE `id` IN (4058, 4090);

-- Add comments explaining build and patch columns.
ALTER TABLE `areatrigger_teleport`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `id`;
ALTER TABLE `battleground_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `id`;
ALTER TABLE `creature_addon`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `guid`;
ALTER TABLE `creature_equip_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `creature`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `visibilitymod`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `creature_involvedrelation`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `quest`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `creature_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `creature_questrelation`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `quest`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `creature_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `creature_template_addon`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `disenchant_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `faction`
	CHANGE COLUMN `build` `build` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Game client build for which to load this entry' AFTER `ID`;
ALTER TABLE `faction_template`
	CHANGE COLUMN `build` `build` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Game client build for which to load this entry' AFTER `ID`;
ALTER TABLE `fishing_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `gameobject`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `visibilitymod`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `gameobject_involvedrelation`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `quest`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `gameobject_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `gameobject_questrelation`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `quest`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `gameobject_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `game_event`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to enable this event' AFTER `disabled`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to enable this event' AFTER `patch_min`;
ALTER TABLE `game_event_quest`
	CHANGE COLUMN `patch` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `event`;
ALTER TABLE `game_graveyard_zone`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `faction`;
ALTER TABLE `item_display_info`
	CHANGE COLUMN `field0` `ID` INT(11) NOT NULL FIRST,
	CHANGE COLUMN `field5` `icon` VARCHAR(255) NULL DEFAULT NULL AFTER `ID`;
ALTER TABLE `item_enchantment_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `chance`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `item_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `item_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `mail_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `map_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `Entry`;
ALTER TABLE `pickpocketing_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `pool_creature`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `flags`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `pool_gameobject`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `flags`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `pool_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `instance`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `quest_template`
	CHANGE COLUMN `patch` `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Content patch in which this exact version of the entry was added' AFTER `entry`;
ALTER TABLE `reference_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `skinning_loot_template`
	CHANGE COLUMN `patch_min` `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum content patch to load this entry' AFTER `condition_id`,
	CHANGE COLUMN `patch_max` `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '10' COMMENT 'Maximum content patch to load this entry' AFTER `patch_min`;
ALTER TABLE `spell_affect`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `SpellFamilyMask`,
	CHANGE COLUMN `build_max` `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `spell_chain`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `req_spell`,
	CHANGE COLUMN `build_max` `build_max` SMALLINT(4) NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `spell_learn_spell`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `Active`,
	CHANGE COLUMN `build_max` `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `spell_proc_event`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `Cooldown`,
	CHANGE COLUMN `build_max` `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `spell_target_position`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `target_orientation`,
	CHANGE COLUMN `build_max` `build_max` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Maximum game client build to load this entry' AFTER `build_min`;
ALTER TABLE `taxi_nodes`
	CHANGE COLUMN `build` `build` SMALLINT(4) UNSIGNED NOT NULL COMMENT 'Game client build for which to load this entry' AFTER `ID`;
ALTER TABLE `taxi_path_transitions`
	CHANGE COLUMN `build_min` `build_min` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimum game client build to load this entry' AFTER `comment`;
ALTER TABLE `spell_template`
	CHANGE COLUMN `build` `build` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '5875' COMMENT 'Game client build for which to load this entry' AFTER `ID`,
	CHANGE COLUMN `school` `school` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Resistances.dbc' AFTER `build`,
	CHANGE COLUMN `category` `category` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc' AFTER `school`,
	CHANGE COLUMN `castUI` `castUI` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `category`,
	CHANGE COLUMN `dispel` `dispel` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellDispelType.dbc' AFTER `castUI`,
	CHANGE COLUMN `mechanic` `mechanic` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellMechanic.dbc' AFTER `dispel`,
	CHANGE COLUMN `attributes` `attributes` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `mechanic`,
	CHANGE COLUMN `attributesEx` `attributesEx` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `attributes`,
	CHANGE COLUMN `attributesEx2` `attributesEx2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `attributesEx`,
	CHANGE COLUMN `attributesEx3` `attributesEx3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `attributesEx2`,
	CHANGE COLUMN `attributesEx4` `attributesEx4` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `attributesEx3`,
	CHANGE COLUMN `stances` `stances` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellShapeshiftForm.dbc' AFTER `attributesEx4`,
	CHANGE COLUMN `stancesNot` `stancesNot` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellShapeshiftForm.dbc' AFTER `stances`,
	CHANGE COLUMN `targets` `targets` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `stancesNot`,
	CHANGE COLUMN `targetCreatureType` `targetCreatureType` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'CreatureType.dbc' AFTER `targets`,
	CHANGE COLUMN `requiresSpellFocus` `requiresSpellFocus` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellFocusObject.dbc' AFTER `targetCreatureType`,
	CHANGE COLUMN `casterAuraState` `casterAuraState` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `requiresSpellFocus`,
	CHANGE COLUMN `targetAuraState` `targetAuraState` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `casterAuraState`,
	CHANGE COLUMN `castingTimeIndex` `castingTimeIndex` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellCastTimes.dbc' AFTER `targetAuraState`,
	CHANGE COLUMN `recoveryTime` `recoveryTime` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `castingTimeIndex`,
	CHANGE COLUMN `categoryRecoveryTime` `categoryRecoveryTime` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `recoveryTime`,
	CHANGE COLUMN `interruptFlags` `interruptFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `categoryRecoveryTime`,
	CHANGE COLUMN `auraInterruptFlags` `auraInterruptFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `interruptFlags`,
	CHANGE COLUMN `channelInterruptFlags` `channelInterruptFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `auraInterruptFlags`,
	CHANGE COLUMN `procFlags` `procFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `channelInterruptFlags`,
	CHANGE COLUMN `procChance` `procChance` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `procFlags`,
	CHANGE COLUMN `procCharges` `procCharges` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `procChance`;
ALTER TABLE `spell_template`
	CHANGE COLUMN `maxLevel` `maxLevel` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `procCharges`,
	CHANGE COLUMN `baseLevel` `baseLevel` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxLevel`,
	CHANGE COLUMN `spellLevel` `spellLevel` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `baseLevel`,
	CHANGE COLUMN `durationIndex` `durationIndex` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellDuration.dbc' AFTER `spellLevel`,
	CHANGE COLUMN `powerType` `powerType` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `durationIndex`,
	CHANGE COLUMN `manaCost` `manaCost` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `powerType`,
	CHANGE COLUMN `manCostPerLevel` `manCostPerLevel` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `manaCost`,
	CHANGE COLUMN `manaPerSecond` `manaPerSecond` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `manCostPerLevel`,
	CHANGE COLUMN `manaPerSecondPerLevel` `manaPerSecondPerLevel` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `manaPerSecond`,
	CHANGE COLUMN `rangeIndex` `rangeIndex` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellRange.dbc' AFTER `manaPerSecondPerLevel`,
	CHANGE COLUMN `speed` `speed` FLOAT NOT NULL DEFAULT '0' AFTER `rangeIndex`,
	CHANGE COLUMN `modelNextSpell` `modelNextSpell` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `speed`,
	CHANGE COLUMN `stackAmount` `stackAmount` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `modelNextSpell`,
	CHANGE COLUMN `totem1` `totem1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `stackAmount`,
	CHANGE COLUMN `totem2` `totem2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `totem1`,
	CHANGE COLUMN `reagent1` `reagent1` INT(4) NOT NULL DEFAULT '0' AFTER `totem2`,
	CHANGE COLUMN `reagent2` `reagent2` INT(4) NOT NULL DEFAULT '0' AFTER `reagent1`,
	CHANGE COLUMN `reagent3` `reagent3` INT(4) NOT NULL DEFAULT '0' AFTER `reagent2`,
	CHANGE COLUMN `reagent4` `reagent4` INT(4) NOT NULL DEFAULT '0' AFTER `reagent3`,
	CHANGE COLUMN `reagent5` `reagent5` INT(4) NOT NULL DEFAULT '0' AFTER `reagent4`,
	CHANGE COLUMN `reagent6` `reagent6` INT(4) NOT NULL DEFAULT '0' AFTER `reagent5`,
	CHANGE COLUMN `reagent7` `reagent7` INT(4) NOT NULL DEFAULT '0' AFTER `reagent6`,
	CHANGE COLUMN `reagent8` `reagent8` INT(4) NOT NULL DEFAULT '0' AFTER `reagent7`,
	CHANGE COLUMN `reagentCount1` `reagentCount1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagent8`,
	CHANGE COLUMN `reagentCount2` `reagentCount2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount1`,
	CHANGE COLUMN `reagentCount3` `reagentCount3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount2`,
	CHANGE COLUMN `reagentCount4` `reagentCount4` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount3`,
	CHANGE COLUMN `reagentCount5` `reagentCount5` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount4`,
	CHANGE COLUMN `reagentCount6` `reagentCount6` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount5`,
	CHANGE COLUMN `reagentCount7` `reagentCount7` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount6`,
	CHANGE COLUMN `reagentCount8` `reagentCount8` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `reagentCount7`,
	CHANGE COLUMN `equippedItemClass` `equippedItemClass` INT(4) NOT NULL DEFAULT '0' COMMENT 'ItemClass.dbc' AFTER `reagentCount8`,
	CHANGE COLUMN `equippedItemSubClassMask` `equippedItemSubClassMask` INT(4) NOT NULL DEFAULT '0' COMMENT 'ItemSubClass.dbc' AFTER `equippedItemClass`,
	CHANGE COLUMN `equippedItemInventoryTypeMask` `equippedItemInventoryTypeMask` INT(4) NOT NULL DEFAULT '0' AFTER `equippedItemSubClassMask`,
	CHANGE COLUMN `effect1` `effect1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `equippedItemInventoryTypeMask`,
	CHANGE COLUMN `effect2` `effect2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effect1`,
	CHANGE COLUMN `effect3` `effect3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effect2`,
	CHANGE COLUMN `effectDieSides1` `effectDieSides1` INT(4) NOT NULL DEFAULT '0' AFTER `effect3`,
	CHANGE COLUMN `effectDieSides2` `effectDieSides2` INT(4) NOT NULL DEFAULT '0' AFTER `effectDieSides1`,
	CHANGE COLUMN `effectDieSides3` `effectDieSides3` INT(4) NOT NULL DEFAULT '0' AFTER `effectDieSides2`,
	CHANGE COLUMN `effectBaseDice1` `effectBaseDice1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectDieSides3`,
	CHANGE COLUMN `effectBaseDice2` `effectBaseDice2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectBaseDice1`,
	CHANGE COLUMN `effectBaseDice3` `effectBaseDice3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectBaseDice2`,
	CHANGE COLUMN `effectDicePerLevel1` `effectDicePerLevel1` FLOAT NOT NULL DEFAULT '0' AFTER `effectBaseDice3`,
	CHANGE COLUMN `effectDicePerLevel2` `effectDicePerLevel2` FLOAT NOT NULL DEFAULT '0' AFTER `effectDicePerLevel1`,
	CHANGE COLUMN `effectDicePerLevel3` `effectDicePerLevel3` FLOAT NOT NULL DEFAULT '0' AFTER `effectDicePerLevel2`,
	CHANGE COLUMN `effectRealPointsPerLevel1` `effectRealPointsPerLevel1` FLOAT NOT NULL DEFAULT '0' AFTER `effectDicePerLevel3`,
	CHANGE COLUMN `effectRealPointsPerLevel2` `effectRealPointsPerLevel2` FLOAT NOT NULL DEFAULT '0' AFTER `effectRealPointsPerLevel1`,
	CHANGE COLUMN `effectRealPointsPerLevel3` `effectRealPointsPerLevel3` FLOAT NOT NULL DEFAULT '0' AFTER `effectRealPointsPerLevel2`,
	CHANGE COLUMN `effectBasePoints1` `effectBasePoints1` INT(4) NOT NULL DEFAULT '0' AFTER `effectRealPointsPerLevel3`,
	CHANGE COLUMN `effectBasePoints2` `effectBasePoints2` INT(4) NOT NULL DEFAULT '0' AFTER `effectBasePoints1`,
	CHANGE COLUMN `effectBasePoints3` `effectBasePoints3` INT(4) NOT NULL DEFAULT '0' AFTER `effectBasePoints2`,
	CHANGE COLUMN `effectMechanic1` `effectMechanic1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectBasePoints3`,
	CHANGE COLUMN `effectMechanic2` `effectMechanic2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectMechanic1`,
	CHANGE COLUMN `effectMechanic3` `effectMechanic3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectMechanic2`,
	CHANGE COLUMN `effectImplicitTargetA1` `effectImplicitTargetA1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectMechanic3`,
	CHANGE COLUMN `effectImplicitTargetA2` `effectImplicitTargetA2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectImplicitTargetA1`,
	CHANGE COLUMN `effectImplicitTargetA3` `effectImplicitTargetA3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectImplicitTargetA2`,
	CHANGE COLUMN `effectImplicitTargetB1` `effectImplicitTargetB1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectImplicitTargetA3`,
	CHANGE COLUMN `effectImplicitTargetB2` `effectImplicitTargetB2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectImplicitTargetB1`,
	CHANGE COLUMN `effectImplicitTargetB3` `effectImplicitTargetB3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectImplicitTargetB2`,
	CHANGE COLUMN `effectRadiusIndex1` `effectRadiusIndex1` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellRadius.dbc' AFTER `effectImplicitTargetB3`,
	CHANGE COLUMN `effectRadiusIndex2` `effectRadiusIndex2` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellRadius.dbc' AFTER `effectRadiusIndex1`,
	CHANGE COLUMN `effectRadiusIndex3` `effectRadiusIndex3` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellRadius.dbc' AFTER `effectRadiusIndex2`,
	CHANGE COLUMN `effectApplyAuraName1` `effectApplyAuraName1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectRadiusIndex3`,
	CHANGE COLUMN `effectApplyAuraName2` `effectApplyAuraName2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectApplyAuraName1`,
	CHANGE COLUMN `effectApplyAuraName3` `effectApplyAuraName3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectApplyAuraName2`,
	CHANGE COLUMN `effectAmplitude1` `effectAmplitude1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectApplyAuraName3`,
	CHANGE COLUMN `effectAmplitude2` `effectAmplitude2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectAmplitude1`,
	CHANGE COLUMN `effectAmplitude3` `effectAmplitude3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectAmplitude2`,
	CHANGE COLUMN `effectMultipleValue1` `effectMultipleValue1` FLOAT NOT NULL DEFAULT '0' AFTER `effectAmplitude3`,
	CHANGE COLUMN `effectMultipleValue2` `effectMultipleValue2` FLOAT NOT NULL DEFAULT '0' AFTER `effectMultipleValue1`,
	CHANGE COLUMN `effectMultipleValue3` `effectMultipleValue3` FLOAT NOT NULL DEFAULT '0' AFTER `effectMultipleValue2`,
	CHANGE COLUMN `effectChainTarget1` `effectChainTarget1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectMultipleValue3`,
	CHANGE COLUMN `effectChainTarget2` `effectChainTarget2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectChainTarget1`,
	CHANGE COLUMN `effectChainTarget3` `effectChainTarget3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectChainTarget2`,
	CHANGE COLUMN `effectItemType1` `effectItemType1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectChainTarget3`,
	CHANGE COLUMN `effectItemType2` `effectItemType2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectItemType1`,
	CHANGE COLUMN `effectItemType3` `effectItemType3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectItemType2`,
	CHANGE COLUMN `effectMiscValue1` `effectMiscValue1` INT(4) NOT NULL DEFAULT '0' AFTER `effectItemType3`,
	CHANGE COLUMN `effectMiscValue2` `effectMiscValue2` INT(4) NOT NULL DEFAULT '0' AFTER `effectMiscValue1`,
	CHANGE COLUMN `effectMiscValue3` `effectMiscValue3` INT(4) NOT NULL DEFAULT '0' AFTER `effectMiscValue2`,
	CHANGE COLUMN `effectTriggerSpell1` `effectTriggerSpell1` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectMiscValue3`,
	CHANGE COLUMN `effectTriggerSpell2` `effectTriggerSpell2` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectTriggerSpell1`;
ALTER TABLE `spell_template`
	CHANGE COLUMN `effectTriggerSpell3` `effectTriggerSpell3` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `effectTriggerSpell2`,
	CHANGE COLUMN `effectPointsPerComboPoint1` `effectPointsPerComboPoint1` FLOAT NOT NULL DEFAULT '0' AFTER `effectTriggerSpell3`,
	CHANGE COLUMN `effectPointsPerComboPoint2` `effectPointsPerComboPoint2` FLOAT NOT NULL DEFAULT '0' AFTER `effectPointsPerComboPoint1`,
	CHANGE COLUMN `effectPointsPerComboPoint3` `effectPointsPerComboPoint3` FLOAT NOT NULL DEFAULT '0' AFTER `effectPointsPerComboPoint2`,
	CHANGE COLUMN `spellVisual1` `spellVisual1` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellVisual.dbc' AFTER `effectPointsPerComboPoint3`,
	CHANGE COLUMN `spellVisual2` `spellVisual2` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellVisual.dbc' AFTER `spellVisual1`,
	CHANGE COLUMN `spellIconId` `spellIconId` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellIcon.dbc' AFTER `spellVisual2`,
	CHANGE COLUMN `activeIconId` `activeIconId` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'SpellIcon.dbc' AFTER `spellIconId`,
	CHANGE COLUMN `spellPriority` `spellPriority` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `activeIconId`,
	CHANGE COLUMN `nameFlags` `nameFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `name8`,
	CHANGE COLUMN `nameSubtextFlags` `nameSubtextFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `nameSubtext8`,
	CHANGE COLUMN `descriptionFlags` `descriptionFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `description8`,
	CHANGE COLUMN `auraDescriptionFlags` `auraDescriptionFlags` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `auraDescription8`,
	CHANGE COLUMN `manaCostPercentage` `manaCostPercentage` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `auraDescriptionFlags`,
	CHANGE COLUMN `startRecoveryCategory` `startRecoveryCategory` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `manaCostPercentage`,
	CHANGE COLUMN `startRecoveryTime` `startRecoveryTime` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `startRecoveryCategory`,
	CHANGE COLUMN `spellFamilyName` `spellFamilyName` INT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ChrClasses.dbc' AFTER `maxTargetLevel`,
	CHANGE COLUMN `spellFamilyFlags` `spellFamilyFlags` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' AFTER `spellFamilyName`,
	CHANGE COLUMN `maxAffectedTargets` `maxAffectedTargets` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `spellFamilyFlags`,
	CHANGE COLUMN `dmgClass` `dmgClass` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxAffectedTargets`,
	CHANGE COLUMN `preventionType` `preventionType` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `dmgClass`,
	CHANGE COLUMN `stanceBarOrder` `stanceBarOrder` INT(4) NOT NULL DEFAULT '0' AFTER `preventionType`,
	CHANGE COLUMN `dmgMultiplier1` `dmgMultiplier1` FLOAT NOT NULL DEFAULT '0' AFTER `stanceBarOrder`,
	CHANGE COLUMN `dmgMultiplier2` `dmgMultiplier2` FLOAT NOT NULL DEFAULT '0' AFTER `dmgMultiplier1`,
	CHANGE COLUMN `dmgMultiplier3` `dmgMultiplier3` FLOAT NOT NULL DEFAULT '0' AFTER `dmgMultiplier2`,
	CHANGE COLUMN `minFactionId` `minFactionId` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `dmgMultiplier3`,
	CHANGE COLUMN `minReputation` `minReputation` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `minFactionId`,
	CHANGE COLUMN `requiredAuraVision` `requiredAuraVision` INT(4) UNSIGNED NOT NULL DEFAULT '0' AFTER `minReputation`;

-- Fix spirit healer before 1.11.
DELETE FROM `creature_template` WHERE `entry`=6491;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (6491, 0, 0, 0, 5233, 0, 0, 0, 'Spirit Healer', '', 0, 60, 60, 7680, 7680, 0, 0, 8401, 35, 35, 33, 1.1, 1.14286, 0, 0, 164, 212, 0, 272, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 2621798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (6491, 9, 0, 0, 5233, 0, 0, 0, 'Spirit Healer', '', 0, 60, 60, 7680, 7680, 0, 0, 8401, 35, 35, 33, 1.1, 1.14286, 0, 0, 164, 212, 0, 272, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');

-- Innervate was a talent before 1.11.
UPDATE `npc_trainer` SET `build_min`=5464 WHERE `spell`=29167;
-- Evocation was a talent before 1.11.
UPDATE `npc_trainer` SET `build_min`=5464 WHERE `spell`=28403;
-- New riding skills added in 1.12.
UPDATE `npc_trainer_template` SET `build_min`=5875 WHERE `spell`=33389;
UPDATE `npc_trainer_template` SET `build_min`=5875 WHERE `spell`=33392;
