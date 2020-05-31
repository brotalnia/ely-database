ALTER TABLE `areatrigger_teleport`
	CHANGE COLUMN `name` `name` VARCHAR(64) NOT NULL DEFAULT '' AFTER `patch`,
	ADD COLUMN `message` VARCHAR(128) NOT NULL DEFAULT '' AFTER `name`;

UPDATE `areatrigger_teleport` SET `message`='You must be at least level 20 to enter.' WHERE `id`=45;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 10 to enter.' WHERE `id`=78;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 15 to enter.' WHERE `id`=101;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 10 to enter.' WHERE `id`=145;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 10 to enter.' WHERE `id`=228;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 15 to enter.' WHERE `id`=244;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 10 to enter.', `required_level`=10 WHERE `id`=257;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 30 to enter.' WHERE `id`=286;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 15 to enter.' WHERE `id`=324;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 25 to enter.' WHERE `id`=442;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 35 to enter.' WHERE `id`=446;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 15 to enter.' WHERE `id`=523;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 20 to enter.' WHERE `id`=610;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 20 to enter.' WHERE `id`=612;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 20 to enter.' WHERE `id`=614;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 30 to enter.' WHERE `id`=902;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 35 to enter.' WHERE `id`=924;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 40 to enter.' WHERE `id`=1466;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=1468;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=2214;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=2216;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=2217;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 8 to enter.' WHERE `id`=2230;
UPDATE `areatrigger_teleport` SET `message`='You must be a Stone Guard or higher rank in order to enter the Hall of Legends.' WHERE `id`=2527;
UPDATE `areatrigger_teleport` SET `message`='You must be a Knight or higher rank in order to enter the Champions\' Hall.' WHERE `id`=2532;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=2567;
UPDATE `areatrigger_teleport` SET `message`='Only the Horde may use this portal.' WHERE `id`=2606;
UPDATE `areatrigger_teleport` SET `message`='Only the Alliance may use this portal.' WHERE `id`=2608;
UPDATE `areatrigger_teleport` SET `message`='You must be part of a Raid group, at least level 50 and have the Drakefire Amulet in your inventory to enter.' WHERE `id`=2848;
UPDATE `areatrigger_teleport` SET `message`='You must be part of a Raid group and at least level 50 to enter.' WHERE `id`=2886;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 30 to enter.' WHERE `id`=3133;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 30 to enter.' WHERE `id`=3134;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3183;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3184;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3185;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3186;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3187;
UPDATE `areatrigger_teleport` SET `message`='You must be at least level 45 to enter.' WHERE `id`=3189;
UPDATE `areatrigger_teleport` SET `message`='You must be attuned and in a raid group to enter.' WHERE `id`=3528;
UPDATE `areatrigger_teleport` SET `message`='Only the Horde may use this portal.' WHERE `id`=3669;
UPDATE `areatrigger_teleport` SET `message`='Only the Alliance may use this portal.' WHERE `id`=3671;
UPDATE `areatrigger_teleport` SET `message`='You must be part of a raid group and at least 50th level to enter.', `required_level`=50 WHERE `id`=3726;
UPDATE `areatrigger_teleport` SET `message`='You must be part of a Raid group and at least level 50 to enter.' WHERE `id`=3928;
UPDATE `areatrigger_teleport` SET `message`='Only the Alliance may use this portal.' WHERE `id`=3948;
UPDATE `areatrigger_teleport` SET `message`='Only the Horde may use this portal.' WHERE `id`=3949;
UPDATE `areatrigger_teleport` SET `message`='You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 50+, and in a raid group.' WHERE `id`=4008;
UPDATE `areatrigger_teleport` SET `message`='You cannot enter here unless the gates of Ahn\'Qiraj have been opened, you are level 50+, and in a raid group.' WHERE `id`=4010;
UPDATE `areatrigger_teleport` SET `message`='You must be level 51+, in a Raid group, and be attuned to Naxxramas to enter.' WHERE `id`=4055;
UPDATE `areatrigger_teleport` SET `required_level`=0 WHERE `id`=2890;

-- No longer applicable texts.
DELETE FROM `mangos_string` WHERE `entry` IN (50, 368, 369);

-- Add condition id and remove extra requirements.
ALTER TABLE `areatrigger_teleport`
	ADD COLUMN `required_condition` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `required_level`,
	DROP COLUMN `required_item`,
	DROP COLUMN `required_item2`,
	DROP COLUMN `required_quest_done`,
	DROP COLUMN `required_event`,
	DROP COLUMN `required_pvp_rank`,
	DROP COLUMN `required_team`;

-- Player is Rank 6 or higher.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (59, 51, 6, 1, 0, 0, 0);
-- Rank 6 and Horde
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (2527, -1, 2, 59, 0, 0, 0);
-- Rank 6 and Alliance
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (2532, -1, 3, 59, 0, 0, 0);
-- Completed quest Attunement to the Core (Alliance)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7848, 8, 7848, 0, 0, 0, 0);
-- Has item Drakefire Amulet
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (16309, 2, 16309, 1, 0, 0, 0);
-- Event AQ Gate not active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (126, 12, 83, 0, 0, 0, 1);
-- Completed quest Attunement to the Core (Horde)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7487, 8, 7487, 0, 0, 0, 0);
-- Completed quest The Dread Citadel
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (9121, 8, 9121, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (9122, 8, 9122, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (9123, 8, 9123, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (9124, -2, 9121, 9122, 9123, 0, 0);

-- Hall of Legends - Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=2527 WHERE `id`=2527;
-- Champions' Hall - Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=2532 WHERE `id`=2532;
-- Transpolyporter - Gnomeregan to Booty Bay
UPDATE `areatrigger_teleport` SET `required_condition`=36 WHERE `id`=1104;
-- Transpolyporter - Booty Bay to Gnomeregan
UPDATE `areatrigger_teleport` SET `required_condition`=36 WHERE `id`=1103;
-- Molten Core - Window Lava Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=7848 WHERE `id`=3529;
-- Onyxia's Lair - Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=16309 WHERE `id`=2848;
-- Temple of Ahn'Qiraj - Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=126 WHERE `id`=4010;
-- Ruins Of Ahn'Qiraj - Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=126 WHERE `id`=4008;
-- Molten Core - Window Entrance
UPDATE `areatrigger_teleport` SET `required_condition`=7487 WHERE `id`=3528;
-- Naxxramas (Exit)
UPDATE `areatrigger_teleport` SET `required_condition`=9124, `name`='Naxxramas - Entrance' WHERE `id`=4055;


