health 7850
mana 13606

strength 13372
agility 13365
stamina 13370
intellect 13366
spirit 13368

INSERT INTO `spell_template` (`Id`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `SpellLevel`, `DurationIndex`, `EquippedItemClass`, `Effect1`, `EffectApplyAuraName1`, `EffectMiscValue1`, `SpellName`) VALUES
(15170, 64, 1, 101, 1, 21, -1, 6, 22, 1, 'Custom QA Mod Armor'),
(15171, 64, 1, 101, 1, 21, -1, 6, 22, 2, 'Custom QA Mod Resist Holy'),
(15172, 64, 1, 101, 1, 21, -1, 6, 22, 4, 'Custom QA Mod Resist Fire'),
(15173, 64, 1, 101, 1, 21, -1, 6, 22, 8, 'Custom QA Mod Resist Nature'),
(15174, 64, 1, 101, 1, 21, -1, 6, 22, 16, 'Custom QA Mod Resist Frost'),
(15175, 64, 1, 101, 1, 21, -1, 6, 22, 32, 'Custom QA Mod Resist Shadow'),
(15176, 64, 1, 101, 1, 21, -1, 6, 22, 64, 'Custom QA Mod Resist Arcane'),
(15177, 64, 1, 101, 1, 21, -1, 6, 99, 0, 'Custom QA Mod Melee AP'),
(15178, 64, 1, 101, 1, 21, -1, 6, 124, 0, 'Custom QA Mod Ranged AP'),
(15179, 64, 1, 101, 1, 21, -1, 6, 52, 0, 'Custom QA Mod Melee Crit'),
(15180, 64, 1, 101, 1, 21, -1, 6, 57, 0, 'Custom QA Mod Spell Crit'),
(15181, 64, 1, 101, 1, 21, -1, 6, 138, 0, 'Custom QA Mod Melee Haste'),
(15182, 64, 1, 101, 1, 21, -1, 6, 140, 0, 'Custom QA Mod Ranged Haste'),
(15183, 64, 1, 101, 1, 21, -1, 6, 65, 0, 'Custom QA Mod Spell Haste'),
(15184, 64, 1, 101, 1, 21, -1, 6, 47, 0, 'Custom QA Mod Parry Chance'),
(15185, 64, 1, 101, 1, 21, -1, 6, 49, 0, 'Custom QA Mod Dodge Chance'),
(15186, 64, 1, 101, 1, 21, -1, 6, 51, 0, 'Custom QA Mod Block Chance');

human female
15745

dwarf male
15746

dwarf female
15747

nelf female
15748

troll female
15749

goblin male
15750

goblin female
15752

orc female
15751

undead female
15753

tauren female
15754

undead male
15755

orc male
15756

troll male
15757

night elf male
15758

tauren male
15759

gnome female
15795 15796 15797 15798 15799 15800 15801 15802

gnome male
15803 15804 15805 15806 15807 15808 15809


human
zone 12 area 87
zone 1519 area 1519
zone 40 area 108
zone 10 area 42
zone 44 area 69
zone 267 area 271

dwarf
zone 1 area 2102
zone 1537 area 1537
wetlands, deepwater tavern

nelf
zone 141 area 186

goblin
zone 33 are 35

orc
zone 17 area 380
zone 1637 area 1637
zone 85 area 2119
zone 3 area 340

tauren
zone 1638 area 1638
zone 215 area 222

undead
zone 1497 area 1497
zone 267 area 272
zone 85 area 2119

-- Change default movement type and damage for Winter Revelers
UPDATE `creature_template` SET `movement_type`=0, `dmg_min`=45, `dmg_max`=60 WHERE `entry`=15760;

-- Set equipment for Winter Revelers.
UPDATE `creature_template` SET `equipment_id`=15760 WHERE `entry` IN (15780, 15781, 15782, 15783, 15784, 15785, 15786, 15787, 15788, 15789, 15790, 15791, 15792, 15793, 15794, 15795);

-- Goldshire
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89359;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89360;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89359, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89360, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Stormwind
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89361;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89362;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89361, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89362, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Westfall
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89363;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89364;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89363, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89364, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Darkshire
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89365;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89366;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89365, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89366, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Lakeshire
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89367;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89368;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89367, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89368, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Dun Morogh
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89369;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89370;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89369, 6, 0, 0, 1, 16, 0, 0, '26241');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89370, 6, 0, 0, 1, 16, 0, 0, '26242');
-- Ironforge
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89372;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89371;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89372, 6, 0, 0, 1, 16, 0, 0, '26241');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89371, 6, 0, 0, 1, 16, 0, 0, '26242');
-- Teldrassil
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89376;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89375;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89376, 6, 0, 0, 1, 16, 0, 0, '26246');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89375, 6, 0, 0, 1, 16, 0, 0, '26245');
-- Booty Bay
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89380;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89379;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89380, 6, 0, 0, 1, 16, 0, 0, '26244');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89379, 6, 0, 0, 1, 16, 0, 0, '26243');
-- Crossroads
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89381;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89382;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89381, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89382, 6, 0, 0, 1, 16, 0, 0, '26247');
-- Orgrimmar
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89383;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89384;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89383, 6, 0, 0, 1, 16, 0, 0, '26247');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89384, 6, 0, 0, 1, 16, 0, 0, '26248');
-- Thunder Bluff
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89385;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89386;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89385, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89386, 6, 0, 0, 1, 16, 0, 0, '26249');
-- Undercity
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89387;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89388;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89387, 6, 0, 0, 1, 16, 0, 0, '26254');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89388, 6, 0, 0, 1, 16, 0, 0, '26253');
-- Tarren Mill
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89389;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89390;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89389, 6, 0, 0, 1, 16, 0, 0, '26254');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89390, 6, 0, 0, 1, 16, 0, 0, '26253');
-- Tirisfal Glades
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89391;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89392;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89391, 6, 0, 0, 1, 16, 0, 0, '26254');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89392, 6, 0, 0, 1, 16, 0, 0, '26253');
-- Durotar
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89393;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89394;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89393, 6, 0, 0, 1, 16, 0, 0, '26247');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89394, 6, 0, 0, 1, 16, 0, 0, '26248');
-- Mulgore
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89395;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89396;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89395, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89396, 6, 0, 0, 1, 16, 0, 0, '26249');
-- Badlands
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89397;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89398;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89397, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89398, 6, 0, 0, 1, 16, 0, 0, '26247');
-- Southshore
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89405;
UPDATE `creature` SET `spawntimesecsmin`=300,`spawntimesecsmax`=480 WHERE `guid`=89406;
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89405, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89406, 6, 0, 0, 1, 16, 0, 0, '26240');
-- Astranaar
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89399, 15760, 0, 0, 0, 1, 0, 0, 2756.3, -419.052, 111.476, 3.43214, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89400, 15760, 0, 0, 0, 1, 0, 0, 2754.04, -420.25, 111.471, 0.611771, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89399, 6, 0, 0, 1, 16, 0, 0, '26245');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89400, 6, 0, 0, 1, 16, 0, 0, '26246');
-- Darnassus
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89401, 15760, 0, 0, 0, 1, 0, 0, 10128.2, 2218.37, 1329.99, 6.02016, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89402, 15760, 0, 0, 0, 1, 0, 0, 10130.1, 2217.92, 1329.99, 2.76861, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89401, 6, 0, 0, 1, 16, 0, 0, '26245');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89402, 6, 0, 0, 1, 16, 0, 0, '26246');
-- Nijel's Point
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89403, 15760, 0, 0, 0, 1, 0, 0, 246.91, 1259.09, 192.164, 0.951099, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89404, 15760, 0, 0, 0, 1, 0, 0, 248.217, 1261.58, 192.159, 4.40921, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89403, 6, 0, 0, 1, 16, 0, 0, '26239');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89404, 6, 0, 0, 1, 16, 0, 0, '26245');
-- Shadowprey Village
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89407, 15760, 0, 0, 0, 1, 0, 0, -1587.93, 3158.76, 47.1655, 5.62972, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89408, 15760, 0, 0, 0, 1, 0, 0, -1586.06, 3157.71, 47.1656, 2.63029, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89407, 6, 0, 0, 1, 16, 0, 0, '26252');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89408, 6, 0, 0, 1, 16, 0, 0, '26251');
-- Feathermoon Stronghold
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89409, 15760, 0, 0, 0, 1, 0, 0, -4350.65, 3289.7, 18.6701, 4.79722, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89410, 15760, 0, 0, 0, 1, 0, 0, -4350.71, 3287.48, 18.6706, 1.54567, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89409, 6, 0, 0, 1, 16, 0, 0, '26245');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89410, 6, 0, 0, 1, 16, 0, 0, '26246');
-- Camp Mojache
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89411, 15760, 0, 0, 0, 1, 0, 0, -4443.01, 253.042, 39.1077, 5.21849, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89412, 15760, 0, 0, 0, 1, 0, 0, -4441.91, 250.713, 39.1075, 2.04155, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89411, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89412, 6, 0, 0, 1, 16, 0, 0, '26249');
-- Loch Modan
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89415, 15760, 0, 0, 0, 0, 0, 0, -5380.95, -2967.57, 322.058, 2.63296, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89419, 15760, 0, 0, 0, 0, 0, 0, -5383.01, -2966.14, 322.058, 5.6489, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89415, 6, 0, 0, 1, 16, 0, 0, '26241');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89419, 6, 0, 0, 1, 16, 0, 0, '26242');
-- Silithus
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89420, 15760, 0, 0, 0, 1, 0, 0, -6854.37, 737.732, 45.6625, 5.16703, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89421, 15760, 0, 0, 0, 1, 0, 0, -6853.6, 735.501, 45.6626, 2.02544, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89420, 6, 0, 0, 1, 16, 0, 0, '26249');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89421, 6, 0, 0, 1, 16, 0, 0, '26246');
-- Stonetalon Mountains
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (89422, 15760, 0, 0, 0, 1, 0, 0, 910.056, 917.04, 106.258, 4.11374, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90179, 15760, 0, 0, 0, 1, 0, 0, 908.816, 914.926, 106.258, 1.00356, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (89422, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90179, 6, 0, 0, 1, 16, 0, 0, '26249');
-- Tanaris
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90180, 15760, 0, 0, 0, 1, 0, 0, -7161.89, -3844.66, 8.72069, 6.08667, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90181, 15760, 0, 0, 0, 1, 0, 0, -7160.14, -3845.1, 8.78221, 2.9647, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90180, 6, 0, 0, 1, 16, 0, 0, '26244');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90181, 6, 0, 0, 1, 16, 0, 0, '26243');
-- Aerie Peak
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90182, 15760, 0, 0, 0, 0, 0, 0, 397.73, -2093.59, 131.562, 4.9087, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90183, 15760, 0, 0, 0, 0, 0, 0, 397.985, -2094.86, 131.562, 1.76318, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90182, 6, 0, 0, 1, 16, 0, 0, '26241');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90183, 6, 0, 0, 1, 16, 0, 0, '26242');
-- Revantusk Village
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90185, 15760, 0, 0, 0, 0, 0, 0, -629.182, -4575, 12.3582, 3.99785, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90186, 15760, 0, 0, 0, 0, 0, 0, -631.062, -4576.8, 12.3582, 0.772996, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90185, 6, 0, 0, 1, 16, 0, 0, '26252');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90186, 6, 0, 0, 1, 16, 0, 0, '26251');
-- Darkshore
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90187, 15760, 0, 0, 0, 1, 0, 0, 6408.19, 518.432, 8.64959, 2.7685, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90188, 15760, 0, 0, 0, 1, 0, 0, 6406.53, 519.057, 8.65005, 5.95719, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90187, 6, 0, 0, 1, 16, 0, 0, '26246');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90188, 6, 0, 0, 1, 16, 0, 0, '26245');
-- Theramore Isle
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90189, 15760, 0, 0, 0, 1, 0, 0, -3620.36, -4462.42, 13.6222, 1.57957, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90190, 15760, 0, 0, 0, 1, 0, 0, -3620.28, -4460.99, 13.6224, 4.71723, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90189, 6, 0, 0, 1, 16, 0, 0, '26240');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90190, 6, 0, 0, 1, 16, 0, 0, '26239');
-- Silverpine Forest
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90191, 15760, 0, 0, 0, 0, 0, 0, 509.914, 1639.02, 125.942, 3.19987, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90192, 15760, 0, 0, 0, 0, 0, 0, 505.762, 1638.93, 125.942, 0.00329638, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90191, 6, 0, 0, 1, 16, 0, 0, '26254');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90192, 6, 0, 0, 1, 16, 0, 0, '26253');
-- Stranglethorn Vale
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90193, 15760, 0, 0, 0, 0, 0, 0, -12427.3, 212.364, 2.36578, 2.979, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90194, 15760, 0, 0, 0, 0, 0, 0, -12429.3, 212.967, 2.36578, 6.03811, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90193, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90194, 6, 0, 0, 1, 16, 0, 0, '26247');
-- Swamp of Sorrow
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90195, 15760, 0, 0, 0, 0, 0, 0, -10488.7, -3251, 21.031, 2.35859, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90196, 15760, 0, 0, 0, 0, 0, 0, -10490.9, -3248.7, 21.0323, 5.47271, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90195, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90196, 6, 0, 0, 1, 16, 0, 0, '26247');
-- Thousand Needles
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90197, 15760, 0, 0, 0, 1, 0, 0, -5461.82, -2454.93, 89.8208, 2.02411, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90233, 15760, 0, 0, 0, 1, 0, 0, -5462.77, -2452.31, 89.7673, 5.07143, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90197, 6, 0, 0, 1, 16, 0, 0, '26250');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90233, 6, 0, 0, 1, 16, 0, 0, '26249');
-- Wetlands
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90281, 15760, 0, 0, 0, 0, 0, 0, -3804.54, -826.874, 10.0928, 2.22376, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90282, 15760, 0, 0, 0, 0, 0, 0, -3806.34, -825.119, 10.0928, 5.33786, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90281, 6, 0, 0, 1, 16, 0, 0, '26241');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90282, 6, 0, 0, 1, 16, 0, 0, '26242');
-- Winterspring
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90283, 15760, 0, 0, 0, 1, 0, 0, 6689.98, -4678.31, 721.716, 6.19404, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90284, 15760, 0, 0, 0, 1, 0, 0, 6691.95, -4678.56, 721.716, 3.08385, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90283, 6, 0, 0, 1, 16, 0, 0, '26244');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90284, 6, 0, 0, 1, 16, 0, 0, '26243');
-- Hammerfall
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90285, 15760, 0, 0, 0, 0, 0, 0, -921.846, -3528.56, 72.5878, 4.71034, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90288, 15760, 0, 0, 0, 0, 0, 0, -921.963, -3531.02, 72.5776, 1.54518, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90285, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90288, 6, 0, 0, 1, 16, 0, 0, '26247');

-- Ratchet
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90289, 15760, 0, 0, 0, 1, 0, 0, -1046.4, -3668.4, 23.8867, 1.39719, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90296, 15760, 0, 0, 0, 1, 0, 0, -1045.47, -3664.27, 23.8897, 4.51522, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90289, 6, 0, 0, 1, 16, 0, 0, '26244');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90296, 6, 0, 0, 1, 16, 0, 0, '26243');
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90289, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90296, 2);

-- Camp Taurajo
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90377, 15760, 0, 0, 0, 1, 0, 0, -2363.67, -1979, 96.7049, 2.6105, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90378, 15760, 0, 0, 0, 1, 0, 0, -2365.86, -1977.85, 96.7051, 5.77053, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90377, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90378, 6, 0, 0, 1, 16, 0, 0, '26249');
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90377, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90378, 2);

-- Splintertree Post
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90380, 15760, 0, 0, 0, 1, 0, 0, 2336.32, -2578.54, 102.773, 5.92544, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90426, 15760, 0, 0, 0, 1, 0, 0, 2338.5, -2579.34, 102.773, 2.71708, 300, 480, 0, 0, 100, 0, 0, 0, 0, 0, 6, 10);
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90380, 6, 0, 0, 1, 16, 0, 0, '26248');
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (90426, 6, 0, 0, 1, 16, 0, 0, '26247');
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90380, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90426, 2);


-- Events list for Winter Reveler
DELETE FROM `creature_ai_events` WHERE `creature_id`=15760;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1576001, 15760, 0, 22, 0, 100, 1, 58, 0, 0, 0, 1576001, 0, 0, 'Winter Reveler - Cast Mistletoe on Receive Kiss Emote');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1576002, 15760, 0, 1, 0, 100, 1, 10000, 20000, 10000, 60000, 1576002, 0, 0, 'Winter Reveler - Emote on OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1576002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1576002, 0, 1, 24, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 'Winter Reveler - Random Emote');

29
36
30
36
30
36
36
30

41
35
44
34
40
45
37
39

min 45-60

x -  35/100 * x = 35

100/100 *x - 35/100 * x = 35 * 100/100
75/100 * x = 35 * 100/100
75*x = 35*100
x = 3500 / 75



-- Add missing Holiday Snow spawns.
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES 
(42013, 178609, 0, 661.045, -738.719, 168.735, 2.07133, 0, 0, 0.860202, 0.509953, 60, 60, 100, 1, 0, 0, 0, 10),
(42095, 178609, 0, 720.502, -561.526, 163.923, 3.97826, 0, 0, 0.913767, -0.406238, 60, 60, 100, 1, 0, 0, 0, 10),
(42096, 178609, 0, 757.241, -641.389, 148.618, 2.47972, 0, 0, 0.945739, 0.324928, 60, 60, 100, 1, 0, 0, 0, 10),
(42099, 178609, 0, 820.255, -510.763, 141.258, 5.70222, 0, 0, 0.286415, -0.958106, 60, 60, 100, 1, 0, 0, 0, 10),
(42100, 178609, 0, 816.769, -448.034, 134.027, 0.173806, 0, 0, 0.0867936, 0.996226, 60, 60, 100, 1, 0, 0, 0, 10),
(42101, 178609, 0, 882.519, -504.546, 134.552, 4.24296, 0, 0, 0.852167, -0.52327, 60, 60, 100, 1, 0, 0, 0, 10),
(42102, 178609, 0, 658.46, -556.084, 171.215, 4.7733, 0, 0, 0.685245, -0.728312, 60, 60, 100, 1, 0, 0, 0, 10);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(42013, 2),
(42095, 2),
(42096, 2),
(42099, 2),
(42100, 2),
(42101, 2),
(42102, 2);

UPDATE `gameobject_loot_template` SET `mincountOrRef`=3, `maxcount`=6 WHERE `entry`=15540 && `item`=17202;

-- Greatfather Winter is Here!
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1, `DetailsEmote3`=4, `OfferRewardEmote1`=1, `OfferRewardEmote2`=1 WHERE `entry` IN (6961, 7021, 7022, 7023, 7024);
-- Treats for Greatfather Winter
UPDATE `quest_template` SET `DetailsEmote1`=6, `DetailsEmote2`=1, `IncompleteEmote`=1, `CompleteEmote`=1, `OfferRewardEmote1`=7, `OfferRewardEmote2`=1, `RewRepFaction1`=169, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepValue1`=25, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0 WHERE `entry` IN (6962, 7025);
-- New Year Celebrations!
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmoteDelay1`=3000, `CompleteEmote`=2, `IncompleteEmote`=2, `OfferRewardEmote1`=4, `OfferRewardEmote2`=2, `RewRepValue1`=100, `RewOrReqMoney`=900 WHERE `entry`IN (8860, 8861);
-- The Reason for the Season
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1, `DetailsEmote3`=274, `OfferRewardEmote1`=6, `OfferRewardEmote2`=1, `RewXP`=650 WHERE `entry` IN (6964, 7062);
-- Winter's Presents
UPDATE `quest_template` SET `OfferRewardEmote1`=11, `OfferRewardEmote2`=1, `RewXP`=0 WHERE `entry`=8827;
UPDATE `quest_template` SET `OfferRewardEmote1`=11, `OfferRewardEmote2`=1 WHERE `entry`=8828;
-- Stolen Winter Veil Treats
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1, `RewMoneyMaxLevel`=9900 WHERE `entry` IN (6963, 7042);
-- Metzen the Reindeer
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1, `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `RewRepValue1`=200 WHERE `entry` IN (8746, 8762);
-- The Feast of Winter Veil
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1, `CompleteEmote`=1, `OfferRewardEmote1`=1, `OfferRewardEmote2`=1, `OfferRewardEmote3`=66 WHERE `entry` IN (7061, 7063);
-- You're a Mean One...
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=5, `DetailsEmote3`=1, `CompleteEmote`=5, `OfferRewardEmote1`=5, `OfferRewardEmote2`=4, `OfferRewardEmote3`=1 WHERE `entry` IN (6983, 7043);
-- A Smokywood Pastures' Thank You!
UPDATE  `quest_template` SET `DetailsEmote1`=2, `DetailsEmote2`=1, `DetailsEmote3`=1, `RewRepFaction1`=169, `RewRepValue1`=100 WHERE `entry` IN (6984, 7045);

-- Correct spawn location of Goli Krumn.
UPDATE `creature` SET `position_x`=-4882.71, `position_y`=-952.68, `position_z`=501.464, `orientation`=3.17408 WHERE `id`=1365;

-- Remove gossip from Goli Krumn.
UPDATE `creature_template` SET `gossip_menu_id`=0, `npc_flags`=2 WHERE `entry`=1365;
DELETE FROM `gossip_menu` WHERE `entry`=9058;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9058;

-- Add gossip menu to Wonderform Operator.
UPDATE `creature_template` SET `gossip_menu_id`=6802 WHERE `entry`=15732;
INSERT INTO `gossip_menu` VALUES (6802, 8125, 0);

-- Add missing spawns for Greatfather Winter's Helper.
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (62028, 15745, 0, 0, 0, -4912.68, -976.28, 501.533, 2.49582, 300, 300, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (62029, 15746, 1, 0, 0, 1628.58, -4414.49, 16.036, 6.10882, 300, 300, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (62028, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (62029, 2);

-- Events list for Greatfather Winter's Helper
DELETE FROM `creature_ai_events` WHERE `creature_id`=15745;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1574501, 15745, 0, 1, 0, 100, 1, 0, 0, 600000, 600000, 1574501, 0, 0, 'Greatfather Winter\'s Helper - Yell OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1574501;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1574501, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 11430, 0, 0, 0, 0, 0, 0, 0, 0, 'Greatfather Winter\'s Helper - Say Text');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=15745;

-- Events list for Great-father Winter's Helper
DELETE FROM `creature_ai_events` WHERE `creature_id`=15746;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1574601, 15746, 0, 1, 0, 100, 1, 0, 0, 600000, 600000, 1574601, 0, 0, 'Great-father Winter\'s Helper - Yell OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1574601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1574601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11430, 0, 0, 0, 0, 0, 0, 0, 0, 'Great-father Winter\'s Helper - Say Text');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=15746;

-- Missing Wonderform Operator in Tanaris.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`, `patch_min`, `patch_max`) VALUES (54903, 15732, 1, -7163.48, -3913.22, 9.61368, 0.0523599, 180, 180, 0, 0, 6, 10);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54903, 2);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41958, 180796, 1, -7166.08, -3918.11, 9.39414, 0.994837, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41959, 180797, 1, -7166.08, -3918.05, 9.39524, -2.00713, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41960, 178746, 1, -7162.93, -3911.53, 9.63193, 0.383971, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41962, 178434, 1, -7164.25, -3916.59, 14.8622, 0.349065, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41963, 178435, 1, -7163.8, -3918.61, 14.5926, 0.139624, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41964, 180798, 1, -7165.23, -3915.61, 9.42218, -0.174532, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41965, 180799, 1, -7166.09, -3915.61, 9.44391, 1.37881, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41958, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41959, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41960, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41962, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41963, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41964, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41965, 2);

-- Missing Wonderform Operator in Menethil.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`, `patch_min`, `patch_max`) VALUES (54901, 15732, 0, -3756.79, -770.778, 9.6816, 3.29867, 180, 180, 0, 0, 6, 10);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54901, 2);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41950, 180796, 0, -3755.18, -775.606, 9.87997, -2.46091, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41951, 180797, 0, -3755.38, -775.585, 9.87012, 0.59341, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41952, 178746, 0, -3757.98, -769.912, 9.46039, 2.35619, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41953, 178667, 0, -3751.6, -767.777, 9.84089, -0.104719, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41954, 178434, 0, -3757.23, -775.569, 14.8131, -3.01941, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41955, 178435, 0, -3756.75, -774.392, 14.7831, 2.63544, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41956, 180798, 0, -3756.7, -777.645, 9.89885, -2.16421, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (41957, 180799, 0, -3755.98, -778.003, 9.89892, -2.07694, 0, 0, 0, 0, 180, 180, 100, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41950, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41951, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41952, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41953, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41954, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41955, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41956, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (41957, 2);

-- Pat's Snowcloud Guy spawns from cmangos.
UPDATE `creature_template` SET `patch`=6 WHERE `entry`=15730;
UPDATE `creature_template_addon` SET `patch`=6 WHERE `entry`=15730;
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=15730);
DELETE FROM `creature` WHERE `id`=15730;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54908, 15730, 0, 0, 0, -14294.5, 516.209, 9.07392, -2.47837, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54905, 15730, 0, 0, 0, -8823.58, 540.349, 97.0268, 2.44346, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54902, 15730, 1, 0, 0, -7166.18, -3918.02, 9.4828, 2.44346, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54904, 15730, 0, 0, 0, -5049.6, -817.202, 495.352, 2.09439, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54900, 15730, 0, 0, 0, -3754.8, -775.607, 9.98073, 1.81514, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54907, 15730, 1, 0, 0, 1332.11, -4607.79, 23.9229, -1.95477, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `patch_min`, `patch_max`) VALUES (54906, 15730, 0, 0, 0, 2051.28, 272.469, 57.0336, -2.44346, 180, 180, 0, 0, 100, 0, 0, 0, 6, 10);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54900, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54902, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54904, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54905, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54906, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54907, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (54908, 2);

-- Gaily Wrapped Present
UPDATE `gameobject_template` SET `data0`=43, `data3`=6797 WHERE `entry`=180747;
INSERT INTO `gossip_menu` VALUES (6797, 8109, 0);

-- Ticking Present
UPDATE `gameobject_template` SET `data0`=43, `data3`=6792 WHERE `entry`=180748;
INSERT INTO `gossip_menu` VALUES (6792, 8109, 0);

-- Festive Gift
UPDATE `gameobject_template` SET `data0`=43, `data3`=6798 WHERE `entry`=180793;
INSERT INTO `gossip_menu` VALUES (6798, 8109, 0);

-- Gently Shaken Gift
UPDATE `gameobject_template` SET `data0`=43 WHERE `entry`=180746;

-- Carefully Wrapped Present
UPDATE `gameobject_template` SET `data0`=43 WHERE `entry`=180743;

-- Add missing spawn points for The Abominable Greench.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (90379, 13602, 0, 0, 0, 0, 0, 0, 228.695, -178.387, 140.21, 3.50941, 600, 600, 15, 0, 100, 0, 0, 1, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91750, 13602, 0, 0, 0, 361.078, -54.289, 145.192, 2.182, 600, 600, 15, 0, 3831, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91751, 13602, 0, 0, 0, 313.328, -376.999, 169.598, 0.914, 600, 600, 15, 0, 3831, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91752, 13602, 0, 0, 0, 550.981, -101.974, 145.18, 2.755, 600, 600, 15, 0, 3831, 0, 0, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (90379, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91750, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91751, 2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91752, 2);
UPDATE `creature` SET `modelid`=0, `spawndist`=15, `MovementType`=1 WHERE `id`=13602;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`, `patch_min`, `patch_max`) VALUES (43525, 1, 'Alterac Mountains: The Abominable Greench', 0, 0, 0, 10);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (90379, 43525, 0, 'The Abominable Greench', 0, 0, 10);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (91750, 43525, 0, 'The Abominable Greench', 0, 0, 10);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (91751, 43525, 0, 'The Abominable Greench', 0, 0, 10);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES (91752, 43525, 0, 'The Abominable Greench', 0, 0, 10);

-- Spells list for The Abominable Greench.
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (136020, 'Alterac Mountains - The Abominable Greench', 21847, 100, 1, 0, 0, 0, 6, 6, 23, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id`=136020 WHERE `entry`=13602;

-- Correct damage for The Abominable Greench.
UPDATE `creature_template` SET `dmg_min`=65, `dmg_max`=88 WHERE `entry`=13602;

-- Correct respawn time for Metzen the Reindeer.
UPDATE `creature` SET `spawntimesecsmin`=20, `spawntimesecsmax`=20 WHERE `id`=15664;

-- Add gossip menu for Winter Reveler.
UPDATE `creature_template` SET `gossip_menu_id`=6813 WHERE `entry`=15760;
INSERT INTO `gossip_menu` VALUES (6813, 8139, 0);

-- Spell Snowman should be negative.
UPDATE `spell_template` SET `customFlags`=`customFlags`+2 WHERE `entry`=21847;


team
67 horde
469 ally

1 - warrior dps pre raid bis
2 - paladin dps pre raid bis
3 - hunter dps pre raid bis
4 - rogue dps pre raid bis
5 - priest dps pre raid bis
6 - shaman dps pre raid bis
7 - mage dps pre raid bis
8 - warlock dps pre raid bis
9 - druid dps pre raid bis

CREATE TABLE IF NOT EXISTS `player_premade_item_template` (
  `entry` int(10) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '60',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `player_premade_item_template` (`entry`, `class`, `level`, `name`) VALUES
(1, 1, 60, 'dpspreraidbis'),
(2, 2, 60, 'dpspreraidbis'),
(3, 3, 60, 'dpspreraidbis'),
(4, 4, 60, 'dpspreraidbis'),
(5, 5, 60, 'dpspreraidbis'),
(6, 7, 60, 'dpspreraidbis'),
(7, 8, 60, 'dpspreraidbis'),
(8, 9, 60, 'dpspreraidbis'),
(9, 11, 60, 'dpspreraidbis'),
(10, 2, 60, 'healpreraidbis'),
(11, 5, 60, 'healpreraidbis'),
(12, 7, 60, 'healpreraidbis'),
(13, 11, 60, 'healpreraidbis'),
(14, 1, 60, 'tankpreraidbis'),
(15, 2, 60, 'tankpreraidbis'),
(16, 11, 60, 'tankpreraidbis');

CREATE TABLE IF NOT EXISTS `player_premade_spell_template` (
  `entry` int(10) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '60',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `player_premade_spell_template` (`entry`, `class`, `level`, `name`) VALUES
(1, 1, 60, 'fury-dw-pve'),
(2, 2, 60, 'retribution-pve'),
(3, 3, 60, 'mm-sv-pve'),
(4, 4, 60, 'combat-swords-pve'),
(5, 5, 60, 'shadow-pve'),
(6, 7, 60, 'elemental-pve'),
(7, 8, 60, 'arcane-power-frost-pve'),
(8, 9, 60, 'ds-ruin-pve'),
(9, 11, 60, 'balance-pve'),
(10, 2, 60, 'holy-pve'),
(11, 5, 60, 'holy-pve'),
(12, 7, 60, 'resto-pve'),
(13, 11, 60, 'resto-swiftmend-pve'),
(14, 1, 60, 'protection-pve'),
(15, 2, 60, 'protection-pve'),
(16, 11, 60, 'feral-bear-pve');

CREATE TABLE IF NOT EXISTS `player_premade_item` (
  `entry` int(10) unsigned NOT NULL,
  `item` int(10) unsigned NOT NULL,
  `enchant` int(10) unsigned NOT NULL DEFAULT '0',
  `team` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `player_premade_spell` (
  `entry` int(10) unsigned NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Fury Warrior Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(1, 12640, 1506, 0), -- Lionheart Helm
(1, 15411, 0, 0), -- Mark of Fordring
(1, 12927, 2488, 0), -- Truestrike Shoulders
(1, 13340, 849, 0), -- Cape of the Black Baron
(1, 11726, 1891, 0), -- Savage Gladiator Chain
(1, 12936, 1885, 0), -- Battleborn Armbraces
(1, 15063, 927, 0), -- Devilsaur Gauntlets
(1, 13142, 0, 0), -- Brigam Girdle
(1, 15062, 1506, 0), -- Devilsaur Leggings
(1, 12555, 911, 0), -- Battlechaser's Greaves
(1, 17713, 0, 0), -- Blackstone Ring
(1, 18500, 0, 0), -- Tarnished Elven Ring
(1, 11815, 0, 0), -- Hand of Justice
(1, 13965, 0, 0), -- Blackhand's Breadth
(1, 11684, 1900, 0), -- Ironfoe
(1, 15806, 1900, 0), -- Mirah's Song
(1, 12651, 664, 0); -- Blackcrow

-- Dual Wield Fury Warrior PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(1, 71),
(1, 355),
(1, 676),
(1, 871),
(1, 1161),
(1, 1672),
(1, 1680),
(1, 1719),
(1, 2458),
(1, 2565),
(1, 2687),
(1, 3127),
(1, 5246),
(1, 6554),
(1, 7373),
(1, 11556),
(1, 11574),
(1, 11578),
(1, 11581),
(1, 11585),
(1, 11597),
(1, 11605),
(1, 12290),
(1, 12296),
(1, 12328),
(1, 12659),
(1, 12663),
(1, 12679),
(1, 12856),
(1, 12861),
(1, 12867),
(1, 12974),
(1, 13002),
(1, 13048),
(1, 16494),
(1, 18499),
(1, 20230),
(1, 20503),
(1, 20560),
(1, 20569),
(1, 20617),
(1, 20662),
(1, 23588),
(1, 23894),
(1, 25286),
(1, 25288),
(1, 25289);

-- Retribution Paladin Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(2, 12640, 1506, 0), -- Lionheart Helm
(2, 15411, 0, 0), -- Mark of Fordring
(2, 12927, 2488, 0), -- Truestrike Shoulders
(2, 13340, 849, 0), -- Cape of the Black Baron
(2, 11726, 1891, 0), -- Savage Gladiator Chain
(2, 12936, 1885, 0), -- Battleborn Armbraces
(2, 13957, 927, 0), -- Gargoyle Slashers
(2, 13959, 0, 0), -- Omokk's Girth Restrainer
(2, 14554, 1506, 0), -- Cloudkeeper Legplates
(2, 14616, 1887, 0), -- Bloodmail Boots
(2, 13098, 0, 0), -- Painweaver Band
(2, 12548, 469, 0), -- Magni's Will
(2, 17713, 67, 0), -- Blackstone Ring
(2, 11815, 0, 0), -- Hand of Justice
(2, 13965, 0, 0), -- Blackhand's Breadth
(2, 12784, 1900, 0); -- Arcanite Reaper

-- Retribution Paladin PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(2, 1020),
(2, 1038),
(2, 1044),
(2, 1152),
(2, 3127),
(2, 4987),
(2, 5573),
(2, 10278),
(2, 10293),
(2, 10301),
(2, 10308),
(2, 10310),
(2, 10314),
(2, 10318),
(2, 10326),
(2, 13819),
(2, 19746),
(2, 19752),
(2, 19896),
(2, 19898),
(2, 19900),
(2, 19943),
(2, 19979),
(2, 20048),
(2, 20059),
(2, 20066),
(2, 20104),
(2, 20113),
(2, 20121),
(2, 20142),
(2, 20164),
(2, 20193),
(2, 20208),
(2, 20218),
(2, 20266),
(2, 20271),
(2, 20293),
(2, 20308),
(2, 20337),
(2, 20349),
(2, 20357),
(2, 20729),
(2, 20773),
(2, 20920),
(2, 20924),
(2, 23214),
(2, 24239),
(2, 25290),
(2, 25291),
(2, 25292),
(2, 25780),
(2, 25890),
(2, 25895),
(2, 25916),
(2, 25918),
(2, 25957),
(2, 26023),
(2, 33391);

-- Hunter Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(3, 13404, 1508, 0), -- Mask of the Unforgiven
(3, 15411, 0, 0), -- Mark of Fordring
(3, 12927, 2488, 0), -- Truestrike Shoulders
(3, 13340, 849, 0), -- Cape of the Black Baron
(3, 11726, 1891, 0), -- Savage Gladiator Chain
(3, 13211, 247, 0), -- Slashclaw Bracers
(3, 15062, 1508, 0), -- Devilsaur Leggings
(3, 15063, 1887, 0), -- Devilsaur Gauntlets
(3, 12634, 0, 0), -- Chiselbrand Girdle
(3, 16675, 1887, 0), -- Beaststalker's Boots
(3, 17713, 0, 0), -- Blackstone Ring
(3, 13098, 0, 0), -- Painweaver Band
(3, 13965, 0, 0), -- Blackhand's Breadth
(3, 11815, 0, 0), -- Hand of Justice
(3, 12940, 1897, 0), -- Dal'Rend's Sacred Charge
(3, 12939, 1897, 0), -- Dal'Rend's Tribal Guardian
(3, 2099, 664, 0); -- Dwarven Hand Cannon

-- Marksmanship / Survival PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(3, 883),
(3, 982),
(3, 1002),
(3, 1462),
(3, 1494),
(3, 1515),
(3, 1543),
(3, 2641),
(3, 3045),
(3, 3127),
(3, 4195),
(3, 4196),
(3, 4197),
(3, 4198),
(3, 4199),
(3, 4200),
(3, 4201),
(3, 4202),
(3, 5048),
(3, 5049),
(3, 5116),
(3, 5118),
(3, 5149),
(3, 5384),
(3, 6197),
(3, 6991),
(3, 13159),
(3, 13161),
(3, 13163),
(3, 13544),
(3, 13809),
(3, 14266),
(3, 14268),
(3, 14271),
(3, 14273),
(3, 14277),
(3, 14280),
(3, 14287),
(3, 14295),
(3, 14305),
(3, 14311),
(3, 14317),
(3, 14325),
(3, 14327),
(3, 14923),
(3, 14924),
(3, 14925),
(3, 14926),
(3, 14927),
(3, 15632),
(3, 19153),
(3, 19160),
(3, 19258),
(3, 19263),
(3, 19297),
(3, 19420),
(3, 19422),
(3, 19431),
(3, 19490),
(3, 19500),
(3, 19503),
(3, 19511),
(3, 19553),
(3, 19878),
(3, 19879),
(3, 19880),
(3, 19882),
(3, 19883),
(3, 19884),
(3, 19885),
(3, 20190),
(3, 20904),
(3, 20906),
(3, 24283),
(3, 24295),
(3, 24440),
(3, 24441),
(3, 24463),
(3, 24464),
(3, 24475),
(3, 24476),
(3, 24477),
(3, 24478),
(3, 24490),
(3, 24494),
(3, 24495),
(3, 24508),
(3, 24509),
(3, 24510),
(3, 24511),
(3, 24512),
(3, 24513),
(3, 24514),
(3, 24515),
(3, 24516),
(3, 24547),
(3, 24556),
(3, 24557),
(3, 24558),
(3, 24559),
(3, 24560),
(3, 24561),
(3, 24562),
(3, 24631),
(3, 24632),
(3, 24691),
(3, 25294),
(3, 25295),
(3, 25296);

-- Rogue Sword Spec Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(4, 13404, 1508, 0), -- Mask of the Unforgiven
(4, 15411, 0, 0), -- Mark of Fordring
(4, 12927, 2488, 0), -- Truestrike Shoulders
(4, 13340, 849, 0), -- Cape of the Black Baron
(4, 14637, 1891, 0), -- Cadaverous Armor
(4, 13120, 1885, 0), -- Deepfury Bracers
(4, 15062, 1508, 0), -- Devilsaur Leggings
(4, 15063, 1887, 0), -- Devilsaur Gauntlets
(4, 13252, 0, 0), -- Cloudrunner Girdle
(4, 12553, 1887, 0), -- Swiftwalker Boots
(4, 17713, 0, 0), -- Blackstone Ring
(4, 13098, 0, 0), -- Painweaver Band
(4, 11815, 0, 0), -- Hand of Justice
(4, 13965, 0, 0), -- Blackhand's Breadth
(4, 12940, 1897, 0), -- Dal'Rend's Sacred Charge
(4, 12939, 1900, 0), -- Dal'Rend's Tribal Guardian
(4, 12651, 664, 0); -- Blackcrow

-- Combat Swords Rogue PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(4, 921),
(4, 1725),
(4, 1769),
(4, 1787),
(4, 1804),
(4, 1833),
(4, 1842),
(4, 1857),
(4, 1860),
(4, 2094),
(4, 2836),
(4, 2842),
(4, 3127),
(4, 3421),
(4, 5277),
(4, 6510),
(4, 6774),
(4, 8643),
(4, 11198),
(4, 11269),
(4, 11275),
(4, 11286),
(4, 11290),
(4, 11294),
(4, 11297),
(4, 11300),
(4, 11305),
(4, 11343),
(4, 11400),
(4, 13230),
(4, 13712),
(4, 13750),
(4, 13792),
(4, 13845),
(4, 13852),
(4, 13863),
(4, 13872),
(4, 13875),
(4, 13877),
(4, 13964),
(4, 14137),
(4, 14142),
(4, 14159),
(4, 14161),
(4, 14167),
(4, 14179),
(4, 18429),
(4, 25300),
(4, 25302),
(4, 25347),
(4, 30920);

-- Shadow Priest Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(5, 14111, 1509, 0), -- Felcloth Hood
(5, 12103, 0, 0), -- Star of Mystaria
(5, 14112, 2488, 0), -- Felcloth Shoulders
(5, 15421, 1888, 0), -- Shroud of the Exile
(5, 14136, 1891, 0), -- Robe of Winter Night
(5, 11766, 1883, 0), -- Flameweave Cuffs of Shadow Wrath
(5, 13170, 1509, 0), -- Skyshroud Leggings
(5, 13253, 930, 0), -- Hands of Power
(5, 11662, 0, 0), -- Ban'thok Sash
(5, 11822, 911, 0), -- Omnicast Boots
(5, 12543, 0, 469), -- Songstone of Ironforge
(5, 12545, 0, 67), -- Eye of Orgrimmar
(5, 13001, 0, 0), -- Maiden's Circle
(5, 12930, 0, 0), -- Briarwood Reed
(5, 11832, 0, 0), -- Burst of Knowledge
(5, 13349, 2504, 0), -- Scepter of the Unholy
(5, 11904, 0, 0), -- Spirit of Aquementas
(5, 13396, 0, 0); -- Skul's Ghastly Touch

-- Shadow Priest PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(5, 528),
(5, 552),
(5, 988),
(5, 1706),
(5, 2053),
(5, 6064),
(5, 9485),
(5, 10876),
(5, 10890),
(5, 10894),
(5, 10901),
(5, 10909),
(5, 10912),
(5, 10917),
(5, 10934),
(5, 10938),
(5, 10942),
(5, 10947),
(5, 10952),
(5, 10953),
(5, 10958),
(5, 14523),
(5, 14528),
(5, 14751),
(5, 14767),
(5, 14769),
(5, 14777),
(5, 14783),
(5, 15261),
(5, 15286),
(5, 15310),
(5, 15317),
(5, 15320),
(5, 15330),
(5, 15334),
(5, 15338),
(5, 15473),
(5, 17325),
(5, 18807),
(5, 20770),
(5, 21564),
(5, 25314),
(5, 25315),
(5, 25316),
(5, 27683);

-- Elemental Shaman Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(6, 12752, 2544, 0), -- Cap of the Scarlet Savant
(6, 12103, 0, 0), -- Star of Mystaria
(6, 13133, 2488, 0), -- Drakesfire Epaulets
(6, 11623, 1888, 0), -- Spritecaster Cape
(6, 12624, 1891, 0), -- Wildthorn Mail
(6, 11765, 1883, 0), -- Pyremail Wristguards of Nature's Wrath
(6, 13170, 2544, 0), -- Skyshroud Leggings
(6, 13253, 930, 0), -- Hands of Power
(6, 11662, 0, 0), -- Ban'thok Sash
(6, 13954, 911, 0), -- Verdant Footpads
(6, 13001, 0, 0), -- Maiden's Circle
(6, 12545, 0, 67), -- Eye of Orgrimmar
(6, 11824, 0, 469), -- Cyclopean Band
(6, 12930, 0, 0), -- Briarwood Reed
(6, 13968, 0, 0), -- Eye of the Beast
(6, 13161, 2504, 0); -- Trindlehaven Staff

-- Elemental Shaman PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(6, 131),
(6, 526),
(6, 546),
(6, 556),
(6, 2484),
(6, 2645),
(6, 2870),
(6, 6196),
(6, 6495),
(6, 8012),
(6, 8143),
(6, 8166),
(6, 8170),
(6, 8177),
(6, 10408),
(6, 10414),
(6, 10428),
(6, 10432),
(6, 10438),
(6, 10463),
(6, 10468),
(6, 10473),
(6, 10479),
(6, 10497),
(6, 10538),
(6, 10587),
(6, 10601),
(6, 10605),
(6, 10614),
(6, 10623),
(6, 11315),
(6, 15112),
(6, 15208),
(6, 16089),
(6, 16108),
(6, 16112),
(6, 16120),
(6, 16161),
(6, 16164),
(6, 16166),
(6, 16189),
(6, 16198),
(6, 16209),
(6, 16217),
(6, 16221),
(6, 16224),
(6, 16316),
(6, 16342),
(6, 16356),
(6, 16362),
(6, 16387),
(6, 16582),
(6, 20608),
(6, 20777),
(6, 25357),
(6, 25359),
(6, 25361),
(6, 25908),
(6, 28998),
(6, 29000),
(6, 29228);

-- Frost Mage Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(7, 14332, 1509, 0), -- Eternal Crown
(7, 12103, 0, 0), -- Star of Mystaria
(7, 11782, 2488, 0), -- Boreal Mantle
(7, 13386, 1888, 0), -- Archivist Cape
(7, 14152, 1891, 0), -- Robe of the Archmage
(7, 11766, 1883, 0), -- Flameweave Cuffs
(7, 13170, 1509, 0), -- Skyshroud Leggings
(7, 13253, 930, 0), -- Hands of Power
(7, 11662, 0, 0), -- Ban'thok Sash
(7, 11822, 911, 0), -- Omnicast Boots
(7, 942, 0, 0), -- Freezing Band
(7, 942, 0, 0), -- Freezing Band
(7, 12930, 0, 0), -- Briarwood Reed
(7, 13968, 0, 0), -- Eye of the Beast
(7, 13964, 2443, 0), -- Witchblade
(7, 10796, 0, 0), -- Drakestone
(7, 13938, 0, 0); -- Bonecreeper Stylus

-- Arcane Power / Frost Mage PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(7, 130),
(7, 475),
(7, 759),
(7, 1953),
(7, 2139),
(7, 2855),
(7, 3552),
(7, 3561),
(7, 3562),
(7, 3565),
(7, 7301),
(7, 10053),
(7, 10054),
(7, 10059),
(7, 10139),
(7, 10157),
(7, 10161),
(7, 10170),
(7, 10174),
(7, 10187),
(7, 10193),
(7, 10199),
(7, 10202),
(7, 10207),
(7, 10216),
(7, 10220),
(7, 10225),
(7, 10230),
(7, 11416),
(7, 11419),
(7, 12042),
(7, 12043),
(7, 12051),
(7, 12469),
(7, 12503),
(7, 12519),
(7, 12577),
(7, 12592),
(7, 12826),
(7, 12840),
(7, 12953),
(7, 15053),
(7, 15060),
(7, 16757),
(7, 16766),
(7, 18464),
(7, 22783),
(7, 23028),
(7, 25304),
(7, 25306),
(7, 25345),
(7, 28272),
(7, 28574),
(7, 28609),
(7, 28612),
(7, 29440),
(7, 29446);

-- Warlock Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(8, 12752, 1509, 0), -- Cap of the Scarlet Savant
(8, 12103, 0, 0), -- Star of Mystaria
(8, 14112, 2488, 0), -- Felcloth Shoulders
(8, 10249, 1888, 0), -- Master's Cloak
(8, 14153, 1891, 0), -- Robe of the Void
(8, 10248, 1883, 0), -- Master's Bracers
(8, 13170, 1509, 0), -- Skyshroud Leggings
(8, 14146, 930, 0), -- Gloves of Spell Mastery
(8, 11662, 0, 0), -- Ban'thok Sash
(8, 11822, 911, 0), -- Omnicast Boots
(8, 12543, 0, 469), -- Songstone of Ironforge
(8, 12545, 0, 67), -- Eye of Orgrimmar
(8, 13001, 0, 0), -- Maiden's Circle
(8, 13968, 0, 0), -- Eye of the Beast
(8, 12930, 0, 0), -- Briarwood Reed
(8, 17719, 0, 0), -- Inventor's Focal Sword
(8, 10796, 0, 0), -- Drakestone
(8, 13396, 0, 0); -- Skul's Ghastly Touch

-- Demonic Sacrifice / Ruin Warlock PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(8, 126),
(8, 132),
(8, 603),
(8, 688),
(8, 691),
(8, 696),
(8, 697),
(8, 698),
(8, 712),
(8, 2970),
(8, 5500),
(8, 5697),
(8, 5784),
(8, 6215),
(8, 11675),
(8, 11678),
(8, 11684),
(8, 11689),
(8, 11695),
(8, 11700),
(8, 11703),
(8, 11708),
(8, 11713),
(8, 11717),
(8, 11719),
(8, 11722),
(8, 11726),
(8, 11730),
(8, 11735),
(8, 11743),
(8, 17728),
(8, 17779),
(8, 17792),
(8, 17803),
(8, 17814),
(8, 17862),
(8, 17918),
(8, 17923),
(8, 17924),
(8, 17926),
(8, 17928),
(8, 17953),
(8, 17959),
(8, 18134),
(8, 18175),
(8, 18183),
(8, 18647),
(8, 18693),
(8, 18701),
(8, 18707),
(8, 18708),
(8, 18710),
(8, 18751),
(8, 18771),
(8, 18788),
(8, 18871),
(8, 20757),
(8, 23161),
(8, 25307),
(8, 25309),
(8, 25311),
(8, 28610),
(8, 33391);

-- Balance Druid Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(9, 10504, 1509, 0), -- Green Lens
(9, 12103, 0, 0), -- Star of Mystaria
(9, 13013, 2488, 0), -- Elder Wizard's Mantle
(9, 11623, 1888, 0), -- Spritecaster Cape
(9, 11924, 1891, 0), -- Robes of the Royal Crown
(9, 11766, 1883, 0), -- Flameweave Cuffs
(9, 13170, 1509, 0), -- Skyshroud Leggings
(9, 13253, 930, 0), -- Hands of Power
(9, 11662, 0, 0), -- Ban'thok Sash
(9, 11822, 911, 0), -- Omnicast Boots 
(9, 12543, 0, 469), -- Songstone of Ironforge
(9, 12545, 0, 67), -- Eye of Orgrimmar
(9, 13001, 0, 0), -- Maiden's Circle
(9, 12930, 0, 0), -- Briarwood Reed
(9, 13968, 0, 0), -- Eye of the Beast
(9, 13964, 0, 0), -- Witchblade
(9, 10796, 0, 0); -- Drakestone

-- Balance Druid PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(9, 768),
(9, 783),
(9, 1066),
(9, 2782),
(9, 2893),
(9, 5209),
(9, 5225),
(9, 5229),
(9, 6795),
(9, 8983),
(9, 9634),
(9, 9821),
(9, 9827),
(9, 9830),
(9, 9835),
(9, 9846),
(9, 9850),
(9, 9853),
(9, 9858),
(9, 9863),
(9, 9867),
(9, 9881),
(9, 9885),
(9, 9892),
(9, 9896),
(9, 9898),
(9, 9901),
(9, 9904),
(9, 9907),
(9, 9908),
(9, 9910),
(9, 9912),
(9, 9913),
(9, 16820),
(9, 16825),
(9, 16835),
(9, 16847),
(9, 16880),
(9, 16901),
(9, 16913),
(9, 16919),
(9, 16926),
(9, 17055),
(9, 17068),
(9, 17108),
(9, 17249),
(9, 17329),
(9, 17402),
(9, 18658),
(9, 20719),
(9, 20748),
(9, 21850),
(9, 22812),
(9, 22829),
(9, 22896),
(9, 24858),
(9, 24977),
(9, 25297),
(9, 25298),
(9, 25299),
(9, 29166);

-- Holy Paladin Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(10, 12633, 1509, 0), -- Whitesoul Helm
(10, 13141, 0, 0), -- Tooth of Gnarr
(10, 12625, 2488, 0), -- Dawnbringer Shoulders
(10, 11623, 1888, 0), -- Spritecaster Cape
(10, 13346, 1891, 0), -- Robes of the Exalted
(10, 13969, 1883, 0), -- Loomguard Armbraces
(10, 13170, 1509, 0), -- Skyshroud Leggings
(10, 12554, 930, 0), -- Hands of the Exalted Herald
(10, 14553, 0, 0), -- Sash of Mercy
(10, 13954, 911, 0), -- Verdant Footpads
(10, 16058, 0, 0), -- Fordring's Seal
(10, 13178, 0, 0), -- Rosewine Circle
(10, 11819, 0, 0), -- Second Wind
(10, 12930, 0, 0), -- Briarwood Reed
(10, 11923, 2505, 0), -- The Hammer of Grace
(10, 11928, 0, 0); -- Thaurissan's Royal Scepter
-- Holy Paladin PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(10, 1020),
(10, 1038),
(10, 1044),
(10, 1152),
(10, 3127),
(10, 4987),
(10, 5573),
(10, 10278),
(10, 10293),
(10, 10301),
(10, 10308),
(10, 10310),
(10, 10314),
(10, 10318),
(10, 10326),
(10, 13819),
(10, 19746),
(10, 19752),
(10, 19896),
(10, 19898),
(10, 19900),
(10, 19943),
(10, 19979),
(10, 20048),
(10, 20142),
(10, 20164),
(10, 20175),
(10, 20193),
(10, 20208),
(10, 20215),
(10, 20216),
(10, 20217),
(10, 20235),
(10, 20239),
(10, 20245),
(10, 20261),
(10, 20271),
(10, 20293),
(10, 20308),
(10, 20349),
(10, 20357),
(10, 20361),
(10, 20729),
(10, 20773),
(10, 20924),
(10, 20930),
(10, 23214),
(10, 24239),
(10, 25290),
(10, 25291),
(10, 25292),
(10, 25780),
(10, 25829),
(10, 25836),
(10, 25890),
(10, 25895),
(10, 25898),
(10, 25916),
(10, 25918),
(10, 33391);

-- Priest Healing Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(11, 13102, 1509, 0), -- Cassandra's Grace
(11, 13141, 0, 0), -- Tooth of Gnarr
(11, 13013, 2488, 0), -- Elder Wizard's Mantle
(11, 13386, 1888, 0), -- Archivist Cape
(11, 14154, 1891, 0), -- Truefaith Vestments
(11, 13107, 1884, 0), -- Magiskull Cuffs
(11, 13170, 1509, 0), -- Skyshroud Leggings
(11, 12554, 930, 0), -- Hands of the Exalted Herald
(11, 12589, 0, 0), -- Dustfeather Sash
(11, 11822, 911, 0), -- Omnicast Boots
(11, 16058, 0, 0), -- Fordring's Seal
(11, 13001, 0, 0), -- Maiden's Circle
(11, 11819, 0, 0), -- Second Wind
(11, 12930, 0, 0), -- Briarwood Reed
(11, 11923, 2505, 0), -- The Hammer of Grace
(11, 11928, 0, 0), -- Thaurissan's Royal Scepter
(11, 13938, 0, 0); -- Bonecreeper Stylus
-- Holy Priest PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(11, 528),
(11, 552),
(11, 988),
(11, 1706),
(11, 2053),
(11, 6064),
(11, 9485),
(11, 10876),
(11, 10890),
(11, 10894),
(11, 10901),
(11, 10909),
(11, 10912),
(11, 10917),
(11, 10934),
(11, 10938),
(11, 10942),
(11, 10947),
(11, 10952),
(11, 10953),
(11, 10958),
(11, 14523),
(11, 14751),
(11, 14767),
(11, 14769),
(11, 14777),
(11, 14783),
(11, 14791),
(11, 15011),
(11, 15014),
(11, 15020),
(11, 15031),
(11, 15261),
(11, 15356),
(11, 15363),
(11, 18535),
(11, 20770),
(11, 21564),
(11, 25314),
(11, 25315),
(11, 25316),
(11, 27681),
(11, 27683),
(11, 27789),
(11, 27801),
(11, 27841);

-- Restoration Shaman Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(12, 13216, 1509, 0), -- Crown of the Penitent
(12, 13141, 0, 0), -- Tooth of Gnarr
(12, 14548, 2488, 0), -- Royal Cap Spaulders
(12, 13386, 1888, 0), -- Archivist Cape
(12, 13346, 1891, 0), -- Robes of the Exalted
(12, 13969, 1883, 0), -- Loomguard Armbraces
(12, 11841, 1509, 0), -- Senior Designer's Pantaloons
(12, 12554, 930, 0), -- Hands of the Exalted Herald
(12, 14553, 0, 0), -- Sash of Mercy
(12, 11822, 911, 0), -- Omnicast Boots
(12, 16058, 0, 0), -- Fordring's Seal
(12, 13178, 0, 0), -- Rosewine Circle
(12, 12930, 0, 0), -- Briarwood Reed
(12, 11819, 0, 0), -- Second Wind
(12, 11923, 2505, 0), -- The Hammer of Grace
(12, 17718, 929, 0); -- Gizlock's Hypertech Buckler
-- Restoration Shaman PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(12, 131),
(12, 526),
(12, 546),
(12, 556),
(12, 2484),
(12, 2645),
(12, 2870),
(12, 6196),
(12, 6495),
(12, 8012),
(12, 8143),
(12, 8166),
(12, 8170),
(12, 8177),
(12, 10408),
(12, 10414),
(12, 10428),
(12, 10432),
(12, 10438),
(12, 10463),
(12, 10468),
(12, 10473),
(12, 10479),
(12, 10497),
(12, 10538),
(12, 10587),
(12, 10601),
(12, 10605),
(12, 10614),
(12, 10623),
(12, 11315),
(12, 15112),
(12, 15208),
(12, 16188),
(12, 16189),
(12, 16190),
(12, 16208),
(12, 16209),
(12, 16213),
(12, 16217),
(12, 16221),
(12, 16225),
(12, 16229),
(12, 16234),
(12, 16240),
(12, 16316),
(12, 16342),
(12, 16356),
(12, 16362),
(12, 16387),
(12, 17489),
(12, 20608),
(12, 20777),
(12, 25357),
(12, 25359),
(12, 25361),
(12, 25908),
(12, 29202),
(12, 29228);

-- Restoration Druid Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(13, 13102, 1483, 0), -- Cassandra's Grace
(13, 13141, 0, 0), -- Tooth of Gnarr
(13, 15061, 2488, 0), -- Living Shoulders
(13, 13386, 1888, 0), -- Archivist Cape
(13, 13346, 1891, 0), -- Robes of the Exalted
(13, 13208, 1884, 0), -- Bleak Howler Armguards
(13, 12554, 930, 0), -- Hands of the Exalted Herald
(13, 14553, 0, 0), -- Sash of Mercy
(13, 11841, 1483, 0), -- Senior Designer's Pantaloons
(13, 13954, 911, 0), -- Verdant Footpads
(13, 13143, 0, 0), -- Mark of the Dragon Lord
(13, 13178, 0, 0), -- Rosewine Circle
(13, 12930, 0, 0), -- Briarwood Reed
(13, 11819, 0, 0), -- Second Wind
(13, 11923, 2505, 0), -- The Hammer of Grace
(13, 11928, 0, 0); -- Thaurissan's Royal Scepter 
-- Swiftmend Restoration Druid PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(13, 768),
(13, 783),
(13, 1066),
(13, 2782),
(13, 2893),
(13, 5209),
(13, 5225),
(13, 5229),
(13, 6795),
(13, 8983),
(13, 9634),
(13, 9821),
(13, 9827),
(13, 9830),
(13, 9835),
(13, 9846),
(13, 9850),
(13, 9853),
(13, 9858),
(13, 9863),
(13, 9867),
(13, 9881),
(13, 9885),
(13, 9892),
(13, 9896),
(13, 9898),
(13, 9901),
(13, 9904),
(13, 9907),
(13, 9908),
(13, 9910),
(13, 9912),
(13, 9913),
(13, 16818),
(13, 16820),
(13, 16840),
(13, 17055),
(13, 17065),
(13, 17073),
(13, 17078),
(13, 17108),
(13, 17113),
(13, 17116),
(13, 17249),
(13, 17329),
(13, 17402),
(13, 18562),
(13, 18658),
(13, 20719),
(13, 20748),
(13, 21850),
(13, 22812),
(13, 22829),
(13, 22896),
(13, 24946),
(13, 24972),
(13, 24977),
(13, 25297),
(13, 25298),
(13, 25299),
(13, 29166);

-- Protection Warrior Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(14, 12640, 1503, 0), -- Lionheart Helm
(14, 13091, 0, 0), -- Medallion of Grand Marshal Morris
(14, 16733, 2488, 0), -- Spaulders of Valor
(14, 13397, 1889, 0), -- Stoneskin Gargoyle Cape
(14, 11726, 1891, 0), -- Savage Gladiator Chain
(14, 16735, 1886, 0), -- Bracers of Valor
(14, 13072, 1887, 0), -- Stonegrip Gauntlets
(14, 13142, 0, 0), -- Brigam Girdle
(14, 14554, 1503, 0), -- Cloudkeeper Legplates
(14, 13259, 911, 0), -- Ribsteel Footguards
(14, 2246, 0, 0), -- Myrmidon's Signet
(14, 17713, 0, 0), -- Blackstone Ring
(14, 11815, 0, 0), -- Hand of Justice
(14, 17774, 0, 0), -- Mark of the Chosen
(14, 13015, 1900, 67), -- Serathil
(14, 15806, 1900, 469), -- Mirah's Song
(14, 12602, 929, 0), -- Draconian Deflector
(14, 12651, 664, 0); -- Blackcrow
-- Deep Protection Warrior PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(14, 71),
(14, 355),
(14, 676),
(14, 871),
(14, 1161),
(14, 1672),
(14, 1680),
(14, 1719),
(14, 2458),
(14, 2565),
(14, 2687),
(14, 3127),
(14, 5246),
(14, 6554),
(14, 7373),
(14, 11556),
(14, 11574),
(14, 11578),
(14, 11581),
(14, 11585),
(14, 11597),
(14, 11605),
(14, 12296),
(14, 12312),
(14, 12679),
(14, 12727),
(14, 12764),
(14, 12765),
(14, 12792),
(14, 12800),
(14, 12809),
(14, 12811),
(14, 12818),
(14, 12856),
(14, 12945),
(14, 12975),
(14, 16466),
(14, 16542),
(14, 18499),
(14, 20230),
(14, 20560),
(14, 20569),
(14, 20617),
(14, 20662),
(14, 23925),
(14, 25286),
(14, 25288),
(14, 25289);

-- Protection Paladin Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(15, 871, 1900, 0), -- Flurry Axe
(15, 1168, 863, 0), -- Skullflame Shield
(15, 11746, 1503, 0), -- Golem Skull Helm
(15, 14623, 1503, 0), -- Deathbone Legguards
(15, 15413, 1891, 0), -- Ornate Adamantium Breastplate
(15, 14552, 2488, 0), -- Stockade Pauldrons
(15, 14622, 1887, 0), -- Deathbone Gauntlets
(15, 13951, 923, 0), -- Vigorsteel Vambraces
(15, 11930, 1889, 0), -- The Emperor's New Cape
(15, 13091, 0, 0), -- Medallion of Grand Marshal Morris
(15, 14621, 911, 0), -- Deathbone Sabatons
(15, 14620, 0, 0), -- Deathbone Girdle
(15, 11669, 0, 0), -- Naglering
(15, 15855, 0, 0), -- Ring of Protection
(15, 11810, 0, 0), -- Force of Will
(15, 17774, 0, 0); -- Mark of the Chosen
-- Mitigation Protection Paladin PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(15, 1020),
(15, 1038),
(15, 1044),
(15, 1152),
(15, 3127),
(15, 4987),
(15, 5573),
(15, 10278),
(15, 10293),
(15, 10301),
(15, 10308),
(15, 10310),
(15, 10314),
(15, 10318),
(15, 10326),
(15, 13819),
(15, 19746),
(15, 19752),
(15, 19896),
(15, 19898),
(15, 19900),
(15, 19943),
(15, 19979),
(15, 20063),
(15, 20100),
(15, 20105),
(15, 20137),
(15, 20142),
(15, 20147),
(15, 20150),
(15, 20164),
(15, 20193),
(15, 20261),
(15, 20271),
(15, 20293),
(15, 20308),
(15, 20332),
(15, 20349),
(15, 20357),
(15, 20470),
(15, 20729),
(15, 20773),
(15, 20914),
(15, 20924),
(15, 20928),
(15, 23214),
(15, 24239),
(15, 25290),
(15, 25291),
(15, 25292),
(15, 25780),
(15, 25890),
(15, 25895),
(15, 25899),
(15, 25916),
(15, 25918),
(15, 33391);

-- Druid Tanking Pre Raid Bis
INSERT INTO `player_premade_item` (`entry`, `item`, `enchant`, `team`) VALUES
(16, 13404, 1508, 0), -- Mask of the Unforgiven
(16, 11755, 0, 0), -- Verek's Collar
(16, 12927, 2488, 0), -- Truestrike Shoulders
(16, 12551, 849, 0), -- Stoneshield Cloak
(16, 12757, 1891, 0), -- Breastplate of Bloodthirst
(16, 12966, 1886, 0), -- Blackmist Armguards
(16, 15063, 1887, 0), -- Devilsaur Gauntlets 
(16, 14502, 0, 0), -- Frostbite Girdle
(16, 15062, 1508, 0), -- Devilsaur Leggings
(16, 14641, 1887, 0), -- Cadaverous Walkers
(16, 15855, 0, 0), -- Ring of Protection
(16, 12544, 0, 67), -- Thrall's Resolve
(16, 11669, 0, 469), -- Naglering
(16, 11811, 0, 0), -- Smoking Heart of the Mountain
(16, 13966, 0, 0), -- Mark of Tyranny
(16, 943, 2646, 0); -- Warden Staff
-- Feral Druid Bear Tank PvE
INSERT INTO `player_premade_spell` (`entry`, `spell`) VALUES 
(16, 768),
(16, 783),
(16, 1066),
(16, 2782),
(16, 2893),
(16, 5209),
(16, 5225),
(16, 5229),
(16, 6795),
(16, 8983),
(16, 9634),
(16, 9821),
(16, 9827),
(16, 9830),
(16, 9835),
(16, 9846),
(16, 9850),
(16, 9853),
(16, 9858),
(16, 9863),
(16, 9867),
(16, 9881),
(16, 9885),
(16, 9892),
(16, 9896),
(16, 9898),
(16, 9901),
(16, 9904),
(16, 9907),
(16, 9908),
(16, 9910),
(16, 9912),
(16, 9913),
(16, 16864),
(16, 16906),
(16, 16933),
(16, 16938),
(16, 16944),
(16, 16951),
(16, 16961),
(16, 16975),
(16, 16979),
(16, 16999),
(16, 17007),
(16, 17061),
(16, 17082),
(16, 17249),
(16, 17329),
(16, 17392),
(16, 17402),
(16, 18658),
(16, 20719),
(16, 20748),
(16, 21850),
(16, 22812),
(16, 22829),
(16, 22896),
(16, 24894),
(16, 25297),
(16, 25298),
(16, 25299),
(16, 29166);


-- Remove not needed custom text entries
DELETE FROM `script_texts` WHERE `entry` IN (-1000499, -1000500);

-- Remove wrong waypoints for Overlord Mok'Morokk
DELETE FROM `script_waypoint` WHERE `entry`=4500;

-- Waypoints for Overlord Mok'Morokk
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(4500, 1, -3138.42, -2871.17, 34.7173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 2, -3136.71, -2858.31, 34.7277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 3, -3120.89, -2847.41, 34.7246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 4, -3108.02, -2841.21, 34.325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 5, -3096.59, -2824.43, 34.2116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 6, -3093.38, -2818.37, 34.429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 7, -3099.71, -2808.6, 34.266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 8, -3104.32, -2798.5, 33.9432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 9, -3106, -2783.15, 34.3499, 5000, 0, 450009, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4500, 10, -3106, -2783.15, 34.3499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Waypoint script for Overlord Mok'Morokk
DELETE FROM `creature_movement_scripts` WHERE `id`=450009;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450009, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk - Despawn');

-- Start script for quest Challenge Overlord Mok'Morokk
DELETE FROM `quest_start_scripts` WHERE `id`=1173;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 0, 61, 1173, 300, 0, 0, 0, 0, 0, 8, 0, 117301, 6304, 117302, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Start Map Event');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 2, 4, 147, 2, 2, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Remove Quest Giver Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 2, 22, 168, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Set Faction to Enemy');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 2, 4, 46, 256, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Remove Immune to Player Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 2, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Set Phase to 1');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1515, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Say Text');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1173, 3, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk: Overlord Mok\'Morokk - Start Attack');

-- Success script for quest Challenge Overlord Mok'Morokk
DELETE FROM `event_scripts` WHERE `id`=117301;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117301, 0, 7, 1173, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk Success: Complete Quest');

-- Fail script for quest Challenge Overlord Mok'Morokk
DELETE FROM `event_scripts` WHERE `id`=117302;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117302, 0, 70, 1173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk Failed: Fail Quest');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117302, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk Failed: Overlord Mok\'Morokk - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117302, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1514, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk Failed: Overlord Mok\'Morokk - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117302, 1, 71, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Challenge Overlord Mok\'Morokk Failed: Overlord Mok\'Morokk - Respawn');

-- Assign script to quest template.
UPDATE `quest_template` SET `SpecialFlags`=2, `StartScript`=1173 WHERE `entry`=1173;

-- Events list for Overlord Mok'Morokk
DELETE FROM `creature_ai_events` WHERE `creature_id`=4500;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (450001, 4500, 0, 2, 5, 100, 0, 30, 1, 0, 0, 450001, 0, 0, 'Overlord Mok\'Morokk: Complete Event on 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (450002, 4500, 0, 21, 3, 100, 0, 0, 0, 0, 0, 450002, 0, 0, 'Overlord Mok\'Morokk: Start Waypints on Reached Home');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (450003, 4500, 0, 11, 0, 100, 0, 0, 0, 0, 0, 450003, 0, 0, 'Overlord Mok\'Morokk: Reset Flags on Respawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (450004, 4500, 0, 7, 5, 100, 0, 0, 0, 0, 0, 450004, 0, 0, 'Overlord Mok\'Morokk: Fail Quest on Evade');
DELETE FROM `creature_ai_scripts` WHERE `id`=450001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450001, 0, 44, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Set Phase to 2');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450001, 0, 4, 46, 256, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Add Immune to Player Flag');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450001, 0, 62, 1173, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Complete Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450001, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Enter Evade Mode');
DELETE FROM `creature_ai_scripts` WHERE `id`=450002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450002, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1523, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450002, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Set Phase to 0');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450002, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Set Run');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450002, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Start Waypints');
DELETE FROM `creature_ai_scripts` WHERE `id`=450003;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450003, 0, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Add Quest Giver Flag');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450003, 0, 4, 46, 256, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Remove Immune to Player Flag');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450003, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: Set Phase to 0');
DELETE FROM `creature_ai_scripts` WHERE `id`=450004;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (450004, 0, 62, 1173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Mok\'Morokk: End Map Event');

-- Assign Event AI to Overlord Mok'Morokk
UPDATE `creature_template` SET `ai_name`='EventAI', `script_name`='' WHERE `entry`=4500;




SELECT t1.entry, t2.name, t1.faction, (select name FROM mangos.faction WHERE id IN (SELECT faction_id FROM mangos.faction_template WHERE id=t1.faction) LIMIT 1) AS 'faction1_name', t2.faction, (select name FROM mangos.faction WHERE id IN (SELECT faction_id FROM mangos.faction_template WHERE id=t2.faction) LIMIT 1) AS 'faction2_name'
FROM test.creature_template_sniff t1
LEFT JOIN mangos.creature_template t2 ON t2.entry = t1.entry
WHERE t1.faction != t2.faction








-- Wrong level.
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=4889;
UPDATE `creature_template` SET `level_min`=48, `level_max`=51 WHERE `entry`=4951;
UPDATE `creature_template` SET `level_min`=32, `level_max`=33 WHERE `entry`=5085;
UPDATE `creature_template` SET `level_min`=43, `level_max`=43 WHERE `entry`=4883;
UPDATE `creature_template` SET `level_min`=34, `level_max`=35 WHERE `entry`=5086;
UPDATE `creature_template` SET `level_min`=29, `level_max`=30 WHERE `entry`=5523;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=5674;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=5774;
UPDATE `creature_template` SET `level_min`=57, `level_max`=57 WHERE `entry`=7875;
UPDATE `creature_template` SET `level_min`=45, `level_max`=45 WHERE `entry`=8131;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=8881;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=8882;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=8883;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=8884;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=8885;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10204;
UPDATE `creature_template` SET `level_min`=10, `level_max`=10 WHERE `entry`=10582;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=11884;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=4968;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=10184;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=11502;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=11982;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=11988;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12018;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12056;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12057;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12098;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12118;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12259;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=12264;

-- Wrong faction.
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=223;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=1695;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2050;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2308;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2458;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2459;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2934;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3500;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3689;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4048;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4317;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4319;
UPDATE `creature_template` SET `faction`=312 WHERE `entry`=4376;
UPDATE `creature_template` SET `faction`=312 WHERE `entry`=4378;
UPDATE `creature_template` SET `faction`=312 WHERE `entry`=4379;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=4486;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4549;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4550;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4551;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4552;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4553;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4554;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4555;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4556;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4557;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4558;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4559;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4560;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4561;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4562;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4569;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4570;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4571;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4576;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4577;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4580;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4581;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4585;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4588;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4589;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4590;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4591;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4592;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4596;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4597;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4598;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4599;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4600;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4601;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4602;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4603;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4604;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4605;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4613;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4614;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4615;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4616;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4617;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4722;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4775;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=4791;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4876;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4877;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4878;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4889;
UPDATE `creature_template` SET `faction`=150 WHERE `entry`=4947;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5052;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5190;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5388;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5390;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5651;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5668;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5669;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5670;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5697;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5698;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5700;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5701;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5706;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5707;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5731;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5732;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5733;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5747;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5754;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5819;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5820;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5821;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6293;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6411;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=6550;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6576;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6741;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=7087;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=7683;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=7776;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=7777;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7823;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=7825;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=7854;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7870;
UPDATE `creature_template` SET `faction`=995 WHERE `entry`=7875;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8020;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=8021;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8142;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8143;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8144;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8145;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8146;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8158;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8159;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=8403;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=8672;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=8721;
UPDATE `creature_template` SET `faction`=106 WHERE `entry`=9118;
UPDATE `creature_template` SET `faction`=210 WHERE `entry`=9119;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9548;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9551;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10053;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10377;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10428;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10537;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10539;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10582;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10612;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10636;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10638;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10645;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10781;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10879;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10941;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11048;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11049;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11067;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11098;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11116;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11117;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11262;
UPDATE `creature_template` SET `faction`=1081 WHERE `entry`=11502;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11752;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11826;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11870;
UPDATE `creature_template` SET `faction`=103 WHERE `entry`=12129;
UPDATE `creature_template` SET `faction`=1081 WHERE `entry`=13338;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=13476;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=14373;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=14729;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15177;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15178;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15675;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15676;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15682;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15683;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15684;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15686;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15768;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4555;

-- Wrong walk speed.
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=223;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=620;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1420;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1695;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2110;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2914;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2934;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3000;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3689;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4095;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4096;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4099;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=4120;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4147;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4150;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4151;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4317;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4321;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4323;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4324;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=4328;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=4329;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=4331;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=4334;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4342;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4382;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4386;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4391;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4411;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4483;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4486;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4502;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4549;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4569;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4570;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4571;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4577;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4581;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4585;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4588;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4589;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4590;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4591;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4592;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4596;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4597;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4599;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4601;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4603;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4604;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4613;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4614;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4615;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4617;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4708;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4791;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4875;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4876;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4879;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4889;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4890;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4893;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4895;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4896;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4897;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4898;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4899;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4921;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4926;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4944;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4947;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4948;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4952;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4964;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4965;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4966;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4967;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4968;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4973;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4979;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5052;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5083;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5087;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5091;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5202;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5251;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=5253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5255;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=5258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5260;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5262;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5272;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5274;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5278;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5286;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5287;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5288;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5307;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5388;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5411;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5422;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5425;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5426;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=5428;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=5461;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5594;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5618;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5645;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5646;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5647;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5651;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5674;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5733;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5754;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5774;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5819;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5820;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5821;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6272;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6293;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6411;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6510;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6511;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6512;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6517;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6518;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6519;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6527;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6546;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6741;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7087;
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=7395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7408;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7583;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7683;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7725;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7726;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7733;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7773;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7777;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7799;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7804;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=7807;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7824;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7825;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7854;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7870;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7875;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7876;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7997;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8115;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8129;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8131;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8140;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8142;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8143;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8144;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8145;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8158;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8403;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8661;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8672;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8721;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8885;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9157;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9162;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9164;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=9165;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=9167;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9271;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9272;
UPDATE `creature_template` SET `speed_walk`=2.32 WHERE `entry`=9273;
UPDATE `creature_template` SET `speed_walk`=2.32 WHERE `entry`=9274;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=9396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9618;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9985;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9986;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9997;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9998;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10377;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10537;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10636;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10638;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10645;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10781;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10879;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10941;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11049;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11052;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11067;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11098;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11116;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11117;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11262;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11658;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11659;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11671;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11702;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11752;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11756;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11758;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11805;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11811;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11818;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11826;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11870;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11899;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11988;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12057;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12076;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12099;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12100;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12101;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12129;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12716;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12939;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13338;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13476;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14123;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14373;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14729;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14743;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15174;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15181;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15185;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15675;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15676;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15683;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15686;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16014;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10583;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15768;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16417;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17074;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15520;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6491;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11698;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5262;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4391;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4555;

-- Wrong run speed.
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=620;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1412;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1420;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=2110;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2914;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4119;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4118;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4117;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4120;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=4952;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=5202;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=5249;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=5255;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5428;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=5674;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5774;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6145;
UPDATE `creature_template` SET `speed_run`=0.571429 WHERE `entry`=6550;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7726;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=7807;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8147;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=8881;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=8882;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=8883;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=8884;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=8885;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9165;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9167;
UPDATE `creature_template` SET `speed_run`=0.828571 WHERE `entry`=9273;
UPDATE `creature_template` SET `speed_run`=0.828571 WHERE `entry`=9274;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11658;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11659;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11661;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11662;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11663;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11664;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=11665;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11666;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11667;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11668;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11669;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11671;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=11672;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11698;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11724;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11738;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=11884;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=11982;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=11988;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12018;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=12056;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12057;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12076;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12098;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12099;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12100;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12118;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12119;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12259;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12264;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13338;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=15185;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9460;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9460;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=6491;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11698;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11724;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=11982;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4117;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4118;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=4119;

-- Wrong melee attack timer.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4113;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4317;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4319;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4321;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4324;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4328;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4329;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4331;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4334;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4386;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4391;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=4500;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4551;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4947;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5434;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5624;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5645;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5646;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5647;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6550;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6560;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7584;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7823;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7824;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8020;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9396;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10182;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10184;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10377;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11262;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=11502;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11658;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11659;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11661;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11662;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11663;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=11664;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11666;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11667;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11668;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11669;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11671;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11672;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11673;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11698;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11702;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11724;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11870;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11899;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12018;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12056;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=12076;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12099;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=12100;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12101;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12119;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12129;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14402;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14403;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14404;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15177;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15178;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15181;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15182;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15184;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15185;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10583;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11698;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11724;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4391;

-- Wrong ranged attack timer.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4113;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4342;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4355;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4386;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4391;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4411;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4413;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4947;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5434;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6550;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9396;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10184;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10204;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11262;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11502;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11663;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11664;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11665;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11702;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11884;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12018;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12129;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13338;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4391;

-- Stats for Misha.
UPDATE `creature_template` SET `dmg_min`=755, `dmg_max`=1002, `armor`=3677, `health_min`=161850, `health_max`=161850 WHERE `entry`=10204;

-- Wrong gossip.
UPDATE `creature_template` SET `gossip_menu_id`=6944, `npc_flags`=`npc_flags`|1 WHERE `entry`=4317;
UPDATE `creature_template` SET `gossip_menu_id`=1421 WHERE `entry`=7773;
INSERT INTO `gossip_menu` VALUES (1421, 2053, 0);
UPDATE `creature_template` SET `gossip_menu_id`=6944, `npc_flags`=`npc_flags`|1 WHERE `entry`=8020;
UPDATE `creature_template` SET `gossip_menu_id`=5481 WHERE `entry`=10182;
INSERT INTO `gossip_menu` VALUES (5481, 6533, 0);
UPDATE `creature_template` SET `gossip_menu_id`=6526 WHERE `entry`=15175;
INSERT INTO `gossip_menu` VALUES (6526, 7728, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (6526, 0, 1, 'Let me browse your goods.', 8097, 3, 4, 0, 0, 0, 0, '', 0);
UPDATE `creature_template` SET `gossip_menu_id`=6562 WHERE `entry`=15178;
INSERT INTO `gossip_menu` VALUES (6562, 7778, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (6562, 0, 2, 'I need a ride.', 3409, 4, 8, 0, 0, 0, 0, '', 0);

-- Wrong health or mana.
UPDATE `creature_template` SET `health_min`=2059, `health_max`=2059 WHERE `entry`=4883 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1752, `health_max`=1752 WHERE `entry`=4889 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2062, `health_max`=2292 WHERE `entry`=4951 && `patch`=0;
UPDATE `creature_template` SET `health_min`=466400, `health_max`=466400, `mana_min`=123120, `mana_max`=123120 WHERE `entry`=4968 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1162, `health_max`=1221 WHERE `entry`=5085 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1279, `health_max`=1342 WHERE `entry`=5086 && `patch`=0;
UPDATE `creature_template` SET `health_max`=1002 WHERE `entry`=5523 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2097, `health_max`=2097 WHERE `entry`=5674 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=5774 && `patch`=0;
UPDATE `creature_template` SET `health_min`=8908, `health_max`=8908 WHERE `entry`=7875 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2217, `health_max`=2217 WHERE `entry`=8131 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=8881 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=8882 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=8883 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=8884 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=8885 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1099230, `health_max`=1099230 WHERE `entry`=10184 && `patch`=0;
UPDATE `creature_template` SET `health_min`=198, `health_max`=198 WHERE `entry`=10582 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=11884 && `patch`=0;
UPDATE `creature_template` SET `mana_min`=0, `mana_max`=0 WHERE `entry`=12018 && `patch`=0;
UPDATE `creature_template` SET `mana_min`=0, `mana_max`=0 WHERE `entry`=12056 && `patch`=0;


-- 79796


-- creature_movement
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2403, 2401, 2404, 2402, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=10807 WHERE `id`=108 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2403, 2401, 2404, 2402, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=10804 WHERE `id`=108 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2403, 2401, 2404, 2402, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=10801 WHERE `id`=108 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1121202, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=1121202 WHERE `id`=11212 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1123502, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=1123502 WHERE `id`=11235 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1377504, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=1377504 WHERE `id`=13775 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456710, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5539, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456710 WHERE `id`=4567 && `point`=10;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5540, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456708 WHERE `id`=4567 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5544, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456707 WHERE `id`=4567 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5546, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456706 WHERE `id`=4567 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5542, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456705 WHERE `id`=4567 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5545, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456704 WHERE `id`=4567 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5541, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456703 WHERE `id`=4567 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (456702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5543, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=456702 WHERE `id`=4567 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7975001, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=7975001 WHERE `id`=79750 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7975003, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=7975003 WHERE `id`=79750 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7975006, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=7975006 WHERE `id`=79750 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7975009, 0, 1, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=7975009 WHERE `id`=79750 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8012701, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8012701 WHERE `id`=80127 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8012704, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8012704 WHERE `id`=80127 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8012707, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8012707 WHERE `id`=80127 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8013701, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8013701 WHERE `id`=80137 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8013703, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8013703 WHERE `id`=80137 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8013705, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8013705 WHERE `id`=80137 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8014504, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8014504 WHERE `id`=80145 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8014505, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8014505 WHERE `id`=80145 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8014508, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8014508 WHERE `id`=80145 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8026201, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8026201 WHERE `id`=80262 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8026205, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8026205 WHERE `id`=80262 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8026209, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8026209 WHERE `id`=80262 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=11 WHERE `id`=79720 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972005 WHERE `id`=79720 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 705, 707, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972009 WHERE `id`=79720 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 693, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972013 WHERE `id`=79720 && `point`=13;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972017 WHERE `id`=79720 && `point`=17;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 708, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972021 WHERE `id`=79720 && `point`=21;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972025 WHERE `id`=79720 && `point`=25;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972029 WHERE `id`=79720 && `point`=29;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 705, 707, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972033 WHERE `id`=79720 && `point`=33;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 693, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972037 WHERE `id`=79720 && `point`=37;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972041 WHERE `id`=79720 && `point`=41;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 708, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972045 WHERE `id`=79720 && `point`=45;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972049 WHERE `id`=79720 && `point`=49;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972053 WHERE `id`=79720 && `point`=53;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 707, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972057 WHERE `id`=79720 && `point`=57;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 711, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7 WHERE `id`=79720 && `point`=58;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 693, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972061 WHERE `id`=79720 && `point`=61;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972065 WHERE `id`=79720 && `point`=65;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 708, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972069 WHERE `id`=79720 && `point`=69;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972073 WHERE `id`=79720 && `point`=73;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 710, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7972077 WHERE `id`=79720 && `point`=77;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7972081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 705, 707, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=7972081 WHERE `id`=79720 && `point`=81;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 711, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=7 WHERE `id`=79720 && `point`=82;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402820, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402820, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1129, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8402820 WHERE `id`=84028 && `point`=20;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8708224, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8708224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1153, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8708224 WHERE `id`=87082 && `point`=24;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402823, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8402823 WHERE `id`=84028 && `point`=23;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402824, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1155, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8402824 WHERE `id`=84028 && `point`=24;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1140, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8402838 WHERE `id`=84028 && `point`=38;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1161, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8402839 WHERE `id`=84028 && `point`=39;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402840, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8402840 WHERE `id`=84028 && `point`=40;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402841, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1162, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8402841 WHERE `id`=84028 && `point`=41;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8708942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1130, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8708942 WHERE `id`=87089 && `point`=42;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8708943, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8708943 WHERE `id`=87089 && `point`=43;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402843, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8402843 WHERE `id`=84028 && `point`=43;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1163, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8402857 WHERE `id`=84028 && `point`=57;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1165, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8402858 WHERE `id`=84028 && `point`=58;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402859, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1166, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8402859 WHERE `id`=84028 && `point`=59;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402860, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8402860 WHERE `id`=84028 && `point`=60;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402861, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8402861 WHERE `id`=84028 && `point`=61;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1106, 1107, 1112, 1111, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979616 WHERE `id`=79796 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1108, 1106, 1107, 1112, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979613 WHERE `id`=79796 && `point`=13;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1105, 1108, 1106, 1107, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979610 WHERE `id`=79796 && `point`=10;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1110, 1105, 1108, 1106, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979607 WHERE `id`=79796 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659606, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659606 WHERE `id`=86596 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659611, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659611 WHERE `id`=86596 && `point`=11;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659625, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659625 WHERE `id`=86596 && `point`=25;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659630, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659630 WHERE `id`=86596 && `point`=30;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659646, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659646 WHERE `id`=86596 && `point`=46;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659655, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659655 WHERE `id`=86596 && `point`=55;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659659, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659659 WHERE `id`=86596 && `point`=59;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659703, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659703 WHERE `id`=86597 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659708, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659708 WHERE `id`=86597 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659709, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8659709 WHERE `id`=86597 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659717 WHERE `id`=86597 && `point`=17;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659718, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659718 WHERE `id`=86597 && `point`=18;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659727 WHERE `id`=86597 && `point`=27;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659728, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659728 WHERE `id`=86597 && `point`=28;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659730 WHERE `id`=86597 && `point`=30;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659731, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659731 WHERE `id`=86597 && `point`=31;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659733 WHERE `id`=86597 && `point`=33;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659734, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659734 WHERE `id`=86597 && `point`=34;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659738 WHERE `id`=86597 && `point`=38;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659739, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659739 WHERE `id`=86597 && `point`=39;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659744 WHERE `id`=86597 && `point`=44;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659745, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659745 WHERE `id`=86597 && `point`=45;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659749 WHERE `id`=86597 && `point`=49;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659750, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659750 WHERE `id`=86597 && `point`=50;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659751 WHERE `id`=86597 && `point`=51;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659752, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659752 WHERE `id`=86597 && `point`=52;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8659754 WHERE `id`=86597 && `point`=54;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8659755, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8659755 WHERE `id`=86597 && `point`=55;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929401, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929401 WHERE `id`=89294 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929414, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929414 WHERE `id`=89294 && `point`=14;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929416, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929416 WHERE `id`=89294 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929421, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929421 WHERE `id`=89294 && `point`=21;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929427, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929427 WHERE `id`=89294 && `point`=27;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929437, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929437 WHERE `id`=89294 && `point`=37;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929443, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929443 WHERE `id`=89294 && `point`=43;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929451, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929451 WHERE `id`=89294 && `point`=51;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929457, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929457 WHERE `id`=89294 && `point`=57;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929459, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929459 WHERE `id`=89294 && `point`=59;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929462, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8929462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `emote`=0, `script_id`=8929462 WHERE `id`=89294 && `point`=62;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1197, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044502 WHERE `id`=90445 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1195, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044504 WHERE `id`=90445 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1194, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044507 WHERE `id`=90445 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1199, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044512 WHERE `id`=90445 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1195, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044517 WHERE `id`=90445 && `point`=17;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1197, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044521 WHERE `id`=90445 && `point`=21;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1192, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044526 WHERE `id`=90445 && `point`=26;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1194, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044530 WHERE `id`=90445 && `point`=30;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1193, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044535 WHERE `id`=90445 && `point`=35;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1199, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044539 WHERE `id`=90445 && `point`=39;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1197, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044543 WHERE `id`=90445 && `point`=43;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1195, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044547 WHERE `id`=90445 && `point`=47;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1192, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044552 WHERE `id`=90445 && `point`=52;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1194, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044557 WHERE `id`=90445 && `point`=57;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9044561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1195, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=9044561 WHERE `id`=90445 && `point`=61;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4778601, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4778601 WHERE `id`=47786 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4880502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7194, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=4880502 WHERE `id`=48805 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4880503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7193, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=4880503 WHERE `id`=48805 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4880504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7191, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=4880504 WHERE `id`=48805 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2841205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5960, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=2841205 WHERE `id`=28412 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (5474902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6406, 6404, 6408, 6409, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=5474902 WHERE `id`=54749 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (5474906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6405, 6407, 6402, 6403, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=5474906 WHERE `id`=54749 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (21, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=21 WHERE `id`=190209 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (22, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=22 WHERE `id`=190241 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (23, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=23 WHERE `id`=190229 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (24, 0, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=24 WHERE `id`=190228 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2169301, 0, 1, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2169301 WHERE `id`=21693 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4681601, 0, 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4681601 WHERE `id`=46816 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4681622, 0, 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4681622 WHERE `id`=46816 && `point`=22;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4681653, 0, 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4681653 WHERE `id`=46816 && `point`=53;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (5662506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10146, 10145, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `script_id`=5662506 WHERE `id`=56625 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 1112, 1111, 1110, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979622 WHERE `id`=79796 && `point`=22;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (7979627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1112, 1111, 1110, 1105, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `script_id`=7979627 WHERE `id`=79796 && `point`=27;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (188715, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=188715 WHERE `id`=1887 && `point`=15;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (188716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4287, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=188716 WHERE `id`=1887 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537501, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537501 WHERE `id`=85375 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537502, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537502 WHERE `id`=85375 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537801, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537801 WHERE `id`=85378 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537802, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537802 WHERE `id`=85378 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537901, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537901 WHERE `id`=85379 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8537902, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8537902 WHERE `id`=85379 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8538001, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8538001 WHERE `id`=85380 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8538002, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8538002 WHERE `id`=85380 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8552901, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8552901 WHERE `id`=85529 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8552902, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8552902 WHERE `id`=85529 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8553001, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8553001 WHERE `id`=85530 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8553002, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8553002 WHERE `id`=85530 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554501, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554501 WHERE `id`=85545 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554502, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554502 WHERE `id`=85545 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554601, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554601 WHERE `id`=85546 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554602, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554602 WHERE `id`=85546 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554701, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554701 WHERE `id`=85547 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554702, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554702 WHERE `id`=85547 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554801, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554801 WHERE `id`=85548 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554802, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554802 WHERE `id`=85548 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554901, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554901 WHERE `id`=85549 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8554902, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8554902 WHERE `id`=85549 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555001, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555001 WHERE `id`=85550 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555002, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555002 WHERE `id`=85550 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555101, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555101 WHERE `id`=85551 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555102, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555102 WHERE `id`=85551 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555201, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555201 WHERE `id`=85552 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555202, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555202 WHERE `id`=85552 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555301, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555301 WHERE `id`=85553 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555302, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555302 WHERE `id`=85553 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555401, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555401 WHERE `id`=85554 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555402, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555402 WHERE `id`=85554 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555501, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555501 WHERE `id`=85555 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555502, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555502 WHERE `id`=85555 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555801, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555801 WHERE `id`=85558 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555803, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555803 WHERE `id`=85558 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555901, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555901 WHERE `id`=85559 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8555903, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8555903 WHERE `id`=85559 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556001, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556001 WHERE `id`=85560 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556003, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556003 WHERE `id`=85560 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556101, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556101 WHERE `id`=85561 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556102, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556102 WHERE `id`=85561 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556201, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556201 WHERE `id`=85562 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8556202, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8556202 WHERE `id`=85562 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8073706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2874, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=8073706 WHERE `id`=80737 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8402821, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8402821 WHERE `id`=84028 && `point`=21;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (25, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=25 WHERE `id`=300632 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (26, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=26 WHERE `id`=300632 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (27, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=27 WHERE `id`=300632 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (28, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=28 WHERE `id`=300632 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (29, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=29 WHERE `id`=300632 && `point`=20;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (30, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=30 WHERE `id`=300632 && `point`=24;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (31, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=31 WHERE `id`=300632 && `point`=28;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (32, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=32 WHERE `id`=300636 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (33, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=33 WHERE `id`=300636 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (34, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=34 WHERE `id`=300636 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (35, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=35 WHERE `id`=300636 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (36, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=36 WHERE `id`=300636 && `point`=20;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (37, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=37 WHERE `id`=300636 && `point`=24;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (38, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=38 WHERE `id`=300636 && `point`=28;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (39, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=39 WHERE `id`=300636 && `point`=32;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (40, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=40 WHERE `id`=300636 && `point`=36;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (41, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=41 WHERE `id`=300636 && `point`=40;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (42, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=42 WHERE `id`=300630 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (43, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=43 WHERE `id`=300630 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=44 WHERE `id`=300630 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (45, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=45 WHERE `id`=300630 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (46, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=46 WHERE `id`=300630 && `point`=20;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (47, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=47 WHERE `id`=300637 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (48, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=48 WHERE `id`=300637 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=49 WHERE `id`=300637 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (50, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=50 WHERE `id`=300637 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (51, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=51 WHERE `id`=300637 && `point`=20;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (52, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=52 WHERE `id`=300637 && `point`=24;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (53, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=53 WHERE `id`=300637 && `point`=28;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (54, 0, 15, 22458, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=54 WHERE `id`=300637 && `point`=32;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485401, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13485401 WHERE `id`=134854 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485402, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485402, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13485402 WHERE `id`=134854 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (55, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=55 WHERE `id`=24439 && `point`=127;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (56, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=56 WHERE `id`=24439 && `point`=121;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (57, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=57 WHERE `id`=24439 && `point`=115;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443997, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443997 WHERE `id`=24439 && `point`=97;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443987, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443987 WHERE `id`=24439 && `point`=87;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443976, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443976 WHERE `id`=24439 && `point`=76;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443972, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443972 WHERE `id`=24439 && `point`=72;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443969, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443969 WHERE `id`=24439 && `point`=69;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443965, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443965 WHERE `id`=24439 && `point`=65;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443957, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443957 WHERE `id`=24439 && `point`=57;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443950, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443950 WHERE `id`=24439 && `point`=50;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443938, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443938 WHERE `id`=24439 && `point`=38;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443929, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443929 WHERE `id`=24439 && `point`=29;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2443923, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=2443923 WHERE `id`=24439 && `point`=23;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10059, 10061, 10121, 10058, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=58 WHERE `id`=301271 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10061, 10059, 10121, 10058, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=59 WHERE `id`=301272 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 10061, 10059, 10121, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=60 WHERE `id`=301273 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10061, 10121, 10059, 10058, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=61 WHERE `id`=301274 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 10059, 10058, 10061, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=62 WHERE `id`=301275 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 10059, 10121, 10061, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=63 WHERE `id`=301276 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (64, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=64 WHERE `id`=300249 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (65, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=65 WHERE `id`=300250 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (66, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=66 WHERE `id`=300251 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (67, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=67 WHERE `id`=300252 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (68, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=68 WHERE `id`=300253 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (69, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=69 WHERE `id`=300254 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (70, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=70 WHERE `id`=300255 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (71, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=71 WHERE `id`=300256 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (72, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=72 WHERE `id`=300257 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (73, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=73 WHERE `id`=300258 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (74, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=74 WHERE `id`=300259 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (75, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=75 WHERE `id`=300261 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (76, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=76 WHERE `id`=300295 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (77, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=77 WHERE `id`=300269 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (78, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=78 WHERE `id`=300270 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (79, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=79 WHERE `id`=300271 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (80, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=80 WHERE `id`=300272 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (81, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=81 WHERE `id`=300273 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (82, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=82 WHERE `id`=300274 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (83, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=83 WHERE `id`=300275 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (84, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=84 WHERE `id`=300276 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (85, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=85 WHERE `id`=300277 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (86, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=86 WHERE `id`=300278 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (87, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=87 WHERE `id`=300279 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (88, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=88 WHERE `id`=300247 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (89, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=89 WHERE `id`=300248 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (90, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=90 WHERE `id`=300290 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (91, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=91 WHERE `id`=300290 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (92, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=92 WHERE `id`=300290 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (93, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=93 WHERE `id`=300290 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (94, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=94 WHERE `id`=300290 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (95, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=95 WHERE `id`=300290 && `point`=15;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (96, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=96 WHERE `id`=300288 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (97, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=97 WHERE `id`=300288 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (98, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=98 WHERE `id`=300288 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (99, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=99 WHERE `id`=300288 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (100, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=100 WHERE `id`=300330 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (101, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=101 WHERE `id`=300330 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (102, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=102 WHERE `id`=300330 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (103, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=103 WHERE `id`=300330 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (104, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=104 WHERE `id`=300330 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (105, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=105 WHERE `id`=300292 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (106, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=106 WHERE `id`=300292 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (107, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=107 WHERE `id`=300292 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (108, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=108 WHERE `id`=300293 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (109, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=109 WHERE `id`=300293 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (110, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=110 WHERE `id`=300293 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (111, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=111 WHERE `id`=300293 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (112, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=112 WHERE `id`=300324 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (113, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=113 WHERE `id`=300324 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (114, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=114 WHERE `id`=300324 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (115, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=115 WHERE `id`=300324 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (116, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=116 WHERE `id`=300260 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (117, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=117 WHERE `id`=300260 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (118, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=118 WHERE `id`=300260 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (119, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=119 WHERE `id`=300260 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (120, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=120 WHERE `id`=300331 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (121, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=121 WHERE `id`=300331 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (122, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=122 WHERE `id`=300323 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (123, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=123 WHERE `id`=300327 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (124, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=124 WHERE `id`=300291 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (125, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=125 WHERE `id`=300291 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (126, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=126 WHERE `id`=300291 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (127, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=127 WHERE `id`=300291 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (128, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=128 WHERE `id`=300325 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (129, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=129 WHERE `id`=300325 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (130, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=130 WHERE `id`=300325 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (131, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=131 WHERE `id`=300289 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (132, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=132 WHERE `id`=300289 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (133, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=133 WHERE `id`=300289 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (134, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=134 WHERE `id`=300289 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (135, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=135 WHERE `id`=300289 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (136, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=136 WHERE `id`=300289 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8011904, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8011904 WHERE `id`=80119 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8011907, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8011907 WHERE `id`=80119 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8011901, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8011901 WHERE `id`=80119 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134902, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8134902 WHERE `id`=81349 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134906, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8134906 WHERE `id`=81349 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134907, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8134907 WHERE `id`=81349 && `point`=7;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134805, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8134805 WHERE `id`=81348 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134810, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8134810 WHERE `id`=81348 && `point`=10;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8134811, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8134811 WHERE `id`=81348 && `point`=11;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125001, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8125001 WHERE `id`=81250 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125002, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8125002 WHERE `id`=81250 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125003, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8125003 WHERE `id`=81250 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8124901, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8124901 WHERE `id`=81249 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8124904, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8124904 WHERE `id`=81249 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8124905, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8124905 WHERE `id`=81249 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125204, 0, 23, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8125204 WHERE `id`=81252 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125208, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=8125208 WHERE `id`=81252 && `point`=8;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (8125209, 0, 23, 89, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `model1`=0, `script_id`=8125209 WHERE `id`=81252 && `point`=9;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3045802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1790, 1791, 1792, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `script_id`=3045802 WHERE `id`=30458 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (224302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `script_id`=224302 WHERE `id`=2243 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4585701, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4585701 WHERE `id`=45857 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4585704, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4585704 WHERE `id`=45857 && `point`=4;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4779901, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4779901 WHERE `id`=47799 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4779905, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4779905 WHERE `id`=47799 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4587501, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4587501 WHERE `id`=45875 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4587505, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4587505 WHERE `id`=45875 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4778603, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4778603 WHERE `id`=47786 && `point`=3;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9065802, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=9065802 WHERE `id`=90658 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4778102, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4778102 WHERE `id`=47781 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4778105, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4778105 WHERE `id`=47781 && `point`=5;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4778110, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=4778110 WHERE `id`=47781 && `point`=10;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9065806, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=9065806 WHERE `id`=90658 && `point`=6;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9065811, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `script_id`=9065811 WHERE `id`=90658 && `point`=11;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2403, 2401, 2404, 2402, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=10812 WHERE `id`=108 && `point`=12;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2403, 2401, 2404, 2402, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `script_id`=10816 WHERE `id`=108 && `point`=16;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484801, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13484801 WHERE `id`=134848 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484802, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484802, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13484802 WHERE `id`=134848 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484501, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13484501 WHERE `id`=134845 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484502, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484502, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13484502 WHERE `id`=134845 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484401, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13484401 WHERE `id`=134844 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484402, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484402, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13484402 WHERE `id`=134844 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484301, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13484301 WHERE `id`=134843 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484302, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13484302, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13484302 WHERE `id`=134843 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485501, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13485501 WHERE `id`=134855 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485502, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13485502, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13485502 WHERE `id`=134855 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13486201, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13486201 WHERE `id`=134862 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13486202, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13486202, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13486202 WHERE `id`=134862 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490801, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490801 WHERE `id`=134908 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490802, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490802, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490802 WHERE `id`=134908 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490501, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490501 WHERE `id`=134905 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490502, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490502, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490502 WHERE `id`=134905 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489801, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13489801 WHERE `id`=134898 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489802, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489802, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13489802 WHERE `id`=134898 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490601, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490601 WHERE `id`=134906 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490602, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490602, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490602 WHERE `id`=134906 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490101, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490101 WHERE `id`=134901 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490102, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490102, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490102 WHERE `id`=134901 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490001, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490001 WHERE `id`=134900 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490002, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490002, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490002 WHERE `id`=134900 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489701, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13489701 WHERE `id`=134897 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489702, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13489702, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13489702 WHERE `id`=134897 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490901, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13490901 WHERE `id`=134909 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490902, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13490902, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13490902 WHERE `id`=134909 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13491001, 0, 15, 5133, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `spell`=0, `script_id`=13491001 WHERE `id`=134910 && `point`=1;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13491002, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (13491002, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `emote`=0, `spell`=0, `script_id`=13491002 WHERE `id`=134910 && `point`=2;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (3045805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1789, 1791, 1792, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_movement` SET `textid1`=0, `textid2`=0, `textid3`=0, `script_id`=3045805 WHERE `id`=30458 && `point`=5;



























-- Wrong level range.
UPDATE `creature_template` SET `level_min`=13, `level_max`=13 WHERE `entry`=167;
UPDATE `creature_template` SET `level_min`=50, `level_max`=51 WHERE `entry`=863;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=866;
UPDATE `creature_template` SET `level_min`=35, `level_max`=35 WHERE `entry`=934;
UPDATE `creature_template` SET `level_min`=8, `level_max`=12 WHERE `entry`=1231;
UPDATE `creature_template` SET `level_min`=8, `level_max`=11 WHERE `entry`=1240;
UPDATE `creature_template` SET `level_min`=8 WHERE `entry`=1245;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=1339;
UPDATE `creature_template` SET `level_min`=22, `level_max`=25 WHERE `entry`=1423;
UPDATE `creature_template` SET `level_min`=8, `level_max`=9 WHERE `entry`=1949;
UPDATE `creature_template` SET `level_min`=7 WHERE `entry`=1975;
UPDATE `creature_template` SET `level_min`=18, `level_max`=20 WHERE `entry`=2140;
UPDATE `creature_template` SET `level_min`=10, `level_max`=10 WHERE `entry`=3078;
UPDATE `creature_template` SET `level_min`=30, `level_max`=39 WHERE `entry`=3945;
UPDATE `creature_template` SET `level_min`=15, `level_max`=15 WHERE `entry`=4185;
UPDATE `creature_template` SET `level_min`=39 WHERE `entry`=4388;
UPDATE `creature_template` SET `level_min`=26, `level_max`=26 WHERE `entry`=4586;
UPDATE `creature_template` SET `level_min`=12, `level_max`=13 WHERE `entry`=5435;
UPDATE `creature_template` SET `level_min`=1 WHERE `entry`=5917;
UPDATE `creature_template` SET `level_min`=21 WHERE `entry`=6141;
UPDATE `creature_template` SET `level_min`=50, `level_max`=55 WHERE `entry`=6887;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=7846;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=7975;
UPDATE `creature_template` SET `level_min`=45, `level_max`=45 WHERE `entry`=8151;
UPDATE `creature_template` SET `level_min`=54 WHERE `entry`=8920;
UPDATE `creature_template` SET `level_min`=50, `level_max`=52 WHERE `entry`=8964;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=9816;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=9988;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=10048;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10363;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10429;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10430;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=11063;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=11069;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=11119;
UPDATE `creature_template` SET `level_min`=6 WHERE `entry`=11328;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=11536;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=12045;
UPDATE `creature_template` SET `level_min`=1, `level_max`=2 WHERE `entry`=12150;
UPDATE `creature_template` SET `level_min`=11 WHERE `entry`=12354;
UPDATE `creature_template` SET `level_min`=11 WHERE `entry`=12355;
UPDATE `creature_template` SET `level_min`=46 WHERE `entry`=12937;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=13699;
UPDATE `creature_template` SET `level_min`=1 WHERE `entry`=14496;
UPDATE `creature_template` SET `level_min`=1 WHERE `entry`=14499;
UPDATE `creature_template` SET `level_min`=48, `level_max`=48 WHERE `entry`=14739;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=226;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=466;
UPDATE `creature_template` SET `level_min`=39, `level_max`=39 WHERE `entry`=826;
UPDATE `creature_template` SET `level_min`=50, `level_max`=50 WHERE `entry`=864;
UPDATE `creature_template` SET `level_min`=39, `level_max`=39 WHERE `entry`=885;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=886;
UPDATE `creature_template` SET `level_min`=10, `level_max`=10 WHERE `entry`=959;
UPDATE `creature_template` SET `level_min`=37, `level_max`=37 WHERE `entry`=999;
UPDATE `creature_template` SET `level_min`=8, `level_max`=12 WHERE `entry`=1243;
UPDATE `creature_template` SET `level_min`=10, `level_max`=10 WHERE `entry`=1249;
UPDATE `creature_template` SET `level_min`=8, `level_max`=12 WHERE `entry`=1252;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=1278;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=1280;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=1337;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=1338;
UPDATE `creature_template` SET `level_min`=20, `level_max`=20 WHERE `entry`=1362;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=1381;
UPDATE `creature_template` SET `level_min`=22, `level_max`=22 WHERE `entry`=1742;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=2135;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=2215;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=2239;
UPDATE `creature_template` SET `level_min`=8, `level_max`=12 WHERE `entry`=2326;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=2507;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=2516;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=2527;
UPDATE `creature_template` SET `level_min`=42, `level_max`=42 WHERE `entry`=2840;
UPDATE `creature_template` SET `level_min`=42, `level_max`=42 WHERE `entry`=2845;
UPDATE `creature_template` SET `level_min`=13, `level_max`=13 WHERE `entry`=3080;
UPDATE `creature_template` SET `level_max`=9 WHERE `entry`=3141;
UPDATE `creature_template` SET `level_min`=16, `level_max`=16 WHERE `entry`=3167;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3217;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3218;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3219;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3220;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3221;
UPDATE `creature_template` SET `level_min`=14, `level_max`=14 WHERE `entry`=3223;
UPDATE `creature_template` SET `level_min`=23, `level_max`=23 WHERE `entry`=3421;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=3493;
UPDATE `creature_template` SET `level_min`=11, `level_max`=11 WHERE `entry`=3522;
UPDATE `creature_template` SET `level_min`=32, `level_max`=32 WHERE `entry`=3536;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=3543;
UPDATE `creature_template` SET `level_min`=18, `level_max`=18 WHERE `entry`=3553;
UPDATE `creature_template` SET `level_max`=20 WHERE `entry`=3554;
UPDATE `creature_template` SET `level_max`=20 WHERE `entry`=3556;
UPDATE `creature_template` SET `level_min`=18, `level_max`=22 WHERE `entry`=3702;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=4187;
UPDATE `creature_template` SET `level_min`=35, `level_max`=35 WHERE `entry`=4950;
UPDATE `creature_template` SET `level_max`=32 WHERE `entry`=5185;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=5403;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=5405;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=5406;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=5814;
UPDATE `creature_template` SET `level_max`=32 WHERE `entry`=5953;
UPDATE `creature_template` SET `level_max`=52 WHERE `entry`=6347;
UPDATE `creature_template` SET `level_max`=52 WHERE `entry`=6369;
UPDATE `creature_template` SET `level_max`=51 WHERE `entry`=6372;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=6749;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=7730;
UPDATE `creature_template` SET `level_max`=47 WHERE `entry`=8402;
UPDATE `creature_template` SET `level_max`=47 WHERE `entry`=8417;
UPDATE `creature_template` SET `level_min`=52, `level_max`=53 WHERE `entry`=8913;
UPDATE `creature_template` SET `level_min`=53, `level_max`=53 WHERE `entry`=9544;
UPDATE `creature_template` SET `level_min`=4, `level_max`=4 WHERE `entry`=9990;
UPDATE `creature_template` SET `level_max`=55 WHERE `entry`=10299;
UPDATE `creature_template` SET `level_min`=52, `level_max`=52 WHERE `entry`=10361;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=10379;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=11105;
UPDATE `creature_template` SET `level_min`=53, `level_max`=53 WHERE `entry`=11184;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=11317;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=11798;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=11800;
UPDATE `creature_template` SET `level_min`=45, `level_max`=45 WHERE `entry`=11877;
UPDATE `creature_template` SET `level_min`=51, `level_max`=51 WHERE `entry`=12024;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=12030;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12341;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12342;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12343;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12346;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12363;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12365;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12367;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12375;
UPDATE `creature_template` SET `level_max`=2 WHERE `entry`=12376;
UPDATE `creature_template` SET `level_max`=46 WHERE `entry`=12923;
UPDATE `creature_template` SET `level_max`=48 WHERE `entry`=12924;
UPDATE `creature_template` SET `level_max`=50 WHERE `entry`=12925;
UPDATE `creature_template` SET `level_max`=48 WHERE `entry`=12936;
UPDATE `creature_template` SET `level_max`=46 WHERE `entry`=12938;
UPDATE `creature_template` SET `level_min`=45, `level_max`=45 WHERE `entry`=14301;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=14495;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=14503;
UPDATE `creature_template` SET `level_max`=52 WHERE `entry`=14622;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=14646;
UPDATE `creature_template` SET `level_max`=27 WHERE `entry`=14718;
UPDATE `creature_template` SET `level_min`=47, `level_max`=47 WHERE `entry`=14737;
UPDATE `creature_template` SET `level_min`=48, `level_max`=48 WHERE `entry`=14738;
UPDATE `creature_template` SET `level_min`=42, `level_max`=42 WHERE `entry`=14740;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=15164;
UPDATE `creature_template` SET `level_min`=63, `level_max`=63 WHERE `entry`=15193;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16044;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16046;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16047;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16048;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16079;

-- Wrong faction.
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=54;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=66;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=74;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=78;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=151;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=152;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=167;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=190;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=196;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=197;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=198;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=222;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=225;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=226;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=227;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=228;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=233;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=235;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=237;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=238;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=240;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=241;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=244;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=246;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=247;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=248;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=250;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=251;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=252;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=253;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=255;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=258;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=261;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=263;
UPDATE `creature_template` SET `faction`=53 WHERE `entry`=264;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=265;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=266;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=267;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=268;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=269;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=270;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=271;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=272;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=273;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=274;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=275;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=276;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=277;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=278;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=279;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=294;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=295;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=297;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=302;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=313;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=325;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=328;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=330;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=331;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=338;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=341;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=342;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=343;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=344;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=346;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=347;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=348;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=352;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=372;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=375;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=376;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=377;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=379;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=381;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=382;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=383;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=384;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=390;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=395;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=415;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=459;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=461;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=465;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=466;
UPDATE `creature_template` SET `faction`=10 WHERE `entry`=467;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=468;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=469;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=482;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=483;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=491;
UPDATE `creature_template` SET `faction`=11 WHERE `entry`=495;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=514;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=523;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=576;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=633;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=656;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=658;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=661;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=663;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=664;
UPDATE `creature_template` SET `faction`=189 WHERE `entry`=708;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=713;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=733;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=734;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=738;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=739;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=770;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=777;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=789;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=790;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=791;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=793;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=794;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=795;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=796;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=797;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=798;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=799;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=800;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=801;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=802;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=804;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=805;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=806;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=807;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=810;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=811;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=812;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=820;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=821;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=823;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=829;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=842;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=843;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=844;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=850;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=851;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=862;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=863;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=864;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=865;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=867;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=868;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=878;
UPDATE `creature_template` SET `faction`=11 WHERE `entry`=886;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=894;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=896;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=906;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=911;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=913;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=914;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=915;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=917;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=918;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=925;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=927;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=928;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=931;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=951;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=952;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=955;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=956;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=957;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=958;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=959;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=960;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=963;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1071;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1072;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1073;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1074;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1075;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1093;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1103;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1105;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1139;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1141;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1153;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1182;
UPDATE `creature_template` SET `faction`=189 WHERE `entry`=1190;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1198;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1212;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1213;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1217;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1226;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1229;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1231;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1232;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1234;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1238;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1239;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1240;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1241;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1242;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1243;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1244;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1246;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1247;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1249;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1250;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1252;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1257;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1267;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1273;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1274;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1275;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1284;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1285;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1286;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1287;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1289;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1291;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1292;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1294;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1295;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1297;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1298;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1299;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1300;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1301;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1302;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1303;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1304;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1305;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1307;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1308;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1309;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1310;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1311;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1312;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1313;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1314;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1315;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1316;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1317;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1318;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1319;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1320;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1321;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1322;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1323;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1324;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1328;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1333;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1339;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1340;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1341;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1342;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1343;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1346;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1347;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1348;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1349;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1350;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1351;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1362;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1366;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1367;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1368;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1370;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1371;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1373;
UPDATE `creature_template` SET `faction`=1618 WHERE `entry`=1379;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1402;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1405;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1413;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1414;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1415;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1416;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1419;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1427;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1428;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1429;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1430;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1431;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1432;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1435;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1441;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1444;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1445;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1446;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1447;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1450;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1451;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1452;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1453;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1456;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1457;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1458;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1459;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1460;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1461;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1462;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1463;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1464;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1465;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1469;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1470;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1472;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1473;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1474;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1477;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1478;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1480;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1481;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1484;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1495;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1496;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1497;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1498;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1499;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1500;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1515;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1518;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1519;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1521;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1560;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1568;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1569;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1570;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1571;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1572;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1632;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1645;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1646;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1650;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1651;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1652;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1661;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1668;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1670;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1671;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1672;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1673;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1678;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1680;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1681;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1682;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1683;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1684;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1690;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1691;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1692;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1699;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1719;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1721;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1733;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=1853;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1872;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1901;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1931;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1937;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1938;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1949;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1950;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1951;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=1952;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1963;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1965;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=1992;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2041;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2046;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2055;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2077;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2078;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2079;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2081;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2083;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2086;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2093;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2094;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2096;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2097;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2104;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2111;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2112;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2113;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2114;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2115;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2116;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2117;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2118;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2119;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2121;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2122;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2123;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2124;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2126;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2127;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2128;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2129;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2130;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2131;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2132;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2134;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2135;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2136;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2137;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2140;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2142;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2150;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2153;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2155;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2198;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2211;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2214;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2215;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2216;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2226;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2227;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2228;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2230;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2263;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2264;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2265;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2266;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2267;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2268;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2269;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2270;
UPDATE `creature_template` SET `faction`=96 WHERE `entry`=2276;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2277;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2278;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2307;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2309;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2310;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2311;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2314;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2315;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2320;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2326;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2327;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2329;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2334;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2352;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2357;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2360;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2364;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2365;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2366;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2367;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2379;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2380;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2381;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2382;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2383;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2387;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2388;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2389;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2390;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2391;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2393;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2394;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2395;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2397;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2399;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2401;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2402;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2409;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2410;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2418;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2419;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2423;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2425;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2427;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2428;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2429;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2430;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2432;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2437;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2438;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2455;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2456;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2457;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2460;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2461;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=2473;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=2474;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2485;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2489;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2492;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2503;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2532;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2533;
UPDATE `creature_template` SET `faction`=73 WHERE `entry`=2578;
UPDATE `creature_template` SET `faction`=73 WHERE `entry`=2579;
UPDATE `creature_template` SET `faction`=73 WHERE `entry`=2580;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2581;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2582;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2612;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2668;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2669;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2695;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2696;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2705;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2708;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2711;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2712;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2738;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2770;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=2771;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=2772;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2784;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2790;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2795;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2798;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2799;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=2802;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2806;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2859;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2860;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2878;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2879;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2910;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2911;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2913;
UPDATE `creature_template` SET `faction`=41 WHERE `entry`=2919;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2930;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2941;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2948;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2980;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2981;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2985;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2988;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2993;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2995;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2996;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2997;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2998;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2999;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3001;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3002;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3003;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3004;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3005;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3007;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3008;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3009;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3010;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3011;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3012;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3013;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3014;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3015;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3016;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3017;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3018;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3019;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3020;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3021;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3022;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3023;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3024;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3025;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3026;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3027;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3028;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3029;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3030;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3031;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3032;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3033;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3034;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3036;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3037;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3038;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3039;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3040;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3041;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3042;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3043;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3044;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3045;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3046;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3047;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3048;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3049;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3050;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3052;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3054;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3055;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3057;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3059;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3060;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3061;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3062;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3063;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3064;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3065;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3066;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3067;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3069;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3072;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3073;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3074;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3075;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3076;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3077;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3078;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3079;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3080;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3081;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3085;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3086;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3087;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3088;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3089;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3090;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3091;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3092;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3093;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3095;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3135;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3136;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3137;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3138;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3178;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3179;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3182;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=3230;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3233;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3291;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=3295;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3306;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=3309;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=3318;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=3320;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=3338;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=3389;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3390;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3418;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3419;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3447;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3448;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=3464;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3475;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3505;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3507;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3508;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3509;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3510;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3511;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3512;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3513;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3515;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3518;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3520;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3522;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3523;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3540;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3541;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3542;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3543;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3544;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3547;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3548;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3549;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3550;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3551;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3552;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3553;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3554;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3555;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3556;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3557;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3567;
UPDATE `creature_template` SET `faction`=1076 WHERE `entry`=3583;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3598;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3599;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3600;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3601;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3602;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3603;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3604;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3605;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3607;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3608;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3609;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3610;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3611;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3612;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3613;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3614;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3626;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3627;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3628;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3629;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3644;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3649;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3681;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3685;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3688;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3690;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3691;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3701;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3702;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3703;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3704;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3705;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3797;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3833;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3838;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3841;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3845;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3883;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3884;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3888;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3892;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3894;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3915;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3935;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3937;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3948;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3952;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3953;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3954;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3958;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3959;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3961;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3962;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3967;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3969;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3970;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=3978;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3980;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=3982;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3994;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3996;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4046;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4051;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4053;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4057;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4078;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4079;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4080;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4084;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4087;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4088;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4089;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4155;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4164;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4170;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4181;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4182;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4183;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4185;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4186;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4187;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4188;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4189;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4190;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4191;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4192;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4193;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4200;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4203;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4208;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4209;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4230;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4241;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4265;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4266;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4267;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4312;
UPDATE `creature_template` SET `faction`=312 WHERE `entry`=4377;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=4388;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4407;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4451;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4455;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4479;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4481;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4488;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4563;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4564;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4565;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4566;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4567;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4568;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4572;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4573;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4574;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4575;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4578;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4582;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4583;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4584;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4586;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4587;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4593;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4594;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4595;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4606;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4607;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4608;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4609;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4610;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4611;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4612;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4721;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4731;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4732;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4773;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=4949;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4959;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4962;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4963;
UPDATE `creature_template` SET `faction`=83 WHERE `entry`=4972;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4974;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4981;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4982;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4984;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4996;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5042;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5049;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5054;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5082;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5088;
UPDATE `creature_template` SET `faction`=84 WHERE `entry`=5089;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5099;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5101;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5102;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5103;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5106;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5107;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5108;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5109;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5110;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5111;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5112;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5116;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5117;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=5118;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5119;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5120;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5121;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5122;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5123;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5124;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5125;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5126;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5129;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5130;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5133;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5137;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5138;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5140;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5141;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5142;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5143;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5150;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5174;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5189;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5193;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5204;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5384;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5386;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=5394;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5396;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=5413;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5414;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5418;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5479;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5480;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5484;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5489;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5491;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5492;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5493;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5494;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5495;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5496;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5497;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5498;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5499;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5500;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5503;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5504;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5505;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5506;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5509;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5510;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5511;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5512;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5513;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5514;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5515;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5516;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5517;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5543;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5564;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5565;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5566;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5567;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5570;
UPDATE `creature_template` SET `faction`=57 WHERE `entry`=5595;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5605;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5620;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=5638;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=5642;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=5653;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=5654;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5655;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5656;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5657;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5658;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5659;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5660;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5661;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5662;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5666;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5679;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5680;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5681;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5683;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5688;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5690;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5693;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5694;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5695;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5696;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5699;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5702;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5703;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5704;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5705;
UPDATE `creature_template` SET `faction`=50 WHERE `entry`=5720;
UPDATE `creature_template` SET `faction`=50 WHERE `entry`=5721;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5726;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5727;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5728;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5729;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5730;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5734;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5735;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5736;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5738;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5744;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5748;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5749;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5750;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5752;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5753;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5759;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5769;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5782;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=5828;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=5843;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5886;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5888;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=5899;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5906;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5917;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5938;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5939;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5940;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=5944;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=5957;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=5996;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=5997;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=5998;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=6013;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6028;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=6089;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6094;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6121;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6122;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6142;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6166;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=6171;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6173;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6174;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6175;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6178;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6179;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6181;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6241;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6244;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6267;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6286;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6287;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6289;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6290;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6297;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6298;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6299;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6300;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6301;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6306;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6367;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6373;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6374;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6387;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6389;
UPDATE `creature_template` SET `faction`=83 WHERE `entry`=6467;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=6492;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6497;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6522;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6566;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6569;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6579;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=6649;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6670;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6706;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6726;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6727;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6734;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6736;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6737;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6738;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6739;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6740;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6746;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=6747;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6749;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6774;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6775;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=6776;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6778;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6780;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6781;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=6785;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6790;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6806;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6887;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6966;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=6987;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=7089;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7232;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7292;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7295;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=7297;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7298;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7315;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7316;
UPDATE `creature_template` SET `faction`=188 WHERE `entry`=7386;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=7427;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=7793;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7798;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7868;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=7869;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7907;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7916;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7917;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=7956;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=7957;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7976;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8026;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8150;
UPDATE `creature_template` SET `faction`=778 WHERE `entry`=8215;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8307;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8356;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8357;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8358;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8359;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8360;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8361;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8362;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8363;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8364;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8383;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8385;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=8390;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=8391;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8393;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=8397;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8398;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8401;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8440;
UPDATE `creature_template` SET `faction`=1074 WHERE `entry`=8576;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=8580;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=8582;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=8587;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8664;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8665;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8666;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8669;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8670;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8671;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=8673;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8674;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8719;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8720;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8722;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8723;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=8724;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8879;
UPDATE `creature_template` SET `faction`=15 WHERE `entry`=8904;
UPDATE `creature_template` SET `faction`=15 WHERE `entry`=8916;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8925;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8926;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8928;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8931;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8932;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=8933;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8934;
UPDATE `creature_template` SET `faction`=15 WHERE `entry`=8982;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8997;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=9030;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9076;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=9079;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=9080;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=9081;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9087;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9096;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9097;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9098;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9196;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9197;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9198;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9199;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9200;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9201;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9216;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9217;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9218;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9219;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9236;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9237;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=9238;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9239;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9240;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9241;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9257;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9258;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9259;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9260;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9261;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9262;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9263;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9264;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9265;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9266;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9267;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9268;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9269;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9296;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9416;
UPDATE `creature_template` SET `faction`=655 WHERE `entry`=9456;
UPDATE `creature_template` SET `faction`=1434 WHERE `entry`=9518;
UPDATE `creature_template` SET `faction`=655 WHERE `entry`=9523;
UPDATE `creature_template` SET `faction`=655 WHERE `entry`=9524;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=9537;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=9541;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=9553;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9568;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9583;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9584;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9596;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9605;
UPDATE `creature_template` SET `faction`=1074 WHERE `entry`=9620;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9692;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9693;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9696;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9716;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9717;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9736;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9816;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=9856;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9859;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9977;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9978;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=9979;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9980;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9982;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9983;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9984;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9989;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=9996;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=10045;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10046;
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=10050;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10051;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10052;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10055;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10057;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=10062;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10079;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10083;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10085;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10086;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10090;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=10096;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10118;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10136;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=10162;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10177;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=10181;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10216;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10219;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10220;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10221;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10257;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10268;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10278;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10300;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10303;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=10306;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10339;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10363;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10366;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10371;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10372;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10374;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10375;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10376;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10378;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10379;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10380;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10387;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10393;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10411;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10418;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10419;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10420;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10421;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10422;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10423;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10424;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10425;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10426;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10429;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=10430;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10432;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10433;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10435;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10442;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10447;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10475;
UPDATE `creature_template` SET `faction`=233 WHERE `entry`=10498;
UPDATE `creature_template` SET `faction`=233 WHERE `entry`=10506;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10516;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=10540;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=10558;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10584;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10596;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10601;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10602;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10610;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10611;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=10616;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10665;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=10666;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=10696;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10721;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10740;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10762;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=10782;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10799;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10803;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10804;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10805;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10808;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10811;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10812;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=10814;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=10837;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=10838;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10878;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=10881;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10917;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=10997;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=11023;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11031;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=11032;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11040;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=11043;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11044;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11047;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11051;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11053;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11055;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11056;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11057;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11065;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11068;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11069;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11071;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11072;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11084;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11096;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11103;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11104;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11105;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11106;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=11120;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11137;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11138;
UPDATE `creature_template` SET `faction`=1600 WHERE `entry`=11276;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11328;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11397;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11458;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11459;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=11466;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11467;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11469;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11470;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11471;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11472;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11473;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11475;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11476;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11477;
UPDATE `creature_template` SET `faction`=834 WHERE `entry`=11480;
UPDATE `creature_template` SET `faction`=834 WHERE `entry`=11483;
UPDATE `creature_template` SET `faction`=834 WHERE `entry`=11484;
UPDATE `creature_template` SET `faction`=1354 WHERE `entry`=11486;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11487;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11488;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11489;
UPDATE `creature_template` SET `faction`=233 WHERE `entry`=11598;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=11609;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=11616;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11624;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11700;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11703;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11715;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11720;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11748;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11749;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11750;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11823;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11827;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11828;
UPDATE `creature_template` SET `faction`=635 WHERE `entry`=11832;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11833;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11857;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11860;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11861;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11864;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11865;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11866;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11867;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11869;
UPDATE `creature_template` SET `faction`=995 WHERE `entry`=11877;
UPDATE `creature_template` SET `faction`=1174 WHERE `entry`=11885;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11896;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11897;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11916;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11940;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11941;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11942;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11944;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=11945;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11979;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11994;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11996;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12336;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12423;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=12425;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=12427;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12428;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12429;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=12480;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=12481;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=12576;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12577;
UPDATE `creature_template` SET `faction`=534 WHERE `entry`=12580;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12596;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=12617;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12636;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12656;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=12696;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12722;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=12723;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12805;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=12837;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12856;
UPDATE `creature_template` SET `faction`=1174 WHERE `entry`=12858;
UPDATE `creature_template` SET `faction`=1174 WHERE `entry`=12859;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12860;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12896;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12897;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12920;
UPDATE `creature_template` SET `faction`=83 WHERE `entry`=12923;
UPDATE `creature_template` SET `faction`=83 WHERE `entry`=12924;
UPDATE `creature_template` SET `faction`=83 WHERE `entry`=12925;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12936;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12937;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12938;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12942;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12960;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=12997;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=13018;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=13084;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=13417;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=14041;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=14121;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=14182;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=14183;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=14301;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14303;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14308;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14368;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14369;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14371;
UPDATE `creature_template` SET `faction`=82 WHERE `entry`=14372;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14381;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14382;
UPDATE `creature_template` SET `faction`=1355 WHERE `entry`=14383;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14394;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14398;
UPDATE `creature_template` SET `faction`=834 WHERE `entry`=14399;
UPDATE `creature_template` SET `faction`=834 WHERE `entry`=14400;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14450;
UPDATE `creature_template` SET `faction`=290 WHERE `entry`=14484;
UPDATE `creature_template` SET `faction`=290 WHERE `entry`=14485;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14489;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14495;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14496;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14497;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14503;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14566;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=14646;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14721;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=14722;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=14728;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14942;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15193;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15197;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15199;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15310;
UPDATE `creature_template` SET `faction`=1074 WHERE `entry`=15350;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15351;
UPDATE `creature_template` SET `faction`=875 WHERE `entry`=15353;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15354;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15659;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15678;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15679;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15762;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15766;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15767;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16044;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16046;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16047;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16048;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16079;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=16458;

-- Wrong walk speed.
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=30;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=36;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=38;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=40;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=43;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=46;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=48;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=54;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=66;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=69;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=74;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=78;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=80;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=92;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=94;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=95;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=97;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=100;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=114;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=115;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=116;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=151;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=152;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=154;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=196;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=197;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=199;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=202;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=203;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=205;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=213;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=225;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=226;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=227;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=228;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=233;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=235;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=237;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=238;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=248;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=250;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=251;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=255;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=257;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=264;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=265;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=271;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=272;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=273;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=274;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=275;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=278;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=279;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=285;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=294;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=295;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=297;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=302;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=313;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=325;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=327;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=328;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=341;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=342;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=343;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=344;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=346;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=348;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=374;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=375;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=377;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=379;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=381;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=383;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=415;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=422;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=423;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=426;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=437;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=440;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=442;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=448;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=468;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=469;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=473;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=474;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=475;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=476;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=478;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=483;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=487;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=488;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=489;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=490;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=494;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=504;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=514;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=525;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=533;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=569;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=578;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=582;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=583;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=615;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=633;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=656;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=658;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=661;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=663;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=664;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=688;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=704;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=705;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=707;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=712;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=713;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=715;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=716;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=717;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=732;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=733;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=734;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=739;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=740;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=741;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=742;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=743;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=744;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=745;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=746;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=755;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=757;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=760;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=764;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=766;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=767;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=768;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=769;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=770;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=773;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=777;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=789;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=791;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=793;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=795;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=797;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=798;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=799;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=800;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=801;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=802;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=804;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=805;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=807;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=811;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=820;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=821;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=822;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=826;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=827;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=828;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=829;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=832;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=834;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=840;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=849;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=851;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=861;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=862;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=863;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=865;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=866;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=867;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=869;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=870;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=874;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=876;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=880;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=885;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=886;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=887;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=890;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=894;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=896;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=898;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=900;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=903;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=906;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=911;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=913;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=914;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=915;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=917;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=918;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=923;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=927;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=928;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=930;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=951;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=952;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=955;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=980;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=985;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=986;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=987;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=988;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=989;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=999;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=1007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1010;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1011;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1015;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1016;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1017;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1024;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1032;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1033;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1035;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1038;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1039;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1040;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1042;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1043;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1044;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1045;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1051;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1052;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1064;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1068;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1069;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1070;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1071;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1072;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1073;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1074;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1075;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1082;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1084;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1087;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1093;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1098;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1100;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1101;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1131;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1139;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1148;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1149;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1153;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1162;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1172;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1173;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1174;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1184;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1186;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1188;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1195;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1196;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1197;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1199;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1201;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1202;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1211;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1212;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1213;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1224;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1226;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1228;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1238;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1239;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1242;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1243;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1245;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1250;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1257;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1269;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1273;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1274;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1275;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1278;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1279;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1280;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1285;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1286;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1287;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1289;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1294;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1295;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1297;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1298;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1300;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1301;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1302;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1303;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1304;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1305;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1307;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1309;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1311;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1312;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1313;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1314;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1315;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1317;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1318;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1320;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1321;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1322;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1323;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1324;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1328;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1332;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1333;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1334;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1335;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1336;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1337;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1338;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1339;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1340;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1341;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1342;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1343;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1346;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1347;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1348;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1349;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1350;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1351;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1362;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8400;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1366;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1367;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1368;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1370;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1371;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1373;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1379;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1381;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1383;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1385;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1400;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1405;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1411;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1414;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1415;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1417;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1422;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1427;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1434;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1437;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1442;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1443;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1446;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1447;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1448;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1450;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1460;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1461;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1462;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1469;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1470;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1472;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1473;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1474;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1476;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1477;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1478;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1483;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1484;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1488;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1489;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1498;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1502;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1504;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1506;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1507;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1512;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1515;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1518;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1519;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1520;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1521;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1522;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1525;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1526;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1527;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1528;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1529;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1532;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1533;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1535;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1537;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1538;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1540;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1545;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1549;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1569;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1570;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1571;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1632;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1645;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1646;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1650;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1651;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1652;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1654;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1655;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1656;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1657;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1660;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1661;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1662;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1672;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1673;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=1674;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1675;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1676;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1680;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1683;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1688;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1691;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1692;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1693;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1699;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1719;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1721;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1733;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1741;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1742;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1743;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1744;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1745;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1746;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1753;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1766;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1767;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1768;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1769;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1770;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1772;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1773;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1777;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1779;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1780;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1781;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1782;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1783;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1787;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1788;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1789;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1791;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1794;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1795;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1797;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1802;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1804;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1805;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=1809;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1817;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1821;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1822;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1824;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1831;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1835;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1852;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1865;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1866;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1867;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1868;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1869;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1870;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1872;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1888;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1889;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1890;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1901;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1914;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1917;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1918;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1919;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1922;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1931;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1933;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1934;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1935;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1936;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1937;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1938;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=1939;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1940;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1941;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1942;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=1943;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1946;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1947;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1948;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1949;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1950;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1951;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1952;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1953;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1954;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1965;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1971;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=1973;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1974;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1975;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1978;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1988;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1992;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1995;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1998;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1999;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2031;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=2041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2055;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=2056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2070;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2077;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2079;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2083;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2091;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2093;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2094;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2096;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2097;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2098;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2102;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2104;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2112;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2113;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2114;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2115;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2116;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2121;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2122;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2123;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2129;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2131;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2132;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2134;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2135;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2136;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2140;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2142;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2150;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2151;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2152;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2153;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2162;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6492;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2185;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2209;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2210;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2211;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2214;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2226;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2227;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2228;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2230;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2239;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2248;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2251;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2255;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2260;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2261;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2264;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2265;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2271;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2272;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2278;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2305;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2307;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2309;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2311;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2314;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2315;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2317;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2320;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2326;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2327;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2329;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2333;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2334;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2335;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2347;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2349;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2350;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2351;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2352;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2354;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2357;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2358;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=2359;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2360;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2361;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2362;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2363;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2364;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2365;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2366;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2367;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2368;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2369;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2370;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2371;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2374;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2375;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2376;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2377;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2379;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2381;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2383;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2388;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2389;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2391;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2392;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2393;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2394;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2399;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2400;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2405;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2406;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2408;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2410;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2411;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2414;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2415;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2421;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2422;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2425;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2427;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2437;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2438;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2442;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2448;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2450;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2455;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2460;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2461;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2466;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2468;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2469;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2470;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2473;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2474;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2483;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2486;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2487;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2488;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2490;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2492;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2493;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2494;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2498;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2502;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2506;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2507;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2510;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2511;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2512;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2514;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2515;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2516;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2517;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2518;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2519;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2524;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2525;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2526;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2527;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2528;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2529;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=2535;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=2536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2542;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2545;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2563;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2572;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2578;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2581;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2582;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2586;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2587;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2589;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=2592;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2594;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2595;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2596;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=2611;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2612;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2618;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2619;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2620;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2621;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2625;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2626;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2627;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2628;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2639;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2640;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2645;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2646;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2647;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2651;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2652;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2655;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2656;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2658;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2659;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2663;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2680;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2685;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2691;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2692;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2695;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2699;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2703;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2704;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2705;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2708;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2711;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2712;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2714;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=2716;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=2717;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=2718;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=2719;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2721;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2729;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2731;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2732;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2733;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2734;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=2735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2742;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2743;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2760;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=2761;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2762;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2764;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2770;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2771;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2772;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2787;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2792;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2795;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2798;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2804;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2817;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2818;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2819;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2820;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2821;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2829;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2830;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2831;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2832;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2834;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2836;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2837;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2838;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2839;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2847;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2848;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2849;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2851;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2855;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2859;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2860;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2861;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2879;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2907;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2911;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2913;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=2919;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2920;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2921;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2922;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2926;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2927;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2928;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2929;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2930;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2931;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2941;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2944;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2947;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2948;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2949;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=2950;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2955;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2956;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2961;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2964;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2965;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2967;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=2968;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2969;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2970;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2971;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2972;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2973;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2974;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2976;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2978;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2979;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2980;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2985;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2987;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2988;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2993;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2994;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2995;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2997;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2998;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2999;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3001;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3002;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3003;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3004;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3005;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3010;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3011;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3012;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3013;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3015;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3016;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3017;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3018;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3023;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3024;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3025;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3029;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3031;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3032;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3033;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3035;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3037;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3038;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3039;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3040;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3044;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3045;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3049;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3052;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3054;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3058;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3059;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3060;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3061;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3062;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3063;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3064;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3065;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3066;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3067;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3069;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3072;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3073;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3074;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3075;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3076;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3077;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3079;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3080;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3085;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3087;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3091;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3092;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3093;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3095;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3104;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3107;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3110;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3113;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3115;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3116;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3117;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3122;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3123;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3133;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3134;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3135;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3136;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3139;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3142;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3143;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3144;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3145;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3149;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3153;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3154;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3157;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3158;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3167;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3168;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3169;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3170;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3171;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3172;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3173;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3174;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3179;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3181;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3184;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3185;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3186;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3187;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3188;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3189;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3194;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3195;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3208;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3209;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3212;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3221;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3223;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3224;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3230;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3233;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3235;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3237;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3238;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3239;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3242;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3243;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3244;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3245;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3248;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3250;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3251;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3255;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3260;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3261;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3265;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3269;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3272;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3273;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3274;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3276;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3277;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3278;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3279;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3280;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3282;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3283;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3285;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3286;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3290;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3293;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3294;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3297;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3300;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3304;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3305;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3306;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3309;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3312;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3313;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3314;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3315;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3316;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3317;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3318;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3320;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3321;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3322;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3323;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3324;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3325;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3326;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3327;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3328;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3329;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3330;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3332;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3333;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3334;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3335;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3336;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3337;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3338;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3339;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3341;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3342;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3344;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3345;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3346;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3347;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3348;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3349;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3350;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3351;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3352;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3354;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3355;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3357;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3358;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3359;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3360;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3361;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3362;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3363;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3364;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3365;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3366;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3368;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3369;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3370;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3373;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3374;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3375;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3376;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3377;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3379;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3381;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3383;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3389;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3391;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3392;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3394;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3396;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3399;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3400;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3403;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3405;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3406;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3408;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3409;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3410;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3415;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3421;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3425;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3426;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3433;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3434;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3442;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3443;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3446;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3447;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3448;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3449;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=3452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3461;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3466;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3473;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3474;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3475;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3476;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3477;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3478;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3483;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3484;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3486;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3487;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3488;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3489;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3490;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3492;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3493;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3494;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3498;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3507;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3510;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3511;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3512;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3515;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3518;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3520;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3521;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3522;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3537;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3538;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3540;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3541;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3542;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3549;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3571;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3572;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3583;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3599;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3601;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3603;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3604;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3607;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3609;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3610;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3611;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3612;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3613;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3614;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3615;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3620;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3621;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3624;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3626;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3627;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3628;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3629;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3632;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3633;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3634;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3638;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3641;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3644;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3649;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3666;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3685;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3688;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3691;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3701;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3702;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3703;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3704;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3705;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3707;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3708;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3743;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3745;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3746;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3748;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3767;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3770;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3771;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3782;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3797;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3809;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3815;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=3817;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=3818;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3819;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3820;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3821;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3824;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3825;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=3833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3834;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3835;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3841;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3888;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3890;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3894;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3915;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3919;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3928;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3931;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3933;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3934;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3935;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3937;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3945;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3948;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3952;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3953;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3954;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3962;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3967;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3969;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3970;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3974;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3975;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3976;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3978;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3980;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3986;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=3994;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3996;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=4018;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=4019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4040;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4043;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4044;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4049;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4054;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4062;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4063;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4068;
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=4076;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4079;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4087;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4089;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4093;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4094;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4097;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4100;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4101;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4104;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=4120;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4129;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4147;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4150;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4151;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4170;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4181;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4183;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4184;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4185;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4186;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4187;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4189;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4192;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4200;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4203;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4208;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4209;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4230;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4241;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=4251;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=4252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4265;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4267;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4273;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4286;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4287;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4288;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4289;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4290;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4294;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4295;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4296;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4297;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4298;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4300;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4301;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4302;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4303;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4304;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4306;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4309;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4314;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4316;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4323;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4324;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4377;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4385;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4455;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4466;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4469;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4472;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4474;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4475;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4488;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4496;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=4499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4540;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4542;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4543;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4563;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4573;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4574;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4575;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4578;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4582;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4583;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4586;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4587;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4593;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4594;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4595;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4606;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4607;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4608;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4609;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4610;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4611;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4618;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4629;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4630;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4631;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4632;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4633;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4635;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4638;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4639;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4640;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4641;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4642;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4643;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4644;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4645;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4646;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4647;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4648;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4649;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4651;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4652;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4653;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4654;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4662;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4663;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4666;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4676;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4677;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4679;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4687;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4688;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4689;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4692;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4693;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4699;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4700;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4701;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4709;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4721;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4726;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4727;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4728;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4729;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4731;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4779;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4792;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5406;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4880;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4891;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4894;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4943;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=4945;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=4946;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4953;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4954;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4962;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4972;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4980;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5049;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5054;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5082;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5100;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5101;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5102;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5107;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5108;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5110;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5112;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5116;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5120;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5121;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5122;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5123;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5129;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5132;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5133;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5140;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5142;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5143;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5150;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5151;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5152;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5158;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5188;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5189;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5224;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5225;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5235;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5236;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5238;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5239;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5243;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5261;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5269;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5277;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5280;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5283;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5317;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5319;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=5320;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5394;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5396;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5403;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5405;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5414;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5418;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5419;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5420;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=5429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5435;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=5461;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=5462;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5476;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5477;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5484;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5489;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5492;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5493;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5494;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5498;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5504;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5506;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5510;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5511;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5512;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5514;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5515;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5516;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5517;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5518;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5519;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5546;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5570;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5591;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5592;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5593;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5599;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5607;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5608;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5611;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5612;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5617;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5620;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5634;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5638;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5639;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5640;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5642;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5666;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5675;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5676;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5677;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5679;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5680;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5683;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=5685;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5686;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5688;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5693;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5694;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5695;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5725;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5728;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5734;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5748;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5750;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5752;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5753;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5759;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5760;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5767;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5768;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5769;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5770;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5783;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5787;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5797;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5798;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5799;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5800;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5807;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5811;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5814;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5815;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5817;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5829;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5831;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5836;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5837;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5839;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5850;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5852;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5853;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5854;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=5855;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5861;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5862;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5875;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5880;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5885;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5886;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5887;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5888;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5899;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5905;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5906;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5907;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5911;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5917;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5938;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5939;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5940;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5942;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5943;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5944;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5951;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4694;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5994;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5997;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5998;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6014;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6018;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6033;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6087;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6093;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6094;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6116;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=6117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6121;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6122;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6132;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6142;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6171;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6173;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6174;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6179;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6181;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6184;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6185;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6186;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6187;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6188;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=6189;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6194;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6195;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6237;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6241;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6251;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6252;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6286;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6287;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6289;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6290;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6297;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6298;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6300;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6301;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6306;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6328;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6347;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6367;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6368;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6369;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6371;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6372;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6373;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6374;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6375;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6377;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6389;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6393;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6394;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6408;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6410;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6426;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6427;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6446;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6487;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6522;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6569;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6570;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6574;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6575;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6586;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6606;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6607;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6653;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6726;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6728;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6730;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6734;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6746;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6747;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6774;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6780;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6781;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6782;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6785;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6791;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6807;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6887;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6928;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6929;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6930;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6966;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6986;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6987;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7010;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7025;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7028;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=7031;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=7032;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7033;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7034;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7035;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7037;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7038;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7039;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7040;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7045;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=7047;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=7048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7067;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7092;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7093;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7097;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7098;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7099;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7100;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7101;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7104;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7112;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7113;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7114;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7120;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7136;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7139;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7156;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7157;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7158;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7230;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7233;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7288;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7295;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7298;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7307;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7311;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7315;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7316;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=7376;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7386;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7406;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7427;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=7428;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=7429;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7435;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7436;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7437;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7440;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7441;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7442;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7443;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7446;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=7447;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=7448;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=7449;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7450;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7455;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7460;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7461;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7462;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7489;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=7523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7524;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7567;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7623;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7643;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7714;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7766;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=7784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7792;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7793;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7798;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7801;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=7806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7809;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7853;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=7864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7869;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7872;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7874;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7907;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7917;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7940;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7952;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7976;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8015;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8016;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8096;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8123;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8150;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8151;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8177;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=8215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8257;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8282;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8305;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8306;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8307;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8311;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8318;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8357;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8358;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8359;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8360;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8361;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8362;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8363;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8364;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=8384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8385;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8393;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8399;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3811;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8402;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8404;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8417;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8437;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8440;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8447;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8496;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8509;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8519;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8520;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8524;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8525;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8526;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8528;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8529;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=8530;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=8531;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=8532;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=8534;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=8535;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8538;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8540;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8541;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8542;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8563;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8576;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=8580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8582;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8586;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8587;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8596;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8597;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8601;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8603;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8606;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8607;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8610;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8636;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8659;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8666;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8673;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8674;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8719;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8720;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8723;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8738;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=8759;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8762;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8879;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8888;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8889;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8890;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8891;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8896;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8897;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8899;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8900;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8901;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8902;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8903;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8904;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8905;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8906;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8911;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8913;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8914;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8915;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8917;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8920;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8921;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8922;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8926;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8928;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8929;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8931;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8932;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8933;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8934;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8958;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8962;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8964;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8965;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=8977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8997;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=9016;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9017;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9018;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9023;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9024;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=9025;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9026;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=9028;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9035;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9037;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9038;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9039;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9040;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9044;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9076;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9077;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9079;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9080;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9081;
UPDATE `creature_template` SET `speed_walk`=1.32 WHERE `entry`=9082;
UPDATE `creature_template` SET `speed_walk`=1.32 WHERE `entry`=9083;
UPDATE `creature_template` SET `speed_walk`=1.32 WHERE `entry`=9084;
UPDATE `creature_template` SET `speed_walk`=1.32 WHERE `entry`=9085;
UPDATE `creature_template` SET `speed_walk`=1.32 WHERE `entry`=9086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9087;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=9096;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9116;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=9166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9179;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9196;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9197;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9198;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9199;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9200;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9201;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9216;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9217;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9218;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9238;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=9268;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9296;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9298;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9316;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9317;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9336;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9356;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=9396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9447;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9449;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=9456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9499;
UPDATE `creature_template` SET `speed_walk`=0.72 WHERE `entry`=9500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9502;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=9503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9517;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9518;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=9523;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=9524;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9528;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9529;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9563;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9564;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=9568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9620;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9677;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9679;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9680;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9691;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9694;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9695;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9699;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9700;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9701;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9777;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9779;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9836;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9860;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9861;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9862;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9879;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=9938;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9976;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9978;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9979;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9980;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9987;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9988;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9989;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9990;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10016;
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=10017;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10038;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10045;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10049;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10051;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10052;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10054;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10058;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10060;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10062;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10063;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10079;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10083;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10085;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10086;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10116;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10118;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10136;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10221;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10260;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10262;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10267;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10278;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10300;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10303;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10304;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10305;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10306;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10321;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10357;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10358;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10360;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10361;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10363;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10366;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10369;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10371;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10372;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10379;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10381;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10382;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10391;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10414;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10419;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10420;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10421;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10422;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10424;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10425;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10426;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10433;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=10435;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10442;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10447;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10468;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10469;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10470;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10475;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10476;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10477;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10485;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10486;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10487;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10488;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10489;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10495;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10498;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10499;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10500;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10503;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=10507;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10516;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10540;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10556;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10578;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=10584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10599;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10600;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=10601;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=10602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10604;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10605;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10606;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10610;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10611;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10646;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10658;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10659;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10660;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10661;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10662;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10666;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10667;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10685;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10716;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10721;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=10740;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=10756;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=10757;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10779;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10780;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10782;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10801;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10803;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10804;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10805;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10808;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10811;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10814;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10824;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10837;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10838;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10839;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10902;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10903;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10904;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10905;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=10916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10920;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10921;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10922;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10923;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10926;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10927;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10936;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10976;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10978;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11017;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11023;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11024;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11025;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11029;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11031;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11032;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11033;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11035;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11037;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11038;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11039;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11040;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11044;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11051;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11063;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11065;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11066;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11068;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11069;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11071;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11072;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11075;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11084;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11096;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11103;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11104;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11139;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11152;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11183;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11184;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11185;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11186;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11187;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11188;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11189;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11192;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11194;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11257;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11260;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11262;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11317;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11328;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11397;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11438;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10307;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11471;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11473;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11475;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11516;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11546;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11548;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11551;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11552;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11553;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11554;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11555;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11556;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11563;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11577;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11578;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11582;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11596;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=11598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11608;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11609;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11615;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11624;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11625;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11626;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11629;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11656;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11680;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11681;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11683;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11700;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11703;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11704;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11715;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11716;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11720;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11739;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11744;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=11745;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11747;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11748;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11750;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11753;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11754;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11755;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11757;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11795;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11797;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11798;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11799;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11800;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11801;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11814;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11820;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11827;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11828;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11829;
UPDATE `creature_template` SET `speed_walk`=2.8 WHERE `entry`=11832;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11835;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11862;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11869;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11872;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11873;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11878;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11880;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11885;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11896;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11900;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11937;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11939;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11940;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11941;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11942;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11943;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11944;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11945;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11979;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11994;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11996;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12024;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12025;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12029;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12031;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12032;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12033;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12045;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12057;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12076;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12099;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12100;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=12101;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12136;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12150;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12160;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12196;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12202;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12251;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12252;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=12262;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12336;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12338;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12340;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12341;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12342;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12343;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12346;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12349;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12350;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12354;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12355;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12363;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12365;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12366;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12367;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12375;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12376;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12383;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12425;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12427;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12433;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12477;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12478;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12479;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12577;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12596;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12617;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12636;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12657;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12658;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12720;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12723;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12799;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12805;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12807;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12837;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12859;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12860;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12862;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12867;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12896;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12897;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12899;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12903;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12919;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12920;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12923;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12936;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12937;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12938;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12941;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12942;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12943;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12997;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13018;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13019;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13417;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=13698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13699;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13841;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13917;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14182;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14183;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=14231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14301;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=14308;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14339;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14357;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14361;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14367;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=14372;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14392;
UPDATE `creature_template` SET `speed_walk`=3.2 WHERE `entry`=14399;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14438;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14440;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14442;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14469;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14470;
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=14484;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=14485;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14489;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14495;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14496;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14497;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14499;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14523;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14536;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14542;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14543;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14545;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14549;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14553;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14559;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14621;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14624;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14625;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14626;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14627;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14628;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14634;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14646;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14724;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14726;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14727;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14728;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14730;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14731;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14734;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14741;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14742;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14850;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14859;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14861;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14873;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14874;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14893;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14901;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14942;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15006;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15022;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15076;
UPDATE `creature_template` SET `speed_walk`=0.5 WHERE `entry`=11102;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15131;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15137;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15170;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15171;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15172;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15221;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15309;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15310;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15350;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15351;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15354;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15415;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15659;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15679;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15384;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16032;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16044;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16079;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16227;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15677;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15681;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=15395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17696;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17689;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16094;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15761;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15762;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15766;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15767;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16399;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8887;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17795;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17804;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12428;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=113;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4752;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3690;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4732;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4773;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7953;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14450;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12480;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14720;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11722;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=157;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=330;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=390;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=524;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=708;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1125;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1126;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1190;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3098;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3100;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3266;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9452;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6148;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=347;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3014;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11736;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11737;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11741;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12296;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12656;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12944;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13656;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8196;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8197;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2713;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6013;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=119;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3247;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3424;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3472;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3630;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3631;

-- Wrong run speed.
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=30;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=38;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=40;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=43;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=46;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=68;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=69;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=79;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=80;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=94;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=97;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=103;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=116;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=118;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=205;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=257;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=285;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=299;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=327;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=385;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=423;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=466;
UPDATE `creature_template` SET `speed_run`=0.892857 WHERE `entry`=467;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=471;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=473;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=474;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=475;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=476;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=478;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=480;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=525;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=582;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=583;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=684;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=704;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=705;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=707;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=721;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=724;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=729;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=732;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=735;
UPDATE `creature_template` SET `speed_run`=1.02857 WHERE `entry`=738;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=798;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=799;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=800;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=801;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=802;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=822;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=880;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=881;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=883;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=890;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1008;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1010;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1011;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1035;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1064;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1128;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1131;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1138;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1195;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1196;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1199;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1201;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1211;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=1279;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1419;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1501;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1502;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1504;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1505;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1506;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1507;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1508;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1509;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1512;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1513;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=1515;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1520;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1522;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1523;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1525;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1526;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1527;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1528;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1529;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1533;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1535;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1536;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1537;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1538;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1544;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1545;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1547;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1548;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1549;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1553;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1554;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1555;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1654;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1655;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1656;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1657;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1662;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1667;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1674;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1675;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1688;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=1713;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1718;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1736;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1737;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1739;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1740;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1741;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1753;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1770;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1772;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=1809;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1890;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1910;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1916;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1917;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1918;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1919;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1922;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1933;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1934;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1935;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1936;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1941;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1942;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=1948;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1988;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1998;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1999;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2022;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2031;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=2042;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=2070;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2098;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=2151;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2152;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2162;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=6492;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=2375;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=2386;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2442;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=2587;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2620;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=2658;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=2659;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=2681;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=2691;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=2732;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2949;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2950;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2955;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2961;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2964;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2967;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2968;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2969;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2970;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2971;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2972;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2976;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2977;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2978;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2979;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3035;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3103;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3104;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3105;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3107;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3108;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3113;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3114;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3115;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3116;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3117;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3122;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3123;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3124;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3125;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3126;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3127;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3130;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3141;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3149;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3150;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3195;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3232;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3241;
UPDATE `creature_template` SET `speed_run`=1.28968 WHERE `entry`=3242;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3243;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=3284;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3300;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3415;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=3416;
UPDATE `creature_template` SET `speed_run`=1.28968 WHERE `entry`=3426;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3444;
UPDATE `creature_template` SET `speed_run`=1.28968 WHERE `entry`=3466;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4624;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3566;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3626;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3743;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3745;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3746;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3748;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3749;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3817;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3818;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3835;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3915;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3975;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4012;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4013;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4014;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4068;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4075;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4076;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4166;
UPDATE `creature_template` SET `speed_run`=2.42857 WHERE `entry`=4251;
UPDATE `creature_template` SET `speed_run`=2.79286 WHERE `entry`=4252;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4362;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4632;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4633;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4635;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4638;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4639;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4640;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4641;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4642;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4643;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4644;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4645;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4646;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4647;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4648;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4649;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4651;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4652;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4653;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4654;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=4729;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=4779;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5406;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=4945;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=4946;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4953;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5195;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5198;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5356;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5403;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5404;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5405;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5429;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=5652;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5708;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5709;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5719;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5720;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5721;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5722;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=5725;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5727;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5797;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5798;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5799;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=5800;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=5831;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5837;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5855;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=5951;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6141;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6184;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6185;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6186;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6187;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6188;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=6189;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6271;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6368;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6375;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6377;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6575;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6653;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=6728;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7047;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7048;
UPDATE `creature_template` SET `speed_run`=0.685714 WHERE `entry`=7136;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7156;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7157;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7158;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7376;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7440;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7441;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7442;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7447;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7448;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=7449;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=7784;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=7806;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8155;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=8284;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=8391;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=8447;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8534;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8535;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8596;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8759;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8921;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8959;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8960;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8961;
UPDATE `creature_template` SET `speed_run`=2.85714 WHERE `entry`=8964;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=9023;
UPDATE `creature_template` SET `speed_run`=0.471429 WHERE `entry`=9083;
UPDATE `creature_template` SET `speed_run`=0.471429 WHERE `entry`=9084;
UPDATE `creature_template` SET `speed_run`=0.471429 WHERE `entry`=9085;
UPDATE `creature_template` SET `speed_run`=0.471429 WHERE `entry`=9086;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9096;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9166;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3502;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=9500;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=9503;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9596;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=9699;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=9700;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9816;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9862;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9878;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=9879;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10016;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10017;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10038;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10083;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10119;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10268;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10339;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=10363;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10366;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10371;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10372;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=10415;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10429;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=10478;
UPDATE `creature_template` SET `speed_run`=0.571429 WHERE `entry`=10480;
UPDATE `creature_template` SET `speed_run`=0.428571 WHERE `entry`=10481;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=10485;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=10488;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=10604;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=10606;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10658;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=10676;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=10682;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10685;
UPDATE `creature_template` SET `speed_run`=2.85714 WHERE `entry`=10716;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10756;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10757;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10779;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=10780;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=10882;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=10916;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11024;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=11156;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11180;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11261;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11516;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11552;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11553;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11554;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11555;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11556;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11558;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=11564;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=11622;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=11625;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=11626;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11744;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11745;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=11871;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12150;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12341;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12342;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12343;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12346;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12349;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12350;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12351;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12353;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12354;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12355;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12363;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12365;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12366;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12367;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12375;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12376;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=12383;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12580;
UPDATE `creature_template` SET `speed_run`=0.571429 WHERE `entry`=12856;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=12859;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12864;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13016;
UPDATE `creature_template` SET `speed_run`=0.142857 WHERE `entry`=14121;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=14372;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14378;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14379;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14484;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14485;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14499;
UPDATE `creature_template` SET `speed_run`=2.85714 WHERE `entry`=14503;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14539;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14540;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14541;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14542;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14543;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14544;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14545;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14549;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14550;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14551;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14552;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14553;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14558;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14559;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14560;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14561;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14566;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14850;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14857;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14872;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14873;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14874;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=14894;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14908;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=11102;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=15309;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=15395;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=16096;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=17794;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=17795;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=113;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=4752;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11190;
UPDATE `creature_template` SET `speed_run`=2.28571 WHERE `entry`=14720;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=330;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=390;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=524;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=708;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1125;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1126;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1127;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1984;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3098;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3099;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3100;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6148;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=11557;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=12296;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=2713;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=12858;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=8336;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4262;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=3249;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=3424;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=3472;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3630;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3631;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5291;

-- Wrong melee attack speed.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=68;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=100;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=222;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=583;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=658;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=707;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=713;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=724;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=742;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=743;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=746;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=829;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=907;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1045;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1046;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1051;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1052;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1053;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1098;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1099;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1100;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1101;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1162;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1173;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1174;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1175;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1176;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1177;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=1199;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1202;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1211;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1243;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1276;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1279;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1331;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1332;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1334;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1335;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1336;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1342;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1343;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1362;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8400;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1387;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1425;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1533;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1571;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1572;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1642;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1756;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=1788;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1805;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1848;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1852;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1853;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1911;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1936;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1946;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1947;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1948;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1965;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1976;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2056;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2090;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=2091;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6492;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2215;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2226;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2254;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2255;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2276;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2302;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2386;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2389;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2405;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2421;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2422;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2425;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2432;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2433;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2464;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2524;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2528;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2611;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2612;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2645;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2646;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2647;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2738;
UPDATE `creature_template` SET `base_attack_time`=2200 WHERE `entry`=2742;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2775;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2804;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2851;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2858;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2859;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2861;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2919;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=2928;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2937;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2941;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2995;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3056;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3084;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3230;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3291;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3295;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3296;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3305;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3310;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3338;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4624;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3581;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3615;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3638;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3641;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3691;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3838;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3841;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3890;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4049;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4068;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4267;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4293;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4312;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4314;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4358;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4360;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4377;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4392;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4402;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4405;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4407;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4465;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4475;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4499;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4654;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=4687;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4844;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4846;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4880;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4972;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5088;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5118;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5185;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5186;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5224;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5226;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5228;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5243;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5259;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5261;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5263;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5267;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5269;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5270;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5271;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5273;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5277;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5280;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5283;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5317;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5319;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5320;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5401;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5435;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5569;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5595;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5666;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5676;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5677;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5708;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5709;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5710;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5711;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5712;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=5713;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5714;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5715;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5717;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5719;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5720;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5721;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5722;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5727;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5728;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5760;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5782;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=5787;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5797;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5798;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5799;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5800;
UPDATE `creature_template` SET `base_attack_time`=2700 WHERE `entry`=5827;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5831;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5836;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=5837;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5847;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6026;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6132;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6239;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6390;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6522;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6523;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6575;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6649;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6706;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6726;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6782;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=7040;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7041;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7045;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7104;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7136;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7233;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7288;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7427;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7428;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7429;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7435;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7436;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7437;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7461;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7462;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7463;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7809;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7846;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7872;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7874;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7955;
UPDATE `creature_template` SET `base_attack_time`=2600 WHERE `entry`=7996;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8055;
UPDATE `creature_template` SET `base_attack_time`=2600 WHERE `entry`=8215;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=8216;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=8257;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8282;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8311;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8318;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8319;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8384;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8391;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8419;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8437;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8438;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8440;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8447;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8479;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8497;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8504;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=8580;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8610;
UPDATE `creature_template` SET `base_attack_time`=2600 WHERE `entry`=8636;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=8666;
UPDATE `creature_template` SET `base_attack_time`=1333 WHERE `entry`=8889;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8890;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8891;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8893;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8894;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8895;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8898;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8899;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8903;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8905;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=8906;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8908;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8909;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8911;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8912;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8913;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8914;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8925;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8928;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8929;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8932;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8964;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8982;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8983;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=9016;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9017;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9018;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9020;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9021;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9022;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9023;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9024;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9025;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=9026;
UPDATE `creature_template` SET `base_attack_time`=1800 WHERE `entry`=9027;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9028;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=9029;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9030;
UPDATE `creature_template` SET `base_attack_time`=1800 WHERE `entry`=9031;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=9032;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9034;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9035;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9036;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=9037;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9038;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9039;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9040;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9041;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9042;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9043;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9044;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9045;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9046;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9056;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9097;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9098;
UPDATE `creature_template` SET `base_attack_time`=3200 WHERE `entry`=9196;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9198;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9199;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9200;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9201;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=9216;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9217;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9218;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9219;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=9236;
UPDATE `creature_template` SET `base_attack_time`=1333 WHERE `entry`=9237;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9239;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9240;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9241;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9257;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9258;
UPDATE `creature_template` SET `base_attack_time`=2700 WHERE `entry`=9259;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9260;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9261;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9262;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9263;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=9264;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=9265;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9266;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9267;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9268;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9269;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9319;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9447;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9449;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=9456;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9457;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9458;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9476;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9499;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9500;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9502;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9523;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9524;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9537;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9541;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9543;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9554;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9568;
UPDATE `creature_template` SET `base_attack_time`=1200 WHERE `entry`=9583;
UPDATE `creature_template` SET `base_attack_time`=2600 WHERE `entry`=9605;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=9677;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9678;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9679;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9680;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=9681;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9692;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9693;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9701;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9717;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9736;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9817;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9818;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=9938;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10037;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10043;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10096;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10119;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10162;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10177;
UPDATE `creature_template` SET `base_attack_time`=1100 WHERE `entry`=10220;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10221;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10257;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10268;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10299;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10316;
UPDATE `creature_template` SET `base_attack_time`=2300 WHERE `entry`=10317;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10321;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10340;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10356;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10358;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10360;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10371;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10372;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=10374;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=10376;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10378;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10381;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10382;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10384;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10385;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10387;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10390;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10391;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10393;
UPDATE `creature_template` SET `base_attack_time`=1800 WHERE `entry`=10405;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10411;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=10414;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10418;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10419;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10420;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10421;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10422;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10423;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10424;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10425;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10426;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=10429;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10432;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=10433;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=10435;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=10442;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=10447;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10470;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10471;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10472;
UPDATE `creature_template` SET `base_attack_time`=1200 WHERE `entry`=10475;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10476;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10477;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=10478;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=10486;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10487;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10488;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10489;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10491;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=10495;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10498;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10499;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10500;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10502;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10503;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10504;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10505;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=10506;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10507;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10508;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10516;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10540;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10558;
UPDATE `creature_template` SET `base_attack_time`=3200 WHERE `entry`=10584;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=10596;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10601;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10602;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10610;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10611;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10662;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10740;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10799;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10803;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10804;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10805;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=10808;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10811;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10812;
UPDATE `creature_template` SET `base_attack_time`=2600 WHERE `entry`=10814;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10824;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10882;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10901;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10917;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10936;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10942;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10992;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10997;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=11022;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=11023;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11032;
UPDATE `creature_template` SET `base_attack_time`=1800 WHERE `entry`=11043;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11075;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11099;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11120;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11139;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11257;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11261;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11458;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11466;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=11467;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=11469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11470;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11471;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11472;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11473;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11475;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11476;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11477;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11480;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11483;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11484;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11487;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11488;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11489;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11496;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11551;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11552;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11582;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=11598;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11622;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11857;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11865;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11866;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11868;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11869;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11871;
UPDATE `creature_template` SET `base_attack_time`=1200 WHERE `entry`=11878;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11885;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11896;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11897;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11900;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11937;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11941;
UPDATE `creature_template` SET `base_attack_time`=1695 WHERE `entry`=12057;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12198;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12262;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12338;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12339;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12425;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12477;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12478;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12479;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12577;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12580;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12596;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12616;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12617;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12636;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12737;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12740;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12799;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12805;
UPDATE `creature_template` SET `base_attack_time`=2660 WHERE `entry`=12860;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12899;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12900;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12923;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12924;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12925;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12936;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12937;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12938;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=13084;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13118;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13177;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13217;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13839;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14121;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14230;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14231;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14233;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14277;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14303;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14304;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14308;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14339;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14358;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14368;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14369;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14371;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=14372;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14375;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14376;
UPDATE `creature_template` SET `base_attack_time`=1739 WHERE `entry`=14377;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14378;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14379;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14381;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14382;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14383;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14387;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14392;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14398;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14399;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14400;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14440;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14441;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14442;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14484;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14485;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14489;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14494;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14503;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14536;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14566;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14621;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14717;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14861;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14942;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15006;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15007;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15076;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15126;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15137;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15193;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=15195;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15199;
UPDATE `creature_template` SET `base_attack_time`=1739 WHERE `entry`=15309;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15353;
UPDATE `creature_template` SET `base_attack_time`=1739 WHERE `entry`=15354;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=16032;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=16227;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7954;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11459;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14720;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11722;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9452;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6148;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=347;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8196;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8198;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13916;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6013;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8336;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4262;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7980;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5291;

-- Wrong ranged attack speed.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=100;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=222;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=583;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=658;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=704;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=705;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=707;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=713;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=715;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=724;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=742;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=743;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=746;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=794;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=798;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=799;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=800;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=801;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=802;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=829;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=863;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=868;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=937;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=938;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=940;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=941;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=943;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=977;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1087;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1096;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1097;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1098;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1099;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1100;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1101;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1162;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1173;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1174;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1175;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1176;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1177;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1184;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1202;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1211;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1243;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1276;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1279;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1331;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1332;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1334;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1335;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1336;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1342;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1343;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1362;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1419;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1425;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1488;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1489;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1490;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1491;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1533;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1550;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1565;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1653;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1713;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1718;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1848;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1853;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1946;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1965;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2056;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6492;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2433;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2524;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2528;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2535;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2536;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2545;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2775;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2919;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2937;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3056;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3103;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3104;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3105;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3107;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3108;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3113;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3114;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3115;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3117;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3118;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3124;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3125;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3130;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3131;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3139;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3141;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3142;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3143;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3144;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3145;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3153;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3154;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3157;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3158;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3163;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3164;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3165;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3166;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3167;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3168;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3169;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3170;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3171;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3172;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3173;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3174;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3175;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3184;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3185;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3186;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3187;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3188;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3190;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3191;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3193;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3194;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3195;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3198;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3208;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3228;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3230;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3291;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3293;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3294;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3295;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3297;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3304;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3336;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3352;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3355;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3356;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3362;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3475;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3509;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3581;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3620;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3706;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3707;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3881;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3882;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3933;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4043;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4049;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4068;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4293;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4358;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4360;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4377;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4392;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4396;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4398;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4399;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4400;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4402;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4405;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4723;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4880;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4949;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4972;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5185;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5195;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5224;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5226;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5228;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5243;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5256;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5259;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5261;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5263;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5267;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5270;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5271;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5273;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5277;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5280;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5283;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5435;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5477;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5569;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5592;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5593;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5666;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5676;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5677;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5708;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5709;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5710;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5711;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5712;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5713;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5714;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5715;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5716;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5717;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5719;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5720;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5721;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5722;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5727;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5728;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5765;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5812;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5823;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5827;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5847;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5865;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5880;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5884;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5887;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5942;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5943;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5952;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5953;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6027;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6239;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6390;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6408;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6575;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6586;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6607;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6649;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6782;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6786;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6787;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6928;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7231;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7386;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7809;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7952;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7955;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8055;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8215;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8311;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8318;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8319;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8384;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8391;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8437;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8438;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8440;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8497;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8504;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8580;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8666;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8925;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8926;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8928;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8932;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8933;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9027;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9028;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9029;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9030;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9031;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9032;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9033;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9045;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9096;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9097;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9098;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9196;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9197;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9198;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9199;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9200;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9201;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9216;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9217;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9218;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9219;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9236;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9237;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9239;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9240;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9241;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9258;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9259;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9260;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9261;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9262;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9263;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9264;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9265;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9266;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9267;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9268;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9416;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9456;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9457;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9458;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9476;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9523;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9524;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9537;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9541;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9564;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9568;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9583;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9596;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9605;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9692;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9693;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9701;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9716;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9717;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9736;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9796;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9816;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9817;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9818;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9819;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9987;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10083;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10096;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10162;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10176;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10177;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10220;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10221;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10268;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10299;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10316;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10317;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10318;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10319;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10339;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10340;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10363;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10366;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10369;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10371;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10372;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10374;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10376;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10381;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10382;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10384;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10385;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10387;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10390;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10391;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10393;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10405;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10411;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10414;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10418;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10419;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10420;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10421;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10422;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10423;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10424;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10425;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10426;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10429;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10430;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10435;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10442;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10447;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10506;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10509;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10516;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10556;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10558;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10578;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10584;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10596;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10601;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10602;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10610;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10611;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10676;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10682;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10716;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10740;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10742;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10762;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10799;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10803;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10804;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10805;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10808;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10811;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10812;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10814;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10882;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10899;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10917;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10936;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10997;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11025;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11032;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11043;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11075;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11099;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11120;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11378;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11458;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11466;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11467;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11469;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11470;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11471;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11472;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11473;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11475;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11476;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11477;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11480;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11483;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11484;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11486;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11487;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11488;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11489;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11496;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11552;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11598;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11814;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11857;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11897;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11937;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11941;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11943;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12136;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12339;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12346;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12349;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12350;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12351;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12353;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12365;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12430;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12580;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12799;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12805;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12860;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12900;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12923;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12924;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12925;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12936;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12937;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12938;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14121;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14231;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14233;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14303;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14308;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14356;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14358;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14361;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14368;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14369;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14371;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14372;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14381;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14382;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14383;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14398;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14399;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14400;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14484;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14485;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14489;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14494;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14495;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14503;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14539;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14540;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14541;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14543;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14544;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14545;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14551;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14566;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14646;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15137;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15193;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15195;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15197;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15199;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15310;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15353;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15354;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15415;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=16032;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=16044;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=16046;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=16048;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4752;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7954;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7953;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11459;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10375;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=708;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1114;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1557;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3098;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3099;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13916;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6013;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8336;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=119;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5291;

-- Wrong health or mana.
UPDATE `creature_template` SET `health_min`=273, `health_max`=273 WHERE `entry`=167 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=226 && `patch`=0;
UPDATE `creature_template` SET `health_min`=32370, `health_max`=32370 WHERE `entry`=466 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1677, `health_max`=1677 WHERE `entry`=826 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2879, `health_max`=2979 WHERE `entry`=863 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2768, `health_max`=2768 WHERE `entry`=864 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3398, `health_max`=3398 WHERE `entry`=866 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1677, `health_max`=1677 WHERE `entry`=885 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1604, `health_max`=1604 WHERE `entry`=886 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2440, `health_max`=2440 WHERE `entry`=934 && `patch`=0;
UPDATE `creature_template` SET `health_min`=198, `health_max`=198 WHERE `entry`=959 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1536, `health_max`=1536 WHERE `entry`=999 && `patch`=0;
UPDATE `creature_template` SET `health_min`=156 WHERE `entry`=1231 && `patch`=0;
UPDATE `creature_template` SET `health_min`=156, `health_max`=222 WHERE `entry`=1240 && `patch`=0;
UPDATE `creature_template` SET `health_min`=156, `health_max`=247 WHERE `entry`=1243 && `patch`=0;
UPDATE `creature_template` SET `health_min`=156 WHERE `entry`=1245 && `patch`=0;
UPDATE `creature_template` SET `health_min`=198, `health_max`=198 WHERE `entry`=1249 && `patch`=0;
UPDATE `creature_template` SET `health_max`=247 WHERE `entry`=1252 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=1278 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=1280 && `patch`=0;
UPDATE `creature_template` SET `health_min`=466400, `health_max`=466400, `mana_min`=123120, `mana_max`=123120 WHERE `entry`=1284 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=1337 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=1338 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=1339 && `patch`=0;
UPDATE `creature_template` SET `health_min`=484, `health_max`=484 WHERE `entry`=1362 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1752, `health_max`=1752 WHERE `entry`=1381 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1124, `health_max`=1398 WHERE `entry`=1423 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1124, `health_max`=1124 WHERE `entry`=1742 && `patch`=0;
UPDATE `creature_template` SET `health_min`=156, `health_max`=176 WHERE `entry`=1949 && `patch`=0;
UPDATE `creature_template` SET `health_min`=137 WHERE `entry`=1975 && `patch`=0;
UPDATE `creature_template` SET `health_min`=300, `health_max`=300 WHERE `entry`=2135 && `patch`=0;
UPDATE `creature_template` SET `health_min`=417, `health_max`=484 WHERE `entry`=2140 && `patch`=0;
UPDATE `creature_template` SET `health_min`=61040, `health_max`=61040 WHERE `entry`=2215 && `patch`=0;
UPDATE `creature_template` SET `health_min`=712, `health_max`=712 WHERE `entry`=2239 && `patch`=0;
UPDATE `creature_template` SET `health_max`=247 WHERE `entry`=2326 && `patch`=0;
UPDATE `creature_template` SET `health_min`=518000, `health_max`=518000, `mana_min`=64200, `mana_max`=64200 WHERE `entry`=2425 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=2507 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=2516 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1910, `health_max`=1910 WHERE `entry`=2527 && `patch`=0;
UPDATE `creature_template` SET `health_min`=999300, `health_max`=999300 WHERE `entry`=2784 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1981, `health_max`=1981 WHERE `entry`=2840 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1981, `health_max`=1981 WHERE `entry`=2845 && `patch`=0;
UPDATE `creature_template` SET `health_min`=999300, `health_max`=999300, `mana_min`=0, `mana_max`=0 WHERE `entry`=3057 && `patch`=0;
UPDATE `creature_template` SET `health_min`=198, `health_max`=198 WHERE `entry`=3078 && `patch`=0;
UPDATE `creature_template` SET `health_min`=273, `health_max`=273 WHERE `entry`=3080 && `patch`=0;
UPDATE `creature_template` SET `health_max`=176 WHERE `entry`=3141 && `patch`=0;
UPDATE `creature_template` SET `health_min`=356, `health_max`=356 WHERE `entry`=3167 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3217 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3218 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3219 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3220 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3221 && `patch`=0;
UPDATE `creature_template` SET `health_min`=600, `health_max`=600 WHERE `entry`=3223 && `patch`=0;
UPDATE `creature_template` SET `health_min`=617, `health_max`=617 WHERE `entry`=3421 && `patch`=0;
UPDATE `creature_template` SET `health_min`=712, `health_max`=712 WHERE `entry`=3493 && `patch`=0;
UPDATE `creature_template` SET `health_min`=222, `health_max`=222 WHERE `entry`=3522 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1162, `health_max`=1162 WHERE `entry`=3536 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1752, `health_max`=1752 WHERE `entry`=3543 && `patch`=0;
UPDATE `creature_template` SET `health_min`=417, `health_max`=417 WHERE `entry`=3553 && `patch`=0;
UPDATE `creature_template` SET `health_max`=484 WHERE `entry`=3554 && `patch`=0;
UPDATE `creature_template` SET `health_max`=484 WHERE `entry`=3556 && `patch`=0;
UPDATE `creature_template` SET `health_min`=417, `health_max`=562 WHERE `entry`=3702 && `patch`=0;
UPDATE `creature_template` SET `health_min`=955, `health_max`=1459 WHERE `entry`=3945 && `patch`=0;
UPDATE `creature_template` SET `health_min`=328, `health_max`=328 WHERE `entry`=4185 && `patch`=0;
UPDATE `creature_template` SET `health_min`=712, `health_max`=712 WHERE `entry`=4187 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1750 WHERE `entry`=4388 && `patch`=0;
UPDATE `creature_template` SET `health_min`=787, `health_max`=787 WHERE `entry`=4586 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=5406 && `patch`=0;
UPDATE `creature_template` SET `health_min`=799500, `health_max`=799500, `mana_min`=39300, `mana_max`=39300 WHERE `entry`=4949 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1342, `health_max`=1342 WHERE `entry`=4950 && `patch`=0;
UPDATE `creature_template` SET `health_max`=3171 WHERE `entry`=5185 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=5403 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=5405 && `patch`=0;
UPDATE `creature_template` SET `health_min`=741, `health_max`=819 WHERE `entry`=5435 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=5814 && `patch`=0;
UPDATE `creature_template` SET `health_min`=42 WHERE `entry`=5917 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2114 WHERE `entry`=5953 && `patch`=0;
UPDATE `creature_template` SET `health_min`=531 WHERE `entry`=6141 && `patch`=0;
UPDATE `creature_template` SET `health_max`=3082 WHERE `entry`=6347 && `patch`=0;
UPDATE `creature_template` SET `health_max`=3082 WHERE `entry`=6369 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2979 WHERE `entry`=6372 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=6749 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1772, `health_max`=2091, `mana_min`=1807, `mana_max`=2117 WHERE `entry`=6887 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3048, `health_max`=3048 WHERE `entry`=7730 && `patch`=0;
UPDATE `creature_template` SET `health_min`=91560, `health_max`=91560, `mana_min`=0, `mana_max`=0 WHERE `entry`=7846 && `patch`=0;
UPDATE `creature_template` SET `health_min`=666200, `health_max`=666200 WHERE `entry`=7937 && `patch`=0;
UPDATE `creature_template` SET `health_min`=5228, `health_max`=5228 WHERE `entry`=7975 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2217, `health_max`=2217 WHERE `entry`=8151 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2487 WHERE `entry`=8402 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2487 WHERE `entry`=8417 && `patch`=0;
UPDATE `creature_template` SET `health_min`=4980, `health_max`=5151, `mana_min`=9300, `mana_max`=9530 WHERE `entry`=8913 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2533 WHERE `entry`=8920 && `patch`=0;
UPDATE `creature_template` SET `health_min`=6645, `health_max`=7113 WHERE `entry`=8964 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3188, `health_max`=3188 WHERE `entry`=9544 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=9988 && `patch`=0;
UPDATE `creature_template` SET `health_min`=86, `health_max`=86 WHERE `entry`=9990 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=10048 && `patch`=0;
UPDATE `creature_template` SET `health_min`=306475, `health_max`=306475, `mana_min`=262000, `mana_max`=262000 WHERE `entry`=10162 && `patch`=4;
UPDATE `creature_template` SET `health_min`=799500, `health_max`=799500, `mana_min`=52400, `mana_max`=52400 WHERE `entry`=10181 && `patch`=0;
UPDATE `creature_template` SET `health_max`=7842 WHERE `entry`=10299 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3082, `health_max`=3082 WHERE `entry`=10361 && `patch`=0;
-- UPDATE `creature_template` SET `health_min`=2614, `health_max`=2699 WHERE `entry`=10375 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3398, `health_max`=3398 WHERE `entry`=10379 && `patch`=0;
UPDATE `creature_template` SET `health_min`=537240, `health_max`=537240, `mana_min`=17038, `mana_max`=17038 WHERE `entry`=10540 && `patch`=0;
UPDATE `creature_template` SET `health_min`=323700, `health_max`=323700 WHERE `entry`=10942 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3875, `health_max`=3875 WHERE `entry`=11063 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=11069 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=11105 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=11119 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3188, `health_max`=3188 WHERE `entry`=11184 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1752, `health_max`=1752 WHERE `entry`=11317 && `patch`=0;
UPDATE `creature_template` SET `health_min`=120 WHERE `entry`=11328 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3875, `health_max`=3875 WHERE `entry`=11536 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3296, `health_max`=3296, `mana_min`=2434, `mana_max`=2434 WHERE `entry`=11798 && `patch`=0;
UPDATE `creature_template` SET `health_min`=3296, `health_max`=3296, `mana_min`=2434, `mana_max`=2434 WHERE `entry`=11800 && `patch`=0;
-- UPDATE `creature_template` SET `health_min`=2718, `health_max`=2718, `mana_min`=2117, `mana_max`=2117 WHERE `entry`=11822 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2217, `health_max`=2217 WHERE `entry`=11877 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2979, `health_max`=2979 WHERE `entry`=12024 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=12030 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1002, `health_max`=1002 WHERE `entry`=12045 && `patch`=0;
UPDATE `creature_template` SET `health_min`=42, `health_max`=55 WHERE `entry`=12150 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12341 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12342 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12343 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12346 && `patch`=0;
UPDATE `creature_template` SET `health_min`=222 WHERE `entry`=12354 && `patch`=0;
UPDATE `creature_template` SET `health_min`=222 WHERE `entry`=12355 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12363 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12365 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12367 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12375 && `patch`=0;
UPDATE `creature_template` SET `health_max`=55 WHERE `entry`=12376 && `patch`=0;
UPDATE `creature_template` SET `health_max`=1919 WHERE `entry`=12923 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2062 WHERE `entry`=12924 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2768 WHERE `entry`=12925 && `patch`=0;
UPDATE `creature_template` SET `health_max`=2062 WHERE `entry`=12936 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2398 WHERE `entry`=12937 && `patch`=0;
UPDATE `creature_template` SET `health_max`=1919 WHERE `entry`=12938 && `patch`=0;
UPDATE `creature_template` SET `health_min`=1752, `health_max`=1752 WHERE `entry`=13699 && `patch`=0;
UPDATE `creature_template` SET `health_min`=2217, `health_max`=2217 WHERE `entry`=14301 && `patch`=1;
UPDATE `creature_template` SET `health_min`=3052, `health_max`=3052 WHERE `entry`=14495 && `patch`=2;
UPDATE `creature_template` SET `health_min`=42 WHERE `entry`=14496 && `patch`=2;
UPDATE `creature_template` SET `health_min`=42 WHERE `entry`=14499 && `patch`=2;
UPDATE `creature_template` SET `health_max`=2371 WHERE `entry`=14622 && `patch`=3;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=14646 && `patch`=0;
UPDATE `creature_template` SET `health_max`=839 WHERE `entry`=14718 && `patch`=3;
UPDATE `creature_template` SET `health_min`=1990, `health_max`=1990 WHERE `entry`=14737 && `patch`=3;
UPDATE `creature_template` SET `health_min`=2062, `health_max`=2062 WHERE `entry`=14738 && `patch`=3;
UPDATE `creature_template` SET `health_min`=2062, `health_max`=2062 WHERE `entry`=14739 && `patch`=3;
UPDATE `creature_template` SET `health_min`=1651, `health_max`=1651 WHERE `entry`=14740 && `patch`=3;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=15164 && `patch`=5;
UPDATE `creature_template` SET `health_min`=799500, `health_max`=799500, `mana_min`=52400, `mana_max`=52400 WHERE `entry`=15193 && `patch`=6;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=16044 && `patch`=8;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=16046 && `patch`=8;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=16047 && `patch`=8;
UPDATE `creature_template` SET `health_min`=3296, `health_max`=3296, `mana_min`=2434, `mana_max`=2434 WHERE `entry`=16048 && `patch`=8;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=16079 && `patch`=8;




-- Wrong bounding radius.
UPDATE `creature_model_info` SET `bounding_radius`=0.716546 WHERE `modelid`=180;
UPDATE `creature_model_info` SET `bounding_radius`=1.967 WHERE `modelid`=181;
UPDATE `creature_model_info` SET `bounding_radius`=0.522 WHERE `modelid`=317;
UPDATE `creature_model_info` SET `bounding_radius`=0.753437 WHERE `modelid`=377;
UPDATE `creature_model_info` SET `bounding_radius`=0.275186 WHERE `modelid`=382;
UPDATE `creature_model_info` SET `bounding_radius`=0.6929 WHERE `modelid`=414;
UPDATE `creature_model_info` SET `bounding_radius`=0.737491 WHERE `modelid`=503;
UPDATE `creature_model_info` SET `bounding_radius`=0.754339 WHERE `modelid`=513;
UPDATE `creature_model_info` SET `bounding_radius`=1.41225 WHERE `modelid`=523;
UPDATE `creature_model_info` SET `bounding_radius`=0.5122 WHERE `modelid`=533;
UPDATE `creature_model_info` SET `bounding_radius`=0.712805 WHERE `modelid`=598;
UPDATE `creature_model_info` SET `bounding_radius`=1.05763 WHERE `modelid`=604;
UPDATE `creature_model_info` SET `bounding_radius`=0.737491 WHERE `modelid`=607;
UPDATE `creature_model_info` SET `bounding_radius`=0.4797 WHERE `modelid`=646;
UPDATE `creature_model_info` SET `bounding_radius`=0.661986 WHERE `modelid`=670;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=673;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=677;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=720;
UPDATE `creature_model_info` SET `bounding_radius`=0.583449 WHERE `modelid`=748;
UPDATE `creature_model_info` SET `bounding_radius`=1.40085 WHERE `modelid`=781;
UPDATE `creature_model_info` SET `bounding_radius`=1.10339 WHERE `modelid`=785;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=787;
UPDATE `creature_model_info` SET `bounding_radius`=0.900508 WHERE `modelid`=843;
UPDATE `creature_model_info` SET `bounding_radius`=0.927203 WHERE `modelid`=845;
UPDATE `creature_model_info` SET `bounding_radius`=1.05 WHERE `modelid`=855;
UPDATE `creature_model_info` SET `bounding_radius`=0.51935 WHERE `modelid`=902;
UPDATE `creature_model_info` SET `bounding_radius`=1.08051 WHERE `modelid`=903;
UPDATE `creature_model_info` SET `bounding_radius`=0.378102 WHERE `modelid`=909;
UPDATE `creature_model_info` SET `bounding_radius`=0.9723 WHERE `modelid`=925;
UPDATE `creature_model_info` SET `bounding_radius`=0.65653 WHERE `modelid`=960;
UPDATE `creature_model_info` SET `bounding_radius`=0.944068 WHERE `modelid`=1030;
UPDATE `creature_model_info` SET `bounding_radius`=0.61681 WHERE `modelid`=1034;
UPDATE `creature_model_info` SET `bounding_radius`=0.654478 WHERE `modelid`=1035;
UPDATE `creature_model_info` SET `bounding_radius`=0.9723 WHERE `modelid`=1039;
UPDATE `creature_model_info` SET `bounding_radius`=0.9723 WHERE `modelid`=1080;
UPDATE `creature_model_info` SET `bounding_radius`=0.5622 WHERE `modelid`=1097;
UPDATE `creature_model_info` SET `bounding_radius`=1.30932 WHERE `modelid`=1100;
UPDATE `creature_model_info` SET `bounding_radius`=0.5729 WHERE `modelid`=1220;
UPDATE `creature_model_info` SET `bounding_radius`=0.5729 WHERE `modelid`=1221;
UPDATE `creature_model_info` SET `bounding_radius`=0.593268 WHERE `modelid`=1250;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=1336;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=1669;
UPDATE `creature_model_info` SET `bounding_radius`=0.55 WHERE `modelid`=1742;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=1744;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=1746;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=1872;
UPDATE `creature_model_info` SET `bounding_radius`=0.91425 WHERE `modelid`=1934;
UPDATE `creature_model_info` SET `bounding_radius`=1.32 WHERE `modelid`=1958;
UPDATE `creature_model_info` SET `bounding_radius`=0.7511 WHERE `modelid`=1959;
UPDATE `creature_model_info` SET `bounding_radius`=0.805 WHERE `modelid`=1992;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=2194;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=2240;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2381;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2386;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2394;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2400;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2401;
UPDATE `creature_model_info` SET `bounding_radius`=0.66 WHERE `modelid`=2424;
UPDATE `creature_model_info` SET `bounding_radius`=0.712805 WHERE `modelid`=2437;
UPDATE `creature_model_info` SET `bounding_radius`=0.355085 WHERE `modelid`=2485;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=2489;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2518;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2519;
UPDATE `creature_model_info` SET `bounding_radius`=1.5895 WHERE `modelid`=2539;
UPDATE `creature_model_info` SET `bounding_radius`=1.59735 WHERE `modelid`=2549;
UPDATE `creature_model_info` SET `bounding_radius`=1.87775 WHERE `modelid`=2573;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2588;
UPDATE `creature_model_info` SET `bounding_radius`=0.425 WHERE `modelid`=2709;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=2971;
UPDATE `creature_model_info` SET `bounding_radius`=0.48 WHERE `modelid`=3005;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=3015;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=3293;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=3897;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=3899;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=3978;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=4065;
UPDATE `creature_model_info` SET `bounding_radius`=0.554237 WHERE `modelid`=4091;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4117;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4119;
UPDATE `creature_model_info` SET `bounding_radius`=0.9932 WHERE `modelid`=4426;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `bounding_radius`=0.923 WHERE `modelid`=4583;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4595;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4668;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=4669;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4678;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4680;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4681;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4682;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4684;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4691;
UPDATE `creature_model_info` SET `bounding_radius`=0.14178 WHERE `modelid`=4732;
UPDATE `creature_model_info` SET `bounding_radius`=0.148898 WHERE `modelid`=4734;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4771;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4772;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4773;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4774;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=4837;
UPDATE `creature_model_info` SET `bounding_radius`=0.5205 WHERE `modelid`=5432;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=5435;
UPDATE `creature_model_info` SET `bounding_radius`=0.369495 WHERE `modelid`=5436;
UPDATE `creature_model_info` SET `bounding_radius`=0.369495 WHERE `modelid`=5438;
UPDATE `creature_model_info` SET `bounding_radius`=0.369495 WHERE `modelid`=5443;
UPDATE `creature_model_info` SET `bounding_radius`=0.4596 WHERE `modelid`=5447;
UPDATE `creature_model_info` SET `bounding_radius`=0.7917 WHERE `modelid`=5450;
UPDATE `creature_model_info` SET `bounding_radius`=0.65 WHERE `modelid`=5497;
UPDATE `creature_model_info` SET `bounding_radius`=0.609 WHERE `modelid`=5561;
UPDATE `creature_model_info` SET `bounding_radius`=0.70035 WHERE `modelid`=5562;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=5563;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=5784;
UPDATE `creature_model_info` SET `bounding_radius`=0.694 WHERE `modelid`=5848;
UPDATE `creature_model_info` SET `bounding_radius`=0.201695 WHERE `modelid`=6368;
UPDATE `creature_model_info` SET `bounding_radius`=1.725 WHERE `modelid`=6375;
UPDATE `creature_model_info` SET `bounding_radius`=2.625 WHERE `modelid`=6378;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6547;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6549;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6670;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6671;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6675;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6676;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6677;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6698;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6699;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6700;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6701;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6702;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6707;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6708;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6709;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6921;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6922;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6923;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6924;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6928;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6994;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=7347;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=7534;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=7549;
UPDATE `creature_model_info` SET `bounding_radius`=0.118 WHERE `modelid`=7554;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=7569;
UPDATE `creature_model_info` SET `bounding_radius`=0.45 WHERE `modelid`=7571;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=7604;
UPDATE `creature_model_info` SET `bounding_radius`=1.2 WHERE `modelid`=7671;
UPDATE `creature_model_info` SET `bounding_radius`=1.8 WHERE `modelid`=7672;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=7709;
UPDATE `creature_model_info` SET `bounding_radius`=0.175 WHERE `modelid`=7763;
UPDATE `creature_model_info` SET `bounding_radius`=0.4164 WHERE `modelid`=7764;
UPDATE `creature_model_info` SET `bounding_radius`=0.8 WHERE `modelid`=7806;
UPDATE `creature_model_info` SET `bounding_radius`=0.525 WHERE `modelid`=7839;
UPDATE `creature_model_info` SET `bounding_radius`=0.6125 WHERE `modelid`=7840;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=7873;
UPDATE `creature_model_info` SET `bounding_radius`=0.234322 WHERE `modelid`=7894;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=7975;
UPDATE `creature_model_info` SET `bounding_radius`=0.805 WHERE `modelid`=8013;
UPDATE `creature_model_info` SET `bounding_radius`=3.75 WHERE `modelid`=8053;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=8182;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=8184;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=8269;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=8649;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=8653;
UPDATE `creature_model_info` SET `bounding_radius`=0.4164 WHERE `modelid`=8655;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8658;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8663;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=8760;
UPDATE `creature_model_info` SET `bounding_radius`=0.152458 WHERE `modelid`=8808;
UPDATE `creature_model_info` SET `bounding_radius`=0.387312 WHERE `modelid`=8843;
UPDATE `creature_model_info` SET `bounding_radius`=0.7056 WHERE `modelid`=8869;
UPDATE `creature_model_info` SET `bounding_radius`=0.2 WHERE `modelid`=9028;
UPDATE `creature_model_info` SET `bounding_radius`=0.15 WHERE `modelid`=9029;
UPDATE `creature_model_info` SET `bounding_radius`=1.125 WHERE `modelid`=9030;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=9033;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=9149;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=9234;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9236;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=9329;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=9330;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=9331;
UPDATE `creature_model_info` SET `bounding_radius`=0.2 WHERE `modelid`=9354;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9414;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9415;
UPDATE `creature_model_info` SET `bounding_radius`=0.923 WHERE `modelid`=9417;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9421;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9422;
UPDATE `creature_model_info` SET `bounding_radius`=0.923 WHERE `modelid`=9425;
UPDATE `creature_model_info` SET `bounding_radius`=0.923 WHERE `modelid`=9426;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9430;
UPDATE `creature_model_info` SET `bounding_radius`=0.923 WHERE `modelid`=9432;
UPDATE `creature_model_info` SET `bounding_radius`=0.8165 WHERE `modelid`=9434;
UPDATE `creature_model_info` SET `bounding_radius`=0.35 WHERE `modelid`=9449;
UPDATE `creature_model_info` SET `bounding_radius`=0.45 WHERE `modelid`=9534;
UPDATE `creature_model_info` SET `bounding_radius`=0.143559 WHERE `modelid`=9535;
UPDATE `creature_model_info` SET `bounding_radius`=0.0875 WHERE `modelid`=9556;
UPDATE `creature_model_info` SET `bounding_radius`=0.959322 WHERE `modelid`=9563;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=9564;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=9575;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=9576;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=9577;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9578;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9580;
UPDATE `creature_model_info` SET `bounding_radius`=1.95 WHERE `modelid`=9584;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9602;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9603;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9614;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9617;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9619;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9625;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9637;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=9643;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9652;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9653;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9656;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9657;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9660;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9661;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9665;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9675;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9692;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9711;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9715;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9725;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9727;
UPDATE `creature_model_info` SET `bounding_radius`=0.3672 WHERE `modelid`=9732;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9738;
UPDATE `creature_model_info` SET `bounding_radius`=0.157797 WHERE `modelid`=9750;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=9754;
UPDATE `creature_model_info` SET `bounding_radius`=2.3375 WHERE `modelid`=9755;
UPDATE `creature_model_info` SET `bounding_radius`=1.09664 WHERE `modelid`=9756;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=9778;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=9784;
UPDATE `creature_model_info` SET `bounding_radius`=1.15 WHERE `modelid`=9787;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=9806;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9867;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9868;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9869;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9870;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9874;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9876;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9879;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9880;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9882;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9883;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9884;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9885;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9886;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9888;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=9889;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=9909;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=9912;
UPDATE `creature_model_info` SET `bounding_radius`=0.175 WHERE `modelid`=9989;
UPDATE `creature_model_info` SET `bounding_radius`=0.14 WHERE `modelid`=10033;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=10050;
UPDATE `creature_model_info` SET `bounding_radius`=1.967 WHERE `modelid`=10094;
UPDATE `creature_model_info` SET `bounding_radius`=0.278 WHERE `modelid`=10095;
UPDATE `creature_model_info` SET `bounding_radius`=0.4836 WHERE `modelid`=10173;
UPDATE `creature_model_info` SET `bounding_radius`=0.3068 WHERE `modelid`=10174;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=10176;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=10177;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=10178;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=10179;
UPDATE `creature_model_info` SET `bounding_radius`=1.3 WHERE `modelid`=10183;
UPDATE `creature_model_info` SET `bounding_radius`=1.05 WHERE `modelid`=10193;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10217;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10229;
UPDATE `creature_model_info` SET `bounding_radius`=0.4979 WHERE `modelid`=10248;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10312;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10356;
UPDATE `creature_model_info` SET `bounding_radius`=0.2247 WHERE `modelid`=10375;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=10379;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=10381;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=10382;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10458;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10463;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10464;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10478;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10479;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10480;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10481;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10482;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10483;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10484;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10485;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10486;
UPDATE `creature_model_info` SET `bounding_radius`=0.6929 WHERE `modelid`=10487;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10488;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10489;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10490;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10491;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10496;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10497;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10498;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10499;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10500;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10501;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10503;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10504;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10505;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10506;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10507;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10508;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10509;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10510;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10511;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10512;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10513;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10514;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10515;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10516;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10517;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10518;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10519;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10529;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10530;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10531;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10532;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10533;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10534;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10544;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10554;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10557;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=10558;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=10559;
UPDATE `creature_model_info` SET `bounding_radius`=0.6929 WHERE `modelid`=10626;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10637;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10639;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10674;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=10772;
UPDATE `creature_model_info` SET `bounding_radius`=0.403 WHERE `modelid`=10923;
UPDATE `creature_model_info` SET `bounding_radius`=0.4511 WHERE `modelid`=10974;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=11069;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=11070;
UPDATE `creature_model_info` SET `bounding_radius`=1.3 WHERE `modelid`=11078;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=11121;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11126;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=11205;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11206;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=11207;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11208;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=11209;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11210;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=11211;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11212;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=11213;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11214;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=11215;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11216;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=11250;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=11253;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=11256;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=11261;
UPDATE `creature_model_info` SET `bounding_radius`=0.3672 WHERE `modelid`=11270;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11279;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11310;
UPDATE `creature_model_info` SET `bounding_radius`=1.6095 WHERE `modelid`=11315;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=11394;
UPDATE `creature_model_info` SET `bounding_radius`=1.05763 WHERE `modelid`=11416;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11425;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11427;
UPDATE `creature_model_info` SET `bounding_radius`=0.56728 WHERE `modelid`=11451;
UPDATE `creature_model_info` SET `bounding_radius`=2.8 WHERE `modelid`=11578;
UPDATE `creature_model_info` SET `bounding_radius`=1.2 WHERE `modelid`=11658;
UPDATE `creature_model_info` SET `bounding_radius`=0.558 WHERE `modelid`=11660;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11665;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=11668;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=11790;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=11986;
UPDATE `creature_model_info` SET `bounding_radius`=0.525 WHERE `modelid`=11997;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=12002;
UPDATE `creature_model_info` SET `bounding_radius`=4.167 WHERE `modelid`=12110;
UPDATE `creature_model_info` SET `bounding_radius`=4 WHERE `modelid`=12129;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=12162;
UPDATE `creature_model_info` SET `bounding_radius`=2.0835 WHERE `modelid`=12164;
UPDATE `creature_model_info` SET `bounding_radius`=0.35 WHERE `modelid`=12168;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=12189;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=12190;
UPDATE `creature_model_info` SET `bounding_radius`=0.69 WHERE `modelid`=12192;
UPDATE `creature_model_info` SET `bounding_radius`=0.51 WHERE `modelid`=12193;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=12197;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=12200;
UPDATE `creature_model_info` SET `bounding_radius`=2.43075 WHERE `modelid`=12239;
UPDATE `creature_model_info` SET `bounding_radius`=0.00235 WHERE `modelid`=12271;
UPDATE `creature_model_info` SET `bounding_radius`=0.9723 WHERE `modelid`=12340;
UPDATE `creature_model_info` SET `bounding_radius`=0.9723 WHERE `modelid`=12344;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=12681;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=12923;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=12972;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=13031;
UPDATE `creature_model_info` SET `bounding_radius`=3.801 WHERE `modelid`=13489;
UPDATE `creature_model_info` SET `bounding_radius`=0.52785 WHERE `modelid`=14172;
UPDATE `creature_model_info` SET `bounding_radius`=0.35 WHERE `modelid`=14252;
UPDATE `creature_model_info` SET `bounding_radius`=0.525 WHERE `modelid`=14253;
UPDATE `creature_model_info` SET `bounding_radius`=0.525 WHERE `modelid`=14254;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=14368;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=14383;
UPDATE `creature_model_info` SET `bounding_radius`=0.4668 WHERE `modelid`=14384;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=14393;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=14407;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=14408;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=14409;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=14410;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=14411;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=14412;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=14420;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14421;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=14422;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14534;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=14535;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=14536;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14537;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14538;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=14539;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=14540;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=14545;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=14555;
UPDATE `creature_model_info` SET `bounding_radius`=1.2 WHERE `modelid`=14585;
UPDATE `creature_model_info` SET `bounding_radius`=0.765 WHERE `modelid`=15325;
UPDATE `creature_model_info` SET `bounding_radius`=0.4213 WHERE `modelid`=15349;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366 WHERE `modelid`=15350;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15387;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15389;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=15390;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15391;
UPDATE `creature_model_info` SET `bounding_radius`=0.44735 WHERE `modelid`=15996;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4245;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=7010;

-- Wrong combat reach.
UPDATE `creature_model_info` SET `combat_reach`=0.615254 WHERE `modelid`=30;
UPDATE `creature_model_info` SET `combat_reach`=1.0017 WHERE `modelid`=180;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=181;
UPDATE `creature_model_info` SET `combat_reach`=0.521186 WHERE `modelid`=382;
UPDATE `creature_model_info` SET `combat_reach`=0.627119 WHERE `modelid`=503;
UPDATE `creature_model_info` SET `combat_reach`=0.605085 WHERE `modelid`=513;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=523;
UPDATE `creature_model_info` SET `combat_reach`=1.34492 WHERE `modelid`=598;
UPDATE `creature_model_info` SET `combat_reach`=0.881356 WHERE `modelid`=604;
UPDATE `creature_model_info` SET `combat_reach`=0.627119 WHERE `modelid`=607;
UPDATE `creature_model_info` SET `combat_reach`=1.35 WHERE `modelid`=646;
UPDATE `creature_model_info` SET `combat_reach`=0.925424 WHERE `modelid`=670;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=720;
UPDATE `creature_model_info` SET `combat_reach`=1.10085 WHERE `modelid`=748;
UPDATE `creature_model_info` SET `combat_reach`=1.16737 WHERE `modelid`=781;
UPDATE `creature_model_info` SET `combat_reach`=0.919492 WHERE `modelid`=785;
UPDATE `creature_model_info` SET `combat_reach`=1.07203 WHERE `modelid`=843;
UPDATE `creature_model_info` SET `combat_reach`=1.10381 WHERE `modelid`=845;
UPDATE `creature_model_info` SET `combat_reach`=0.875 WHERE `modelid`=855;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=901;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=902;
UPDATE `creature_model_info` SET `combat_reach`=0.900424 WHERE `modelid`=903;
UPDATE `creature_model_info` SET `combat_reach`=0.716102 WHERE `modelid`=909;
UPDATE `creature_model_info` SET `combat_reach`=0.917797 WHERE `modelid`=960;
UPDATE `creature_model_info` SET `combat_reach`=1.18008 WHERE `modelid`=1030;
UPDATE `creature_model_info` SET `combat_reach`=1.11017 WHERE `modelid`=1034;
UPDATE `creature_model_info` SET `combat_reach`=1.17797 WHERE `modelid`=1035;
UPDATE `creature_model_info` SET `combat_reach`=0.9 WHERE `modelid`=1097;
UPDATE `creature_model_info` SET `combat_reach`=1.0911 WHERE `modelid`=1100;
UPDATE `creature_model_info` SET `combat_reach`=1.0678 WHERE `modelid`=1250;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=1336;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1669;
UPDATE `creature_model_info` SET `combat_reach`=0.55 WHERE `modelid`=1742;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1872;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=1924;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=1934;
UPDATE `creature_model_info` SET `combat_reach`=0.805 WHERE `modelid`=1992;
UPDATE `creature_model_info` SET `combat_reach`=0.875 WHERE `modelid`=2194;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2240;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2386;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2394;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2400;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2401;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=2424;
UPDATE `creature_model_info` SET `combat_reach`=1.34492 WHERE `modelid`=2437;
UPDATE `creature_model_info` SET `combat_reach`=0.710169 WHERE `modelid`=2485;
UPDATE `creature_model_info` SET `combat_reach`=1.2 WHERE `modelid`=2489;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=2490;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2518;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2519;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=2539;
UPDATE `creature_model_info` SET `combat_reach`=2.875 WHERE `modelid`=2549;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=2573;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2588;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=2709;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2971;
UPDATE `creature_model_info` SET `combat_reach`=0.7 WHERE `modelid`=3005;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3015;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3897;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3899;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4065;
UPDATE `creature_model_info` SET `combat_reach`=0.554237 WHERE `modelid`=4091;
UPDATE `creature_model_info` SET `combat_reach`=4.86 WHERE `modelid`=4307;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=4426;
UPDATE `creature_model_info` SET `combat_reach`=1.05 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `combat_reach`=4.86 WHERE `modelid`=4519;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4595;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4684;
UPDATE `creature_model_info` SET `combat_reach`=0.607627 WHERE `modelid`=4732;
UPDATE `creature_model_info` SET `combat_reach`=0.638136 WHERE `modelid`=4734;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4771;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4773;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=5379;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=5432;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=5435;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=5447;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=5450;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=5497;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=5561;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=5562;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=5563;
UPDATE `creature_model_info` SET `combat_reach`=4 WHERE `modelid`=5848;
UPDATE `creature_model_info` SET `combat_reach`=3.45 WHERE `modelid`=6375;
UPDATE `creature_model_info` SET `combat_reach`=5.25 WHERE `modelid`=6378;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6670;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6675;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6698;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6699;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6700;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6701;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6702;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6707;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6708;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6709;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=6921;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=6922;
UPDATE `creature_model_info` SET `combat_reach`=1.4 WHERE `modelid`=7347;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7534;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7549;
UPDATE `creature_model_info` SET `combat_reach`=0.5 WHERE `modelid`=7554;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7569;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=7571;
UPDATE `creature_model_info` SET `combat_reach`=1.2 WHERE `modelid`=7671;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=7672;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7709;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=7763;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=7764;
UPDATE `creature_model_info` SET `combat_reach`=8 WHERE `modelid`=7806;
UPDATE `creature_model_info` SET `combat_reach`=1.2 WHERE `modelid`=7839;
UPDATE `creature_model_info` SET `combat_reach`=1.4 WHERE `modelid`=7840;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=7873;
UPDATE `creature_model_info` SET `combat_reach`=1.00424 WHERE `modelid`=7894;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=7975;
UPDATE `creature_model_info` SET `combat_reach`=0.805 WHERE `modelid`=8013;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=8053;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8182;
UPDATE `creature_model_info` SET `combat_reach`=0.875 WHERE `modelid`=8184;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=8269;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8649;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=8655;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8658;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8760;
UPDATE `creature_model_info` SET `combat_reach`=0.65339 WHERE `modelid`=8808;
UPDATE `creature_model_info` SET `combat_reach`=0.950848 WHERE `modelid`=8843;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=8869;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=9028;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=9030;
UPDATE `creature_model_info` SET `combat_reach`=0.875 WHERE `modelid`=9033;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=9234;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9329;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9330;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=9354;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=9449;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=9534;
UPDATE `creature_model_info` SET `combat_reach`=0.615254 WHERE `modelid`=9535;
UPDATE `creature_model_info` SET `combat_reach`=0.25 WHERE `modelid`=9556;
UPDATE `creature_model_info` SET `combat_reach`=1.19915 WHERE `modelid`=9563;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=9564;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=9567;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9578;
UPDATE `creature_model_info` SET `combat_reach`=3.9 WHERE `modelid`=9584;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9602;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9603;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9614;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9617;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9619;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9625;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9637;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=9643;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9652;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9653;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9656;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9657;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9660;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9661;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9665;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9715;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9732;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9738;
UPDATE `creature_model_info` SET `combat_reach`=0.676271 WHERE `modelid`=9750;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=9755;
UPDATE `creature_model_info` SET `combat_reach`=0.879661 WHERE `modelid`=9756;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9778;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=9806;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9867;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9868;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9869;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9870;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9874;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9876;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9879;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9880;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9882;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9883;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9884;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9885;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9886;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9888;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=9889;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=9909;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=9912;
UPDATE `creature_model_info` SET `combat_reach`=0.35 WHERE `modelid`=9989;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=10033;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10094;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=10095;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=10173;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=10176;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=10177;
UPDATE `creature_model_info` SET `combat_reach`=1.3 WHERE `modelid`=10183;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10217;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10229;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10356;
UPDATE `creature_model_info` SET `combat_reach`=1.575 WHERE `modelid`=10375;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10458;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10463;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10478;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10482;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10483;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10488;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10496;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10500;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10503;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10504;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10507;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10508;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10512;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10516;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10529;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10544;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10554;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10557;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10637;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10674;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=10772;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10923;
UPDATE `creature_model_info` SET `combat_reach`=1.3 WHERE `modelid`=10974;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=11070;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=11078;
UPDATE `creature_model_info` SET `combat_reach`=20 WHERE `modelid`=11121;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11205;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11206;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11207;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11208;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11210;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11212;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11213;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11214;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11215;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11216;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11250;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=11253;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11256;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=11261;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11270;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=11315;
UPDATE `creature_model_info` SET `combat_reach`=0.881356 WHERE `modelid`=11416;
UPDATE `creature_model_info` SET `combat_reach`=1.07034 WHERE `modelid`=11451;
UPDATE `creature_model_info` SET `combat_reach`=4.2 WHERE `modelid`=11578;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11658;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=11660;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11665;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=11790;
UPDATE `creature_model_info` SET `combat_reach`=4.86 WHERE `modelid`=11797;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=11986;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=11997;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=12002;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=12029;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=12110;
UPDATE `creature_model_info` SET `combat_reach`=8 WHERE `modelid`=12129;
UPDATE `creature_model_info` SET `combat_reach`=3.5 WHERE `modelid`=12162;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=12164;
UPDATE `creature_model_info` SET `combat_reach`=8 WHERE `modelid`=12189;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=12192;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=12197;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12200;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=12239;
UPDATE `creature_model_info` SET `combat_reach`=0.01 WHERE `modelid`=12271;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12681;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12923;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=13029;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=13489;
UPDATE `creature_model_info` SET `combat_reach`=2.5875 WHERE `modelid`=14172;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=14252;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=14253;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=14254;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=14368;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=14383;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14384;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14393;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14407;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14408;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14409;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14410;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14411;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14412;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=14420;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14421;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14422;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14537;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14545;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=14555;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14585;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15325;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=15349;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=15350;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15387;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15389;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15390;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15391;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15996;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16925;

32908 with 32905



UPDATE `creature` SET `position_x`=-6241.2, `position_y`=319.528, `position_z`=382.653 WHERE `guid`=334;
UPDATE `creature` SET `position_x`=3848.86, `position_y`=-113.652, `position_z`=3.57058 WHERE `guid`=32905;
UPDATE `creature` SET `position_x`=3850.151, `position_y`=-116.055, `position_z`=3.7 WHERE `guid`=32908;
UPDATE `creature` SET `position_x`=2844.85, `position_y`=-1200.43, `position_z`=178.398 WHERE `guid`=34503;
UPDATE `creature` SET `position_x`=2856.17, `position_y`=-926.562, `position_z`=199.263 WHERE `guid`=51882;
UPDATE `creature` SET `position_x`=3205.45, `position_y`=-3341.86, `position_z`=320.177 WHERE `guid`=88303;
DELETE FROM `creature_movement` WHERE `id`=302703;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(302703, 1, -3814.83, -4441.11, 12.7771, 100, 0, 0, 0),
(302703, 2, -3815.15, -4427.66, 12.763, 100, 0, 0, 0),
(302703, 3, -3809.01, -4409.73, 12.669, 100, 0, 0, 0),
(302703, 4, -3802.21, -4400.65, 11.5244, 100, 0, 0, 0),
(302703, 5, -3794.93, -4395.24, 10.6712, 100, 0, 0, 0),
(302703, 6, -3781.06, -4391.76, 10.6061, 100, 0, 0, 0),
(302703, 7, -3769.9, -4388.29, 10.7627, 100, 0, 0, 0),
(302703, 8, -3764.39, -4386.69, 10.8774, 100, 0, 0, 0),
(302703, 9, -3746.19, -4376.68, 10.6401, 100, 0, 0, 0),
(302703, 10, -3735.81, -4371.1, 10.6122, 100, 0, 0, 0),
(302703, 11, -3723.93, -4364.82, 10.6106, 100, 0, 0, 0),
(302703, 12, -3720.11, -4363.64, 10.6105, 100, 0, 0, 0),
(302703, 13, -3715.5, -4362.44, 10.6105, 100, 0, 0, 0),
(302703, 14, -3704.25, -4365.37, 10.6189, 100, 0, 0, 0),
(302703, 15, -3694.47, -4372.87, 10.6123, 100, 0, 0, 0),
(302703, 16, -3686.47, -4378.63, 10.6547, 100, 0, 0, 0),
(302703, 17, -3681.36, -4383.64, 10.5456, 100, 0, 0, 0),
(302703, 18, -3674.37, -4391.72, 10.5979, 100, 0, 0, 0),
(302703, 19, -3671.98, -4396, 10.6167, 100, 0, 0, 0),
(302703, 20, -3670.13, -4405.68, 10.6124, 100, 0, 0, 0),
(302703, 21, -3669.59, -4422.79, 11.1054, 100, 0, 0, 0),
(302703, 22, -3669.83, -4434.42, 11.287, 100, 0, 0, 0),
(302703, 23, -3671.6, -4453.29, 11.3563, 100, 0, 0, 0),
(302703, 24, -3673.25, -4463.39, 11.2932, 100, 0, 0, 0),
(302703, 25, -3678.93, -4472.78, 11.4281, 100, 0, 0, 0),
(302703, 26, -3687.8, -4481.52, 11.7807, 100, 0, 0, 0),
(302703, 27, -3694.9, -4486.88, 11.9902, 100, 0, 0, 0),
(302703, 28, -3707.11, -4493.58, 12.3282, 100, 0, 0, 0),
(302703, 29, -3723.84, -4500.61, 12.6368, 100, 0, 0, 0),
(302703, 30, -3744.45, -4506.32, 12.7283, 100, 0, 0, 0),
(302703, 31, -3756.41, -4509.51, 12.5543, 100, 0, 0, 0),
(302703, 32, -3770.51, -4512.61, 12.1972, 100, 0, 0, 0),
(302703, 33, -3788.17, -4513.91, 11.6785, 100, 0, 0, 0),
(302703, 34, -3795.74, -4513.85, 11.5425, 100, 0, 0, 0),
(302703, 35, -3809.2, -4524.98, 9.30651, 100, 0, 0, 0),
(302703, 36, -3819.26, -4534.51, 9.21871, 100, 0, 0, 0),
(302703, 37, -3828.68, -4544.44, 9.21871, 100, 0, 0, 0),
(302703, 38, -3830.22, -4548.31, 9.16624, 100, 0, 0, 0),
(302703, 39, -3830.09, -4556.53, 8.94808, 100, 0, 0, 0),
(302703, 40, -3831.86, -4560.59, 8.7139, 100, 0, 0, 0),
(302703, 41, -3836.37, -4563.43, 8.55354, 100, 0, 0, 0),
(302703, 42, -3842.58, -4563.52, 8.40634, 100, 0, 0, 0),
(302703, 43, -3849.64, -4560.64, 8.34026, 100, 0, 0, 0),
(302703, 44, -3853.45, -4553.78, 8.43196, 100, 0, 0, 0),
(302703, 45, -3851.46, -4545.34, 8.71554, 100, 0, 0, 0),
(302703, 46, -3844.97, -4541.38, 9.13023, 100, 0, 0, 0),
(302703, 47, -3837.46, -4542.53, 9.21078, 100, 0, 0, 0),
(302703, 48, -3833.36, -4540.53, 9.21938, 100, 0, 0, 0),
(302703, 49, -3827.1, -4534.17, 9.21938, 100, 0, 0, 0),
(302703, 50, -3818.33, -4525.04, 9.21798, 100, 0, 0, 0),
(302703, 51, -3810.17, -4516.84, 10.1008, 100, 0, 0, 0),
(302703, 52, -3803.93, -4510.45, 11.3555, 100, 0, 0, 0),
(302703, 53, -3799.82, -4506.8, 11.5427, 100, 0, 0, 0),
(302703, 54, -3803.91, -4496.69, 11.5571, 100, 0, 0, 0),
(302703, 55, -3808.44, -4487.01, 12.1497, 100, 0, 0, 0),
(302703, 56, -3813.08, -4476.4, 12.6551, 100, 0, 0, 0),
(302703, 57, -3814.6, -4469.21, 12.7007, 100, 0, 0, 0),
(302703, 58, -3814.92, -4461.76, 12.6977, 100, 0, 0, 0),
(302703, 59, -3815.12, -4457.45, 12.6943, 100, 0, 0, 0);
UPDATE `creature` SET `spawnFlags` = `spawnFlags` | 128 WHERE `DeathState` != 0;

ALTER TABLE `creature`
	CHANGE COLUMN `spawndist` `wander_distance` FLOAT NOT NULL DEFAULT '5' AFTER `spawntimesecsmax`,
	CHANGE COLUMN `curhealth` `health_percent` FLOAT NOT NULL DEFAULT '100' AFTER `wander_distance`,
	CHANGE COLUMN `curmana` `mana_percent` FLOAT UNSIGNED NOT NULL DEFAULT '100' AFTER `health_percent`,
	CHANGE COLUMN `MovementType` `movement_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `mana_percent`,
	CHANGE COLUMN `spawnFlags` `spawn_flags` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `movement_type`,
	CHANGE COLUMN `visibilitymod` `visibility_mod` FLOAT NULL DEFAULT '0' AFTER `spawn_flags`,
	DROP COLUMN `currentwaypoint`,
	DROP COLUMN `DeathState`;

ALTER TABLE `gameobject`
	CHANGE COLUMN `spawnFlags` `spawn_flags` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `state`,
	CHANGE COLUMN `visibilitymod` `visibility_mod` FLOAT NULL DEFAULT '0' AFTER `spawn_flags`;
