
CREATE TABLE IF NOT EXISTS `taxi_nodes` (
  `ID` smallint(3) unsigned NOT NULL,
  `build` smallint(4) unsigned NOT NULL COMMENT 'Game client build for which to load this entry',
  `mapId` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `name1` varchar(256) NOT NULL DEFAULT '' COMMENT 'English',
  `name2` varchar(256) NOT NULL DEFAULT '' COMMENT 'Korean',
  `name3` varchar(256) NOT NULL DEFAULT '' COMMENT 'French',
  `name4` varchar(256) NOT NULL DEFAULT '' COMMENT 'German',
  `name5` varchar(256) NOT NULL DEFAULT '' COMMENT 'Chinese',
  `name6` varchar(256) NOT NULL DEFAULT '' COMMENT 'Taiwanese',
  `name7` varchar(256) NOT NULL DEFAULT '' COMMENT 'Spanish',
  `name8` varchar(256) NOT NULL DEFAULT '' COMMENT 'Unused',
  `mountCreatureId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mountCreatureId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
