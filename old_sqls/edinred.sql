
-- These items have no duration and don't need the real time duration flag.
UPDATE `item_template` SET `extra_flags`=0 WHERE `entry` IN (22159, 22160, 22161, 22162, 22163, 22178);

-- Zas'Tysh was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=7951;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=7951;
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=7951;

-- Melris Malagan had no weapons initially.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=12480;
DELETE FROM `creature_template` WHERE `entry`=12480;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (12480, 0, 0, 0, 5567, 0, 0, 0, 'Melris Malagan', 'Captain of the Guard', 0, 58, 58, 4484, 4484, 0, 0, 3408, 11, 11, 0, 1.25, 1.14286, 0, 20, 5, 0, 0, 1, 351, 412, 0, 262, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 232, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (12480, 7, 0, 0, 5567, 0, 0, 0, 'Melris Malagan', 'Captain of the Guard', 0, 58, 58, 4484, 4484, 0, 0, 3408, 11, 11, 0, 1.25, 1.14286, 0, 20, 5, 0, 0, 1, 351, 412, 0, 262, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 232, 'EventAI', 0, 3, 0, 0, 1, 12480, 0, 0, 0, 0, 2, '');

-- Justine Demalier had no weapons initially.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=12481;
DELETE FROM `creature_template` WHERE `entry`=12481;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (12481, 0, 0, 0, 5446, 0, 0, 0, 'Justine Demalier', 'Stormwind Recruiter', 0, 57, 57, 4356, 4356, 0, 0, 3326, 11, 11, 0, 1.24, 1.14286, 0, 20, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 197, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (12481, 7, 0, 0, 5446, 0, 0, 0, 'Justine Demalier', 'Stormwind Recruiter', 0, 57, 57, 4356, 4356, 0, 0, 3326, 11, 11, 0, 1.24, 1.14286, 0, 20, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 197, 'EventAI', 0, 3, 0, 0, 1, 12481, 0, 0, 0, 0, 2, '');

-- High Overlord Saurfang was added in 1.5 and had no weapon until 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=14720;
DELETE FROM `creature_template` WHERE `entry`=14720;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (14720, 3, 0, 0, 14732, 0, 0, 0, 'High Overlord Saurfang', NULL, 0, 62, 62, 85000, 85000, 0, 0, 4391, 85, 85, 3, 1.1, 1.14286, 0, 20, 5, 0, 1, 1, 659, 820, 0, 284, 1, 1158, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 63.1904, 86.8868, 100, 7, 8, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 'npc_overlord_saurfang');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (14720, 7, 0, 0, 14732, 0, 0, 0, 'High Overlord Saurfang', NULL, 0, 62, 62, 85000, 85000, 0, 0, 4391, 85, 85, 3, 1.1, 1.14286, 0, 20, 5, 0, 1, 1, 659, 820, 0, 284, 1, 1158, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 63.1904, 86.8868, 100, 7, 8, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 14720, 0, 0, 0, 0, 2, 'npc_overlord_saurfang');
UPDATE `creature` SET `patch_min`=3 WHERE (`patch_min` < 3) && `id`=14720;

-- Commander Mar'alith was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=15181;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15181;
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=15181;

-- Vyral the Vile was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=15202;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15202;
UPDATE `creature_loot_template` SET `patch_min`=6 WHERE `entry`=15202 && (`patch_min` < 6);
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=15202;

-- Twilight Overlord was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=15213;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15213;
UPDATE `creature_loot_template` SET `patch_min`=6 WHERE `entry`=15213 && (`patch_min` < 6);
UPDATE `pickpocketing_loot_template` SET `patch_min`=6 WHERE `entry`=15213 && (`patch_min` < 6);
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=15213;

-- Add patch to equipment for Emperor Vek'nilash.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15275;

-- Add patch to equipment for Emperor Vek'lor.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15276;

-- Twilight Overlord was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15437;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15437;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15437;

-- Lieutenant General Andorov was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15471;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15471;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15471;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15471;

-- Herbalist Proudfeather was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15477;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15477;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15477;

-- Doctor Serratus was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15525;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15525;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15525;

-- Doctor Weavil was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15552;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15552;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15552 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15552;
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=155520;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=155520;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=155520;

-- Jonathan the Revelator was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15693;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15693;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15693;

-- Field Marshal Snowfall was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15701;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15701;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15701;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15701;

-- Orgrimmar Elite Shieldguard was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15852;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15852;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15852;

-- Stormwind Cavalryman was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15857;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15857;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15857;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15857;

-- Stormwind Infantryman was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15858;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15858;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15858;

-- Kaldorei Marksman was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15860;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15860;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15860;

-- High Commander Lynore Windstryke was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15866;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15866;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15866;

-- Highlord Leoric Von Zeldig was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15868;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15868;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15868;

-- Malagav the Tactician was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15869;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15869;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15869;

-- Add patch to equipment for Tharl Stonebleeder.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=16076;

-- Add patch to equipment for Captain Armando Ossex.
UPDATE `creature_equip_template` SET `patch`=9 WHERE `entry`=16392;

-- Assign patch to custom version of High Overlord Saurfang.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=987000;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=987000;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=987000;

-- Assign patch to custom version of Lieutenant General Andorov.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=987001;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=987001;
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=987001;

-- Felder Stover's equipment was added in patch 1.3.
UPDATE `creature_equip_template` SET `patch`=1 WHERE `entry`=1296;
DELETE FROM `creature_template` WHERE `entry`=1296;
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (1296, 0, 0, 0, 1426, 0, 0, 0, 'Felder Stover', 'Weaponsmith', 0, 52, 52, 3748, 3748, 0, 0, 2669, 11, 11, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 92, 120, 0, 234, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 67.2672, 92.4924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `Detection`, `CallForHelp`, `Leash`, `rank`, `ExperienceMultiplier`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spells_template`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (1296, 1, 0, 0, 1426, 0, 0, 0, 'Felder Stover', 'Weaponsmith', 0, 52, 52, 3748, 3748, 0, 0, 2669, 11, 11, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 92, 120, 0, 234, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 67.2672, 92.4924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 1296, 0, 0, 0, 0, 2, '');

-- Brakgul Deathbringer was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=3890;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=3890;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=3890;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=3890 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=3890;

-- Kurdrum Barleybeard was added in patch 1.5.
UPDATE `creature_equip_template` SET `patch`=3 WHERE `entry`=5139;
UPDATE `creature_template` SET `patch`=3 WHERE `entry`=5139;
UPDATE `creature_template_addon` SET `patch`=3 WHERE `entry`=5139;
UPDATE `creature_loot_template` SET `patch_min`=3 WHERE `entry`=5139 && (`patch_min` < 3);
UPDATE `creature` SET `patch_min`=3 WHERE (`patch_min` < 3) && `id`=5139;

-- Lord Victor Nefarius was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=10162;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=10162;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=10162;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=10162 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=10162;

-- Lord Victor Nefarius was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=10163;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=10163;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=10163;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=10163 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=10163;

-- Add patch to equipment for Prince Tortheldrin.
UPDATE `creature_equip_template` SET `patch`=1 WHERE `entry`=11486;

-- Blackwing Taskmaster was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=12458;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=12458;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=12458;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=12458 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=12458;

-- Grethok the Controller was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=12557;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=12557;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=12557;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=12557 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=12557;

-- Royal Dreadguard was added in patch 1.3.
UPDATE `creature_equip_template` SET `patch`=1 WHERE `entry`=13839;
UPDATE `creature_template` SET `patch`=1 WHERE `entry`=13839;
UPDATE `creature_template_addon` SET `patch`=1 WHERE `entry`=13839;
UPDATE `creature_loot_template` SET `patch_min`=1 WHERE `entry`=13839 && (`patch_min` < 1);
UPDATE `creature` SET `patch_min`=1 WHERE (`patch_min` < 1) && `id`=13839;

-- Ravak Grimtotem was added in patch 1.5.
UPDATE `creature_equip_template` SET `patch`=3 WHERE `entry`=14186;
UPDATE `creature_template` SET `patch`=3 WHERE `entry`=14186;
UPDATE `creature_template_addon` SET `patch`=3 WHERE `entry`=14186;
UPDATE `creature_loot_template` SET `patch_min`=3 WHERE `entry`=14186 && (`patch_min` < 3);
UPDATE `creature` SET `patch_min`=3 WHERE (`patch_min` < 3) && `id`=14186;

-- Overlord Runthak was added in patch 1.3.
UPDATE `creature_equip_template` SET `patch`=1 WHERE `entry`=14392;
UPDATE `creature_template` SET `patch`=1 WHERE `entry`=14392;
UPDATE `creature_template_addon` SET `patch`=1 WHERE `entry`=14392;
UPDATE `creature_loot_template` SET `patch_min`=1 WHERE `entry`=14392 && (`patch_min` < 1);
UPDATE `creature` SET `patch_min`=1 WHERE (`patch_min` < 1) && `id`=14392;

-- Hunter Sagewind was added in patch 1.4.
UPDATE `creature_equip_template` SET `patch`=2 WHERE `entry`=14440;
UPDATE `creature_template` SET `patch`=2 WHERE `entry`=14440;
UPDATE `creature_template_addon` SET `patch`=2 WHERE `entry`=14440;
UPDATE `creature_loot_template` SET `patch_min`=2 WHERE `entry`=14440 && (`patch_min` < 2);
UPDATE `creature` SET `patch_min`=2 WHERE (`patch_min` < 2) && `id`=14440;

-- Hunter Ragetotem was added in patch 1.4.
UPDATE `creature_equip_template` SET `patch`=2 WHERE `entry`=14441;
UPDATE `creature_template` SET `patch`=2 WHERE `entry`=14441;
UPDATE `creature_template_addon` SET `patch`=2 WHERE `entry`=14441;
UPDATE `creature_loot_template` SET `patch_min`=2 WHERE `entry`=14441 && (`patch_min` < 2);
UPDATE `creature` SET `patch_min`=2 WHERE (`patch_min` < 2) && `id`=14441;

-- Hunter Thunderhorn was added in patch 1.4.
UPDATE `creature_equip_template` SET `patch`=2 WHERE `entry`=14442;
UPDATE `creature_template` SET `patch`=2 WHERE `entry`=14442;
UPDATE `creature_template_addon` SET `patch`=2 WHERE `entry`=14442;
UPDATE `creature_loot_template` SET `patch_min`=2 WHERE `entry`=14442 && (`patch_min` < 2);
UPDATE `creature` SET `patch_min`=2 WHERE (`patch_min` < 2) && `id`=14442;

-- Niby the Almighty was added in patch 1.4.
UPDATE `creature_equip_template` SET `patch`=2 WHERE `entry`=14469;
UPDATE `creature_template` SET `patch`=2 WHERE `entry`=14469;
UPDATE `creature_template_addon` SET `patch`=2 WHERE `entry`=14469;
UPDATE `creature_loot_template` SET `patch_min`=2 WHERE `entry`=14469 && (`patch_min` < 2);
UPDATE `creature` SET `patch_min`=2 WHERE (`patch_min` < 2) && `id`=14469;

-- High Priest Venoxis was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=14507;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=14507;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=14507;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=14507 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=14507;

-- High Priestess Mar'li was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=14510;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=14510;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=14510;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=14510 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=14510;

-- Lord Blackwood was added in patch 1.11.
UPDATE `creature_equip_template` SET `patch`=9 WHERE `entry`=14695;
UPDATE `creature_template` SET `patch`=9 WHERE `entry`=14695;
UPDATE `creature_template_addon` SET `patch`=9 WHERE `entry`=14695;
UPDATE `creature_loot_template` SET `patch_min`=9 WHERE `entry`=14695 && (`patch_min` < 9);
UPDATE `creature` SET `patch_min`=9 WHERE (`patch_min` < 9) && `id`=14695;

-- Captain Shatterskull was added in patch 1.5.
UPDATE `creature_equip_template` SET `patch`=3 WHERE `entry`=14781;
UPDATE `creature_template` SET `patch`=3 WHERE `entry`=14781;
UPDATE `creature_template_addon` SET `patch`=3 WHERE `entry`=14781;
UPDATE `creature_loot_template` SET `patch_min`=3 WHERE `entry`=14781 && (`patch_min` < 3);
UPDATE `creature` SET `patch_min`=3 WHERE (`patch_min` < 3) && `id`=14781;

-- Silas Darkmoon was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=14823;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=14823;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=14823;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=14823 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=14823;

-- Zandalar Enforcer was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=14911;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=14911;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=14911;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=14911 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=14911;

-- Kartra Bloodsnarl was added in patch 1.6.
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=14942;
UPDATE `creature_template` SET `patch`=4 WHERE `entry`=14942;
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=14942;
UPDATE `creature_loot_template` SET `patch_min`=4 WHERE `entry`=14942 && (`patch_min` < 4);
UPDATE `creature` SET `patch_min`=4 WHERE (`patch_min` < 4) && `id`=14942;

-- Lady Hoteshem was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=15008;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=15008;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=15008;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=15008 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=15008;

-- Deathmaster Dwire was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=15021;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=15021;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=15021;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=15021 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=15021;

-- Wushoolay was added in patch 1.7.
UPDATE `creature_equip_template` SET `patch`=5 WHERE `entry`=15085;
UPDATE `creature_template` SET `patch`=5 WHERE `entry`=15085;
UPDATE `creature_template_addon` SET `patch`=5 WHERE `entry`=15085;
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE `entry`=15085 && (`patch_min` < 5);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id`=15085;

-- Geologist Larksbane was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=15183;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15183;
UPDATE `creature_template_addon` SET `patch`=6 WHERE `entry`=15183;
UPDATE `creature_loot_template` SET `patch_min`=6 WHERE `entry`=15183 && (`patch_min` < 6);
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=15183;

-- Sergeant Stonebrow was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15383;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15383;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15383;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15383 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15383;

-- Vethsera was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15504;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15504;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15504;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15504 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15504;

-- Twilight Marauder was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15542;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15542;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15542;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15542 && (`patch_min` < 7);
UPDATE `pickpocketing_loot_template` SET `patch_min`=7 WHERE `entry`=15542 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15542;

-- Twilight Marauder was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15700;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15700;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15700;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15700 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15700;

-- Christmas Prince Tortheldrin was added in patch 1.8.
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry`=15774;
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15774;
UPDATE `creature_template_addon` SET `patch`=6 WHERE `entry`=15774;
UPDATE `creature_loot_template` SET `patch_min`=6 WHERE `entry`=15774 && (`patch_min` < 6);
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id`=15774;

-- Might of Kalimdor Sergeant was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15840;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15840;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15840;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15840 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15840;

-- Might of Kalimdor Major was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15865;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15865;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15865;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15865 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15865;

-- Duke August Foehammer was added in patch 1.9.
UPDATE `creature_equip_template` SET `patch`=7 WHERE `entry`=15870;
UPDATE `creature_template` SET `patch`=7 WHERE `entry`=15870;
UPDATE `creature_template_addon` SET `patch`=7 WHERE `entry`=15870;
UPDATE `creature_loot_template` SET `patch_min`=7 WHERE `entry`=15870 && (`patch_min` < 7);
UPDATE `creature` SET `patch_min`=7 WHERE (`patch_min` < 7) && `id`=15870;

-- Add patch to equipment for Volida.
UPDATE `creature_equip_template` SET `patch`=8 WHERE `entry`=16058;

-- Add patch to equipment for Isalien.
UPDATE `creature_equip_template` SET `patch`=8 WHERE `entry`=16097;

-- Add patch to equipment for Sothos.
UPDATE `creature_equip_template` SET `patch`=8 WHERE `entry`=16102;

-- Add patch to equipment for Spirit of Sothos.
UPDATE `creature_equip_template` SET `patch`=8 WHERE `entry`=16104;

-- Add patch to equipment for Argent Dawn Paladin.
UPDATE `creature_equip_template` SET `patch`=9 WHERE `entry`=16395;

-- Add patch to equipment for Argent Dawn Champion.
UPDATE `creature_equip_template` SET `patch`=9 WHERE `entry`=16434;

-- Add patch to equipment for Argent Dawn Priest.
UPDATE `creature_equip_template` SET `patch`=9 WHERE `entry`=16436;




-- Shrieker Scarab
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (154610, 'Ruins of Ahn''Qiraj - Shrieker Scarab', 26379, 100, 4, 0, 0, 0, 3, 6, 5, 10, 0, 22886, 100, 4, 0, 0, 0, 2, 8, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=154610, `ScriptName`='' WHERE `entry`=15461;

-- Spitting Scarab
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (154620, 'Ruins of Ahn\'Qiraj - Spitting Scarab', 24334, 100, 4, 0, 0, 0, 5, 5, 5, 10, 0, 22886, 100, 4, 0, 0, 0, 5, 5, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=154620, `ScriptName`='' WHERE `entry`=15462;

-- Colonel Zerran
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (153850, 'Ruins of Ahn\'Qiraj - Colonel Zerran', 25462, 100, 0, 0, 0, 0, 4, 5, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=153850, `ScriptName`='' WHERE `entry`=15385;

-- Hive'Zara Sandstalker
DELETE FROM `creature_ai_events` WHERE `creature_id`=15323;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1532301, 15323, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1532301, 0, 0, 'Hive\'Zara Sandstalker - Combat Pulse');
DELETE FROM `creature_ai_scripts` WHERE `id`=1532301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1532301, 0, 49, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Combat Pulse');
DELETE FROM `creature_spells_scripts` WHERE `id`=26381;
INSERT INTO `creature_spells_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (26381, 0, 29, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -100, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Reset Threat');
INSERT INTO `creature_spells_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (26381, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Start Attack');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (153230, 'Ruins of Ahn\'Qiraj - Hive\'Zara Sandstalker', 26381, 100, 4, 0, 0, 0, 5, 5, 8, 10, 26381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='EventAI', `spells_template`=153230, `ScriptName`='' WHERE `entry`=15323;

-- Flarecore Leggings had it's spell id changed in 1.7.
DELETE FROM `item_template` WHERE `entry`=19165;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES (19165, 4, 4, 1, 'Flarecore Leggings', '', 31685, 4, 0, 1, 225032, 45006, 7, -1, -1, 70, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 16, 0, 0, 0, 0, 17886, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 75, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1);
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES (19165, 5, 4, 1, 'Flarecore Leggings', '', 31685, 4, 0, 1, 225032, 45006, 7, -1, -1, 70, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 16, 0, 0, 0, 0, 17280, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 75, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1);

-- Flarecore Robe had it's spell id changed in 1.7.
DELETE FROM `item_template` WHERE `entry`=19156;
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES (19156, 4, 4, 1, 'Flarecore Robe', '', 31673, 4, 0, 1, 174557, 34911, 20, -1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 15, 0, 0, 0, 0, 13830, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 100, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1);
INSERT INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES (19156, 5, 4, 1, 'Flarecore Robe', '', 31673, 4, 0, 1, 174557, 34911, 20, -1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 15, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 100, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1);

-- The Lash of Pain spells used by the Succubus warlock pet should not require the caster to be behind the target.
UPDATE `spell_mod` SET `Custom`=`Custom`-64 WHERE (`Custom` & 64) && (ID IN (7814, 7815, 7816, 11778, 11779, 11780));

-- Fix mana for Bloodscalp Witch Doctor.
UPDATE `creature_template` SET `minmana`=1142, `maxmana`=1142 WHERE `entry`=660;
UPDATE `creature` SET `curmana`=1142 WHERE `id`=660;



