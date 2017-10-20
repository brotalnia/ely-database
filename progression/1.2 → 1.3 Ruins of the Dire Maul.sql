-- 1.2 → 1.3 | Ruins of the Dire Maul 

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
-- - 9.  ITEM STATS CHANGES
-- - 10. ADDITIONAL FIXES    

-- * NEW ENCOUNTER	

UPDATE `areatrigger_teleport` SET `required_level` = 45 WHERE `target_map` = 429; -- Dire Maul 1.3

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
35,   -- The Maul: Mushgog
36,   -- The Maul: Skarr the Unbreakable
37,   -- The Maul: Razza
42,   -- The Maul, Grininlix /yell Mushgog
43,   -- The Maul, Grininlix /yell Skarr the Unbreakable
44,   -- The Maul, Grininlix /yell The Razza
156,  -- DM release : Recipes and misc item
159,  -- DM Release : Cloth turning NPC
161,  -- Patch 1.3
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
6833,  -- White Tuxedo Shirt
13075, -- Direwing Legguards | Drops off arena bosses and 1.3 world bosses (originally) per Allakhazam
17111, -- Blazefury Medallion | Original Kazzak Loot
18022, -- Royal Seal of Alexis | See 1.3 retail patch notes
18302, -- Band of Vigor | Dire Maul Loot
18305, -- Breakwater Legguards | Dire Maul Loot
18306, -- Gloves of Shadowy Mist | Dire Maul Loot
18309, -- Gloves of Restoration | Dire Maul Loot
18313, -- Helm of Awareness | Dire Maul Loot
18315, -- Ring of Demonic Potency | Dire Maul Loot
18323, -- Satyr's Bow | Dire Maul Loot
18325, -- Felhide Cap | Dire Maul Loot
18326, -- Razor Gauntlets | Dire Maul Loot
18327, -- Whipvine Cord | Dire Maul Loot
18337, -- Orphic Bracers | Dire Maul Loot (Random drop off 11480, 14399, 11483, and 11484 only)
18339, -- Eidolon Cloak | Dire Maul Loot
18340, -- Eidolon Talisman | Dire Maul Loot
18343, -- Petrified Band | Dire Maul Loot (Random drop off 11459, 14303, and 11458 only)
18349, -- Gauntlets of Accuracy | Dire Maul Loot
18350, -- Amplifying Cloak | Dire Maul Loot
18352, -- Petrified Bark Shield | Dire Maul Loot
18368, -- Gordok's Gloves | Dire Maul Loot
18369, -- Gordok's Handwraps | Dire Maul Loot
18371, -- Mindtap Talisman | Dire Maul Loot
18373, -- Chestplate of Tranquility | Dire Maul Loot
18374, -- Flamescarred Shoulders | Dire Maul Loot
18377, -- Quickdraw Gloves | Dire Maul Loot
18378, -- Silvermoon Leggings | Dire Maul Loot
18380, -- Eldritch Reinforced Legplates | Dire Maul Loot
18381, -- Evil Eye Pendant | Dire Maul Loot
18383, -- Force Imbued Gauntlets | Dire Maul Loot
18384, -- Bile-etched Spaulders | Dire Maul Loot
18386, -- Padre's Trousers | Dire Maul Loot
18387, -- Brightspark Gloves | Dire Maul Loot
18388, -- Stoneshatter | Dire Maul Loot
18393, -- Warpwood Binding | Dire Maul Loot
18395, -- Emerald Flame Ring | Dire Maul Loot
18420, -- Bonecrusher | Dire Maul Loot
18421, -- Backwood Helm | Dire Maul Loot
18425, -- Kreeg's Mug | Dire Maul Loot
18450, -- Robe of Combustion | Dire Maul Loot
18451, -- Hyena Hide Belt | Dire Maul Loot
18464, -- Gordok Nose Ring | Dire Maul Loot
18466, -- Royal Seal of Eldre'Thalas | Dire Maul Loot
18468, -- Royal Seal of Eldre'Thalas | Dire Maul Loot
18470, -- Royal Seal of Eldre'Thalas | Dire Maul Loot
18472, -- Royal Seal of Eldre'Thalas | Dire Maul Loot
18475, -- Oddly Magical Belt | Dire Maul Loot
18480, -- Scarab Plate Helm | Dire Maul Loot
18485, -- Observer's Shield | Dire Maul Loot
18490, -- Insightful Hood | Dire Maul Loot
18493, -- Bulky Iron Spaulders | Dire Maul Loot
18494, -- Denwatcher's Shoulders | Dire Maul Loot
18505, -- Mugger's Belt | Dire Maul Loot
18510, -- Hide of the Wild | Dire Maul Loot
18518, -- Pattern: Hide of the Wild | Dire Maul Loot
18522, -- Band of the Ogre King | Dire Maul Loot
18524, -- Leggings of Destruction | Dire Maul Loot
18528, -- Cyclone Spaulders | Dire Maul Loot
18535, -- Milli's Shield | Dire Maul Loot
18536, -- Milli's Lexicon | Dire Maul Loot
18537, -- Counterattack Lodestone | Dire Maul Loot
18543, -- Ring of Entropy | Original Kazzak loot (Allakhazam dates)
18544, -- Doomhide Gauntlets | Original Kazzak loot (Allakhazam dates)
18545 -- Leggings of Arcane Supremacy | Original Azuregos loot (Allakhazam dates)
);

-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
6109,    -- Azuregos
12397,   -- Lord Kazzak
);

-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
1318, -- Unfinished Gordok Business | Dire Maul quest
5504, -- Mantles of the Dawn | New AD rewards added (1.3 patch notes)
5507, -- Mantles of the Dawn | New AD rewards added (1.3 patch notes)
5513, -- Mantles of the Dawn | New AD rewards added (1.3 patch notes)
5517, -- Chromatic Mantle of the Dawn | New AD rewards added (1.3 patch notes)
5518, -- The Gordok Ogre Suit | Dire Maul Quest
5519, -- The Gordok Ogre Suit | Dire Maul Quest
5521, -- Chromatic Mantle of the Dawn | New AD rewards added (1.3 patch notes)
5524, -- Chromatic Mantle of the Dawn | New AD rewards added (1.3 patch notes)
5525, -- Free Knot! | Dire Maul Quest (duplicate?)
5526, -- Shards of the Felvine | Dire Maul Quest (duplicate?)
5527, -- A Reliquary of Purity | Dire Maul Quest (duplicate?)
5528, -- The Gordok Taste Test | Dire Maul Quest
6221, -- Deadwood of the North | Timbermaw Hold. Replaced in 1.9 by ID: 8461
6241, -- Winterfall Activity | Timbermaw Hold, repeatable quest. Replaced in 1.9 by ID: 8464
7341, -- A Fair Trade | Patch 1.3 retail notes
7342, -- Arrows Are For Sissies | Patch 1.3 retail notes
7429, -- Free Knot! | Dire Maul quest
7441, -- Pusillin and the Elder Azj'Tordin | Dire Maul quest
7461, -- The Madness Within | Dire Maul quest
7462, -- The Treasure of the Shen'dralar | Dire Maul quest (NOTE: Duplicate with 7877)
7463, -- Arcane Refreshment | Dire Maul quest
7478, -- Libram of Rapidity | Dire Maul quest
7479, -- Libram of Focus | Dire Maul quest
7480, -- Libram of Protection | Dire Maul quest
7481, -- Elven Legends | Dire Maul quest
7482, -- Elven Legends | Dire Maul quest
7483, -- Libram of Rapidity | Dire Maul quest
7484, -- Libram of Focus | Dire Maul quest
7485, -- Libram of Protection | Dire Maul quest
7488, -- Lethtendris's Web | Dire Maul quest
7489, -- Lethtendris's Web | Dire Maul quest
7492, -- Camp Mojache | Dire Maul quest
7494, -- Feathermoon Stronghold | Dire Maul quest
7498, -- Garona: A Study on Stealth and Treachery | Dire Maul quest
7499, -- Codex of Defense | Dire Maul quest
7500, -- The Arcanist's Cookbook | Dire Maul quest
7501, -- The Light and How To Swing It | Dire Maul quest
7502, -- Harnessing Shadows | Dire Maul quest
7503, -- The Greatest Race of Hunters | Dire Maul quest
7504, -- Holy Bologna: What the Light Won't Tell You | Dire Maul quest
7505, -- Frost Shock and You | Dire Maul quest
7506, -- The Emerald Dream... | Dire Maul quest
7507, -- Foror's Compendium | Dire Maul quest
7508, -- The Forging of Quel'Serrar | Dire Maul quest
7509, -- The Forging of Quel'Serrar | Dire Maul quest
7703, -- Unfinished Gordok Business | Dire Maul quest
7877  -- The Treasure of the Shen'dralar | Dire Maul quest (NOTE: Duplicate with 7462)
);

-- * NEW SPELLS	

DELETE FROM spell_disabled WHERE entry IN (1000);

-- * NEW GAMEOBJECTS	

REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (179517, 7877);   -- Add involvedrelation for Treasure of Shen'dralar

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

UPDATE `creature` SET `spawnFlags` = (`spawnFlags` | 1) WHERE id IN (SELECT entry FROM new_creatures);

UPDATE `game_event` SET `disabled` = (`disabled` | 0) WHERE entry IN (SELECT entry FROM new_events);
 
-- * ITEM STATS
-- ^ Items changed: 1

-- Shadowcraft Boots | Armor: 115 | Agility: 21 | Stamina: 9
(16711, 4, 2, 'Shadowcraft Boots', 28162, 3, 0, 1, 87528, 17505, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 21, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 184, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
	
-- * ADDITIONAL FIXES			



