-- 1.10 → 1.11 | Shadow of the Necropolis

DROP TABLE IF EXISTS `new_items`;
DROP TABLE IF EXISTS `new_events`;
DROP TABLE IF EXISTS `new_quests`;
DROP TABLE IF EXISTS `new_creatures`;

CREATE TABLE IF NOT EXISTS `new_quests` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `new_items` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `new_events` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `new_creatures` (entry mediumint PRIMARY KEY);

-- * INDEX
-- - 1.  NEW ENCOUNTER				 
-- - 2.  NEW EVENTS 					          
-- - 3.  NEW ITEMS 	
-- - 4.  NEW CREATURES			
-- - 5.  NEW QUESTS	
-- - 6.  NEW SPELLS				
-- - 7.  NEW GAMEOBJECTS
-- - 8.  RESTORATION TOOLS	  
-- - 9.  ITEM STAT CHANGES
-- - 10. ADDITIONAL FIXES    	

-- * NEW ENCOUNTER	

UPDATE `areatrigger_teleport` SET `required_level` = 60 WHERE `target_map` = 533;  -- Naxxramas 1.12

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
22416, -- Dreadnaught Breastplate | Naxx loot
22417, -- Dreadnaught Legplates | Naxx loot
22418, -- Dreadnaught Helmet | Naxx loot
22419, -- Dreadnaught Pauldrons | Naxx loot
22420, -- Dreadnaught Sabatons | Naxx loot
22421, -- Dreadnaught Gauntlets | Naxx loot
22422, -- Dreadnaught Waistguard | Naxx loot
22423, -- Dreadnaught Bracers | Naxx loot
22424, -- Redemption Wristguards | Naxx loot
22425, -- Redemption Tunic | Naxx loot
22426, -- Redemption Handguards | Naxx loot
22427, -- Redemption Legguards | Naxx loot
22428, -- Redemption Headpiece | Naxx loot
22429, -- Redemption Spaulders | Naxx loot
22430, -- Redemption Boots | Naxx loot
22431, -- Redemption Girdle | Naxx loot
22436, -- Cryptstalker Tunic | Naxx loot
22437, -- Cryptstalker Legguards | Naxx loot
22438, -- Cryptstalker Headpiece | Naxx loot
22439, -- Cryptstalker Spaulders | Naxx loot
22440, -- Cryptstalker Boots | Naxx loot
22441, -- Cryptstalker Handguards | Naxx loot
22442, -- Cryptstalker Girdle | Naxx loot
22443, -- Cryptstalker Wristguards | Naxx loot
22464, -- Earthshatter Tunic | Naxx loot
22465, -- Earthshatter Legguards | Naxx loot
22466, -- Earthshatter Headpiece | Naxx loot
22467, -- Earthshatter Spaulders | Naxx loot
22468, -- Earthshatter Boots | Naxx loot
22469, -- Earthshatter Handguards | Naxx loot
22470, -- Earthshatter Girdle | Naxx loot
22471, -- Earthshatter Wristguards | Naxx loot
22476, -- Bonescythe Breastplate | Naxx loot
22477, -- Bonescythe Legplates | Naxx loot
22478, -- Bonescythe Helmet | Naxx loot
22479, -- Bonescythe Pauldrons | Naxx loot
22480, -- Bonescythe Sabatons | Naxx loot
22481, -- Bonescythe Gauntlets | Naxx loot
22482, -- Bonescythe Waistguard | Naxx loot
22483, -- Bonescythe Bracers | Naxx loot
22488, -- Dreamwalker Tunic | Naxx loot
22489, -- Dreamwalker Legguards | Naxx loot
22490, -- Dreamwalker Headpiece | Naxx loot
22491, -- Dreamwalker Spaulders | Naxx loot
22492, -- Dreamwalker Boots | Naxx loot
22493, -- Dreamwalker Handguards | Naxx loot
22494, -- Dreamwalker Girdle | Naxx loot
22495, -- Dreamwalker Wristguards | Naxx loot
22496, -- Frostfire Robe | Naxx loot
22497, -- Frostfire Leggings | Naxx loot
22498, -- Frostfire Circlet | Naxx loot
22499, -- Frostfire Shoulderpads | Naxx loot
22500, -- Frostfire Sandals | Naxx loot
22501, -- Frostfire Gloves | Naxx loot
22502, -- Frostfire Belt | Naxx loot
22503, -- Frostfire Bindings | Naxx loot
22504, -- Plagueheart Robe | Naxx loot
22505, -- Plagueheart Leggings | Naxx loot
22506, -- Plagueheart Circlet | Naxx loot
22507, -- Plagueheart Shoulderpads | Naxx loot
22508, -- Plagueheart Sandals | Naxx loot
22509, -- Plagueheart Gloves | Naxx loot
22510, -- Plagueheart Belt | Naxx loot
22511, -- Plagueheart Bindings | Naxx loot
22512, -- Robe of Faith | Naxx loot
22513, -- Leggings of Faith | Naxx loot
22514, -- Circlet of Faith | Naxx loot
22515, -- Shoulderpads of Faith | Naxx loot
22516, -- Sandals of Faith | Naxx loot
22517, -- Gloves of Faith | Naxx loot
22518, -- Belt of Faith | Naxx loot
22519, -- Bindings of Faith | Naxx loot
22589, -- Atiesh, Greatstaff of the Guardian | Naxx loot
22630, -- Atiesh, Greatstaff of the Guardian | Naxx loot
22631, -- Atiesh, Greatstaff of the Guardian | Naxx loot
22632, -- Atiesh, Greatstaff of the Guardian | Naxx loot
22637, -- Primal Hakkari Idol | ZG enchant change
22651, -- Outrider's Plate Legguards | WSG rewards added
22652, -- Glacial Vest | Naxx loot
22654, -- Glacial Gloves | Naxx loot
22655, -- Glacial Wrists | Naxx loot
22656, -- The Purifier | AD badge quests added (1.11 patch notes)
22657, -- Amulet of the Dawn | AD badge quests added (1.11 patch notes)
22658, -- Glacial Cloak | Naxx loot
22659, -- Medallion of the Dawn | AD badge quests added (1.11 patch notes)
22660, -- Gaea's Embrace | New CC Nature resist rep rewards added (1.11 patch notes)
22661, -- Polar Tunic | Naxx loot
22662, -- Polar Gloves | Naxx loot
22663, -- Polar Bracers | Naxx loot
22664, -- Icy Scale Breastplate | Naxx loot
22665, -- Icy Scale Bracers | Naxx loot
22666, -- Icy Scale Gauntlets | Naxx loot
22667, -- Bracers of Hope | AD badge quests added (1.11 patch notes)
22668, -- Bracers of Subterfuge | AD badge quests added (1.11 patch notes)
22669, -- Icebane Breastplate | Naxx loot
22670, -- Icebane Gauntlets | Naxx loot
22671, -- Icebane Bracers | Naxx loot
22672, -- Sentinel's Plate Legguards | WSG rewards added
22673, -- Outrider's Chain Leggings | WSG rewards added
22676, -- Outrider's Mail Leggings | WSG rewards added
22678, -- Talisman of Ascendance | AD badge quests added (1.11 patch notes)
22680, -- Band of Resolution | AD badge quests added (1.11 patch notes)
22681, -- Band of Piety | AD badge quests added (1.11 patch notes)
22683, -- Pattern: Gaea's Embrace | New CC Nature resist rep rewards added (1.11 patch notes)
22688, -- Verimonde's Last Resort | AD badge quests added (1.11 patch notes)
22689, -- Sanctified Leather Helm | AD badge quests added (1.11 patch notes)
22690, -- Leggings of the Plague Hunter | AD badge quests added (1.11 patch notes)
22691, -- Corrupted Ashbringer | Naxx loot
22699, -- Icebane Leggings | Naxx loot
22700, -- Glacial Leggings | Naxx loot
22701, -- Polar Leggings | Naxx loot
22702, -- Icy Scale Leggings | Naxx loot
22707, -- Ramaladni's Icy Grasp | Naxx loot
22711, -- Cloak of the Hakkari Worshipers | ZG Loot update
22712, -- Might of the Tribe | ZG Loot update
22713, -- Zulian Scepter of Rites | ZG Loot update
22714, -- Sacrificial Gauntlets | ZG Loot update
22715, -- Gloves of the Tormented | ZG Loot update
22716, -- Belt of Untapped Power | ZG Loot update
22718, -- Blooddrenched Mask | Major loot table update
22720, -- Zulian Headdress | Major loot table update
22721, -- Band of Servitude | Major loot table update
22722, -- Seal of the Gurubashi Berserker | ZG Loot update
22725, -- Band of Cenarius | New cenarion hold quest added (Allakhazam comment dates)
22736, -- Andonisus, Reaper of Souls | Atiesh quest summoned weapon
22740, -- Outrider's Leather Pants | WSG rewards added
22741, -- Outrider's Lizardhide Pants | WSG rewards added
22742, -- Bloodsail Shirt | https://web.archive.org/web/20071210200745/http://wow.allakhazam.com:80/db/item.html?witem=22742
22744, -- Bloodsail Boots | https://web.archive.org/web/20071210200745/http://wow.allakhazam.com:80/db/item.html?witem=22742
22745, -- Bloodsail Pants | https://web.archive.org/web/20071210200745/http://wow.allakhazam.com:80/db/item.html?witem=22742
22747, -- Outrider's Silk Leggings | WSG rewards added
22748, -- Sentinel's Chain Leggings | WSG rewards added
22749, -- Sentinel's Leather Pants | WSG rewards added
22750, -- Sentinel's Lizardhide Pants | WSG rewards added
22752, -- Sentinel's Silk Leggings | WSG rewards added
22753, -- Sentinel's Lamellar Legguards | WSG rewards added
22756, -- Sylvan Vest | Cenarion circle rewards added
22757, -- Sylvan Crown | Cenarion circle rewards added
22758, -- Sylvan Shoulders | Cenarion circle rewards added
22759, -- Bramblewood Helm | Cenarion circle rewards added
22760, -- Bramblewood Boots | Cenarion circle rewards added
22761, -- Bramblewood Belt | Cenarion circle rewards added
22762, -- Ironvine Breastplate | Cenarion circle rewards added
22763, -- Ironvine Gloves | Cenarion circle rewards added
22764, -- Ironvine Belt | Cenarion circle rewards added
22766, -- Plans: Ironvine Breastplate | Cenarion circle rewards added
22767, -- Plans: Ironvine Gloves | Cenarion circle rewards added
22768, -- Plans: Ironvine Belt | Cenarion circle rewards added
22769, -- Pattern: Bramblewood Belt | Cenarion circle rewards added
22770, -- Pattern: Bramblewood Boots | Cenarion circle rewards added
22771, -- Pattern: Bramblewood Helm | Cenarion circle rewards added
22772, -- Pattern: Sylvan Shoulders | Cenarion circle rewards added
22773, -- Pattern: Sylvan Crown | Cenarion circle rewards added
22774, -- Pattern: Sylvan Vest | Cenarion circle rewards added
22798, -- Might of Menethil | Naxx loot
22799, -- Soulseeker | Naxx loot
22800, -- Brimstone Staff | Naxx loot
22801, -- Spire of Twilight | Naxx loot
22802, -- Kingsfall | Naxx loot
22803, -- Midnight Haze | Naxx loot
22804, -- Maexxna's Fang | Naxx loot
22806, -- Widow's Remorse | Naxx loot
22807, -- Wraith Blade | Naxx loot
22808, -- The Castigator | Naxx loot
22809, -- Maul of the Redeemed Crusader | Naxx loot
22810, -- Toxin Injector | Naxx loot
22811, -- Soulstring | Naxx loot
22812, -- Nerubian Slavemaker | Naxx loot
22813, -- Claymore of Unholy Might | Naxx loot
22815, -- Severance | Naxx loot
22816, -- Hatchet of Sundered Bone | Naxx loot
22818, -- The Plague Bearer | Naxx loot
22819, -- Shield of Condemnation | Naxx loot
22820, -- Wand of Fates | Naxx loot
22821, -- Doomfinger | Naxx loot
22843, -- Blood Guard's Chain Greaves | 1.11 PvP Item update
22852, -- Blood Guard's Dragonhide Treads | 1.11 PvP Item update
22855, -- Blood Guard's Dreadweave Walkers | 1.11 PvP Item update
22856, -- Blood Guard's Leather Walkers | 1.11 PvP Item update
22857, -- Blood Guard's Mail Greaves | 1.11 PvP Item update
22858, -- Blood Guard's Plate Greaves | 1.11 PvP Item update
22859, -- Blood Guard's Satin Walkers | 1.11 PvP Item update
22860, -- Blood Guard's Silk Walkers | 1.11 PvP Item update
22862, -- Blood Guard's Chain Vices | 1.11 PvP Item update
22863, -- Blood Guard's Dragonhide Grips | 1.11 PvP Item update
22864, -- Blood Guard's Leather Grips | 1.11 PvP Item update
22865, -- Blood Guard's Dreadweave Handwraps | 1.11 PvP Item update
22867, -- Blood Guard's Mail Vices | 1.11 PvP Item update
22868, -- Blood Guard's Plate Gauntlets | 1.11 PvP Item update
22869, -- Blood Guard's Satin Handwraps | 1.11 PvP Item update
22870, -- Blood Guard's Silk Handwraps | 1.11 PvP Item update
22872, -- Legionnaire's Plate Hauberk | 1.11 PvP Item update
22873, -- Legionnaire's Plate Leggings | 1.11 PvP Item update
22874, -- Legionnaire's Chain Hauberk | 1.11 PvP Item update
22875, -- Legionnaire's Chain Legguards | 1.11 PvP Item update
22876, -- Legionnaire's Mail Hauberk | 1.11 PvP Item update
22877, -- Legionnaire's Dragonhide Chestpiece | 1.11 PvP Item update
22878, -- Legionnaire's Dragonhide Leggings | 1.11 PvP Item update
22879, -- Legionnaire's Leather Chestpiece | 1.11 PvP Item update
22880, -- Legionnaire's Leather Legguards | 1.11 PvP Item update
22881, -- Legionnaire's Dreadweave Legguards | 1.11 PvP Item update
22882, -- Legionnaire's Satin Legguards | 1.11 PvP Item update
22883, -- Legionnaire's Silk Legguards | 1.11 PvP Item update
22884, -- Legionnaire's Dreadweave Tunic | 1.11 PvP Item update
22885, -- Legionnaire's Satin Tunic | 1.11 PvP Item update
22886, -- Legionnaire's Silk Tunic | 1.11 PvP Item update
22887, -- Legionnaire's Mail Legguards | 1.11 PvP Item update
22890, -- Tome of Frost Ward V | Allakhazam comment dates
22891, -- Grimoire of Shadow Ward IV | Allakhazam comment dates
22935, -- Touch of Frost | Naxx loot
22936, -- Wristguards of Vengeance | Naxx loot
22937, -- Gem of Nerubis | Naxx loot
22938, -- Cryptfiend Silk Cloak | Naxx loot
22939, -- Band of Unanswered Prayers | Naxx loot
22940, -- Icebane Pauldrons | Naxx loot
22941, -- Polar Shoulder Pads | Naxx loot
22942, -- The Widow's Embrace | Naxx loot
22943, -- Malice Stone Pendant | Naxx loot
22947, -- Pendant of Forgotten Names | Naxx loot
22954, -- Kiss of the Spider | Naxx loot
22960, -- Cloak of Suturing | Naxx loot
22961, -- Band of Reanimation | Naxx loot
22967, -- Icy Scale Spaulders | Naxx loot
22968, -- Glacial Mantle | Naxx loot
22981, -- Gluth's Missing Collar | Naxx loot
22983, -- Rime Covered Mantle | Naxx loot
22988, -- The End of Dreams | Naxx loot
22994, -- Digested Hand of Power | Naxx loot
22999, -- Tabard of the Argent Dawn | Naxx loot
23000, -- Plated Abomination Ribcage | Naxx loot
23001, -- Eye of Diminution | Naxx loot
23004, -- Idol of Longevity | Naxx loot
23005, -- Totem of Flowing Water | Naxx loot
23006, -- Libram of Light | Naxx loot
23009, -- Wand of the Whispering Dead | Naxx loot
23014, -- Iblis, Blade of the Fallen Seraph | Naxx loot
23017, -- Veil of Eclipse | Naxx loot
23018, -- Signet of the Fallen Defender | Naxx loot
23019, -- Icebane Helmet | Naxx loot
23020, -- Polar Helmet | Naxx loot
23021, -- The Soul Harvester's Bindings | Naxx loot
23023, -- Sadist's Collar | Naxx loot
23025, -- Seal of the Damned | Naxx loot
23027, -- Warmth of Forgiveness | Naxx loot
23028, -- Hailstone Band | Naxx loot
23029, -- Noth's Frigid Heart | Naxx loot
23030, -- Cloak of the Scourge | Naxx loot
23031, -- Band of the Inevitable | Naxx loot
23032, -- Glacial Headdress | Naxx loot
23033, -- Icy Scale Coif | Naxx loot
23035, -- Preceptor's Hat | Naxx loot
23036, -- Necklace of Necropsy | Naxx loot
23037, -- Ring of Spiritual Fervor | Naxx loot
23038, -- Band of Unnatural Forces | Naxx loot
23039, -- The Eye of Nerub | Naxx loot
23040, -- Glyph of Deflection | Naxx loot
23041, -- Slayer's Crest | Naxx loot
23042, -- Loatheb's Reflection | Naxx loot
23043, -- The Face of Death | Naxx loot
23044, -- Harbinger of Doom | Naxx loot
23045, -- Shroud of Dominion | Naxx loot
23046, -- The Restrained Essence of Sapphiron | Naxx loot
23047, -- Eye of the Dead | Naxx loot
23048, -- Sapphiron's Right Eye | Naxx loot
23049, -- Sapphiron's Left Eye | Naxx loot
23050, -- Cloak of the Necropolis | Naxx loot
23051, -- Glaive of the Defender | Naxx loot
23053, -- Stormrage's Talisman of Seething | Naxx loot
23054, -- Gressil, Dawn of Ruin | Naxx loot
23056, -- Hammer of the Twisting Nether | Naxx loot
23057, -- Gem of Trapped Innocents | Naxx loot
23059, -- Ring of the Dreadnaught | Naxx loot
23060, -- Bonescythe Ring | Naxx loot
23061, -- Ring of Faith | Naxx loot
23062, -- Frostfire Ring | Naxx loot
23063, -- Plagueheart Ring | Naxx loot
23064, -- Ring of The Dreamwalker | Naxx loot
23065, -- Ring of the Earthshatterer | Naxx loot
23066, -- Ring of Redemption | Naxx loot
23067, -- Ring of the Cryptstalker | Naxx loot
23068, -- Legplates of Carnage | Naxx loot
23069, -- Necro-Knight's Garb | Naxx loot
23070, -- Leggings of Polarity | Naxx loot
23071, -- Leggings of Apocalypse | Naxx loot
23073, -- Boots of Displacement | Naxx loot
23075, -- Death's Bargain | Naxx loot
23078, -- Gauntlets of Undead Slaying | Pre-naxx world event reward
23081, -- Handwraps of Undead Slaying | Pre-naxx world event reward
23082, -- Handguards of Undead Slaying | Pre-naxx world event reward
23084, -- Gloves of Undead Cleansing | Pre-naxx world event reward
23085, -- Robe of Undead Cleansing | Pre-naxx world event reward
23087, -- Breastplate of Undead Slaying | Pre-naxx world event reward
23088, -- Chestguard of Undead Slaying | Pre-naxx world event reward
23089, -- Tunic of Undead Slaying | Pre-naxx world event reward
23090, -- Bracers of Undead Slaying | Pre-naxx world event reward
23091, -- Bracers of Undead Cleansing | Pre-naxx world event reward
23092, -- Wristguards of Undead Slaying | Pre-naxx world event reward
23093, -- Wristwraps of Undead Slaying | Pre-naxx world event reward
23124, -- Staff of Balzaphon | Pre-naxx world event drop
23125, -- Chains of the Lich | Pre-naxx world event drop
23126, -- Waistband of Balzaphon | Pre-naxx world event drop
23127, -- Cloak of Revanchion | Pre-naxx world event drop
23128, -- The Shadow's Grasp | Pre-naxx world event drop
23129, -- Bracers of Mending | Pre-naxx world event drop
23132, -- Lord Blackwood's Blade | Pre-naxx world event drop
23139, -- Lord Blackwood's Buckler | Pre-naxx world event drop
23156, -- Blackwood's Thigh | Pre-naxx world event drop
23168, -- Scorn's Focal Dagger | Pre-naxx world event drop
23169, -- Scorn's Icy Choker | Pre-naxx world event drop
23170, -- The Frozen Clutch | Pre-naxx world event drop
23171, -- The Axe of Severing | Pre-naxx world event drop
23173, -- Abomination Skin Leggings | Pre-naxx world event drop
23177, -- Lady Falther'ess' Finger | Pre-naxx world event drop
23178, -- Mantle of Lady Falther'ess | Pre-naxx world event drop
23197, -- Idol of the Moon | Major loot table update
23198, -- Idol of Brutality | Major loot table update
23199, -- Totem of the Storm | Major loot table update
23200, -- Totem of Sustaining | Major loot table update
23201, -- Libram of Divinity | Major loot table update
23203, -- Libram of Fervor | Major loot table update
23206, -- Mark of the Champion | Naxx Loot
23207, -- Mark of the Champion | Naxx Loot
23219, -- Girdle of the Mentor | Naxx Loot
23220, -- Crystal Webbed Robe | Naxx Loot
23221, -- Misplaced Servo Arm | Naxx Loot
23226, -- Ghoul Skin Tunic | Naxx Loot
23237, -- Ring of the Eternal Flame | Naxx Loot
23238, -- Stygian Buckler | Naxx Loot
23242, -- Claw of the Frost Wyrm | Naxx Loot
23243, -- Champion's Plate Shoulders | 1.11 PvP Item update
23244, -- Champion's Plate Helm | 1.11 PvP Item update
23251, -- Champion's Chain Helm | 1.11 PvP Item update
23252, -- Champion's Chain Shoulders | 1.11 PvP Item update
23253, -- Champion's Dragonhide Headguard | 1.11 PvP Item update
23254, -- Champion's Dragonhide Shoulders | 1.11 PvP Item update
23255, -- Champion's Dreadweave Cowl | 1.11 PvP Item update
23256, -- Champion's Dreadweave Spaulders | 1.11 PvP Item update
23257, -- Champion's Leather Helm | 1.11 PvP Item update
23258, -- Champion's Leather Shoulders | 1.11 PvP Item update
23259, -- Champion's Mail Headguard | 1.11 PvP Item update
23260, -- Champion's Mail Pauldrons | 1.11 PvP Item update
23261, -- Champion's Satin Hood | 1.11 PvP Item update
23262, -- Champion's Satin Mantle | 1.11 PvP Item update
23263, -- Champion's Silk Cowl | 1.11 PvP Item update
23264, -- Champion's Silk Mantle | 1.11 PvP Item update
23272, -- Knight-Captain's Lamellar Breastplate | 1.11 PvP Item update
23273, -- Knight-Captain's Lamellar Leggings | 1.11 PvP Item update
23274, -- Knight-Lieutenant's Lamellar Gauntlets | 1.11 PvP Item update
23275, -- Knight-Lieutenant's Lamellar Sabatons | 1.11 PvP Item update
23276, -- Lieutenant Commander's Lamellar Headguard | 1.11 PvP Item update
23277, -- Lieutenant Commander's Lamellar Shoulders | 1.11 PvP Item update
23278, -- Knight-Lieutenant's Chain Greaves | 1.11 PvP Item update
23279, -- Knight-Lieutenant's Chain Vices | 1.11 PvP Item update
23280, -- Knight-Lieutenant's Dragonhide Grips | 1.11 PvP Item update
23281, -- Knight-Lieutenant's Dragonhide Treads | 1.11 PvP Item update
23282, -- Knight-Lieutenant's Dreadweave Handwraps | 1.11 PvP Item update
23283, -- Knight-Lieutenant's Dreadweave Walkers | 1.11 PvP Item update
23284, -- Knight-Lieutenant's Leather Grips | 1.11 PvP Item update
23285, -- Knight-Lieutenant's Leather Walkers | 1.11 PvP Item update
23286, -- Knight-Lieutenant's Plate Gauntlets | 1.11 PvP Item update
23287, -- Knight-Lieutenant's Plate Greaves | 1.11 PvP Item update
23288, -- Knight-Lieutenant's Satin Handwraps | 1.11 PvP Item update
23289, -- Knight-Lieutenant's Satin Walkers | 1.11 PvP Item update
23290, -- Knight-Lieutenant's Silk Handwraps | 1.11 PvP Item update
23291, -- Knight-Lieutenant's Silk Walkers | 1.11 PvP Item update
23292, -- Knight-Captain's Chain Hauberk | 1.11 PvP Item update
23293, -- Knight-Captain's Chain Legguards | 1.11 PvP Item update
23294, -- Knight-Captain's Dragonhide Chestpiece | 1.11 PvP Item update
23295, -- Knight-Captain's Dragonhide Leggings | 1.11 PvP Item update
23296, -- Knight-Captain's Dreadweave Legguards | 1.11 PvP Item update
23297, -- Knight-Captain's Dreadweave Tunic | 1.11 PvP Item update
23298, -- Knight-Captain's Leather Chestpiece | 1.11 PvP Item update
23299, -- Knight-Captain's Leather Legguards | 1.11 PvP Item update
23300, -- Knight-Captain's Plate Hauberk | 1.11 PvP Item update
23301, -- Knight-Captain's Plate Leggings | 1.11 PvP Item update
23302, -- Knight-Captain's Satin Legguards | 1.11 PvP Item update
23303, -- Knight-Captain's Satin Tunic | 1.11 PvP Item update
23304, -- Knight-Captain's Silk Legguards | 1.11 PvP Item update
23305, -- Knight-Captain's Silk Tunic | 1.11 PvP Item update
23306, -- Lieutenant Commander's Chain Helm | 1.11 PvP Item update
23307, -- Lieutenant Commander's Chain Shoulders | 1.11 PvP Item update
23308, -- Lieutenant Commander's Dragonhide Headguard | 1.11 PvP Item update
23309, -- Lieutenant Commander's Dragonhide Shoulders | 1.11 PvP Item update
23310, -- Lieutenant Commander's Dreadweave Cowl | 1.11 PvP Item update
23311, -- Lieutenant Commander's Dreadweave Spaulders | 1.11 PvP Item update
23312, -- Lieutenant Commander's Leather Helm | 1.11 PvP Item update
23313, -- Lieutenant Commander's Leather Shoulders | 1.11 PvP Item update
23314, -- Lieutenant Commander's Plate Helm | 1.11 PvP Item update
23315, -- Lieutenant Commander's Plate Shoulders | 1.11 PvP Item update
23316, -- Lieutenant Commander's Satin Hood | 1.11 PvP Item update
23317, -- Lieutenant Commander's Satin Mantle | 1.11 PvP Item update
23318, -- Lieutenant Commander's Silk Cowl | 1.11 PvP Item update
23319, -- Lieutenant Commander's Silk Mantle | 1.11 PvP Item update
23320, -- Tablet of Flame Shock VI | Allakhazam comment dates
23323, -- Crown of the Fire Festival | Midsummer fire festival introduced with patch 1.11
23324, -- Mantle of the Fire Festival | Midsummer fire festival introduced with patch 1.11
23451, -- Grand Marshal's Mageblade | 1.11 PvP Item update
23452, -- Grand Marshal's Tome of Power | 1.11 PvP Item update
23453, -- Grand Marshal's Tome of Restoration | 1.11 PvP Item update
23454, -- Grand Marshal's Warhammer | 1.11 PvP Item update
23455, -- Grand Marshal's Demolisher | 1.11 PvP Item update
23456, -- Grand Marshal's Swiftblade | 1.11 PvP Item update
23464, -- High Warlord's Battle Mace | 1.11 PvP Item update
23465, -- High Warlord's Destroyer | 1.11 PvP Item update
23466, -- High Warlord's Spellblade | 1.11 PvP Item update
23467, -- High Warlord's Quickblade | 1.11 PvP Item update
23468, -- High Warlord's Tome of Destruction | 1.11 PvP Item update
23469, -- High Warlord's Tome of Mending | 1.11 PvP Item update
23557, -- Larvae of the Great Worm | 1.11 patch notes: new items for Ouro
23558, -- The Burrower's Shell | 1.11 patch notes: new items for Ouro
23570, -- Jom Gabbar | 1.11 patch notes: new items for Ouro
23577, -- The Hungering Cold | Naxx Loot
23663, -- Girdle of Elemental Fury | Naxx Loot
23664, -- Pauldrons of Elemental Fury | Naxx Loot
23665, -- Leggings of Elemental Fury | Naxx Loot
23666, -- Belt of the Grand Crusader | Naxx Loot
23667, -- Spaulders of the Grand Crusader | Naxx Loot
23668 -- Leggings of the Grand Crusader | Naxx Loot
);
 
-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);
		
-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
9033, -- Echoes of War | Naxx quest
9034, -- Dreadnaught Breastplate | Naxx quest
9036, -- Dreadnaught Legplates | Naxx quest
9037, -- Dreadnaught Helmet | Naxx quest
9038, -- Dreadnaught Pauldrons | Naxx quest
9039, -- Dreadnaught Sabatons | Naxx quest
9040, -- Dreadnaught Gauntlets | Naxx quest
9041, -- Dreadnaught Waistguard | Naxx quest
9042, -- Dreadnaught Bracers | Naxx quest
9043, -- Redemption Tunic | Naxx quest
9044, -- Redemption Legguards | Naxx quest
9045, -- Redemption Headpiece | Naxx quest
9046, -- Redemption Spaulders | Naxx quest
9047, -- Redemption Boots | Naxx quest
9048, -- Redemption Handguards | Naxx quest
9049, -- Redemption Girdle | Naxx quest
9050, -- Redemption Wristguards | Naxx quest
9053, -- A Better Ingredient | Naxx quest
9054, -- Cryptstalker Tunic | Naxx quest
9055, -- Cryptstalker Legguards | Naxx quest
9056, -- Cryptstalker Headpiece | Naxx quest
9057, -- Cryptstalker Spaulders | Naxx quest
9058, -- Cryptstalker Boots | Naxx quest
9059, -- Cryptstalker Handguards | Naxx quest
9060, -- Cryptstalker Girdle | Naxx quest
9061, -- Cryptstalker Wristguards | Naxx quest
9068, -- Earthshatter Tunic | Naxx quest
9069, -- Earthshatter Legguards | Naxx quest
9070, -- Earthshatter Headpiece | Naxx quest
9071, -- Earthshatter Spaulders | Naxx quest
9072, -- Earthshatter Boots | Naxx quest
9073, -- Earthshatter Handguards | Naxx quest
9074, -- Earthshatter Girdle | Naxx quest
9075, -- Earthshatter Wristguards | Naxx quest
9077, -- Bonescythe Breastplate | Naxx quest
9078, -- Bonescythe Legplates | Naxx quest
9079, -- Bonescythe Helmet | Naxx quest
9080, -- Bonescythe Pauldrons | Naxx quest
9081, -- Bonescythe Sabatons | Naxx quest
9082, -- Bonescythe Gauntlets | Naxx quest
9083, -- Bonescythe Waistguard | Naxx quest
9084, -- Bonescythe Bracers | Naxx quest
9085, -- Shadows of Doom | Naxx invasion event
9086, -- Dreamwalker Tunic | Naxx quest
9087, -- Dreamwalker Legguards | Naxx quest
9088, -- Dreamwalker Headpiece | Naxx quest
9089, -- Dreamwalker Spaulders | Naxx quest
9090, -- Dreamwalker Boots | Naxx quest
9091, -- Dreamwalker Handguards | Naxx quest
9092, -- Dreamwalker Girdle | Naxx quest
9093, -- Dreamwalker Wristguards | Naxx quest
9094, -- Argent Dawn Gloves | Naxx quest
9095, -- Frostfire Robe | Naxx quest
9096, -- Frostfire Leggings | Naxx quest
9097, -- Frostfire Circlet | Naxx quest
9098, -- Frostfire Shoulderpads | Naxx quest
9099, -- Frostfire Sandals | Naxx quest
9100, -- Frostfire Gloves | Naxx quest
9101, -- Frostfire Belt | Naxx quest
9102, -- Frostfire Bindings | Naxx quest
9103, -- Plagueheart Robe | Naxx quest
9104, -- Plagueheart Leggings | Naxx quest
9105, -- Plagueheart Circlet | Naxx quest
9106, -- Plagueheart Shoulderpads | Naxx quest
9107, -- Plagueheart Sandals | Naxx quest
9108, -- Plagueheart Gloves | Naxx quest
9109, -- Plagueheart Belt | Naxx quest
9110, -- Plagueheart Bindings | Naxx quest
9111, -- Robe of Faith | Naxx quest
9112, -- Leggings of Faith | Naxx quest
9113, -- Circlet of Faith | Naxx quest
9114, -- Shoulderpads of Faith | Naxx quest
9115, -- Sandals of Faith | Naxx quest
9116, -- Gloves of Faith | Naxx quest
9117, -- Belt of Faith | Naxx quest
9118, -- Bindings of Faith | Naxx quest
9120, -- The Fall of Kel'Thuzad | Naxx quest
9121, -- The Dread Citadel - Naxxramas | Naxx quest
9122, -- The Dread Citadel - Naxxramas | Naxx quest
9123, -- The Dread Citadel - Naxxramas | Naxx quest
9124, -- Cryptstalker Armor Doesn't Make Itself... | Naxx quest
9125, -- Crypt Fiend Parts | AD badge quests with 1.11
9126, -- Bonescythe Digs | AD badge quests with 1.11
9127, -- Bone Fragments | AD badge quests with 1.11
9128, -- The Elemental Equation | AD badge quests with 1.11
9129, -- Core of Elements | AD badge quests with 1.11
9131, -- Binding the Dreadnaught | Naxx quest
9132, -- Dark Iron Scraps | AD badge quests with 1.11
9136, -- Savage Fronds | AD badge quests with 1.11
9137, -- Savage Fronds | AD badge quests with 1.11
9141, -- "They Call Me ""The Rooster""" | AD badge quests with 1.11
9142, -- Craftsman's Writ | AD badge quests with 1.11
9153, -- Under the Shadow | Naxx invasion event
9154, -- Light's Hope Chapel | Naxx invasion event
9165, -- Writ of Safe Passage | AD badge quests with 1.11
9178, -- Craftsman's Writ - Dense Weightstone | AD badge quests with 1.11
9179, -- Craftsman's Writ - Imperial Plate Chest | AD badge quests with 1.11
9181, -- Craftsman's Writ - Volcanic Hammer | AD badge quests with 1.11
9182, -- Craftsman's Writ - Huge Thorium Battleaxe | AD badge quests with 1.11
9183, -- Craftsman's Writ - Radiant Circlet | AD badge quests with 1.11
9184, -- Craftsman's Writ - Wicked Leather Headband | AD badge quests with 1.11
9185, -- Craftsman's Writ - Rugged Armor Kit | AD badge quests with 1.11
9186, -- Craftsman's Writ - Wicked Leather Belt | AD badge quests with 1.11
9187, -- Craftsman's Writ - Runic Leather Pants | AD badge quests with 1.11
9188, -- Craftsman's Writ - Brightcloth Pants | AD badge quests with 1.11
9190, -- Craftsman's Writ - Runecloth Boots | AD badge quests with 1.11
9191, -- Craftsman's Writ - Runecloth Bag | AD badge quests with 1.11
9194, -- Craftsman's Writ - Runecloth Robe | AD badge quests with 1.11
9195, -- Craftsman's Writ - Goblin Sapper Charge | AD badge quests with 1.11
9196, -- Craftsman's Writ - Thorium Grenade | AD badge quests with 1.11
9197, -- Craftsman's Writ - Gnomish Battle Chicken | AD badge quests with 1.11
9198, -- Craftsman's Writ - Thorium Tube | AD badge quests with 1.11
9200, -- Craftsman's Writ - Major Mana Potion | AD badge quests with 1.11
9201, -- Craftsman's Writ - Greater Arcane Protection Potion | AD badge quests with 1.11
9202, -- Craftsman's Writ - Major Healing Potion | AD badge quests with 1.11
9203, -- Craftsman's Writ - Flask of Petrification | AD badge quests with 1.11
9204, -- Craftsman's Writ - Stonescale Eel | AD badge quests with 1.11
9205, -- Craftsman's Writ - Plated Armorfish | AD badge quests with 1.11
9206, -- Craftsman's Writ - Lightning Eel | AD badge quests with 1.11
9208, -- The Savage Guard - Arcanum of Protection | New nature resist ZG enchants added
9209, -- The Savage Guard - Arcanum of Rapidity | New nature resist ZG enchants added
9210, -- The Savage Guard - Arcanum of Focus | New nature resist ZG enchants added
9211, -- The Ice Guard | AD badge quests with 1.11
9213, -- The Shadow Guard | AD badge quests with 1.11
9221, -- Superior Armaments of Battle - Friend of the Dawn | AD badge quests with 1.11
9222, -- Epic Armaments of Battle - Friend of the Dawn | AD badge quests with 1.11
9223, -- Superior Armaments of Battle - Honored Amongst the Dawn | AD badge quests with 1.11
9224, -- Epic Armaments of Battle - Honored Amongst the Dawn | AD badge quests with 1.11
9225, -- Epic Armaments of Battle - Revered Amongst the Dawn | AD badge quests with 1.11
9226, -- Superior Armaments of Battle - Revered Amongst the Dawn | AD badge quests with 1.11
9227, -- Superior Armaments of Battle - Exalted Amongst the Dawn | AD badge quests with 1.11
9228, -- Epic Armaments of Battle - Exalted Amongst the Dawn | AD badge quests with 1.11
9229, -- The Fate of Ramaladni | Naxx quest
9230, -- Ramaladni's Icy Grasp | Naxx quest
9232, -- The Only Song I Know... | Naxx quest
9233, -- Omarion's Handbook | Naxx quest
9234, -- Icebane Gauntlets | Naxx quest
9235, -- Icebane Bracers | Naxx quest
9236, -- Icebane Breastplate | Naxx quest
9237, -- Glacial Cloak | Naxx quest
9238, -- Glacial Wrists | Naxx quest
9239, -- Glacial Gloves | Naxx quest
9240, -- Glacial Vest | Naxx quest
9241, -- Polar Bracers | Naxx quest
9242, -- Polar Gloves | Naxx quest
9243, -- Polar Tunic | Naxx quest
9244, -- Icy Scale Bracers | Naxx quest
9245, -- Icy Scale Gauntlets | Naxx quest
9246, -- Icy Scale Breastplate | Naxx quest
9247, -- The Keeper's Call | Naxx invasion event
9248, -- A Humble Offering | New Cenarion Circle nature resist items
9250, -- Frame of Atiesh | Naxx quest
9251, -- Atiesh, the Befouled Greatstaff | Naxx quest
9259, -- Traitor to the Bloodsail | New Bloodsail quest added in 1.11 per Allakhazam comment dates
9260, -- Investigate the Scourge of Stormwind | Naxx invasion event
9261, -- Investigate the Scourge of Ironforge | Naxx invasion event
9262, -- Investigate the Scourge of Darnassus | Naxx invasion event
9263, -- Investigate the Scourge of Orgrimmar | Naxx invasion event
9264, -- Investigate the Scourge of Thunder Bluff | Naxx invasion event
9265, -- Investigate the Scourge of Undercity | Naxx invasion event
9267, -- Mending Old Wounds | New cloth turnin quests added to goblin faction per 1.11 patch notes
9268, -- War at Sea | New cloth turnin quests added to goblin faction per 1.11 patch notes
9269, -- Atiesh, Greatstaff of the Guardian | Naxx quest
9270, -- Atiesh, Greatstaff of the Guardian | Naxx quest
9271, -- Atiesh, Greatstaff of the Guardian | Naxx quest
9272, -- Dressing the Part | New Bloodsail quest added in 1.11 per Allakhazam comment dates
9292, -- Cracked Necrotic Crystal | Naxx invasion event
9295, -- Letter from the Front | Naxx invasion event
9299, -- Note from the Front | Naxx invasion event
9300, -- Page from the Front | Naxx invasion event
9301, -- Envelope from the Front | Naxx invasion event
9302, -- Missive from the Front | Naxx invasion event
9304, -- Document from the Front | Naxx invasion event
9310, -- Faint Necrotic Crystal | Naxx invasion event
9317, -- Consecrated Sharpening Stones | Naxx invasion event
9318, -- Blessed Wizard Oil | Naxx invasion event
9319, -- A Light in Dark Places | Midsummer Fire festival added in patch 1.11
9320, -- Major Mana Potion | Naxx invasion event
9321, -- Super Healing Potion | Naxx invasion event
9322, -- Wild Fires in Kalimdor | Midsummer Fire festival added in patch 1.11
9323, -- Wild Fires in the Eastern Kingdoms | Midsummer Fire festival added in patch 1.11
9324, -- Stealing Orgrimmar's Flame | Midsummer Fire festival added in patch 1.11
9325, -- Stealing Thunder Bluff's Flame | Midsummer Fire festival added in patch 1.11
9326, -- Stealing the Undercity's Flame | Midsummer Fire festival added in patch 1.11
9330, -- Stealing Stormwind's Flame | Midsummer Fire festival added in patch 1.11
9331, -- Stealing Ironforge's Flame | Midsummer Fire festival added in patch 1.11
9332, -- Stealing Darnassus's Flame | Midsummer Fire festival added in patch 1.11
9338, -- Allegiance to Cenarion Circle | Added in 1.11 per Allakhazam comments and dates
9339, -- A Thief's Reward | Midsummer Fire festival added in patch 1.11
9341, -- Tabard of the Argent Dawn | Naxx invasion event
9362, -- Warlord Krellian | New mage quest added to Xylem (1.11 patch notes)
9364, -- Fragmented Magic | New mage quest added to Xylem (1.11 patch notes)
9365, -- A Thief's Reward | Midsummer Fire festival added in patch 1.11
9368, -- The Festival of Fire | Midsummer Fire festival added in patch 1.11
9386  -- A Light in Dark Places | Midsummer Fire festival added in patch 1.11
);

-- * NEW SPELLS	

DELETE FROM spell_disabled WHERE entry IN (1000);
			
-- * NEW GAMEOBJECTS	

-- * RESTORATION TOOLS

REPLACE INTO creature_loot_template SELECT * FROM creature_loot_template_full WHERE item IN (SELECT entry FROM `new_items`);
REPLACE INTO reference_loot_template SELECT * FROM reference_loot_template_full WHERE item IN (SELECT entry FROM `new_items`);

REPLACE INTO creature_loot_template SELECT c.* FROM creature_loot_template_full c INNER JOIN reference_loot_template_full r ON c.item = r.entry WHERE r.item IN (SELECT entry FROM `new_items`);
REPLACE INTO disenchant_loot_template SELECT * FROM disenchant_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO fishing_loot_template SELECT * FROM fishing_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO gameobject_loot_template SELECT * FROM gameobject_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO item_loot_template SELECT * FROM item_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO mail_loot_template SELECT * FROM mail_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO pickpocketing_loot_template SELECT * FROM pickpocketing_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO skinning_loot_template SELECT * FROM skinning_loot_template_full WHERE item IN (SELECT entry FROM `new_items`); 
REPLACE INTO npc_vendor SELECT * FROM npc_vendor_full WHERE item IN (SELECT entry FROM `new_items`); 

UPDATE `quest_template` SET `Method` = (`Method` | 2) WHERE `entry` IN (SELECT * FROM `new_quests`);

UPDATE `creature` SET `spawnFlags` = (`spawnFlags` | 0) WHERE id IN (SELECT entry FROM new_creatures);

UPDATE `game_event` SET `disabled` = (`disabled` | 0) WHERE entry IN (SELECT entry FROM new_events);

-- * ITEM STATS | Items changed: 95

REPLACE INTO `item_template`(`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES 
-- Marshals Silk Footwraps | Armor: 115 | Intellect: 14 | Stamina: 23 | Spirit: 6 | SpellID 1: 14248 | SpellID 2: 23727
(16437, 4, 1, 'Marshal\'s Silk Footwraps', 33009, 4, 32768, 1, 87619, 17523, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 14, 7, 23, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Silk Gloves | Armor: 108 | Stamina: 22 | Intellect: 12 | Spirit: 5 | SpellID 1: 14054 | SpellID 2: 23037
(16440, 4, 1, 'Marshal\'s Silk Gloves', 32988, 4, 32768, 1, 59036, 11807, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 22, 5, 12, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14054, 1, 0, 0, -1, 0, -1, 23037, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Coronet | Armor: 162 | Stamina: 28 | Intellect: 17 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 18050
(16441, 4, 1, 'Field Marshal\'s Coronet', 32978, 4, 32768, 1, 102878, 20575, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 17, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18050, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Silk Leggings | Armor: 155 | Stamina: 26 | Spirit: 10 | Intellect: 20 | SpellID 1: 14798 | SpellID 2: 18384
(16442, 4, 1, 'Marshal\'s Silk Leggings', 28715, 4, 32768, 1, 118901, 23780, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 6, 10, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Silk Vestments | Armor: 183 | Stamina: 28 | Intellect: 17 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 18050
(16443, 4, 1, 'Field Marshal\'s Silk Vestments', 32981, 4, 32768, 1, 128464, 25692, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 17, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18050, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Silk Spaulders | Armor: 135 | Stamina: 21 | Intellect: 15 | Spirit: 5 | SpellID 1: 15716 | SpellID 2: 25975
(16444, 4, 1, 'Field Marshal\'s Silk Spaulders', 33004, 4, 32768, 1, 96713, 19342, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 21, 5, 15, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15716, 1, 0, 0, -1, 0, -1, 25975, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Footguards | Armor: 186 | Stamina: 25 | Agility: 22 | SpellID 1: 23049
(16446, 4, 2, 'Marshal\'s Leather Footguards', 30333, 4, 32768, 1, 105206, 21041, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 25, 3, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Gauntlets | Armor: 173 | Strength: 20 | Agility: 19 | Stamina: 15 | SpellID 1: 23217 | SpellID 2: 9417
(16448, 4, 2, 'Marshal\'s Dragonhide Gauntlets', 30334, 4, 32768, 1, 70662, 14132, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 3, 19, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Spaulders | Armor: 215 | Strength: 13 | Agility: 14 | Stamina: 14 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16449, 4, 2, 'Field Marshal\'s Dragonhide Spaulders', 30328, 4, 32768, 1, 123156, 24631, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 13, 3, 14, 7, 14, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Legguards | Armor: 173 | Strength: 24 | Agility: 18 | Stamina: 18 | Intellect: 13 | Spirit: 15 | SpellID 1: 7597
(16450, 4, 2, 'Marshal\'s Dragonhide Legguards', 30329, 4, 32768, 1, 142360, 28472, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 24, 3, 18, 7, 18, 5, 13, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Helmet | Armor: 209 | Stamina: 19 | Agility: 19 | Strength: 20 | Intellect: 15 | Spirit: 7 | SpellID 1: 7597 | SpellID 2: 7597
(16451, 4, 2, 'Field Marshal\'s Dragonhide Helmet', 30330, 4, 32768, 1, 124055, 24811, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 19, 3, 19, 4, 20, 5, 15, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Breastplate | Armor: 260 | Strength: 25 | Stamina: 19 | Agility: 14 | Intellect: 13 | SpellID 1: 14248 | SpellID 2: 7597
(16452, 4, 2, 'Field Marshal\'s Dragonhide Breastplate', 30327, 4, 32768, 1, 166014, 33202, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 25, 7, 19, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Chestpiece | Armor: 260 | Stamina: 32 | Agility: 26 | SpellID 1: 7597 | SpellID 2: 15464
(16453, 4, 2, 'Field Marshal\'s Leather Chestpiece', 30327, 4, 32768, 1, 166621, 33324, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 32, 3, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Handgrips | Armor: 193 | Stamina: 23 | Agility: 20 | SpellID 1: 7597
(16454, 4, 2, 'Marshal\'s Leather Handgrips', 30334, 4, 32768, 1, 72222, 14444, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Mask | Armor: 229 | Stamina: 31 | Agility: 27 | SpellID 1: 7597 | SpellID 2: 15464
(16455, 4, 2, 'Field Marshal\'s Leather Mask', 30330, 4, 32768, 1, 125864, 25172, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 31, 3, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Leggings | Armor: 236 | Agility: 27 | Stamina: 27 | SpellID 1: 15465 | SpellID 2: 7597
(16456, 4, 2, 'Marshal\'s Leather Leggings', 30329, 4, 32768, 1, 145493, 29098, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 27, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15465, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Epaulets | Armor: 215 | Stamina: 27 | Agility: 21 | SpellID 1: 15464
(16457, 4, 2, 'Field Marshal\'s Leather Epaulets', 30328, 4, 32768, 1, 126763, 25352, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 27, 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Boots | Armor: 176 | Strength: 18 | Stamina: 14 | Intellect: 10 | Spirit: 11 | Agility: 11 | SpellID 1: 9345
(16459, 4, 2, 'Marshal\'s Dragonhide Boots', 30333, 4, 32768, 1, 102463, 20492, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 14, 5, 10, 6, 11, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Boots | Armor: 361 | Agility: 26 | Stamina: 20 | Intellect: 9 | SpellID 1: 15464
(16462, 4, 3, 'Marshal\'s Chain Boots', 32095, 4, 32768, 1, 124912, 24982, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 26, 7, 20, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Grips | Armor: 323 | Agility: 21 | Stamina: 20 | Intellect: 4 | SpellID 1: 28539 | SpellID 2: 7597
(16463, 4, 3, 'Marshal\'s Chain Grips', 32098, 4, 32768, 1, 83221, 16644, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 21, 7, 20, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28539, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Helm | Armor: 432 | Agility: 34 | Stamina: 28 | Intellect: 12 | No Stats: 10 | SpellID 1: 7597
(16465, 4, 3, 'Field Marshal\'s Chain Helm', 32093, 4, 32768, 1, 145586, 29117, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 34, 7, 28, 5, 12, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Breastplate | Armor: 520 | Agility: 34 | Stamina: 28 | Intellect: 12 | SpellID 1: 7597
(16466, 4, 3, 'Field Marshal\'s Chain Breastplate', 32094, 4, 32768, 1, 194844, 38968, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 34, 7, 28, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Legguards | Armor: 446 | Agility: 34 | Stamina: 27 | Intellect: 12 | SpellID 1: 7597
(16467, 4, 3, 'Marshal\'s Chain Legguards', 32097, 4, 32768, 1, 168943, 33788, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 34, 7, 27, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Spaulders | Armor: 403 | : 3 | : 7 | : 5 | SpellID 1: 15464
(16468, 4, 3, 'Field Marshal\'s Chain Spaulders', 32092, 4, 32768, 1, 147880, 29576, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 26, 3, 21, 7, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Lamellar Gloves | Armor: 502 | Strength: 18 | Stamina: 17 | Intellect: 16 | SpellID 1: 23300 | SpellID 2: 7597
(16471, 4, 4, 'Marshal\'s Lamellar Gloves', 30321, 4, 32768, 1, 57148, 11429, 10, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 17, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23300, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Chestplate | Armor: 552 | Stamina: 16 | Strength: 15 | Intellect: 15 | SpellID 1: 9346 | SpellID 2: 18379 | SpellID 3: 21363
(16473, 4, 4, 'Field Marshal\'s Lamellar Chestplate', 30315, 4, 32768, 1, 133270, 26654, 5, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 4, 15, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 18379, 1, 0, 0, -1, 0, -1, 21363, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Faceguard | Armor: 679 | Stamina: 21 | Strength: 21 | Intellect: 20 | SpellID 1: 7597 | SpellID 2: 15715 | SpellID 3: 21363
(16474, 4, 4, 'Field Marshal\'s Lamellar Faceguard', 30316, 4, 32768, 1, 100317, 20063, 1, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 21, 4, 21, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15715, 1, 0, 0, -1, 0, -1, 21363, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Lamellar Legplates | Armor: 703 | Stamina: 20 | Strength: 20 | Intellect: 17 | SpellID 1: 14054 | SpellID 2: 7597
(16475, 4, 4, 'Marshal\'s Lamellar Legplates', 30317, 4, 32768, 1, 118969, 23793, 7, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 4, 20, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14054, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Pauldrons | Armor: 626 | Stamina: 16 | Strength: 16 | Intellect: 15 | SpellID 1: 14254 | SpellID 2: 18379
(16476, 4, 4, 'Field Marshal\'s Lamellar Pauldrons', 30318, 4, 32768, 1, 93787, 18757, 3, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 4, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 18379, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Plate Helm | Armor: 719 | Stamina: 34 | Strength: 28 | SpellID 1: 7597
(16478, 4, 4, 'Field Marshal\'s Plate Helm', 30316, 4, 32768, 1, 94516, 18903, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 34, 4, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Legguards | Armor: 743 | Stamina: 28 | Strength: 20 | SpellID 1: 7598 | SpellID 2: 15464
(16479, 4, 4, 'Marshal\'s Plate Legguards', 30317, 4, 32768, 1, 109282, 21856, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 28, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Plate Shoulderguards | Armor: 626 | Stamina: 23 | Strength: 18 | Agility: 16 | SpellID 1: 15464
(16480, 4, 4, 'Field Marshal\'s Plate Shoulderguards', 30318, 4, 32768, 1, 95235, 19047, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 23, 4, 18, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Boots | Armor: 592 | Stamina: 24 | Strength: 18 | Agility: 12 | SpellID 1: 15464
(16483, 4, 4, 'Marshal\'s Plate Boots', 30319, 4, 32768, 1, 83212, 16642, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 24, 4, 18, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Gauntlets | Armor: 532 | Strength: 20 | Stamina: 23 | SpellID 1: 22778 | SpellID 2: 7597
(16484, 4, 4, 'Marshal\'s Plate Gauntlets', 30321, 4, 32768, 1, 55679, 11135, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Cowl | Armor: 162 | Stamina: 28 | Intellect: 17 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 18050
(16533, 4, 1, 'Warlord\'s Silk Cowl', 32999, 4, 32768, 1, 102523, 20504, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 17, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18050, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Trousers | Armor: 155 | Stamina: 26 | Spirit: 10 | Intellect: 20 | SpellID 1: 14798 | SpellID 2: 18384
(16534, 4, 1, 'General\'s Silk Trousers', 32998, 4, 32768, 1, 118504, 23700, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 6, 10, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Raiment | Armor: 183 | Stamina: 28 | Intellect: 17 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 18050
(16535, 4, 1, 'Warlord\'s Silk Raiment', 33085, 4, 32768, 1, 137669, 27533, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 17, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18050, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Amice | Armor: 135 | Stamina: 21 | Intellect: 15 | Spirit: 5 | SpellID 1: 15716 | SpellID 2: 25975
(16536, 4, 1, 'Warlord\'s Silk Amice', 33089, 4, 32768, 1, 93758, 18751, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 21, 5, 15, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15716, 1, 0, 0, -1, 0, -1, 25975, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Boots | Armor: 115 | Stamina: 14 | Intellect: 23 | Spirit: 6 | SpellID 1: 14248 | SpellID 2: 23727
(16539, 4, 1, 'General\'s Silk Boots', 32996, 4, 32768, 1, 84182, 16836, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 14, 5, 23, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Handguards | Armor: 108 | Stamina: 22 | Intellect: 12 | Spirit: 5 | SpellID 1: 14054 | SpellID 2: 14054
(16540, 4, 1, 'General\'s Silk Handguards', 32997, 4, 32768, 1, 56325, 11265, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 22, 5, 12, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14054, 1, 0, 0, -1, 0, -1, 14054, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Armor | Armor: 875 | Stamina: 33 | Strength: 16 | Agility: 14 | SpellID 1: 7597
(16541, 4, 4, 'Warlord\'s Plate Armor', 30373, 4, 32768, 1, 130894, 26178, 5, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 33, 4, 16, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Headpiece | Armor: 719 | Stamina: 34 | Strength: 28 | SpellID 1: 7597
(16542, 4, 4, 'Warlord\'s Plate Headpiece', 30374, 4, 32768, 1, 98535, 19707, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 34, 4, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Leggings | Armor: 743 | Stamina: 28 | Strength: 20 | SpellID 1: 7598 | SpellID 2: 15464
(16543, 4, 4, 'General\'s Plate Leggings', 30375, 4, 32768, 1, 113910, 22782, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 28, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Shoulders | Armor: 626 | Stamina: 23 | Strength: 18 | Agility: 16 | SpellID 1: 15464
(16544, 4, 4, 'Warlord\'s Plate Shoulders', 30928, 4, 32768, 1, 99253, 19850, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 23, 4, 18, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Boots | Armor: 592 | Stamina: 24 | Strength: 18 | Agility: 12 | SpellID 1: 15464
(16545, 4, 4, 'General\'s Plate Boots', 30370, 4, 32768, 1, 86054, 17210, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 24, 4, 18, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Gauntlets | Armor: 532 | Strength: 20 | Stamina: 23 | SpellID 1: 22778 | SpellID 2: 7597
(16548, 4, 4, 'General\'s Plate Gauntlets', 30371, 4, 32768, 1, 57993, 11598, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Hauberk | Armor: 260 | Strength: 25 | Stamina: 19 | Agility: 14 | Intellect: 13 | SpellID 1: 14248 | SpellID 2: 7597
(16549, 4, 2, 'Warlord\'s Dragonhide Hauberk', 32110, 4, 32768, 1, 168443, 33688, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 25, 7, 19, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Helmet | Armor: 209 | Stamina: 19 | Agility: 19 | Strength: 20 | Intellect: 15 | Spirit: 7 | SpellID 1: 9346 | SpellID 2: 7597
(16550, 4, 2, 'Warlord\'s Dragonhide Helmet', 32134, 4, 32768, 1, 126788, 25357, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 19, 3, 19, 4, 20, 5, 15, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Epaulets | Armor: 215 | Stamina: 13 | Agility: 14 | Strength: 14 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16551, 4, 2, 'Warlord\'s Dragonhide Epaulets', 32129, 4, 32768, 1, 127243, 25448, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 13, 3, 14, 4, 14, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Leggings | Armor: 173 | Strength: 24 | Agility: 18 | Stamina: 18 | Spirit: 13 | Intellect: 15 | SpellID 1: 7597
(16552, 4, 2, 'General\'s Dragonhide Leggings', 32108, 4, 32768, 1, 147067, 29413, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 24, 3, 18, 7, 18, 6, 13, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Boots | Armor: 176 | Strength: 18 | Stamina: 14 | Intellect: 10 | Agility: 11 | Spirit: 10 | SpellID 1: 9345
(16554, 4, 2, 'General\'s Dragonhide Boots', 32106, 4, 32768, 1, 111087, 22217, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 14, 5, 10, 3, 11, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Gloves | Armor: 173 | Strength: 20 | Agility: 19 | Stamina: 15 | SpellID 1: 23217 | SpellID 2: 9417
(16555, 4, 2, 'General\'s Dragonhide Gloves', 32107, 4, 32768, 1, 69095, 13819, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 3, 19, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Treads | Armor: 186 | Stamina: 25 | Agility: 22 | SpellID 1: 23049
(16558, 4, 2, 'General\'s Leather Treads', 32114, 4, 32768, 1, 104823, 20964, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 25, 3, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Mitts | Armor: 193 | Stamina: 23 | Agility: 20 | SpellID 1: 7597
(16560, 4, 2, 'General\'s Leather Mitts', 32113, 4, 32768, 1, 70400, 14080, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Helm | Armor: 229 | Stamina: 31 | Agility: 27 | SpellID 1: 7597 | SpellID 2: 7597
(16561, 4, 2, 'Warlord\'s Leather Helm', 32132, 4, 32768, 1, 122700, 24540, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 31, 3, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Spaulders | Armor: 215 | Stamina: 27 | Agility: 21 | SpellID 1: 15464
(16562, 4, 2, 'Warlord\'s Leather Spaulders', 32131, 4, 32768, 1, 123156, 24631, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 27, 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Breastplate | Armor: 260 | Stamina: 32 | Agility: 26 | SpellID 1: 15464 | SpellID 2: 15464
(16563, 4, 2, 'Warlord\'s Leather Breastplate', 32115, 4, 32768, 1, 164799, 32959, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 32, 3, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Legguards | Armor: 236 | Agility: 27 | Stamina: 27 | SpellID 1: 15465 | SpellID 2: 7597
(16564, 4, 2, 'General\'s Leather Legguards', 32112, 4, 32768, 1, 142884, 28576, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 27, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15465, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Chestpiece | Armor: 520 | Agility: 34 | Stamina: 28 | Intellect: 12 | SpellID 1: 7597
(16565, 4, 3, 'Warlord\'s Chain Chestpiece', 32122, 4, 32768, 1, 199217, 39843, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 34, 7, 28, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Helmet | Armor: 432 | Agility: 34 | Stamina: 28 | Intellect: 12 | No Stats: 10 | SpellID 1: 7597
(16566, 4, 3, 'Warlord\'s Chain Helmet', 32135, 4, 32768, 1, 149959, 29991, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 34, 7, 28, 5, 12, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Legguards | Armor: 446 | Agility: 34 | Stamina: 27 | Intellect: 12 | SpellID 1: 7597
(16567, 4, 3, 'General\'s Chain Legguards', 32120, 4, 32768, 1, 173333, 34666, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 34, 7, 27, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Shoulders | Armor: 403 | : 3 | : 7 | : 5 | SpellID 1: 15464
(16568, 4, 3, 'Warlord\'s Chain Shoulders', 32125, 4, 32768, 1, 151709, 30341, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 26, 3, 21, 7, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Boots | Armor: 361 | Agility: 26 | Stamina: 20 | Intellect: 9 | SpellID 1: 15464
(16569, 4, 3, 'General\'s Chain Boots', 32124, 4, 32768, 1, 131526, 26305, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 26, 7, 20, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Gloves | Armor: 323 | Agility: 21 | Stamina: 20 | Intellect: 4 | SpellID 1: 28539 | SpellID 2: 7597
(16571, 4, 3, 'General\'s Chain Gloves', 32119, 4, 32768, 1, 81655, 16331, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 21, 7, 20, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28539, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Boots | Armor: 311 | Stamina: 18 | Intellect: 17 | SpellID 1: 22801 | SpellID 2: 14799 | SpellID 3: 21363
(16573, 4, 3, 'General\'s Mail Boots', 32126, 4, 32768, 1, 123976, 24795, 8, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22801, 1, 0, 0, -1, 0, -1, 14799, 1, 0, 0, -1, 0, -1, 21363, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Gauntlets | Armor: 353 | Stamina: 18 | Intellect: 17 | Strength: 17 | SpellID 1: 7597
(16574, 4, 3, 'General\'s Mail Gauntlets', 32100, 4, 32768, 1, 82591, 16518, 10, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Armor | Armor: 470 | Stamina: 35 | Intellect: 20 | Strength: 9 | SpellID 1: 7597 | SpellID 2: 18384 | SpellID 3: 9415
(16577, 4, 3, 'Warlord\'s Mail Armor', 32103, 4, 32768, 1, 193406, 38681, 5, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 20, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Helm | Armor: 382 | Stamina: 35 | Intellect: 19 | Strength: 16 | SpellID 1: 7597 | SpellID 2: 18384 | SpellID 3: 9415
(16578, 4, 3, 'Warlord\'s Mail Helm', 32133, 4, 32768, 1, 145586, 29117, 1, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 19, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Leggings | Armor: 396 | Stamina: 23 | Intellect: 23 | SpellID 1: 14054 | SpellID 2: 18384 | SpellID 3: 7597
(16579, 4, 3, 'General\'s Mail Leggings', 32127, 4, 32768, 1, 168313, 33662, 7, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14054, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Spaulders | Armor: 353 | Stamina: 18 | Intellect: 18 | Strength: 17 | Agility: 9 | SpellID 1: 9345
(16580, 4, 3, 'Warlord\'s Mail Spaulders', 32128, 4, 32768, 1, 147331, 29466, 3, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 18, 5, 18, 4, 17, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Coronal | Armor: 132 | Stamina: 30 | Intellect: 24 | SpellID 1: 17367
(17578, 4, 1, 'Field Marshal\'s Coronal', 32979, 4, 32768, 1, 98160, 19632, 1, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Leggings | Armor: 135 | Stamina: 28 | Intellect: 19 | SpellID 1: 18054
(17579, 4, 1, 'Marshal\'s Dreadweave Leggings', 33007, 4, 32768, 1, 113479, 22695, 7, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 28, 5, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18054, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dreadweave Shoulders | Armor: 115 | Stamina: 24 | Intellect: 17 | SpellID 1: 15715
(17580, 4, 1, 'Field Marshal\'s Dreadweave Shoulders', 33002, 4, 32768, 1, 98879, 19775, 3, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dreadweave Robe | Armor: 153 | Stamina: 30 | Intellect: 24 | SpellID 1: 17367
(17581, 4, 1, 'Field Marshal\'s Dreadweave Robe', 33001, 4, 32768, 1, 132325, 26465, 20, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Boots | Armor: 135 | Intellect: 22 | Stamina: 13 | SpellID 1: 17586
(17583, 4, 1, 'Marshal\'s Dreadweave Boots', 33006, 4, 32768, 1, 86351, 17270, 8, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 22, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17586, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Gloves | Armor: 68 | Stamina: 20 | Intellect: 6 | SpellID 1: 23046 | SpellID 2: 14798
(17584, 4, 1, 'Marshal\'s Dreadweave Gloves', 32995, 4, 32768, 1, 59280, 11856, 10, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Boots | Armor: 135 | Intellect: 22 | Intellect: 13 | SpellID 1: 17586
(17586, 4, 1, 'General\'s Dreadweave Boots', 33076, 4, 0, 1, 81034, 16206, 8, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 22, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17586, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Gloves | Armor: 68 | Stamina: 20 | Intellect: 6 | SpellID 1: 23046 | SpellID 2: 14798
(17588, 4, 1, 'General\'s Dreadweave Gloves', 33077, 4, 0, 1, 54437, 10887, 10, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Mantle | Armor: 115 | Stamina: 24 | Intellect: 17 | SpellID 1: 15715
(17590, 4, 1, 'Warlord\'s Dreadweave Mantle', 33088, 4, 0, 1, 95255, 19051, 3, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Hood | Armor: 132 | Stamina: 30 | Intellect: 24 | SpellID 1: 17367
(17591, 4, 1, 'Warlord\'s Dreadweave Hood', 33071, 4, 0, 1, 95609, 19121, 1, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Robe | Armor: 153 | Stamina: 30 | Intellect: 24 | SpellID 1: 17367
(17592, 4, 1, 'Warlord\'s Dreadweave Robe', 33079, 4, 0, 1, 127965, 25593, 20, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Pants | Armor: 135 | Stamina: 28 | Intellect: 19 | SpellID 1: 18054
(17593, 4, 1, 'General\'s Dreadweave Pants', 30380, 4, 0, 1, 110961, 22192, 7, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 28, 5, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18054, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Headdress | Armor: 162 | Stamina: 30 | Intellect: 28 | SpellID 1: 18050 | SpellID 2: 21362
(17602, 4, 1, 'Field Marshal\'s Headdress', 32980, 4, 32768, 1, 102198, 20439, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18050, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Pants | Armor: 165 | Stamina: 30 | Intellect: 21 | SpellID 1: 17367 | SpellID 2: 21362
(17603, 4, 1, 'Marshal\'s Satin Pants', 32991, 4, 32768, 1, 118130, 23626, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 30, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Satin Mantle | Armor: 145 | Stamina: 22 | Intellect: 20 | SpellID 1: 15715
(17604, 4, 1, 'Field Marshal\'s Satin Mantle', 33005, 4, 32768, 1, 102927, 20585, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Satin Vestments | Armor: 183 | Stamina: 30 | Intellect: 28 | SpellID 1: 18050 | SpellID 2: 21362
(17605, 4, 1, 'Field Marshal\'s Satin Vestments', 32984, 4, 32768, 1, 137722, 27544, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18050, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Sandals | Armor: 125 | Intellect: 18 | Stamina: 21 | SpellID 1: 14047
(17607, 4, 1, 'Marshal\'s Satin Sandals', 32992, 4, 32768, 1, 81332, 16266, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 18, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Gloves | Armor: 118 | Stamina: 21 | Intellect: 13 | SpellID 1: 14047 | SpellID 2: 23043
(17608, 4, 1, 'Marshal\'s Satin Gloves', 32990, 4, 32768, 1, 54431, 10886, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 23043, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Boots | Armor: 125 | Stamina: 18 | Intellect: 18 | SpellID 1: 14047
(17618, 4, 1, 'General\'s Satin Boots', 33080, 4, 32768, 1, 87023, 17404, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Gloves | Armor: 118 | Stamina: 21 | Intellect: 13 | SpellID 1: 14047 | SpellID 2: 23043
(17620, 4, 1, 'General\'s Satin Gloves', 33081, 4, 32768, 1, 58435, 11687, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 23043, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Mantle | Armor: 145 | Stamina: 22 | Intellect: 20 | SpellID 1: 15715
(17622, 4, 1, 'Warlord\'s Satin Mantle', 33083, 4, 32768, 1, 102188, 20437, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Cowl | Armor: 162 | Stamina: 30 | Intellect: 28 | SpellID 1: 18050 | SpellID 2: 21362
(17623, 4, 1, 'Warlord\'s Satin Cowl', 33082, 4, 32768, 1, 102553, 20510, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18050, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Robes | Armor: 183 | Stamina: 30 | Intellect: 28 | SpellID 1: 18050 | SpellID 2: 21362
(17624, 4, 1, 'Warlord\'s Satin Robes', 33084, 4, 32768, 1, 137223, 27444, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18050, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Leggings | Armor: 165 | Stamina: 30 | Intellect: 21 | SpellID 1: 17367 | SpellID 2: 21362
(17625, 4, 1, 'General\'s Satin Leggings', 26021, 4, 32768, 1, 118947, 23789, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 30, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);

-- * ADDITIONAL FIXES	

-- Removed blue items under level 58 from the vendors
DELETE FROM npc_vendor WHERE item IN (
16369, -- Knight-Lieutenant's Silk Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16391, -- Knight-Lieutenant's Silk Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16392, -- Knight-Lieutenant's Leather Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16393, -- Knight-Lieutenant's Dragonhide Footwraps | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16396, -- Knight-Lieutenant's Leather Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16397, -- Knight-Lieutenant's Dragonhide Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16401, -- Knight-Lieutenant's Chain Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16403, -- Knight-Lieutenant's Chain Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16405, -- Knight-Lieutenant's Plate Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16406, -- Knight-Lieutenant's Plate Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16409, -- Knight-Lieutenant's Lamellar Sabatons | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16410, -- Knight-Lieutenant's Lamellar Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16413, -- Knight-Captain's Silk Raiment | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16414, -- Knight-Captain's Silk Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16415, -- Lieutenant Commander's Silk Spaulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16416, -- Lieutenant Commander's Crown | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16417, -- Knight-Captain's Leather Armor | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16418, -- Lieutenant Commander's Leather Veil | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16419, -- Knight-Captain's Leather Legguards | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16420, -- Lieutenant Commander's Leather Spaulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16421, -- Knight-Captain's Dragonhide Tunic | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16422, -- Knight-Captain's Dragonhide Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16423, -- Lieutenant Commander's Dragonhide Epaulets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16424, -- Lieutenant Commander's Dragonhide Shroud | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16425, -- Knight-Captain's Chain Hauberk | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16426, -- Knight-Captain's Chain Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16427, -- Lieutenant Commander's Chain Pauldrons | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16428, -- Lieutenant Commander's Chain Helmet | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16429, -- Lieutenant Commander's Plate Helm | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16430, -- Knight-Captain's Plate Chestguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16431, -- Knight-Captain's Plate Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16432, -- Lieutenant Commander's Plate Pauldrons | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16433, -- Knight-Captain's Lamellar Breastplate | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16434, -- Lieutenant Commander's Lamellar Headguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16435, -- Knight-Captain's Lamellar Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16436, -- Lieutenant Commander's Lamellar Shoulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16485, -- Blood Guard's Silk Footwraps | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16487, -- Blood Guard's Silk Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16489, -- Champion's Silk Hood | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16490, -- Legionnaire's Silk Pants | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16491, -- Legionnaire's Silk Robes | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16492, -- Champion's Silk Shoulderpads | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16494, -- Blood Guard's Dragonhide Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16496, -- Blood Guard's Dragonhide Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16498, -- Blood Guard's Leather Treads | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16499, -- Blood Guard's Leather Vices | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16501, -- Champion's Dragonhide Spaulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16502, -- Legionnaire's Dragonhide Trousers | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16503, -- Champion's Dragonhide Helm | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16504, -- Legionnaire's Dragonhide Breastplate | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16505, -- Legionnaire's Leather Hauberk | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16506, -- Champion's Leather Headguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16507, -- Champion's Leather Mantle | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16508, -- Legionnaire's Leather Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16509, -- Blood Guard's Plate Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16510, -- Blood Guard's Plate Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16513, -- Legionnaire's Plate Armor | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16514, -- Champion's Plate Headguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16515, -- Legionnaire's Plate Legguards | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16516, -- Champion's Plate Pauldrons | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16518, -- Blood Guard's Mail Walkers | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16519, -- Blood Guard's Mail Grips | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16521, -- Champion's Mail Helm | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16522, -- Legionnaire's Mail Chestpiece | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16523, -- Legionnaire's Mail Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16524, -- Champion's Mail Shoulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16525, -- Legionnaire's Chain Breastplate | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16526, -- Champion's Chain Headguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16527, -- Legionnaire's Chain Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16528, -- Champion's Chain Pauldrons | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16530, -- Blood Guard's Chain Gauntlets | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
16531, -- Blood Guard's Chain Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17562, -- Knight-Lieutenant's Dreadweave Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17564, -- Knight-Lieutenant's Dreadweave Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17566, -- Lieutenant Commander's Headguard | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17567, -- Knight-Captain's Dreadweave Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17568, -- Knight-Captain's Dreadweave Robe | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17569, -- Lieutenant Commander's Dreadweave Mantle | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17570, -- Champion's Dreadweave Hood | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17571, -- Legionnaire's Dreadweave Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17572, -- Legionnaire's Dreadweave Robe | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17573, -- Champion's Dreadweave Shoulders | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17576, -- Blood Guard's Dreadweave Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17577, -- Blood Guard's Dreadweave Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs), -- 
17594, -- Knight-Lieutenant's Satin Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17596, -- Knight-Lieutenant's Satin Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17598, -- Lieutenant Commander's Diadem | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17599, -- Knight-Captain's Satin Leggings | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17600, -- Knight-Captain's Satin Robes | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17601, -- Lieutenant Commander's Satin Amice | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17610, -- Champion's Satin Cowl | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17611, -- Legionnaire's Satin Trousers | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17612, -- Legionnaire's Satin Vestments | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17613, -- Champion's Satin Shoulderpads | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17616, -- Blood Guard's Satin Boots | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
17617 -- Blood Guard's Satin Gloves | Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11; different item IDs)
);
