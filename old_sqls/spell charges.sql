-- Define poison and other temporary enchant charges in the db.
CREATE TABLE `spell_enchant_charges` (
	`entry` INT UNSIGNED NOT NULL,
	`charges` INT UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `spell_enchant_charges` VALUES (8679, 40);
INSERT INTO `spell_enchant_charges` VALUES (8686, 55);
INSERT INTO `spell_enchant_charges` VALUES (8688, 70);
INSERT INTO `spell_enchant_charges` VALUES (11338, 85);
INSERT INTO `spell_enchant_charges` VALUES (11339, 100);
INSERT INTO `spell_enchant_charges` VALUES (11340, 115);
INSERT INTO `spell_enchant_charges` VALUES (5761, 50);
INSERT INTO `spell_enchant_charges` VALUES (8693, 75);
INSERT INTO `spell_enchant_charges` VALUES (11399, 100);
INSERT INTO `spell_enchant_charges` VALUES (2823, 60);
INSERT INTO `spell_enchant_charges` VALUES (2824, 75);
INSERT INTO `spell_enchant_charges` VALUES (11355, 90);
INSERT INTO `spell_enchant_charges` VALUES (11356, 105);
INSERT INTO `spell_enchant_charges` VALUES (25351, 120);
INSERT INTO `spell_enchant_charges` VALUES (13219, 60);
INSERT INTO `spell_enchant_charges` VALUES (13225, 75);
INSERT INTO `spell_enchant_charges` VALUES (13226, 90);
INSERT INTO `spell_enchant_charges` VALUES (13227, 105);
INSERT INTO `spell_enchant_charges` VALUES (14792, 15);

-- Duration of Venomhide Poison should be 5 minutes.
INSERT INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectBasePoints`, `Comment`) VALUES (14792, 1, 299, 'Venomhide Poison Enchant Duration');


ALTER TABLE `creature_template`
	ADD COLUMN `Detection` FLOAT NOT NULL DEFAULT '20' AFTER `scale`,
	ADD COLUMN `CallForHelp` FLOAT NOT NULL DEFAULT '5' AFTER `Detection`,
	ADD COLUMN `Leash` FLOAT NOT NULL DEFAULT '0' AFTER `CallForHelp`,
	ADD COLUMN `ExperienceMultiplier` FLOAT NOT NULL DEFAULT '1' AFTER `rank`;

-- Baron Rivendare
UPDATE `creature_template` SET `Detection`=1 WHERE `entry`=10440;
-- Ossirian the Unscarred
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=15339;
-- Eye Stalk
UPDATE `creature_template` SET `CallForHelp`=1 WHERE `entry`=16236;
-- Diseased Maggot and Rotting Maggot.
UPDATE `creature_template` SET `CallForHelp`=0.5 WHERE `entry` IN (16056, 16057);
-- These have low HP for their level.
UPDATE `creature_template` SET `ExperienceMultiplier`=0.25 WHERE `entry` IN (2946, 6575, 9496, 10411, 14386, 16230);
UPDATE `creature_template` SET `ExperienceMultiplier`=0.5 WHERE `entry` IN (7076, 7077, 7309, 8477, 8615, 8658, 9157, 10387, 10389, 10441, 10461, 11460, 11466, 12473, 14350, 14396, 15546, 15720, 15733, 15735, 15738, 16032, 16286);
-- These have almost no HP.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`+64 WHERE `entry` IN (4377, 6493, 7527, 7769, 8887, 9707, 10577, 14362, 14370, 14486, 14761, 16255, 16285, 16433, 16434, 16435, 16436, 16281, 16241, 16384, 16395, 16484, 16490, 16493, 16495, 16786, 16787);

-- Correct speed for Rift Spawn from Trinity.
UPDATE `creature_template` SET `speed_walk`=0.7, `speed_run`=0.8 WHERE `entry`=6492;


-- Blade of Eternal Darkness had its spell changed and made into an On Equip effect in 1.10.
UPDATE `item_template` SET `spelltrigger_1`=1 WHERE `entry`=17780;

-- Lok'delar had its spell changed in 1.8.
UPDATE `item_template` SET `spellid_1`=0 WHERE `entry`=18715;
UPDATE `item_template` SET `spellid_1`=0 WHERE `entry`=18713;



REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (79560, 'Feralas - Kindal Moonweaver', 14443, 100, 1, 0, 0, 0, 5, 5, 8, 11, 0, 6660, 100, 1, 0, 0, 8, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spells_template`=79560 WHERE `entry`=7956;

