-- * 1.12 → 1.2 | 1.12 → 1.2 Mysteries of Maraudon

DROP TABLE IF EXISTS `forbidden_items`;
DROP TABLE IF EXISTS `forbidden_events`;
DROP TABLE IF EXISTS `forbidden_quests`;
DROP TABLE IF EXISTS `forbidden_creatures`;
DROP TABLE IF EXISTS `forbidden_instances`;

CREATE TABLE IF NOT EXISTS `forbidden_quests` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `forbidden_items` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `forbidden_events` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `forbidden_creatures` (entry mediumint PRIMARY KEY);
CREATE TABLE IF NOT EXISTS `forbidden_instances` (entry mediumint PRIMARY KEY);

DROP TABLE IF EXISTS creature_loot_template_full;
DROP TABLE IF EXISTS reference_loot_template_full; 
DROP TABLE IF EXISTS disenchant_loot_template_full; 
DROP TABLE IF EXISTS fishing_loot_template_full; 
DROP TABLE IF EXISTS gameobject_loot_template_full;
DROP TABLE IF EXISTS item_loot_template_full; 
DROP TABLE IF EXISTS mail_loot_template_full;
DROP TABLE IF EXISTS pickpocketing_loot_template_full;
DROP TABLE IF EXISTS skinning_loot_template_full; 
DROP TABLE IF EXISTS npc_vendor_full; 
DROP TABLE IF EXISTS areatrigger_involvedrelation_full; 
DROP TABLE IF EXISTS creature_involvedrelation_full; 
DROP TABLE IF EXISTS creature_questrelation_full; 
DROP TABLE IF EXISTS gameobject_involvedrelation_full; 
DROP TABLE IF EXISTS gameobject_questrelation_full; 

CREATE TABLE creature_loot_template_full LIKE creature_loot_template; INSERT creature_loot_template_full SELECT * FROM creature_loot_template;
CREATE TABLE reference_loot_template_full LIKE reference_loot_template; INSERT reference_loot_template_full SELECT * FROM reference_loot_template;
CREATE TABLE disenchant_loot_template_full LIKE disenchant_loot_template; INSERT disenchant_loot_template_full SELECT * FROM disenchant_loot_template;
CREATE TABLE fishing_loot_template_full LIKE fishing_loot_template; INSERT fishing_loot_template_full SELECT * FROM fishing_loot_template;
CREATE TABLE gameobject_loot_template_full LIKE gameobject_loot_template; INSERT gameobject_loot_template_full SELECT * FROM gameobject_loot_template;
CREATE TABLE item_loot_template_full LIKE item_loot_template; INSERT item_loot_template_full SELECT * FROM item_loot_template;
CREATE TABLE mail_loot_template_full LIKE mail_loot_template; INSERT mail_loot_template_full SELECT * FROM mail_loot_template;
CREATE TABLE pickpocketing_loot_template_full LIKE pickpocketing_loot_template; INSERT pickpocketing_loot_template_full SELECT * FROM pickpocketing_loot_template;
CREATE TABLE skinning_loot_template_full LIKE skinning_loot_template; INSERT skinning_loot_template_full SELECT * FROM skinning_loot_template;
CREATE TABLE npc_vendor_full LIKE npc_vendor; INSERT npc_vendor_full SELECT * FROM npc_vendor;
CREATE TABLE areatrigger_involvedrelation_full LIKE areatrigger_involvedrelation; INSERT areatrigger_involvedrelation_full SELECT * FROM areatrigger_involvedrelation;
CREATE TABLE creature_involvedrelation_full LIKE creature_involvedrelation; INSERT creature_involvedrelation_full SELECT * FROM creature_involvedrelation;
CREATE TABLE creature_questrelation_full LIKE creature_questrelation; INSERT creature_questrelation_full SELECT * FROM creature_questrelation;
CREATE TABLE gameobject_involvedrelation_full LIKE gameobject_involvedrelation; INSERT gameobject_involvedrelation_full SELECT * FROM gameobject_involvedrelation;
CREATE TABLE gameobject_questrelation_full LIKE gameobject_questrelation; INSERT gameobject_questrelation_full SELECT * FROM gameobject_questrelation;

-- * INDEX
-- - 1.  FORBIDDEN ENCOUNTER				 
-- - 2.  FORBIDDEN EVENTS 					          
-- - 3.  FORBIDDEN ITEMS 		  
-- - 4.  ITEM STATS	
-- - 5.  LOOT TABLES	 	      
-- - 6.  VENDORS 
-- - 7.  FORBIDDEN CREATURES			
-- - 8.  CREATURES	
-- - 9.  FORBIDDEN QUESTS			
-- - 10. QUESTS					
-- - 11. PROFESSIONS
-- - 12. FORBIDDEN SPELLS				
-- - 13. SPELLS			 		
-- - 14. FORBIDDEN GAMEOBJECTS	
-- - 15. CLEANUP TOOLS	

-- * FORBIDDEN ENCOUNTER

REPLACE INTO forbidden_instances SELECT id FROM areatrigger_teleport WHERE target_map IN (
533,   -- Naxxramas 1.12
531,   -- AQ40 (Temple of AQ) 1.9
509,   -- AQ20 (Ruins of AQ) 1.9
429,   -- Dire Maul 1.3
309,   -- Zul'Gurub 1.7
469    -- Blackwing Lair 1.6
);
UPDATE `battleground_template` SET `MinLvl` = 61, `MaxLvl` = 61 WHERE `id` = 2; -- Warsong Gulch (Patch 1.5)
UPDATE `battleground_template` SET `MinLvl` = 61, `MaxLvl` = 61 WHERE `id` = 1; -- Alterac Valley (Patch 1.5)
UPDATE `battleground_template` SET `MinLvl` = 61, `MaxLvl` = 61 WHERE `id` = 3; -- Arathi Basin (Patch 1.7)

-- * FORBIDDEN EVENTS 

REPLACE INTO forbidden_events SELECT entry FROM game_event WHERE entry IN (
4,    -- Darkmoon Faire (Elwynn)
5,    -- Darkmoon Faire (Mulgore)
13,   -- Elemental Invasion
14,   -- Stranglethorn Fishing Extravaganza: Announce
16,   -- Pirate Chest of Gurubashi I
15,   -- Stranglethorn Fishing Extravaganza: Tournament
100,  -- Darkmoon Faire Building (Elwynn) (TODO)
35,   -- The Maul: Mushgog
36,   -- The Maul: Skarr the Unbreakable
37,   -- The Maul: Razza
38,   -- Pirate Chest of Gurubashi II
39,   -- Arene Gurubashi Short John Mithril
40,   -- Stranglethorn Fishing Extravaganza: The Crew
42,   -- The Maul, Grininlix /yell Mushgog
43,   -- The Maul, Grininlix /yell Skarr the Unbreakable
44,   -- The Maul, Grininlix /yell The Razza
54,   -- AQ War Troop Silithus (GO & PNJ) DAY 1
18,   -- Call to arms: Alterac Valley
101,   -- Darkmoon Faire Building (Mulgore) (TODO)
160,   -- 1.10 Patch : t0.5 Quest Chain
159,   -- DM Release : Cloth turning NPC
158,   -- 1.10 Patch : Recipes
156,   -- DM release : Recipes and misc item
155,   -- Argent dawn @ 1.11
66,    -- Dragons of Nightmare Spawn
161,   -- Patch 1.3
162,   -- Patch 1.4 | 1.5
163,   -- Patch 1.6
164,   -- Patch 1.7
165,   -- Patch 1.8
166,   -- Patch 1.9
167,   -- Patch 1.10
168    -- Patch 1.11
);

-- * FORBIDDEN ITEMS 

REPLACE INTO forbidden_items SELECT entry FROM item_template WHERE entry IN (
1215,    -- Support Girdle
6833,    -- White Tuxedo Shirt
12422,   -- Imperial Plate Chest
12424,   -- Imperial Plate Belt
12425,   -- Imperial Plate Bracers
12426,   -- Imperial Plate Boots
12427,   -- Imperial Plate Helm
12428,   -- Imperial Plate Shoulders
12429,   -- Imperial Plate Leggings
12471,   -- Desertwalker Cane
12584,   -- Grand Marshal's Longsword
12618,   -- Enchanted Thorium Breastplate
12619,   -- Enchanted Thorium Leggings
12620,   -- Enchanted Thorium Helm
12625,   -- Dawnbringer Shoulders
12947,   -- Alex's Ring of Audacity
13075,   -- Direwing Legguards
13262,   -- Ashbringer
14539,   -- Bone Ring Helm
15196,   -- Private's Tabard
15198,   -- Knight's Colors
15199,   -- Stone Guard's Herald
15405,   -- Shucking Gloves
15410,   -- Scale of Onyxia
16165,   -- Test Arcane Res Legs Mail
16335,   -- Senior Sergeant's Insignia
16345,   -- High Warlord's Blade
16369,   -- Knight-Lieutenant's Silk Boots
16391,   -- Knight-Lieutenant's Silk Gloves
16392,   -- Knight-Lieutenant's Leather Boots
16393,   -- Knight-Lieutenant's Dragonhide Footwraps
16396,   -- Knight-Lieutenant's Leather Gauntlets
16397,   -- Knight-Lieutenant's Dragonhide Gloves
16401,   -- Knight-Lieutenant's Chain Boots
16403,   -- Knight-Lieutenant's Chain Gauntlets
16405,   -- Knight-Lieutenant's Plate Boots
16406,   -- Knight-Lieutenant's Plate Gauntlets
16409,   -- Knight-Lieutenant's Lamellar Sabatons
16410,   -- Knight-Lieutenant's Lamellar Gauntlets
16413,   -- Knight-Captain's Silk Raiment
16414,   -- Knight-Captain's Silk Leggings
16415,   -- Lieutenant Commander's Silk Spaulders
16416,   -- Lieutenant Commander's Crown
16417,   -- Knight-Captain's Leather Armor
16418,   -- Lieutenant Commander's Leather Veil
16419,   -- Knight-Captain's Leather Legguards
16420,   -- Lieutenant Commander's Leather Spaulders
16421,   -- Knight-Captain's Dragonhide Tunic
16422,   -- Knight-Captain's Dragonhide Leggings
16423,   -- Lieutenant Commander's Dragonhide Epaulets
16424,   -- Lieutenant Commander's Dragonhide Shroud
16425,   -- Knight-Captain's Chain Hauberk
16426,   -- Knight-Captain's Chain Leggings
16427,   -- Lieutenant Commander's Chain Pauldrons
16428,   -- Lieutenant Commander's Chain Helmet
16429,   -- Lieutenant Commander's Plate Helm
16430,   -- Knight-Captain's Plate Chestguard
16431,   -- Knight-Captain's Plate Leggings
16432,   -- Lieutenant Commander's Plate Pauldrons
16433,   -- Knight-Captain's Lamellar Breastplate
16434,   -- Lieutenant Commander's Lamellar Headguard
16435,   -- Knight-Captain's Lamellar Leggings
16436,   -- Lieutenant Commander's Lamellar Shoulders
16437,   -- Marshal's Silk Footwraps
16440,   -- Marshal's Silk Gloves
16441,   -- Field Marshal's Coronet
16442,   -- Marshal's Silk Leggings
16443,   -- Field Marshal's Silk Vestments
16444,   -- Field Marshal's Silk Spaulders
16446,   -- Marshal's Leather Footguards
16448,   -- Marshal's Dragonhide Gauntlets
16449,   -- Field Marshal's Dragonhide Spaulders
16450,   -- Marshal's Dragonhide Legguards
16451,   -- Field Marshal's Dragonhide Helmet
16452,   -- Field Marshal's Dragonhide Breastplate
16453,   -- Field Marshal's Leather Chestpiece
16454,   -- Marshal's Leather Handgrips
16455,   -- Field Marshal's Leather Mask
16456,   -- Marshal's Leather Leggings
16457,   -- Field Marshal's Leather Epaulets
16459,   -- Marshal's Dragonhide Boots
16462,   -- Marshal's Chain Boots
16463,   -- Marshal's Chain Grips
16465,   -- Field Marshal's Chain Helm
16466,   -- Field Marshal's Chain Breastplate
16467,   -- Marshal's Chain Legguards
16468,   -- Field Marshal's Chain Spaulders
16471,   -- Marshal's Lamellar Gloves
16472,   -- Marshal's Lamellar Boots
16473,   -- Field Marshal's Lamellar Chestplate
16474,   -- Field Marshal's Lamellar Faceguard
16475,   -- Marshal's Lamellar Legplates
16476,   -- Field Marshal's Lamellar Pauldrons
16477,   -- Field Marshal's Plate Armor
16478,   -- Field Marshal's Plate Helm
16479,   -- Marshal's Plate Legguards
16480,   -- Field Marshal's Plate Shoulderguards
16483,   -- Marshal's Plate Boots
16484,   -- Marshal's Plate Gauntlets
16485,   -- Blood Guard's Silk Footwraps
16487,   -- Blood Guard's Silk Gloves
16489,   -- Champion's Silk Hood
16490,   -- Legionnaire's Silk Pants
16491,   -- Legionnaire's Silk Robes
16492,   -- Champion's Silk Shoulderpads
16494,   -- Blood Guard's Dragonhide Boots
16496,   -- Blood Guard's Dragonhide Gauntlets
16498,   -- Blood Guard's Leather Treads
16499,   -- Blood Guard's Leather Vices
16501,   -- Champion's Dragonhide Spaulders
16502,   -- Legionnaire's Dragonhide Trousers
16503,   -- Champion's Dragonhide Helm
16504,   -- Legionnaire's Dragonhide Breastplate
16505,   -- Legionnaire's Leather Hauberk
16506,   -- Champion's Leather Headguard
16507,   -- Champion's Leather Mantle
16508,   -- Legionnaire's Leather Leggings
16509,   -- Blood Guard's Plate Boots
16510,   -- Blood Guard's Plate Gloves
16513,   -- Legionnaire's Plate Armor
16514,   -- Champion's Plate Headguard
16515,   -- Legionnaire's Plate Legguards
16516,   -- Champion's Plate Pauldrons
16518,   -- Blood Guard's Mail Walkers
16519,   -- Blood Guard's Mail Grips
16521,   -- Champion's Mail Helm
16522,   -- Legionnaire's Mail Chestpiece
16523,   -- Legionnaire's Mail Leggings
16524,   -- Champion's Mail Shoulders
16525,   -- Legionnaire's Chain Breastplate
16526,   -- Champion's Chain Headguard
16527,   -- Legionnaire's Chain Leggings
16528,   -- Champion's Chain Pauldrons
16530,   -- Blood Guard's Chain Gauntlets
16531,   -- Blood Guard's Chain Boots
16533,   -- Warlord's Silk Cowl
16534,   -- General's Silk Trousers
16535,   -- Warlord's Silk Raiment
16536,   -- Warlord's Silk Amice
16539,   -- General's Silk Boots
16540,   -- General's Silk Handguards
16541,   -- Warlord's Plate Armor
16542,   -- Warlord's Plate Headpiece
16543,   -- General's Plate Leggings
16544,   -- Warlord's Plate Shoulders
16545,   -- General's Plate Boots
16548,   -- General's Plate Gauntlets
16549,   -- Warlord's Dragonhide Hauberk
16550,   -- Warlord's Dragonhide Helmet
16551,   -- Warlord's Dragonhide Epaulets
16552,   -- General's Dragonhide Leggings
16554,   -- General's Dragonhide Boots
16555,   -- General's Dragonhide Gloves
16558,   -- General's Leather Treads
16560,   -- General's Leather Mitts
16561,   -- Warlord's Leather Helm
16562,   -- Warlord's Leather Spaulders
16563,   -- Warlord's Leather Breastplate
16564,   -- General's Leather Legguards
16565,   -- Warlord's Chain Chestpiece
16566,   -- Warlord's Chain Helmet
16567,   -- General's Chain Legguards
16568,   -- Warlord's Chain Shoulders
16569,   -- General's Chain Boots
16571,   -- General's Chain Gloves
16573,   -- General's Mail Boots
16574,   -- General's Mail Gauntlets
16577,   -- Warlord's Mail Armor
16578,   -- Warlord's Mail Helm
16579,   -- General's Mail Leggings
16580,   -- Warlord's Mail Spaulders
17061,   -- Juno's Shadow
17063,   -- Band of Accuria
17067,   -- Ancient Cornerstone Grimoire
17076,   -- Bonereaver's Edge
17102,   -- Cloak of the Shrouded Mists
17104,   -- Spinal Reaper
17106,   -- Malistar's Defender
17107,   -- Dragon's Blood Cape
17111,   -- Blazefury Medallion
17182,   -- Sulfuras, Hand of Ragnaros
17193,   -- Sulfuron Hammer
17203,   -- Sulfuron Ingot
17204,   -- Eye of Sulfuras
17562,   -- Knight-Lieutenant's Dreadweave Boots
17564,   -- Knight-Lieutenant's Dreadweave Gloves
17566,   -- Lieutenant Commander's Headguard
17567,   -- Knight-Captain's Dreadweave Leggings
17568,   -- Knight-Captain's Dreadweave Robe
17569,   -- Lieutenant Commander's Dreadweave Mantle
17570,   -- Champion's Dreadweave Hood
17571,   -- Legionnaire's Dreadweave Leggings
17572,   -- Legionnaire's Dreadweave Robe
17573,   -- Champion's Dreadweave Shoulders
17576,   -- Blood Guard's Dreadweave Boots
17577,   -- Blood Guard's Dreadweave Gloves
17578,   -- Field Marshal's Coronal
17579,   -- Marshal's Dreadweave Leggings
17580,   -- Field Marshal's Dreadweave Shoulders
17581,   -- Field Marshal's Dreadweave Robe
17583,   -- Marshal's Dreadweave Boots
17584,   -- Marshal's Dreadweave Gloves
17586,   -- General's Dreadweave Boots
17588,   -- General's Dreadweave Gloves
17590,   -- Warlord's Dreadweave Mantle
17591,   -- Warlord's Dreadweave Hood
17592,   -- Warlord's Dreadweave Robe
17593,   -- General's Dreadweave Pants
17594,   -- Knight-Lieutenant's Satin Boots
17596,   -- Knight-Lieutenant's Satin Gloves
17598,   -- Lieutenant Commander's Diadem
17599,   -- Knight-Captain's Satin Leggings
17600,   -- Knight-Captain's Satin Robes
17601,   -- Lieutenant Commander's Satin Amice
17602,   -- Field Marshal's Headdress
17603,   -- Marshal's Satin Pants
17604,   -- Field Marshal's Satin Mantle
17605,   -- Field Marshal's Satin Vestments
17607,   -- Marshal's Satin Sandals
17608,   -- Marshal's Satin Gloves
17610,   -- Champion's Satin Cowl
17611,   -- Legionnaire's Satin Trousers
17612,   -- Legionnaire's Satin Vestments
17613,   -- Champion's Satin Shoulderpads
17616,   -- Blood Guard's Satin Boots
17617,   -- Blood Guard's Satin Gloves
17618,   -- General's Satin Boots
17620,   -- General's Satin Gloves
17622,   -- Warlord's Satin Mantle
17623,   -- Warlord's Satin Cowl
17624,   -- Warlord's Satin Robes
17625,   -- General's Satin Leggings
17690,   -- Frostwolf Insignia Rank 1
17691,   -- Stormpike Insignia Rank 1
17900,   -- Stormpike Insignia Rank 2
17901,   -- Stormpike Insignia Rank 3
17902,   -- Stormpike Insignia Rank 4
17903,   -- Stormpike Insignia Rank 5
17904,   -- Stormpike Insignia Rank 6
17905,   -- Frostwolf Insignia Rank 2
17906,   -- Frostwolf Insignia Rank 3
17907,   -- Frostwolf Insignia Rank 4
17908,   -- Frostwolf Insignia Rank 5
17909,   -- Frostwolf Insignia Rank 6
18022,   -- Royal Seal of Alexis
18083,   -- Jumanza Grips
18103,   -- Band of Rumination
18104,   -- Feralsurge Girdle
18168,   -- Force Reactive Disk
18202,   -- Eskhandar's Left Claw
18203,   -- Eskhandar's Right Claw
18204,   -- Eskhandar's Pelt
18205,   -- Eskhandar's Collar
18252,   -- Pattern: Core Armor Kit
18257,   -- Recipe: Major Rejuvenation Potion
18259,   -- Formula: Enchant Weapon - Spell Power
18260,   -- Formula: Enchant Weapon - Healing Power
18263,   -- Flarecore Wraps
18264,   -- Plans: Elemental Sharpening Stone
18265,   -- Pattern: Flarecore Wraps
18290,   -- Schematic: Biznicks 247x128 Accurascope
18291,   -- Schematic: Force Reactive Disk
18292,   -- Schematic: Core Marksman Rifle
18302,   -- Band of Vigor
18305,   -- Breakwater Legguards
18306,   -- Gloves of Shadowy Mist
18309,   -- Gloves of Restoration
18313,   -- Helm of Awareness
18315,   -- Ring of Demonic Potency
18323,   -- Satyr's Bow
18325,   -- Felhide Cap
18326,   -- Razor Gauntlets
18327,   -- Whipvine Cord
18337,   -- Orphic Bracers
18339,   -- Eidolon Cloak
18340,   -- Eidolon Talisman
18343,   -- Petrified Band
18349,   -- Gauntlets of Accuracy
18350,   -- Amplifying Cloak
18352,   -- Petrified Bark Shield
18368,   -- Gordok's Gloves
18369,   -- Gordok's Handwraps
18371,   -- Mindtap Talisman
18373,   -- Chestplate of Tranquility
18374,   -- Flamescarred Shoulders
18377,   -- Quickdraw Gloves
18378,   -- Silvermoon Leggings
18380,   -- Eldritch Reinforced Legplates
18381,   -- Evil Eye Pendant
18383,   -- Force Imbued Gauntlets
18384,   -- Bile-etched Spaulders
18386,   -- Padre's Trousers
18387,   -- Brightspark Gloves
18388,   -- Stoneshatter
18393,   -- Warpwood Binding
18395,   -- Emerald Flame Ring
18420,   -- Bonecrusher
18421,   -- Backwood Helm
18425,   -- Kreeg's Mug
18427,   -- Sergeant's Cloak
18428,   -- Senior Sergeant's Insignia
18430,   -- First Sergeant's Plate Bracers
18432,   -- First Sergeant's Mail Wristguards
18436,   -- First Sergeant's Dragonhide Armguards
18437,   -- First Sergeant's Silk Cuffs
18448,   -- Sergeant Major's Chain Armguards
18450,   -- Robe of Combustion
18451,   -- Hyena Hide Belt
18452,   -- Sergeant Major's Leather Armsplints
18454,   -- Sergeant Major's Dragonhide Armsplints
18464,   -- Gordok Nose Ring
18466,   -- Royal Seal of Eldre'Thalas
18468,   -- Royal Seal of Eldre'Thalas
18470,   -- Royal Seal of Eldre'Thalas
18472,   -- Royal Seal of Eldre'Thalas
18475,   -- Oddly Magical Belt
18480,   -- Scarab Plate Helm
18485,   -- Observer's Shield
18490,   -- Insightful Hood
18493,   -- Bulky Iron Spaulders
18494,   -- Denwatcher's Shoulders
18505,   -- Mugger's Belt
18510,   -- Hide of the Wild
18518,   -- Pattern: Hide of the Wild
18522,   -- Band of the Ogre King
18524,   -- Leggings of Destruction
18528,   -- Cyclone Spaulders
18535,   -- Milli's Shield
18536,   -- Milli's Lexicon
18537,   -- Counterattack Lodestone
18543,   -- Ring of Entropy
18544,   -- Doomhide Gauntlets
18545,   -- Leggings of Arcane Supremacy
18563,   -- Bindings of the Windseeker
18564,   -- Bindings of the Windseeker
18582,   -- The Twin Blades of Azzinoth
18583,   -- Warglaive of Azzinoth (Right)
18584,   -- Warglaive of Azzinoth (Left)
18592,   -- Plans: Sulfuron Hammer
18602,   -- Tome of Sacrifice
18608,   -- Benediction
18609,   -- Anathema
18610,   -- Keen Machete
18611,   -- Gnarlpine Leggings
18612,   -- Bloody Chain Boots
18634,   -- Gyrofreeze Ice Reflector
18637,   -- Major Recombobulator
18638,   -- Hyper-Radiant Flame Reflector
18639,   -- Ultra-Flash Shadow Reflector
18646,   -- The Eye of Divinity
18652,   -- Schematic: Gyrofreeze Ice Reflector
18655,   -- Schematic: Major Recombobulator
18657,   -- Schematic: Hyper-Radiant Flame Reflector
18658,   -- Schematic: Ultra-Flash Shadow Reflector
18665,   -- The Eye of Shadow
18671,   -- Baron Charr's Sceptre
18672,   -- Elemental Ember
18673,   -- Avalanchion's Stony Hide
18674,   -- Hardened Stone Band
18676,   -- Sash of the Windreaver
18677,   -- Zephyr Cloak
18678,   -- Tempestria's Frozen Necklace
18679,   -- Frigid Ring
18680,   -- Ancient Bone Bow
18681,   -- Burial Shawl
18682,   -- Ghoul Skin Leggings
18683,   -- Hammer of the Vesper
18686,   -- Bone Golem Shoulders
18689,   -- Phantasmal Cloak
18690,   -- Wraithplate Leggings
18691,   -- Dark Advisor's Pendant
18692,   -- Death Knight Sabatons
18693,   -- Shivery Handwraps
18694,   -- Shadowy Mail Greaves
18695,   -- Spellbound Tome
18696,   -- Intricately Runed Shield
18697,   -- Coldstone Slippers
18698,   -- Tattered Leather Hood
18699,   -- Icy Tomb Spaulders
18700,   -- Malefic Bracers
18701,   -- Innervating Band
18702,   -- Belt of the Ordained
18703,   -- Ancient Petrified Leaf
18704,   -- Mature Blue Dragon Sinew
18705,   -- Mature Black Dragon Sinew
18709,   -- Arena Wristguards
18710,   -- Arena Bracers
18711,   -- Arena Bands
18712,   -- Arena Vambraces
18713,   -- Rhok'delar, Longbow of the Ancient Keepers
18715,   -- Lok'delar, Stave of the Ancient Keepers
18716,   -- Ash Covered Boots
18717,   -- Hammer of the Grand Crusader
18718,   -- Grand Crusader's Helm
18720,   -- Shroud of the Nathrezim
18721,   -- Barrage Girdle
18722,   -- Death Grips
18723,   -- Animated Chain Necklace
18725,   -- Peacemaker
18726,   -- Magistrate's Cuffs
18727,   -- Crimson Felt Hat
18728,   -- Anastari Heirloom
18729,   -- Screeching Bow
18730,   -- Shadowy Laced Handwraps
18734,   -- Pale Moon Cloak
18735,   -- Maleki's Footwraps
18736,   -- Plaguehound Leggings
18737,   -- Bone Slicing Hatchet
18738,   -- Carapace Spine Crossbow
18739,   -- Chitinous Plate Legguards
18740,   -- Thuzadin Sash
18741,   -- Morlune's Bracer
18742,   -- Stratholme Militia Shoulderguard
18743,   -- Gracious Cape
18744,   -- Plaguebat Fur Gloves
18745,   -- Sacred Cloth Leggings
18754,   -- Fel Hardened Bracers
18755,   -- Xorothian Firestick
18756,   -- Dreadguard's Protector
18757,   -- Diabolic Mantle
18758,   -- Specter's Blade
18759,   -- Malicious Axe
18760,   -- Necromantic Band
18761,   -- Oblivion's Touch
18762,   -- Shard of the Green Flame
18766,   -- Reins of the Swift Frostsaber
18767,   -- Reins of the Swift Mistsaber
18772,   -- Swift Green Mechanostrider
18773,   -- Swift White Mechanostrider
18774,   -- Swift Yellow Mechanostrider
18776,   -- Swift Palomino
18777,   -- Swift Brown Steed
18778,   -- Swift White Steed
18785,   -- Swift White Ram
18786,   -- Swift Brown Ram
18787,   -- Swift Gray Ram
18788,   -- Swift Blue Raptor
18789,   -- Swift Olive Raptor
18790,   -- Swift Orange Raptor
18791,   -- Purple Skeletal Warhorse
18793,   -- Great White Kodo
18794,   -- Great Brown Kodo
18795,   -- Great Gray Kodo
18796,   -- Horn of the Swift Brown Wolf
18797,   -- Horn of the Swift Timber Wolf
18798,   -- Horn of the Swift Gray Wolf
18902,   -- Reins of the Swift Stormsaber
19029,   -- Horn of the Frostwolf Howler
18803,   -- Finkle's Lava Dredger
18805,   -- Core Hound Tooth
18806,   -- Core Forged Greaves
18807,   -- Helm of Latent Power
18808,   -- Gloves of the Hypnotic Flame
18809,   -- Sash of Whispered Secrets
18810,   -- Wild Growth Spaulders
18811,   -- Fireproof Cloak
18812,   -- Wristguards of True Flight
18813,   -- Ring of Binding
18814,   -- Choker of the Fire Lord
18815,   -- Essence of the Pure Flame
18816,   -- Perdition's Blade
18817,   -- Crown of Destruction
18820,   -- Talisman of Ephemeral Power
18821,   -- Quick Strike Ring
18822,   -- Obsidian Edged Blade
18823,   -- Aged Core Leather Gloves
18824,   -- Magma Tempered Boots
18825,   -- Grand Marshal's Aegis
18826,   -- High Warlord's Shield Wall
18827,   -- Grand Marshal's Handaxe
18828,   -- High Warlord's Cleaver
18829,   -- Deep Earth Spaulders
18830,   -- Grand Marshal's Sunderer
18831,   -- High Warlord's Battle Axe
18832,   -- Brutality Blade
18833,   -- Grand Marshal's Bullseye
18834,   -- Insignia of the Horde
18835,   -- High Warlord's Recurve
18836,   -- Grand Marshal's Repeater
18837,   -- High Warlord's Crossbow
18838,   -- Grand Marshal's Dirk
18840,   -- High Warlord's Razor
18842,   -- Staff of Dominance
18843,   -- Grand Marshal's Right Hand Blade
18844,   -- High Warlord's Right Claw
18845,   -- Insignia of the Horde
18846,   -- Insignia of the Horde
18847,   -- Grand Marshal's Left Hand Blade
18848,   -- High Warlord's Left Claw
18849,   -- Insignia of the Horde
18850,   -- Insignia of the Horde
18851,   -- Insignia of the Horde
18852,   -- Insignia of the Horde
18853,   -- Insignia of the Horde
18854,   -- Insignia of the Alliance
18855,   -- Grand Marshal's Hand Cannon
18856,   -- Insignia of the Alliance
18857,   -- Insignia of the Alliance
18858,   -- Insignia of the Alliance
18859,   -- Insignia of the Alliance
18860,   -- High Warlord's Street Sweeper
18861,   -- Flamewaker Legplates
18862,   -- Insignia of the Alliance
18863,   -- Insignia of the Alliance
18864,   -- Insignia of the Alliance
18865,   -- Grand Marshal's Punisher
18866,   -- High Warlord's Bludgeon
18867,   -- Grand Marshal's Battle Hammer
18868,   -- High Warlord's Pulverizer
18869,   -- Grand Marshal's Glaive
18870,   -- Helm of the Lifegiver
18871,   -- High Warlord's Pig Sticker
18872,   -- Manastorm Leggings
18873,   -- Grand Marshal's Stave
18874,   -- High Warlord's War Staff
18875,   -- Salamander Scale Pants
18876,   -- Grand Marshal's Claymore
18877,   -- High Warlord's Greatsword
18878,   -- Sorcerous Dagger
18879,   -- Heavy Dark Iron Ring
18945,   -- Dark Iron Residue
18948,   -- Barbaric Bracers
18949,   -- Pattern: Barbaric Bracers
18957,   -- Brushwood Blade
18970,   -- Ring of Critical Testing 2
18984,   -- Dimensional Ripper - Everlook
18986,   -- Ultrasafe Transporter: Gadgetzan
19019,   -- Thunderfury, Blessed Blade of the Windseeker
19022,   -- Nat Pagle's Extreme Angler FC-5000
19024,   -- Arena Grand Master
19028,   -- Elegant Dress
19031,   -- Frostwolf Battle Tabard
19032,   -- Stormpike Battle Tabard
19037,   -- Emerald Peak Spaulders
19038,   -- Ring of Subtlety
19039,   -- Zorbin's Water Resistant Hat
19040,   -- Zorbin's Mega-Slicer
19041,   -- Pratt's Handcrafted Tunic
19042,   -- Jangdor's Handcrafted Tunic
19043,   -- Heavy Timbermaw Belt
19044,   -- Might of the Timbermaw
19047,   -- Wisdom of the Timbermaw
19048,   -- Heavy Timbermaw Boots
19049,   -- Timbermaw Brawlers
19050,   -- Mantle of the Timbermaw
19051,   -- Girdle of the Dawn
19052,   -- Dawn Treaders
19056,   -- Argent Boots
19057,   -- Gloves of the Dawn
19058,   -- Golden Mantle of the Dawn
19059,   -- Argent Shoulders
19083,   -- Frostwolf Legionnaire's Cloak
19084,   -- Stormpike Soldier's Cloak
19085,   -- Frostwolf Advisor's Cloak
19086,   -- Stormpike Sage's Cloak
19087,   -- Frostwolf Plate Belt
19088,   -- Frostwolf Mail Belt
19089,   -- Frostwolf Leather Belt
19090,   -- Frostwolf Cloth Belt
19091,   -- Stormpike Plate Girdle
19092,   -- Stormpike Mail Girdle
19093,   -- Stormpike Leather Girdle
19094,   -- Stormpike Cloth Girdle
19095,   -- Frostwolf Legionnaire's Pendant
19096,   -- Frostwolf Advisor's Pendant
19097,   -- Stormpike Soldier's Pendant
19098,   -- Stormpike Sage's Pendant
19099,   -- Glacial Blade
19100,   -- Electrified Dagger
19101,   -- Whiteout Staff
19102,   -- Crackling Staff
19103,   -- Frostbite
19104,   -- Stormstrike Hammer
19105,   -- Frost Runed Headdress
19106,   -- Ice Barbed Spear
19107,   -- Bloodseeker
19108,   -- Wand of Biting Cold
19109,   -- Deep Rooted Ring
19110,   -- Cold Forged Blade
19111,   -- Winteraxe Epaulets
19112,   -- Frozen Steel Vambraces
19113,   -- Yeti Hide Bracers
19114,   -- Highland Bow
19115,   -- Flask of Forest Mojo
19116,   -- Greenleaf Handwraps
19117,   -- Laquered Wooden Plate Legplates
19118,   -- Nature's Breath
19119,   -- Owlbeast Hide Gloves
19120,   -- Rune of the Guard Captain
19121,   -- Deep Woodlands Cloak
19123,   -- Everwarm Handwraps
19124,   -- Slagplate Leggings
19125,   -- Seared Mail Girdle
19126,   -- Slagplate Gauntlets
19127,   -- Charred Leather Tunic
19128,   -- Seared Mail Vest
19130,   -- Cold Snap
19131,   -- Snowblind Shoes
19132,   -- Crystal Adorned Crown
19133,   -- Fel Infused Leggings
19134,   -- Flayed Doomguard Belt
19135,   -- Blacklight Bracer
19136,   -- Mana Igniting Cord
19137,   -- Onslaught Girdle
19138,   -- Band of Sulfuras
19139,   -- Fireguard Shoulders
19140,   -- Cauterizing Band
19141,   -- Luffa
19142,   -- Fire Runed Grimoire
19143,   -- Flameguard Gauntlets
19144,   -- Sabatons of the Flamewalker
19145,   -- Robe of Volatile Power
19146,   -- Wristguards of Stability
19147,   -- Ring of Spell Power
19148,   -- Dark Iron Helm
19149,   -- Lava Belt
19156,   -- Flarecore Robe
19157,   -- Chromatic Gauntlets
19159,   -- Woven Ivy Necklace
19160,   -- Contest Winner's Tabard
19162,   -- Corehound Belt
19163,   -- Molten Belt
19164,   -- Dark Iron Gauntlets
19165,   -- Flarecore Leggings
19166,   -- Black Amnesty
19167,   -- Blackfury
19168,   -- Blackguard
19169,   -- Nightfall
19170,   -- Ebon Hand
19202,   -- Plans: Heavy Timbermaw Belt
19203,   -- Plans: Girdle of the Dawn
19204,   -- Plans: Heavy Timbermaw Boots
19205,   -- Plans: Gloves of the Dawn
19206,   -- Plans: Dark Iron Helm
19207,   -- Plans: Dark Iron Gauntlets
19208,   -- Plans: Black Amnesty
19209,   -- Plans: Blackfury
19210,   -- Plans: Ebon Hand
19211,   -- Plans: Blackguard
19212,   -- Plans: Nightfall
19215,   -- Pattern: Wisdom of the Timbermaw
19216,   -- Pattern: Argent Boots
19217,   -- Pattern: Argent Shoulders
19218,   -- Pattern: Mantle of the Timbermaw
19219,   -- Pattern: Flarecore Robe
19220,   -- Pattern: Flarecore Leggings
19287,   -- Darkmoon Card: Heroism
19288,   -- Darkmoon Card: Blue Dragon
19289,   -- Darkmoon Card: Maelstrom
19290,   -- Darkmoon Card: Twisting Nether
19292,   -- Last Month's Mutton
19293,   -- Last Year's Mutton
19295,   -- Darkmoon Flower
19302,   -- Darkmoon Ring
19303,   -- Darkmoon Necklace
19308,   -- Tome of Arcane Domination
19309,   -- Tome of Shadow Force
19310,   -- Tome of the Ice Lord
19311,   -- Tome of Fiery Arcana
19312,   -- Lei of the Lifegiver
19315,   -- Therazane's Touch
19321,   -- The Immovable Object
19323,   -- The Unstoppable Force
19324,   -- The Lobotomizer
19325,   -- Don Julio's Band
19326,   -- Pattern: Might of the Timbermaw
19327,   -- Pattern: Timbermaw Brawlers
19328,   -- Pattern: Dawn Treaders
19329,   -- Pattern: Golden Mantle of the Dawn
19330,   -- Pattern: Lava Belt
19331,   -- Pattern: Chromatic Gauntlets
19332,   -- Pattern: Corehound Belt
19333,   -- Pattern: Molten Belt
19334,   -- The Untamed Blade
19335,   -- Spineshatter
19336,   -- Arcane Infused Gem
19337,   -- The Black Book
19339,   -- Mind Quickening Gem
19340,   -- Rune of Metamorphosis
19341,   -- Lifegiving Gem
19342,   -- Venomous Totem
19343,   -- Scrolls of Blinding Light
19344,   -- Natural Alignment Crystal
19345,   -- Aegis of Preservation
19346,   -- Dragonfang Blade
19347,   -- Claw of Chromaggus
19348,   -- Red Dragonscale Protector
19349,   -- Elementium Reinforced Bulwark
19350,   -- Heartstriker
19351,   -- Maladath, Runed Blade of the Black Flight
19352,   -- Chromatically Tempered Sword
19353,   -- Drake Talon Cleaver
19354,   -- Draconic Avenger
19355,   -- Shadow Wing Focus Staff
19356,   -- Staff of the Shadow Flame
19357,   -- Herald of Woe
19358,   -- Draconic Maul
19360,   -- Lok'amir il Romathis
19361,   -- Ashjre'thul, Crossbow of Smiting
19362,   -- Doom's Edge
19363,   -- Crul'shorukh, Edge of Chaos
19364,   -- Ashkandi, Greatsword of the Brotherhood
19365,   -- Claw of the Black Drake
19366,   -- Master Dragonslayer's Orb
19367,   -- Dragon's Touch
19368,   -- Dragonbreath Hand Cannon
19369,   -- Gloves of Rapid Evolution
19370,   -- Mantle of the Blackwing Cabal
19371,   -- Pendant of the Fallen Dragon
19372,   -- Helm of Endless Rage
19373,   -- Black Brood Pauldrons
19374,   -- Bracers of Arcane Accuracy
19375,   -- Mish'undare, Circlet of the Mind Flayer
19376,   -- Archimtiros' Ring of Reckoning
19377,   -- Prestor's Talisman of Connivery
19378,   -- Cloak of the Brood Lord
19379,   -- Neltharion's Tear
19380,   -- Therazane's Link
19381,   -- Boots of the Shadow Flame
19382,   -- Pure Elementium Band
19383,   -- Master Dragonslayer's Medallion
19384,   -- Master Dragonslayer's Ring
19385,   -- Empowered Leggings
19386,   -- Elementium Threaded Cloak
19387,   -- Chromatic Boots
19388,   -- Angelista's Grasp
19389,   -- Taut Dragonhide Shoulderpads
19390,   -- Taut Dragonhide Gloves
19391,   -- Shimmering Geta
19392,   -- Girdle of the Fallen Crusader
19393,   -- Primalist's Linked Waistguard
19394,   -- Drake Talon Pauldrons
19395,   -- Rejuvenating Gem
19396,   -- Taut Dragonhide Belt
19397,   -- Ring of Blackrock
19398,   -- Cloak of Firemaw
19399,   -- Black Ash Robe
19400,   -- Firemaw's Clutch
19401,   -- Primalist's Linked Legguards
19402,   -- Legguards of the Fallen Crusader
19403,   -- Band of Forced Concentration
19405,   -- Malfurion's Blessed Bulwark
19406,   -- Drake Fang Talisman
19407,   -- Ebony Flame Gloves
19426,   -- Orb of the Darkmoon
19430,   -- Shroud of Pure Thought
19431,   -- Styleen's Impeding Scarab
19432,   -- Circle of Applied Force
19433,   -- Emberweave Leggings
19434,   -- Band of Dark Dominion
19435,   -- Essence Gatherer
19436,   -- Cloak of Draconic Might
19437,   -- Boots of Pure Thought
19438,   -- Ringo's Blizzard Boots
19439,   -- Interlaced Shadow Jerkin
19442,   -- Formula: Powerful Anti-Venom
19444,   -- Formula: Enchant Weapon - Strength
19445,   -- Formula: Enchant Weapon - Agility
19446,   -- Formula: Enchant Bracer - Mana Regeneration
19447,   -- Formula: Enchant Bracer - Healing
19448,   -- Formula: Enchant Weapon - Mighty Spirit
19449,   -- Formula: Enchant Weapon - Mighty Intellect
19491,   -- Amulet of the Darkmoon
19505,   -- Warsong Battle Tabard
19506,   -- Silverwing Battle Tabard
19507,   -- Inquisitor's Shawl
19508,   -- Branded Leather Bracers
19509,   -- Dusty Mail Boots
19510,   -- Legionnaire's Band
19511,   -- Legionnaire's Band
19512,   -- Legionnaire's Band
19513,   -- Legionnaire's Band
19514,   -- Protector's Band
19515,   -- Protector's Band
19516,   -- Protector's Band
19517,   -- Protector's Band
19518,   -- Advisor's Ring
19519,   -- Advisor's Ring
19520,   -- Advisor's Ring
19521,   -- Advisor's Ring
19522,   -- Lorekeeper's Ring
19523,   -- Lorekeeper's Ring
19524,   -- Lorekeeper's Ring
19525,   -- Lorekeeper's Ring
19526,   -- Battle Healer's Cloak
19527,   -- Battle Healer's Cloak
19528,   -- Battle Healer's Cloak
19529,   -- Battle Healer's Cloak
19530,   -- Caretaker's Cape
19531,   -- Caretaker's Cape
19532,   -- Caretaker's Cape
19533,   -- Caretaker's Cape
19534,   -- Scout's Medallion
19535,   -- Scout's Medallion
19536,   -- Scout's Medallion
19537,   -- Scout's Medallion
19538,   -- Sentinel's Medallion
19539,   -- Sentinel's Medallion
19540,   -- Sentinel's Medallion
19541,   -- Sentinel's Medallion
19542,   -- Scout's Blade
19543,   -- Scout's Blade
19544,   -- Scout's Blade
19545,   -- Scout's Blade
19546,   -- Sentinel's Blade
19547,   -- Sentinel's Blade
19548,   -- Sentinel's Blade
19549,   -- Sentinel's Blade
19550,   -- Legionnaire's Sword
19551,   -- Legionnaire's Sword
19552,   -- Legionnaire's Sword
19553,   -- Legionnaire's Sword
19554,   -- Protector's Sword
19555,   -- Protector's Sword
19556,   -- Protector's Sword
19557,   -- Protector's Sword
19558,   -- Outrider's Bow
19559,   -- Outrider's Bow
19560,   -- Outrider's Bow
19561,   -- Outrider's Bow
19562,   -- Outrunner's Bow
19563,   -- Outrunner's Bow
19564,   -- Outrunner's Bow
19565,   -- Outrunner's Bow
19566,   -- Advisor's Gnarled Staff
19567,   -- Advisor's Gnarled Staff
19568,   -- Advisor's Gnarled Staff
19569,   -- Advisor's Gnarled Staff
19570,   -- Lorekeeper's Staff
19571,   -- Lorekeeper's Staff
19572,   -- Lorekeeper's Staff
19573,   -- Lorekeeper's Staff
19574,   -- Strength of Mugamba
19575,   -- Strength of Mugamba
19576,   -- Strength of Mugamba
19577,   -- Rage of Mugamba
19578,   -- Berserker Bracers
19579,   -- Heathen's Brand
19580,   -- Berserker Bracers
19581,   -- Berserker Bracers
19582,   -- Windtalker's Wristguards
19583,   -- Windtalker's Wristguards
19584,   -- Windtalker's Wristguards
19585,   -- Heathen's Brand
19586,   -- Heathen's Brand
19587,   -- Forest Stalker's Bracers
19588,   -- Hero's Brand
19589,   -- Forest Stalker's Bracers
19590,   -- Forest Stalker's Bracers
19591,   -- The Eye of Zuldazar
19592,   -- The Eye of Zuldazar
19593,   -- The Eye of Zuldazar
19594,   -- The All-Seeing Eye of Zuldazar
19595,   -- Dryad's Wrist Bindings
19596,   -- Dryad's Wrist Bindings
19597,   -- Dryad's Wrist Bindings
19598,   -- Pebble of Kajaro
19599,   -- Pebble of Kajaro
19600,   -- Pebble of Kajaro
19601,   -- Jewel of Kajaro
19602,   -- Kezan's Taint
19603,   -- Kezan's Taint
19604,   -- Kezan's Taint
19605,   -- Kezan's Unstoppable Taint
19606,   -- Vision of Voodress
19607,   -- Vision of Voodress
19608,   -- Vision of Voodress
19609,   -- Unmarred Vision of Voodress
19610,   -- Enchanted South Seas Kelp
19611,   -- Enchanted South Seas Kelp
19612,   -- Enchanted South Seas Kelp
19613,   -- Pristine Enchanted South Seas Kelp
19614,   -- Zandalarian Shadow Talisman
19615,   -- Zandalarian Shadow Talisman
19616,   -- Zandalarian Shadow Talisman
19617,   -- Zandalarian Shadow Mastery Talisman
19618,   -- Maelstrom's Tendril
19619,   -- Maelstrom's Tendril
19620,   -- Maelstrom's Tendril
19621,   -- Maelstrom's Wrath
19682,   -- Bloodvine Vest
19683,   -- Bloodvine Leggings
19684,   -- Bloodvine Boots
19685,   -- Primal Batskin Jerkin
19686,   -- Primal Batskin Gloves
19687,   -- Primal Batskin Bracers
19688,   -- Blood Tiger Breastplate
19689,   -- Blood Tiger Shoulders
19690,   -- Bloodsoul Breastplate
19691,   -- Bloodsoul Shoulders
19692,   -- Bloodsoul Gauntlets
19693,   -- Darksoul Breastplate
19694,   -- Darksoul Leggings
19695,   -- Darksoul Shoulders
19697,   -- Bounty of the Harvest
19760,   -- Overlord's Embrace
19764,   -- Pattern: Bloodvine Vest
19765,   -- Pattern: Bloodvine Leggings
19766,   -- Pattern: Bloodvine Boots
19769,   -- Pattern: Primal Batskin Jerkin
19770,   -- Pattern: Primal Batskin Gloves
19771,   -- Pattern: Primal Batskin Bracers
19772,   -- Pattern: Blood Tiger Breastplate
19773,   -- Pattern: Blood Tiger Shoulders
19776,   -- Plans: Bloodsoul Breastplate
19777,   -- Plans: Bloodsoul Shoulders
19778,   -- Plans: Bloodsoul Gauntlets
19779,   -- Plans: Darksoul Breastplate
19780,   -- Plans: Darksoul Leggings
19781,   -- Plans: Darksoul Shoulders
19808,   -- Rockhide Strongfish
19812,   -- Rune of the Dawn
19822,   -- Zandalar Vindicator's Breastplate
19823,   -- Zandalar Vindicator's Belt
19824,   -- Zandalar Vindicator's Armguards
19825,   -- Zandalar Freethinker's Breastplate
19826,   -- Zandalar Freethinker's Belt
19827,   -- Zandalar Freethinker's Armguards
19828,   -- Zandalar Augur's Hauberk
19829,   -- Zandalar Augur's Belt
19830,   -- Zandalar Augur's Bracers
19831,   -- Zandalar Predator's Mantle
19832,   -- Zandalar Predator's Belt
19833,   -- Zandalar Predator's Bracers
19834,   -- Zandalar Madcap's Tunic
19835,   -- Zandalar Madcap's Mantle
19836,   -- Zandalar Madcap's Bracers
19838,   -- Zandalar Haruspex's Tunic
19839,   -- Zandalar Haruspex's Belt
19840,   -- Zandalar Haruspex's Bracers
19841,   -- Zandalar Confessor's Mantle
19842,   -- Zandalar Confessor's Bindings
19843,   -- Zandalar Confessor's Wraps
19845,   -- Zandalar Illusionist's Mantle
19846,   -- Zandalar Illusionist's Wraps
19848,   -- Zandalar Demoniac's Wraps
19849,   -- Zandalar Demoniac's Mantle
19852,   -- Ancient Hakkari Manslayer
19853,   -- Gurubashi Dwarf Destroyer
19854,   -- Zin'rokh, Destroyer of Worlds
19855,   -- Bloodsoaked Legplates
19856,   -- The Eye of Hakkar
19857,   -- Cloak of Consumption
19859,   -- Fang of the Faceless
19861,   -- Touch of Chaos
19862,   -- Aegis of the Blood God
19863,   -- Primalist's Seal
19864,   -- Bloodcaller
19865,   -- Warblade of the Hakkari
19866,   -- Warblade of the Hakkari
19867,   -- Bloodlord's Defender
19869,   -- Blooddrenched Grips
19870,   -- Hakkari Loa Cloak
19871,   -- Talisman of Protection
19873,   -- Overlord's Crimson Band
19874,   -- Halberd of Smiting
19875,   -- Bloodstained Coif
19876,   -- Soul Corrupter's Necklace
19877,   -- Animist's Leggings
19878,   -- Bloodsoaked Pauldrons
19879,   -- Alex's Test Beatdown Staff
19884,   -- Jin'do's Judgement
19885,   -- Jin'do's Evil Eye
19886,   -- The Hexxer's Cover
19887,   -- Bloodstained Legplates
19888,   -- Overlord's Embrace
19889,   -- Blooddrenched Leggings
19890,   -- Jin'do's Hexxer
19891,   -- Jin'do's Bag of Whammies
19892,   -- Animist's Boots
19893,   -- Zanzil's Seal
19894,   -- Bloodsoaked Gauntlets
19895,   -- Bloodtinged Kilt
19896,   -- Thekal's Grasp
19897,   -- Betrayer's Boots
19898,   -- Seal of Jin
19899,   -- Ritualistic Legguards
19900,   -- Zulian Stone Axe
19901,   -- Zulian Slicer
19903,   -- Fang of Venoxis
19904,   -- Runed Bloodstained Hauberk
19905,   -- Zanzil's Band
19906,   -- Blooddrenched Footpads
19907,   -- Zulian Tigerhide Cloak
19908,   -- Sceptre of Smiting
19909,   -- Will of Arlokk
19910,   -- Arlokk's Grasp
19912,   -- Overlord's Onyx Band
19913,   -- Bloodsoaked Greaves
19915,   -- Zulian Defender
19918,   -- Jeklik's Crusher
19919,   -- Bloodstained Greaves
19920,   -- Primalist's Band
19922,   -- Arlokk's Hoodoo Stick
19923,   -- Jeklik's Opaline Talisman
19925,   -- Band of Jin
19927,   -- Mar'li's Touch
19928,   -- Animist's Spaulders
19929,   -- Bloodtinged Gloves
19930,   -- Mar'li's Eye
19944,   -- Nat Pagle's Fish Terminator
19945,   -- Foror's Eyepatch
19946,   -- Tigule's Harpoon
19947,   -- Nat Pagle's Broken Reel
19948,   -- Zandalarian Hero Badge
19949,   -- Zandalarian Hero Medallion
19950,   -- Zandalarian Hero Charm
19951,   -- Gri'lek's Charm of Might
19952,   -- Gri'lek's Charm of Valor
19953,   -- Renataki's Charm of Beasts
19954,   -- Renataki's Charm of Trickery
19955,   -- Wushoolay's Charm of Nature
19956,   -- Wushoolay's Charm of Spirits
19957,   -- Hazza'rah's Charm of Destruction
19958,   -- Hazza'rah's Charm of Healing
19959,   -- Hazza'rah's Charm of Magic
19961,   -- Gri'lek's Grinder
19962,   -- Gri'lek's Carver
19963,   -- Pitchfork of Madness
19964,   -- Renataki's Soul Conduit
19965,   -- Wushoolay's Poker
19967,   -- Thoughtblighter
19968,   -- Fiery Retributer
19969,   -- Nat Pagle's Extreme Anglin' Boots
19970,   -- Arcanite Fishing Pole
19972,   -- Lucky Fishing Hat
19979,   -- Hook of the Master Angler
19982,   -- Duskbat Drape
19984,   -- Ebon Mask
19990,   -- Blessed Prayer Beads
19991,   -- Devilsaur Eye
19992,   -- Devilsaur Tooth
19993,   -- Hoodoo Hunting Bow
19998,   -- Bloodvine Lens
19999,   -- Bloodvine Goggles
20000,   -- Schematic: Bloodvine Goggles
20001,   -- Schematic: Bloodvine Lens
20006,   -- Circle of Hope
20032,   -- Flowing Ritual Robes
20033,   -- Zandalar Demoniac's Robe
20034,   -- Zandalar Illusionist's Robe
20035,   -- Glacial Spike
20036,   -- Fire Ruby
20037,   -- Arcane Crystal Pendant
20038,   -- Mandokir's Sting
20039,   -- Dark Iron Boots
20040,   -- Plans: Dark Iron Boots
20041,   -- Highlander's Plate Girdle
20042,   -- Highlander's Lamellar Girdle
20043,   -- Highlander's Chain Girdle
20044,   -- Highlander's Mail Girdle
20045,   -- Highlander's Leather Girdle
20046,   -- Highlander's Lizardhide Girdle
20047,   -- Highlander's Cloth Girdle
20048,   -- Highlander's Plate Greaves
20049,   -- Highlander's Lamellar Greaves
20050,   -- Highlander's Chain Greaves
20051,   -- Highlander's Mail Greaves
20052,   -- Highlander's Leather Boots
20053,   -- Highlander's Lizardhide Boots
20054,   -- Highlander's Cloth Boots
20055,   -- Highlander's Chain Pauldrons
20056,   -- Highlander's Mail Pauldrons
20057,   -- Highlander's Plate Spaulders
20058,   -- Highlander's Lamellar Spaulders
20059,   -- Highlander's Leather Shoulders
20060,   -- Highlander's Lizardhide Shoulders
20061,   -- Highlander's Epaulets
20068,   -- Deathguard's Cloak
20069,   -- Ironbark Staff
20070,   -- Sageclaw
20071,   -- Talisman of Arathor
20072,   -- Defiler's Talisman
20073,   -- Cloak of the Honor Guard
20082,   -- Woestave
20083,   -- Hunting Spear
20086,   -- Dusksteel Throwing Knife
20088,   -- Highlander's Chain Girdle
20089,   -- Highlander's Chain Girdle
20090,   -- Highlander's Chain Girdle
20091,   -- Highlander's Chain Greaves
20092,   -- Highlander's Chain Greaves
20093,   -- Highlander's Chain Greaves
20094,   -- Highlander's Cloth Boots
20095,   -- Highlander's Cloth Boots
20096,   -- Highlander's Cloth Boots
20097,   -- Highlander's Cloth Girdle
20098,   -- Highlander's Cloth Girdle
20099,   -- Highlander's Cloth Girdle
20100,   -- Highlander's Lizardhide Boots
20101,   -- Highlander's Lizardhide Boots
20102,   -- Highlander's Lizardhide Boots
20103,   -- Highlander's Lizardhide Girdle
20104,   -- Highlander's Lizardhide Girdle
20105,   -- Highlander's Lizardhide Girdle
20106,   -- Highlander's Lamellar Girdle
20107,   -- Highlander's Lamellar Girdle
20108,   -- Highlander's Lamellar Girdle
20109,   -- Highlander's Lamellar Greaves
20110,   -- Highlander's Lamellar Greaves
20111,   -- Highlander's Lamellar Greaves
20112,   -- Highlander's Leather Boots
20113,   -- Highlander's Leather Boots
20114,   -- Highlander's Leather Boots
20115,   -- Highlander's Leather Girdle
20116,   -- Highlander's Leather Girdle
20117,   -- Highlander's Leather Girdle
20124,   -- Highlander's Plate Girdle
20125,   -- Highlander's Plate Girdle
20126,   -- Highlander's Plate Girdle
20127,   -- Highlander's Plate Greaves
20128,   -- Highlander's Plate Greaves
20129,   -- Highlander's Plate Greaves
20130,   -- Diamond Flask
20131,   -- Battle Tabard of the Defilers
20132,   -- Arathor Battle Tabard
20134,   -- Skyfury Helm
20150,   -- Defiler's Chain Girdle
20151,   -- Defiler's Chain Girdle
20152,   -- Defiler's Chain Girdle
20153,   -- Defiler's Chain Girdle
20154,   -- Defiler's Chain Greaves
20155,   -- Defiler's Chain Greaves
20156,   -- Defiler's Chain Greaves
20157,   -- Defiler's Chain Greaves
20158,   -- Defiler's Chain Pauldrons
20159,   -- Defiler's Cloth Boots
20160,   -- Defiler's Cloth Boots
20161,   -- Defiler's Cloth Boots
20162,   -- Defiler's Cloth Boots
20163,   -- Defiler's Cloth Girdle
20164,   -- Defiler's Cloth Girdle
20165,   -- Defiler's Cloth Girdle
20166,   -- Defiler's Cloth Girdle
20167,   -- Defiler's Lizardhide Boots
20168,   -- Defiler's Lizardhide Boots
20169,   -- Defiler's Lizardhide Boots
20170,   -- Defiler's Lizardhide Boots
20171,   -- Defiler's Lizardhide Girdle
20172,   -- Defiler's Lizardhide Girdle
20173,   -- Defiler's Lizardhide Girdle
20174,   -- Defiler's Lizardhide Girdle
20175,   -- Defiler's Lizardhide Shoulders
20176,   -- Defiler's Epaulets
20177,   -- Defiler's Lamellar Girdle
20181,   -- Defiler's Lamellar Greaves
20184,   -- Defiler's Lamellar Spaulders
20186,   -- Defiler's Leather Boots
20187,   -- Defiler's Leather Boots
20188,   -- Defiler's Leather Boots
20189,   -- Defiler's Leather Boots
20190,   -- Defiler's Leather Girdle
20191,   -- Defiler's Leather Girdle
20192,   -- Defiler's Leather Girdle
20193,   -- Defiler's Leather Girdle
20194,   -- Defiler's Leather Shoulders
20195,   -- Defiler's Mail Girdle
20196,   -- Defiler's Mail Girdle
20197,   -- Defiler's Mail Girdle
20198,   -- Defiler's Mail Girdle
20199,   -- Defiler's Mail Greaves
20200,   -- Defiler's Mail Greaves
20201,   -- Defiler's Mail Greaves
20202,   -- Defiler's Mail Greaves
20203,   -- Defiler's Mail Pauldrons
20204,   -- Defiler's Plate Girdle
20205,   -- Defiler's Plate Girdle
20206,   -- Defiler's Plate Girdle
20207,   -- Defiler's Plate Girdle
20208,   -- Defiler's Plate Greaves
20209,   -- Defiler's Plate Greaves
20210,   -- Defiler's Plate Greaves
20211,   -- Defiler's Plate Greaves
20212,   -- Defiler's Plate Spaulders
20213,   -- Belt of Shrunken Heads
20214,   -- Mindfang
20215,   -- Belt of Shriveled Heads
20216,   -- Belt of Preserved Heads
20217,   -- Belt of Tiny Heads
20218,   -- Faded Hakkari Cloak
20219,   -- Tattered Hakkari Cape
20220,   -- Ironbark Staff
20255,   -- Whisperwalk Boots
20257,   -- Seafury Gauntlets
20258,   -- Zulian Ceremonial Staff
20259,   -- Shadow Panther Hide Gloves
20260,   -- Seafury Leggings
20261,   -- Shadow Panther Hide Belt
20262,   -- Seafury Boots
20263,   -- Gurubashi Helm
20264,   -- Peacekeeper Gauntlets
20265,   -- Peacekeeper Boots
20266,   -- Peacekeeper Leggings
20295,   -- Blue Dragonscale Leggings
20296,   -- Green Dragonscale Gauntlets
20369,   -- Azurite Fists
20380,   -- Dreamscale Breastplate
20382,   -- Pattern: Dreamscale Breastplate
20391,   -- Flimsy Male Gnome Mask
20392,   -- Flimsy Female Gnome Mask
20406,   -- Twilight Cultist Mantle
20407,   -- Twilight Cultist Robe
20408,   -- Twilight Cultist Cowl
20425,   -- Advisor's Gnarled Staff
20426,   -- Advisor's Ring
20427,   -- Battle Healer's Cloak
20428,   -- Caretaker's Cape
20429,   -- Legionnaire's Band
20430,   -- Legionnaire's Sword
20431,   -- Lorekeeper's Ring
20434,   -- Lorekeeper's Staff
20437,   -- Outrider's Bow
20438,   -- Outrunner's Bow
20439,   -- Protector's Band
20440,   -- Protector's Sword
20441,   -- Scout's Blade
20442,   -- Scout's Medallion
20443,   -- Sentinel's Blade
20444,   -- Sentinel's Medallion
20451,   -- Twilight Cultist Ring of Lordship
20476,   -- Sandstalker Bracers
20477,   -- Sandstalker Gauntlets
20478,   -- Sandstalker Breastplate
20479,   -- Spitfire Breastplate
20480,   -- Spitfire Gauntlets
20481,   -- Spitfire Bracers
20487,   -- Lok'delar, Stave of the Ancient Keepers DEP
20488,   -- Rhok'delar, Longbow of the Ancient Keepers DEP
20503,   -- Enamored Water Spirit
20504,   -- Lightforged Blade
20505,   -- Chivalrous Signet
20506,   -- Pattern: Spitfire Bracers
20507,   -- Pattern: Spitfire Gauntlets
20508,   -- Pattern: Spitfire Breastplate
20509,   -- Pattern: Sandstalker Bracers
20510,   -- Pattern: Sandstalker Gauntlets
20511,   -- Pattern: Sandstalker Breastplate
20512,   -- Sanctified Orb
20517,   -- Razorsteel Shoulders
20521,   -- Fury Visor
20530,   -- Robes of Servitude
20534,   -- Abyss Shard
20536,   -- Soul Harvester
20537,   -- Runed Stygian Boots
20538,   -- Runed Stygian Leggings
20539,   -- Runed Stygian Belt
20546,   -- Pattern: Runed Stygian Leggings
20547,   -- Pattern: Runed Stygian Boots
20548,   -- Pattern: Runed Stygian Belt
20549,   -- Darkrune Gauntlets
20550,   -- Darkrune Breastplate
20551,   -- Darkrune Helm
20553,   -- Plans: Darkrune Gauntlets
20554,   -- Plans: Darkrune Breastplate
20555,   -- Plans: Darkrune Helm
20556,   -- Wildstaff
20561,   -- Flimsy Male Dwarf Mask
20562,   -- Flimsy Female Dwarf Mask
20563,   -- Flimsy Female Nightelf Mask
20564,   -- Flimsy Male Nightelf Mask
20565,   -- Flimsy Female Human Mask
20566,   -- Flimsy Male Human Mask
20567,   -- Flimsy Female Troll Mask
20568,   -- Flimsy Male Troll Mask
20569,   -- Flimsy Female Orc Mask
20570,   -- Flimsy Male Orc Mask
20571,   -- Flimsy Female Tauren Mask
20572,   -- Flimsy Male Tauren Mask
20573,   -- Flimsy Male Undead Mask
20574,   -- Flimsy Female Undead Mask
20575,   -- Black Whelp Tunic
20576,   -- Pattern: Black Whelp Tunic
20577,   -- Nightmare Blade
20578,   -- Emerald Dragonfang
20579,   -- Green Dragonskin Cloak
20580,   -- Hammer of Bestial Fury
20581,   -- Staff of Rampant Growth
20582,   -- Trance Stone
20599,   -- Polished Ironwood Crossbow
20600,   -- Malfurion's Signet Ring
20615,   -- Dragonspur Wraps
20616,   -- Dragonbone Wristguards
20617,   -- Ancient Corroded Leggings
20618,   -- Gloves of Delusional Power
20619,   -- Acid Inscribed Greaves
20621,   -- Boots of the Endless Moor
20622,   -- Dragonheart Necklace
20623,   -- Circlet of Restless Dreams
20624,   -- Ring of the Unliving
20625,   -- Belt of the Dark Bog
20626,   -- Black Bark Wristbands
20627,   -- Dark Heart Pants
20628,   -- Deviate Growth Cap
20629,   -- Malignant Footguards
20630,   -- Gauntlets of the Shining Light
20631,   -- Mendicant's Slippers
20632,   -- Mindtear Band
20633,   -- Unnatural Leather Spaulders
20634,   -- Boots of Fright
20635,   -- Jade Inlaid Vestments
20636,   -- Hibernation Crystal
20637,   -- Acid Inscribed Pauldrons
20638,   -- Leggings of the Demented Mind
20639,   -- Strangely Glyphed Legplates
20640,   -- Southsea Head Bucket
20641,   -- Southsea Mojo Boots
20642,   -- Antiquated Nobleman's Tunic
20643,   -- Undercity Reservist's Cap
20645,   -- Nature's Whisper
20646,   -- Sandstrider's Mark
20647,   -- Black Crystal Dagger
20648,   -- Cold Forged Hammer
20649,   -- Sunprism Pendant
20650,   -- Desert Wind Gauntlets
20654,   -- Amethyst War Staff
20657,   -- Crystal Tipped Stiletto
20660,   -- Stonecutting Glaive
20663,   -- Deep Strike Bow
20666,   -- Hardened Steel Warhammer
20669,   -- Darkstone Claymore
20672,   -- Sparkling Crystal Wand
20675,   -- Soulrender
20682,   -- Elemental Focus Band
20685,   -- Wavefront Necklace
20688,   -- Earthen Guard
20691,   -- Windshear Cape
20693,   -- Weighted Cloak
20694,   -- Glowing Black Orb
20695,   -- Abyssal War Beads
20696,   -- Crystal Spiked Maul
20697,   -- Crystalline Threaded Cape
20698,   -- Elemental Attuned Blade
20699,   -- Cenarion Reservist's Legplates
20700,   -- Cenarion Reservist's Legplates
20701,   -- Cenarion Reservist's Legguards
20702,   -- Cenarion Reservist's Legguards
20703,   -- Cenarion Reservist's Leggings
20704,   -- Cenarion Reservist's Leggings
20705,   -- Cenarion Reservist's Pants
20706,   -- Cenarion Reservist's Pants
20707,   -- Cenarion Reservist's Pants
20710,   -- Crystal Encrusted Greaves
20711,   -- Crystal Lined Greaves
20712,   -- Wastewalker's Gauntlets
20713,   -- Desertstalkers's Gauntlets
20714,   -- Sandstorm Boots
20715,   -- Dunestalker's Boots
20716,   -- Sandworm Skin Gloves
20717,   -- Desert Bloom Gloves
20720,   -- Dark Whisper Blade
20721,   -- Band of the Cultist
20722,   -- Crystal Slugthrower
20723,   -- Brann's Trusty Pick
20724,   -- Corrupted Blackwood Staff
20761,   -- Recipe: Transmute Elemental Fire
21039,   -- Narain's Turban
21040,   -- Narain's Robe
21115,   -- Defiler's Talisman
21116,   -- Defiler's Talisman
21117,   -- Talisman of Arathor
21118,   -- Talisman of Arathor
21119,   -- Talisman of Arathor
21120,   -- Defiler's Talisman
21126,   -- Death's Sting
21128,   -- Staff of the Qiraji Prophets
21134,   -- Dark Edge of Insanity
21154,   -- Festival Dress
21157,   -- Festive Green Dress
21178,   -- Gloves of Earthen Power
21179,   -- Band of Earthen Wrath
21180,   -- Earthstrike
21181,   -- Grace of Earth
21182,   -- Band of Earthen Might
21183,   -- Earthpower Vest
21184,   -- Deeprock Bracers
21185,   -- Earthcalm Orb
21186,   -- Rockfury Bracers
21187,   -- Earthweave Cloak
21188,   -- Fist of Cenarius
21189,   -- Might of Cenarius
21190,   -- Wrath of Cenarius
21196,   -- Signet Ring of the Bronze Dragonflight
21197,   -- Signet Ring of the Bronze Dragonflight
21198,   -- Signet Ring of the Bronze Dragonflight
21199,   -- Signet Ring of the Bronze Dragonflight
21200,   -- Signet Ring of the Bronze Dragonflight
21201,   -- Signet Ring of the Bronze Dragonflight
21202,   -- Signet Ring of the Bronze Dragonflight
21203,   -- Signet Ring of the Bronze Dragonflight
21204,   -- Signet Ring of the Bronze Dragonflight
21205,   -- Signet Ring of the Bronze Dragonflight
21206,   -- Signet Ring of the Bronze Dragonflight
21207,   -- Signet Ring of the Bronze Dragonflight
21208,   -- Signet Ring of the Bronze Dragonflight
21209,   -- Signet Ring of the Bronze Dragonflight
21210,   -- Signet Ring of the Bronze Dragonflight
21242,   -- Blessed Qiraji War Axe
21244,   -- Blessed Qiraji Pugio
21268,   -- Blessed Qiraji War Hammer
21269,   -- Blessed Qiraji Bulwark
21272,   -- Blessed Qiraji Musket
21273,   -- Blessed Qiraji Acolyte Staff
21275,   -- Blessed Qiraji Augur Staff
21278,   -- Stormshroud Gloves
21311,   -- Earth Warder's Vest
21312,   -- Belt of the Den Watcher
21316,   -- Leggings of the Ursa
21317,   -- Helm of the Pathfinder
21318,   -- Earth Warder's Gloves
21319,   -- Gloves of the Pathfinder
21320,   -- Vest of the Den Watcher
21322,   -- Ursa's Embrace
21326,   -- Defender of the Timbermaw
21329,   -- Conqueror's Crown
21330,   -- Conqueror's Spaulders
21331,   -- Conqueror's Breastplate
21332,   -- Conqueror's Legguards
21333,   -- Conqueror's Greaves
21334,   -- Doomcaller's Robes
21335,   -- Doomcaller's Mantle
21336,   -- Doomcaller's Trousers
21337,   -- Doomcaller's Circlet
21338,   -- Doomcaller's Footwraps
21343,   -- Enigma Robes
21344,   -- Enigma Boots
21345,   -- Enigma Shoulderpads
21346,   -- Enigma Leggings
21347,   -- Enigma Circlet
21348,   -- Tiara of the Oracle
21349,   -- Footwraps of the Oracle
21350,   -- Mantle of the Oracle
21351,   -- Vestments of the Oracle
21352,   -- Trousers of the Oracle
21353,   -- Genesis Helm
21354,   -- Genesis Shoulderpads
21355,   -- Genesis Boots
21356,   -- Genesis Trousers
21357,   -- Genesis Vest
21359,   -- Deathdealer's Boots
21360,   -- Deathdealer's Helm
21361,   -- Deathdealer's Spaulders
21362,   -- Deathdealer's Leggings
21364,   -- Deathdealer's Vest
21365,   -- Striker's Footguards
21366,   -- Striker's Diadem
21367,   -- Striker's Pauldrons
21368,   -- Striker's Leggings
21370,   -- Striker's Hauberk
21372,   -- Stormcaller's Diadem
21373,   -- Stormcaller's Footguards
21374,   -- Stormcaller's Hauberk
21375,   -- Stormcaller's Leggings
21376,   -- Stormcaller's Pauldrons
21387,   -- Avenger's Crown
21388,   -- Avenger's Greaves
21389,   -- Avenger's Breastplate
21390,   -- Avenger's Legguards
21391,   -- Avenger's Pauldrons
21392,   -- Sickle of Unyielding Strength
21393,   -- Signet of Unyielding Strength
21394,   -- Drape of Unyielding Strength
21395,   -- Blade of Eternal Justice
21396,   -- Ring of Eternal Justice
21397,   -- Cape of Eternal Justice
21398,   -- Hammer of the Gathering Storm
21399,   -- Ring of the Gathering Storm
21400,   -- Cloak of the Gathering Storm
21401,   -- Scythe of the Unseen Path
21402,   -- Signet of the Unseen Path
21403,   -- Cloak of the Unseen Path
21404,   -- Dagger of Veiled Shadows
21405,   -- Band of Veiled Shadows
21406,   -- Cloak of Veiled Shadows
21407,   -- Mace of Unending Life
21408,   -- Band of Unending Life
21409,   -- Cloak of Unending Life
21410,   -- Gavel of Infinite Wisdom
21411,   -- Ring of Infinite Wisdom
21412,   -- Shroud of Infinite Wisdom
21413,   -- Blade of Vaulted Secrets
21414,   -- Band of Vaulted Secrets
21415,   -- Drape of Vaulted Secrets
21416,   -- Kris of Unspoken Names
21417,   -- Ring of Unspoken Names
21418,   -- Shroud of Unspoken Names
21452,   -- Staff of the Ruins
21453,   -- Mantle of the Horusath
21454,   -- Runic Stone Shoulders
21455,   -- Southwind Helm
21456,   -- Sandstorm Cloak
21457,   -- Bracers of Brutality
21458,   -- Gauntlets of New Life
21459,   -- Crossbow of Imminent Doom
21460,   -- Helm of Domination
21461,   -- Leggings of the Black Blizzard
21462,   -- Gloves of Dark Wisdom
21463,   -- Ossirian's Binding
21464,   -- Shackles of the Unscarred
21466,   -- Stinger of Ayamiss
21467,   -- Thick Silithid Chestguard
21468,   -- Mantle of Maz'Nadir
21469,   -- Gauntlets of Southwind
21470,   -- Cloak of the Savior
21471,   -- Talon of Furious Concentration
21472,   -- Dustwind Turban
21473,   -- Eye of Moam
21474,   -- Chitinous Shoulderguards
21475,   -- Legplates of the Destroyer
21476,   -- Obsidian Scaled Leggings
21477,   -- Ring of Fury
21478,   -- Bow of Taut Sinew
21479,   -- Gauntlets of the Immovable
21480,   -- Scaled Silithid Gauntlets
21481,   -- Boots of the Desert Protector
21482,   -- Boots of the Fiery Sands
21483,   -- Ring of the Desert Winds
21484,   -- Helm of Regrowth
21485,   -- Buru's Skull Fragment
21486,   -- Gloves of the Swarm
21487,   -- Slimy Scaled Gauntlets
21488,   -- Fetish of Chitinous Spikes
21489,   -- Quicksand Waders
21490,   -- Slime Kickers
21491,   -- Scaled Bracers of the Gorger
21492,   -- Manslayer of the Qiraji
21493,   -- Boots of the Vanguard
21494,   -- Southwind's Grasp
21495,   -- Legplates of the Qiraji Command
21496,   -- Bracers of Qiraji Command
21497,   -- Boots of the Qiraji General
21498,   -- Qiraji Sacrificial Dagger
21499,   -- Vestments of the Shifting Sands
21500,   -- Belt of the Inquisition
21501,   -- Toughened Silithid Hide Gloves
21502,   -- Sand Reaver Wristguards
21503,   -- Belt of the Sand Reaver
21504,   -- Charm of the Shifting Sands
21505,   -- Choker of the Shifting Sands
21506,   -- Pendant of the Shifting Sands
21507,   -- Amulet of the Shifting Sands
21517,   -- Gnomish Turban of Psychic Might
21520,   -- Ravencrest's Legacy
21521,   -- Runesword of the Red
21522,   -- Shadowsong's Sorrow
21523,   -- Fang of Korialstrasz
21524,   -- Red Winter Hat
21525,   -- Green Winter Hat
21526,   -- Band of Icy Depths
21527,   -- Darkwater Robes
21529,   -- Amulet of Shadow Shielding
21530,   -- Onyx Embedded Leggings
21531,   -- Drake Tooth Necklace
21532,   -- Drudge Boots
21538,   -- Festive Pink Dress
21539,   -- Festive Purple Dress
21541,   -- Festive Black Pant Suit
21542,   -- Festival Suit
21543,   -- Festive Teal Pant Suit
21544,   -- Festive Blue Pant Suit
21547,   -- Recipe: Elixir of Greater Firepower
21548,   -- Pattern: Stormshroud Gloves
21563,   -- Don Rodrigo's Band
21565,   -- Rune of Perfection
21566,   -- Rune of Perfection
21567,   -- Rune of Duty
21568,   -- Rune of Duty
21579,   -- Vanquished Tentacle of C'Thun
21581,   -- Gauntlets of Annihilation
21582,   -- Grasp of the Old God
21583,   -- Cloak of Clarity
21585,   -- Dark Storm Gauntlets
21586,   -- Belt of Never-ending Agony
21587,   -- Wristguards of Castigation
21596,   -- Ring of the Godslayer
21597,   -- Royal Scepter of Vek'lor
21598,   -- Royal Qiraji Belt
21599,   -- Vek'lor's Gloves of Devastation
21600,   -- Boots of Epiphany
21601,   -- Ring of Emperor Vek'lor
21602,   -- Qiraji Execution Bracers
21603,   -- Wand of Qiraji Nobility
21604,   -- Bracelets of Royal Redemption
21605,   -- Gloves of the Hidden Temple
21606,   -- Belt of the Fallen Emperor
21607,   -- Grasp of the Fallen Emperor
21608,   -- Amulet of Vek'nilash
21609,   -- Regenerating Belt of Vek'nilash
21610,   -- Wormscale Blocker
21611,   -- Burrower Bracers
21615,   -- Don Rigoberto's Lost Hat
21616,   -- Huhuran's Stinger
21617,   -- Wasphide Gauntlets
21618,   -- Hive Defiler Wristguards
21619,   -- Gloves of the Messiah
21620,   -- Ring of the Martyr
21621,   -- Cloak of the Golden Hive
21622,   -- Sharpened Silithid Femur
21623,   -- Gauntlets of the Righteous Champion
21624,   -- Gauntlets of Kalimdor
21625,   -- Scarab Brooch
21626,   -- Slime-coated Leggings
21627,   -- Cloak of Untold Secrets
21635,   -- Barb of the Sand Reaver
21639,   -- Pauldrons of the Unrelenting
21645,   -- Hive Tunneler's Boots
21647,   -- Fetish of the Sand Reaver
21648,   -- Recomposed Boots
21650,   -- Ancient Qiraji Ripper
21651,   -- Scaled Sand Reaver Leggings
21652,   -- Silithid Carapace Chestguard
21663,   -- Robes of the Guardian Saint
21664,   -- Barbed Choker
21665,   -- Mantle of Wicked Revenge
21666,   -- Sartura's Might
21667,   -- Legplates of Blazing Light
21668,   -- Scaled Leggings of Qiraji Fury
21669,   -- Creeping Vine Helm
21670,   -- Badge of the Swarmguard
21671,   -- Robes of the Battleguard
21672,   -- Gloves of Enforcement
21673,   -- Silithid Claw
21674,   -- Gauntlets of Steadfast Determination
21675,   -- Thick Qirajihide Belt
21676,   -- Leggings of the Festering Swarm
21677,   -- Ring of the Qiraji Fury
21678,   -- Necklace of Purity
21679,   -- Kalimdor's Revenge
21680,   -- Vest of Swift Execution
21681,   -- Ring of the Devoured
21682,   -- Bile-Covered Gauntlets
21683,   -- Mantle of the Desert Crusade
21684,   -- Mantle of the Desert's Fury
21685,   -- Petrified Scarab
21686,   -- Mantle of Phrenic Power
21687,   -- Ukko's Ring of Darkness
21688,   -- Boots of the Fallen Hero
21689,   -- Gloves of Ebru
21690,   -- Angelista's Charm
21691,   -- Ooze-ridden Gauntlets
21692,   -- Triad Girdle
21693,   -- Guise of the Devourer
21694,   -- Ternary Mantle
21695,   -- Angelista's Touch
21696,   -- Robes of the Triumvirate
21697,   -- Cape of the Trinity
21698,   -- Leggings of Immersion
21699,   -- Barrage Shoulders
21700,   -- Pendant of the Qiraji Guardian
21701,   -- Cloak of Concentrated Hatred
21702,   -- Amulet of Foul Warding
21703,   -- Hammer of Ji'zhi
21704,   -- Boots of the Redeemed Prophecy
21705,   -- Boots of the Fallen Prophet
21706,   -- Boots of the Unwavering Will
21707,   -- Ring of Swarming Thought
21708,   -- Beetle Scaled Wristguards
21709,   -- Ring of the Fallen God
21710,   -- Cloak of the Fallen God
21712,   -- Amulet of the Fallen God
21713,   -- Elune's Candle
21715,   -- Sand Polished Hammer
21722,   -- Pattern: Festival Dress
21723,   -- Pattern: Festive Red Pant Suit
21800,   -- Silithid Husked Launcher
21801,   -- Antenna of Invigoration
21802,   -- The Lost Kris of Zedd
21803,   -- Helm of the Holy Avenger
21804,   -- Coif of Elemental Fury
21805,   -- Polished Obsidian Pauldrons
21806,   -- Gavel of Qiraji Authority
21809,   -- Fury of the Forgotten Swarm
21810,   -- Treads of the Wandering Nomad
21814,   -- Breastplate of Annihilation
21836,   -- Ritssyn's Ring of Chaos
21837,   -- Anubisath Warhammer
21838,   -- Garb of Royal Ascension
21839,   -- Scepter of the False Prophet
21856,   -- Neretzek, The Blood Drinker
21888,   -- Gloves of the Immortal
21889,   -- Gloves of the Redeemed Prophecy
21891,   -- Shard of the Fallen Star
21994,   -- Belt of Heroism
21995,   -- Boots of Heroism
21996,   -- Bracers of Heroism
21997,   -- Breastplate of Heroism
21998,   -- Gauntlets of Heroism
21999,   -- Helm of Heroism
22000,   -- Legplates of Heroism
22001,   -- Spaulders of Heroism
22002,   -- Darkmantle Belt
22003,   -- Darkmantle Boots
22004,   -- Darkmantle Bracers
22005,   -- Darkmantle Cap
22006,   -- Darkmantle Gloves
22007,   -- Darkmantle Pants
22008,   -- Darkmantle Spaulders
22009,   -- Darkmantle Tunic
22010,   -- Beastmaster's Belt
22011,   -- Beastmaster's Bindings
22013,   -- Beastmaster's Cap
22015,   -- Beastmaster's Gloves
22016,   -- Beastmaster's Mantle
22017,   -- Beastmaster's Pants
22049,   -- Brazier of Beckoning
22050,   -- Brazier of Beckoning
22051,   -- Brazier of Beckoning
22052,   -- Brazier of Beckoning
22056,   -- Brazier of Beckoning
22060,   -- Beastmaster's Tunic
22061,   -- Beastmaster's Boots
22062,   -- Sorcerer's Belt
22063,   -- Sorcerer's Bindings
22064,   -- Sorcerer's Boots
22065,   -- Sorcerer's Crown
22066,   -- Sorcerer's Gloves
22067,   -- Sorcerer's Leggings
22068,   -- Sorcerer's Mantle
22069,   -- Sorcerer's Robes
22070,   -- Deathmist Belt
22071,   -- Deathmist Bracers
22072,   -- Deathmist Leggings
22073,   -- Deathmist Mantle
22074,   -- Deathmist Mask
22075,   -- Deathmist Robe
22076,   -- Deathmist Sandals
22077,   -- Deathmist Wraps
22078,   -- Virtuous Belt
22079,   -- Virtuous Bracers
22080,   -- Virtuous Crown
22081,   -- Virtuous Gloves
22082,   -- Virtuous Mantle
22083,   -- Virtuous Robe
22084,   -- Virtuous Sandals
22085,   -- Virtuous Skirt
22086,   -- Soulforge Belt
22087,   -- Soulforge Boots
22088,   -- Soulforge Bracers
22089,   -- Soulforge Breastplate
22090,   -- Soulforge Gauntlets
22091,   -- Soulforge Helm
22092,   -- Soulforge Legplates
22093,   -- Soulforge Spaulders
22095,   -- Bindings of The Five Thunders
22096,   -- Boots of The Five Thunders
22097,   -- Coif of The Five Thunders
22098,   -- Cord of The Five Thunders
22099,   -- Gauntlets of The Five Thunders
22100,   -- Kilt of The Five Thunders
22101,   -- Pauldrons of The Five Thunders
22102,   -- Vest of The Five Thunders
22106,   -- Feralheart Belt
22107,   -- Feralheart Boots
22108,   -- Feralheart Bracers
22109,   -- Feralheart Cowl
22110,   -- Feralheart Gloves
22111,   -- Feralheart Kilt
22112,   -- Feralheart Spaulders
22113,   -- Feralheart Vest
22149,   -- Beads of Ogre Mojo
22150,   -- Beads of Ogre Might
22191,   -- Obsidian Mail Tunic
22194,   -- Black Grasp of the Destroyer
22195,   -- Light Obsidian Belt
22196,   -- Thick Obsidian Breastplate
22197,   -- Heavy Obsidian Belt
22198,   -- Jagged Obsidian Shield
22204,   -- Wristguards of Renown
22205,   -- Black Steel Bindings
22206,   -- Bouquet of Red Roses
22207,   -- Sash of the Grand Hunt
22208,   -- Lavastone Hammer
22209,   -- Plans: Heavy Obsidian Belt
22212,   -- Golem Fitted Pauldrons
22214,   -- Plans: Light Obsidian Belt
22219,   -- Plans: Jagged Obsidian Shield
22220,   -- Plans: Black Grasp of the Destroyer
22221,   -- Plans: Obsidian Mail Tunic
22222,   -- Plans: Thick Obsidian Breastplate
22223,   -- Foreman's Head Protector
22225,   -- Dragonskin Cowl
22231,   -- Kayser's Boots of Precision
22232,   -- Marksman's Girdle
22234,   -- Mantle of Lost Hope
22240,   -- Greaves of Withering Despair
22241,   -- Dark Warder's Pauldrons
22242,   -- Verek's Leash
22245,   -- Soot Encrusted Footwear
22247,   -- Faith Healer's Boots
22253,   -- Tome of the Lost
22254,   -- Wand of Eternal Light
22255,   -- Magma Forged Band
22256,   -- Mana Shaping Handwraps
22257,   -- Bloodclot Band
22266,   -- Flarethorn
22267,   -- Spellweaver's Turban
22268,   -- Draconic Infused Emblem
22269,   -- Shadow Prowler's Cloak
22270,   -- Entrenching Boots
22271,   -- Leggings of Frenzied Magic
22272,   -- Forest's Embrace
22274,   -- Grizzled Pelt
22275,   -- Firemoss Boots
22276,   -- Lovely Red Dress
22277,   -- Red Dinner Suit
22278,   -- Lovely Blue Dress
22279,   -- Lovely Black Dress
22280,   -- Lovely Purple Dress
22281,   -- Blue Dinner Suit
22282,   -- Purple Dinner Suit
22301,   -- Ironweave Robe
22302,   -- Ironweave Cowl
22303,   -- Ironweave Pants
22304,   -- Ironweave Gloves
22305,   -- Ironweave Mantle
22306,   -- Ironweave Belt
22311,   -- Ironweave Boots
22313,   -- Ironweave Bracers
22314,   -- Huntsman's Harpoon
22315,   -- Hammer of Revitalization
22317,   -- Lefty's Brass Knuckle
22318,   -- Malgen's Long Bow
22319,   -- Tome of Divine Right
22321,   -- Heart of Wyrmthalak
22322,   -- The Jaw Breaker
22325,   -- Belt of the Trickster
22326,   -- Amalgam's Band
22327,   -- Amulet of the Redeemed
22328,   -- Legplates of Vigilance
22329,   -- Scepter of Interminable Focus
22330,   -- Shroud of Arcane Mastery
22331,   -- Band of the Steadfast Hero
22332,   -- Blade of Necromancy
22333,   -- Hammer of Divine Might
22334,   -- Band of Mending
22335,   -- Lord Valthalak's Staff of Command
22336,   -- Draconian Aegis of the Legion
22337,   -- Shroud of Domination
22339,   -- Rune Band of Wizardry
22340,   -- Pendant of Celerity
22342,   -- Leggings of Torment
22343,   -- Handguards of Savagery
22345,   -- Totem of Rebirth
22347,   -- Fahrad's Reloading Repeater
22348,   -- Doomulus Prime
22377,   -- The Thunderwood Poker
22378,   -- Ravenholdt Slicer
22379,   -- Shivsprocket's Shiv
22380,   -- Simone's Cultivating Hammer
22383,   -- Sageblade
22384,   -- Persuader
22385,   -- Titanic Leggings
22388,   -- Plans: Titanic Leggings
22389,   -- Plans: Sageblade
22390,   -- Plans: Persuader
22392,   -- Formula: Enchant 2H Weapon - Agility
22394,   -- Staff of Metanoia
22395,   -- Totem of Rage
22396,   -- Totem of Life
22397,   -- Idol of Ferocity
22398,   -- Idol of Rejuvenation
22399,   -- Idol of Health
22400,   -- Libram of Truth
22401,   -- Libram of Hope
22402,   -- Libram of Grace
22403,   -- Diana's Pearl Necklace
22404,   -- Willey's Back Scratcher
22405,   -- Mantle of the Scarlet Crusade
22406,   -- Redemption
22407,   -- Helm of the New Moon
22408,   -- Ritssyn's Wand of Bad Mojo
22409,   -- Tunic of the Crescent Moon
22410,   -- Gauntlets of Deftness
22411,   -- Helm of the Executioner
22412,   -- Thuzadin Mantle
22416,   -- Dreadnaught Breastplate
22417,   -- Dreadnaught Legplates
22418,   -- Dreadnaught Helmet
22419,   -- Dreadnaught Pauldrons
22420,   -- Dreadnaught Sabatons
22421,   -- Dreadnaught Gauntlets
22422,   -- Dreadnaught Waistguard
22423,   -- Dreadnaught Bracers
22424,   -- Redemption Wristguards
22425,   -- Redemption Tunic
22426,   -- Redemption Handguards
22427,   -- Redemption Legguards
22428,   -- Redemption Headpiece
22429,   -- Redemption Spaulders
22430,   -- Redemption Boots
22431,   -- Redemption Girdle
22433,   -- Don Mauricio's Band of Domination
22436,   -- Cryptstalker Tunic
22437,   -- Cryptstalker Legguards
22438,   -- Cryptstalker Headpiece
22439,   -- Cryptstalker Spaulders
22440,   -- Cryptstalker Boots
22441,   -- Cryptstalker Handguards
22442,   -- Cryptstalker Girdle
22443,   -- Cryptstalker Wristguards
22458,   -- Moonshadow Stave
22464,   -- Earthshatter Tunic
22465,   -- Earthshatter Legguards
22466,   -- Earthshatter Headpiece
22467,   -- Earthshatter Spaulders
22468,   -- Earthshatter Boots
22469,   -- Earthshatter Handguards
22470,   -- Earthshatter Girdle
22471,   -- Earthshatter Wristguards
22472,   -- Boots of Ferocity
22476,   -- Bonescythe Breastplate
22477,   -- Bonescythe Legplates
22478,   -- Bonescythe Helmet
22479,   -- Bonescythe Pauldrons
22480,   -- Bonescythe Sabatons
22481,   -- Bonescythe Gauntlets
22482,   -- Bonescythe Waistguard
22483,   -- Bonescythe Bracers
22488,   -- Dreamwalker Tunic
22489,   -- Dreamwalker Legguards
22490,   -- Dreamwalker Headpiece
22491,   -- Dreamwalker Spaulders
22492,   -- Dreamwalker Boots
22493,   -- Dreamwalker Handguards
22494,   -- Dreamwalker Girdle
22495,   -- Dreamwalker Wristguards
22496,   -- Frostfire Robe
22497,   -- Frostfire Leggings
22498,   -- Frostfire Circlet
22499,   -- Frostfire Shoulderpads
22500,   -- Frostfire Sandals
22501,   -- Frostfire Gloves
22502,   -- Frostfire Belt
22503,   -- Frostfire Bindings
22504,   -- Plagueheart Robe
22505,   -- Plagueheart Leggings
22506,   -- Plagueheart Circlet
22507,   -- Plagueheart Shoulderpads
22508,   -- Plagueheart Sandals
22509,   -- Plagueheart Gloves
22510,   -- Plagueheart Belt
22511,   -- Plagueheart Bindings
22512,   -- Robe of Faith
22513,   -- Leggings of Faith
22514,   -- Circlet of Faith
22515,   -- Shoulderpads of Faith
22516,   -- Sandals of Faith
22517,   -- Gloves of Faith
22518,   -- Belt of Faith
22519,   -- Bindings of Faith
22589,   -- Atiesh, Greatstaff of the Guardian
22630,   -- Atiesh, Greatstaff of the Guardian
22631,   -- Atiesh, Greatstaff of the Guardian
22632,   -- Atiesh, Greatstaff of the Guardian
22637,   -- Primal Hakkari Idol
22651,   -- Outrider's Plate Legguards
22652,   -- Glacial Vest
22654,   -- Glacial Gloves
22655,   -- Glacial Wrists
22656,   -- The Purifier
22657,   -- Amulet of the Dawn
22658,   -- Glacial Cloak
22659,   -- Medallion of the Dawn
22660,   -- Gaea's Embrace
22661,   -- Polar Tunic
22662,   -- Polar Gloves
22663,   -- Polar Bracers
22664,   -- Icy Scale Breastplate
22665,   -- Icy Scale Bracers
22666,   -- Icy Scale Gauntlets
22667,   -- Bracers of Hope
22668,   -- Bracers of Subterfuge
22669,   -- Icebane Breastplate
22670,   -- Icebane Gauntlets
22671,   -- Icebane Bracers
22672,   -- Sentinel's Plate Legguards
22673,   -- Outrider's Chain Leggings
22676,   -- Outrider's Mail Leggings
22678,   -- Talisman of Ascendance
22680,   -- Band of Resolution
22681,   -- Band of Piety
22683,   -- Pattern: Gaea's Embrace
22688,   -- Verimonde's Last Resort
22689,   -- Sanctified Leather Helm
22690,   -- Leggings of the Plague Hunter
22691,   -- Corrupted Ashbringer
22699,   -- Icebane Leggings
22700,   -- Glacial Leggings
22701,   -- Polar Leggings
22702,   -- Icy Scale Leggings
22707,   -- Ramaladni's Icy Grasp
22711,   -- Cloak of the Hakkari Worshipers
22712,   -- Might of the Tribe
22713,   -- Zulian Scepter of Rites
22714,   -- Sacrificial Gauntlets
22715,   -- Gloves of the Tormented
22716,   -- Belt of Untapped Power
22718,   -- Blooddrenched Mask
22720,   -- Zulian Headdress
22721,   -- Band of Servitude
22722,   -- Seal of the Gurubashi Berserker
22725,   -- Band of Cenarius
22730,   -- Eyestalk Waist Cord
22731,   -- Cloak of the Devoured
22732,   -- Mark of C'Thun
22736,   -- Andonisus, Reaper of Souls
22740,   -- Outrider's Leather Pants
22741,   -- Outrider's Lizardhide Pants
22742,   -- Bloodsail Shirt
22744,   -- Bloodsail Boots
22745,   -- Bloodsail Pants
22747,   -- Outrider's Silk Leggings
22748,   -- Sentinel's Chain Leggings
22749,   -- Sentinel's Leather Pants
22750,   -- Sentinel's Lizardhide Pants
22752,   -- Sentinel's Silk Leggings
22753,   -- Sentinel's Lamellar Legguards
22756,   -- Sylvan Vest
22757,   -- Sylvan Crown
22758,   -- Sylvan Shoulders
22759,   -- Bramblewood Helm
22760,   -- Bramblewood Boots
22761,   -- Bramblewood Belt
22762,   -- Ironvine Breastplate
22763,   -- Ironvine Gloves
22764,   -- Ironvine Belt
22766,   -- Plans: Ironvine Breastplate
22767,   -- Plans: Ironvine Gloves
22768,   -- Plans: Ironvine Belt
22769,   -- Pattern: Bramblewood Belt
22770,   -- Pattern: Bramblewood Boots
22771,   -- Pattern: Bramblewood Helm
22772,   -- Pattern: Sylvan Shoulders
22773,   -- Pattern: Sylvan Crown
22774,   -- Pattern: Sylvan Vest
22798,   -- Might of Menethil
22799,   -- Soulseeker
22800,   -- Brimstone Staff
22801,   -- Spire of Twilight
22802,   -- Kingsfall
22803,   -- Midnight Haze
22804,   -- Maexxna's Fang
22806,   -- Widow's Remorse
22807,   -- Wraith Blade
22808,   -- The Castigator
22809,   -- Maul of the Redeemed Crusader
22810,   -- Toxin Injector
22811,   -- Soulstring
22812,   -- Nerubian Slavemaker
22813,   -- Claymore of Unholy Might
22815,   -- Severance
22816,   -- Hatchet of Sundered Bone
22818,   -- The Plague Bearer
22819,   -- Shield of Condemnation
22820,   -- Wand of Fates
22821,   -- Doomfinger
22843,   -- Blood Guard's Chain Greaves
22852,   -- Blood Guard's Dragonhide Treads
22855,   -- Blood Guard's Dreadweave Walkers
22856,   -- Blood Guard's Leather Walkers
22857,   -- Blood Guard's Mail Greaves
22858,   -- Blood Guard's Plate Greaves
22859,   -- Blood Guard's Satin Walkers
22860,   -- Blood Guard's Silk Walkers
22862,   -- Blood Guard's Chain Vices
22863,   -- Blood Guard's Dragonhide Grips
22864,   -- Blood Guard's Leather Grips
22865,   -- Blood Guard's Dreadweave Handwraps
22867,   -- Blood Guard's Mail Vices
22868,   -- Blood Guard's Plate Gauntlets
22869,   -- Blood Guard's Satin Handwraps
22870,   -- Blood Guard's Silk Handwraps
22872,   -- Legionnaire's Plate Hauberk
22873,   -- Legionnaire's Plate Leggings
22874,   -- Legionnaire's Chain Hauberk
22875,   -- Legionnaire's Chain Legguards
22876,   -- Legionnaire's Mail Hauberk
22877,   -- Legionnaire's Dragonhide Chestpiece
22878,   -- Legionnaire's Dragonhide Leggings
22879,   -- Legionnaire's Leather Chestpiece
22880,   -- Legionnaire's Leather Legguards
22881,   -- Legionnaire's Dreadweave Legguards
22882,   -- Legionnaire's Satin Legguards
22883,   -- Legionnaire's Silk Legguards
22884,   -- Legionnaire's Dreadweave Tunic
22885,   -- Legionnaire's Satin Tunic
22886,   -- Legionnaire's Silk Tunic
22887,   -- Legionnaire's Mail Legguards
22890,   -- Tome of Frost Ward V
22891,   -- Grimoire of Shadow Ward IV
22935,   -- Touch of Frost
22936,   -- Wristguards of Vengeance
22937,   -- Gem of Nerubis
22938,   -- Cryptfiend Silk Cloak
22939,   -- Band of Unanswered Prayers
22940,   -- Icebane Pauldrons
22941,   -- Polar Shoulder Pads
22942,   -- The Widow's Embrace
22943,   -- Malice Stone Pendant
22947,   -- Pendant of Forgotten Names
22954,   -- Kiss of the Spider
22960,   -- Cloak of Suturing
22961,   -- Band of Reanimation
22967,   -- Icy Scale Spaulders
22968,   -- Glacial Mantle
22981,   -- Gluth's Missing Collar
22983,   -- Rime Covered Mantle
22988,   -- The End of Dreams
22994,   -- Digested Hand of Power
22999,   -- Tabard of the Argent Dawn
23000,   -- Plated Abomination Ribcage
23001,   -- Eye of Diminution
23004,   -- Idol of Longevity
23005,   -- Totem of Flowing Water
23006,   -- Libram of Light
23009,   -- Wand of the Whispering Dead
23014,   -- Iblis, Blade of the Fallen Seraph
23017,   -- Veil of Eclipse
23018,   -- Signet of the Fallen Defender
23019,   -- Icebane Helmet
23020,   -- Polar Helmet
23021,   -- The Soul Harvester's Bindings
23023,   -- Sadist's Collar
23025,   -- Seal of the Damned
23027,   -- Warmth of Forgiveness
23028,   -- Hailstone Band
23029,   -- Noth's Frigid Heart
23030,   -- Cloak of the Scourge
23031,   -- Band of the Inevitable
23032,   -- Glacial Headdress
23033,   -- Icy Scale Coif
23035,   -- Preceptor's Hat
23036,   -- Necklace of Necropsy
23037,   -- Ring of Spiritual Fervor
23038,   -- Band of Unnatural Forces
23039,   -- The Eye of Nerub
23040,   -- Glyph of Deflection
23041,   -- Slayer's Crest
23042,   -- Loatheb's Reflection
23043,   -- The Face of Death
23044,   -- Harbinger of Doom
23045,   -- Shroud of Dominion
23046,   -- The Restrained Essence of Sapphiron
23047,   -- Eye of the Dead
23048,   -- Sapphiron's Right Eye
23049,   -- Sapphiron's Left Eye
23050,   -- Cloak of the Necropolis
23051,   -- Glaive of the Defender
23053,   -- Stormrage's Talisman of Seething
23054,   -- Gressil, Dawn of Ruin
23056,   -- Hammer of the Twisting Nether
23057,   -- Gem of Trapped Innocents
23059,   -- Ring of the Dreadnaught
23060,   -- Bonescythe Ring
23061,   -- Ring of Faith
23062,   -- Frostfire Ring
23063,   -- Plagueheart Ring
23064,   -- Ring of The Dreamwalker
23065,   -- Ring of the Earthshatterer
23066,   -- Ring of Redemption
23067,   -- Ring of  the Cryptstalker
23068,   -- Legplates of Carnage
23069,   -- Necro-Knight's Garb
23070,   -- Leggings of Polarity
23071,   -- Leggings of Apocalypse
23073,   -- Boots of Displacement
23075,   -- Death's Bargain
23078,   -- Gauntlets of Undead Slaying
23081,   -- Handwraps of Undead Slaying
23082,   -- Handguards of Undead Slaying
23084,   -- Gloves of Undead Cleansing
23085,   -- Robe of Undead Cleansing
23087,   -- Breastplate of Undead Slaying
23088,   -- Chestguard of Undead Slaying
23089,   -- Tunic of Undead Slaying
23090,   -- Bracers of Undead Slaying
23091,   -- Bracers of Undead Cleansing
23092,   -- Wristguards of Undead Slaying
23093,   -- Wristwraps of Undead Slaying
23124,   -- Staff of Balzaphon
23125,   -- Chains of the Lich
23126,   -- Waistband of Balzaphon
23127,   -- Cloak of Revanchion
23128,   -- The Shadow's Grasp
23129,   -- Bracers of Mending
23132,   -- Lord Blackwood's Blade
23139,   -- Lord Blackwood's Buckler
23156,   -- Blackwood's Thigh
23168,   -- Scorn's Focal Dagger
23169,   -- Scorn's Icy Choker
23170,   -- The Frozen Clutch
23171,   -- The Axe of Severing
23173,   -- Abomination Skin Leggings
23177,   -- Lady Falther'ess' Finger
23178,   -- Mantle of Lady Falther'ess
23197,   -- Idol of the Moon
23198,   -- Idol of Brutality
23199,   -- Totem of the Storm
23200,   -- Totem of Sustaining
23201,   -- Libram of Divinity
23203,   -- Libram of Fervor
23206,   -- Mark of the Champion
23207,   -- Mark of the Champion
23219,   -- Girdle of the Mentor
23220,   -- Crystal Webbed Robe
23221,   -- Misplaced Servo Arm
23226,   -- Ghoul Skin Tunic
23237,   -- Ring of the Eternal Flame
23238,   -- Stygian Buckler
23242,   -- Claw of the Frost Wyrm
23243,   -- Champion's Plate Shoulders
23244,   -- Champion's Plate Helm
23251,   -- Champion's Chain Helm
23252,   -- Champion's Chain Shoulders
23253,   -- Champion's Dragonhide Headguard
23254,   -- Champion's Dragonhide Shoulders
23255,   -- Champion's Dreadweave Cowl
23256,   -- Champion's Dreadweave Spaulders
23257,   -- Champion's Leather Helm
23258,   -- Champion's Leather Shoulders
23259,   -- Champion's Mail Headguard
23260,   -- Champion's Mail Pauldrons
23261,   -- Champion's Satin Hood
23262,   -- Champion's Satin Mantle
23263,   -- Champion's Silk Cowl
23264,   -- Champion's Silk Mantle
23272,   -- Knight-Captain's Lamellar Breastplate
23273,   -- Knight-Captain's Lamellar Leggings
23274,   -- Knight-Lieutenant's Lamellar Gauntlets
23275,   -- Knight-Lieutenant's Lamellar Sabatons
23276,   -- Lieutenant Commander's Lamellar Headguard
23277,   -- Lieutenant Commander's Lamellar Shoulders
23278,   -- Knight-Lieutenant's Chain Greaves
23279,   -- Knight-Lieutenant's Chain Vices
23280,   -- Knight-Lieutenant's Dragonhide Grips
23281,   -- Knight-Lieutenant's Dragonhide Treads
23282,   -- Knight-Lieutenant's Dreadweave Handwraps
23283,   -- Knight-Lieutenant's Dreadweave Walkers
23284,   -- Knight-Lieutenant's Leather Grips
23285,   -- Knight-Lieutenant's Leather Walkers
23286,   -- Knight-Lieutenant's Plate Gauntlets
23287,   -- Knight-Lieutenant's Plate Greaves
23288,   -- Knight-Lieutenant's Satin Handwraps
23289,   -- Knight-Lieutenant's Satin Walkers
23290,   -- Knight-Lieutenant's Silk Handwraps
23291,   -- Knight-Lieutenant's Silk Walkers
23292,   -- Knight-Captain's Chain Hauberk
23293,   -- Knight-Captain's Chain Legguards
23294,   -- Knight-Captain's Dragonhide Chestpiece
23295,   -- Knight-Captain's Dragonhide Leggings
23296,   -- Knight-Captain's Dreadweave Legguards
23297,   -- Knight-Captain's Dreadweave Tunic
23298,   -- Knight-Captain's Leather Chestpiece
23299,   -- Knight-Captain's Leather Legguards
23300,   -- Knight-Captain's Plate Hauberk
23301,   -- Knight-Captain's Plate Leggings
23302,   -- Knight-Captain's Satin Legguards
23303,   -- Knight-Captain's Satin Tunic
23304,   -- Knight-Captain's Silk Legguards
23305,   -- Knight-Captain's Silk Tunic
23306,   -- Lieutenant Commander's Chain Helm
23307,   -- Lieutenant Commander's Chain Shoulders
23308,   -- Lieutenant Commander's Dragonhide Headguard
23309,   -- Lieutenant Commander's Dragonhide Shoulders
23310,   -- Lieutenant Commander's Dreadweave Cowl
23311,   -- Lieutenant Commander's Dreadweave Spaulders
23312,   -- Lieutenant Commander's Leather Helm
23313,   -- Lieutenant Commander's Leather Shoulders
23314,   -- Lieutenant Commander's Plate Helm
23315,   -- Lieutenant Commander's Plate Shoulders
23316,   -- Lieutenant Commander's Satin Hood
23317,   -- Lieutenant Commander's Satin Mantle
23318,   -- Lieutenant Commander's Silk Cowl
23319,   -- Lieutenant Commander's Silk Mantle
23320,   -- Tablet of Flame Shock VI
23323,   -- Crown of the Fire Festival
23324,   -- Mantle of the Fire Festival
23451,   -- Grand Marshal's Mageblade
23452,   -- Grand Marshal's Tome of Power
23453,   -- Grand Marshal's Tome of Restoration
23454,   -- Grand Marshal's Warhammer
23455,   -- Grand Marshal's Demolisher
23456,   -- Grand Marshal's Swiftblade
23464,   -- High Warlord's Battle Mace
23465,   -- High Warlord's Destroyer
23466,   -- High Warlord's Spellblade
23467,   -- High Warlord's Quickblade
23468,   -- High Warlord's Tome of Destruction
23469,   -- High Warlord's Tome of Mending
23557,   -- Larvae of the Great Worm
23558,   -- The Burrower's Shell
23570,   -- Jom Gabbar
23577,   -- The Hungering Cold
23663,   -- Girdle of Elemental Fury
23664,   -- Pauldrons of Elemental Fury
23665,   -- Leggings of Elemental Fury
23666,   -- Belt of the Grand Crusader
23667,   -- Spaulders of the Grand Crusader
23668,   -- Leggings of the Grand Crusader
24101,   -- Book of Ferocious Bite V
24102,   -- Manual of Eviscerate IX
24222   -- The Shadowfoot Stabber
);

-- * ITEM STATS
-- ^ Items changed: 981 

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES 
-- Ardent Custodian | Armor: 100 | SpellID 1: 13386
(868, 2, 4, 'Ardent Custodian', 19713, 4, 0, 1, 107664, 21532, 21, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 2100, 0, 0, 13386, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 61, 0, 0, 0, 0, 0, 1),
-- Staff of Jordan | Intellect: 11 | Spirit: 11 | SpellID 1: 9346
(873, 2, 10, 'Staff of Jordan', 20298, 4, 0, 1, 108853, 21770, 17, -1, -1, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3700, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 61, 0, 0, 0, 0, 0, 1),
-- Gnoll Casting Gloves | Armor: 22 | SpellID 1: 9393
(892, 4, 1, 'Gnoll Casting Gloves', 16950, 2, 0, 1, 1849, 369, 10, -1, -1, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9393, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 20, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 1),
-- Freezing Band | Frost Resistance: 10 | SpellID 1: 9404 | SpellID 2: 18799
(942, 4, 0, 'Freezing Band', 9835, 4, 0, 1, 18000, 4500, 11, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 9404, 1, 0, 0, 0, 0, -1, 18799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 63, 0, 0, 0, 0, 0, 1),
-- Warden Staff | Armor: 260 | Stamina: 11 | SpellID 1: 21411
(943, 2, 10, 'Warden Staff', 20256, 4, 0, 1, 214318, 42863, 17, -1, -1, 48, 43, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 21411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 62, 0, 0, 0, 0, 0, 1),
-- Elemental Mage Staff | Fire Resistance: 20 | Frost Resistance: 20 | SpellID 1: 17870 | SpellID 2: 17894
(944, 2, 10, 'Elemental Mage Staff', 20253, 4, 0, 1, 415003, 83000, 17, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 20, 0, 0, 3200, 0, 0, 17870, 1, 0, 0, -1, 0, -1, 17894, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lesser Firestone | SpellID 1: 758
(1254, 4, 0, 'Lesser Firestone', 24380, 1, 2, 1, 0, 0, 23, -1, -1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 758, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Witching Stave | Intellect: 8 | SpellID 1: 7708
(1484, 2, 10, 'Witching Stave', 9122, 3, 0, 1, 14612, 2922, 17, -1, -1, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600, 0, 0, 7708, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 80, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Spellforce Rod | SpellID 1: 9416
(1664, 2, 10, 'Spellforce Rod', 18289, 2, 0, 1, 73475, 14695, 17, -1, -1, 41, 36, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3200, 0, 0, 9416, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 85, 0, 0, 0, '', 27, 0, 0, 0, 0, 0, 1),
-- Robe of the Magi | Armor: 58 | Intellect: 6 | Spirit: 5 | SpellID 1: 9343
(1716, 4, 1, 'Robe of the Magi', 16667, 3, 0, 1, 25335, 5067, 20, -1, -1, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Double Link Tunic | Armor: 278 | SpellID 1: 21410
(1717, 4, 3, 'Double Link Tunic', 12960, 3, 0, 1, 15540, 3108, 5, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21410, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 120, 0, 0, 0, '', 42, 0, 0, 0, 0, 0, 1),
-- Tanglewood Staff | Spirit: 18 | Strength: 9 | SpellID 1: 7696
(1720, 2, 10, 'Tanglewood Staff', 21460, 3, 0, 1, 131048, 26209, 17, -1, -1, 46, 41, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 18, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 0, 0, 7696, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Underworld Band | Stamina: 10 | Spirit: 6 | SpellID 1: 7709
(1980, 4, 0, 'Underworld Band', 9840, 4, 0, 1, 24800, 6200, 11, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 10, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7709, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 61, 0, 0, 0, 0, 0, 1),
-- Swampchill Fetish | Frost Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 7701 | SpellID 2: 7708
(1992, 4, 0, 'Swampchill Fetish', 21612, 3, 0, 1, 27340, 5468, 23, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 7701, 1, 0, 0, 0, 0, 0, 7708, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Voodoo Band | Intellect: 7 | Spirit: 2
(1996, 4, 0, 'Voodoo Band', 9840, 2, 0, 1, 6880, 1720, 11, -1, -1, 37, 32, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Bloodscalp Channeling Staff | SpellID 1: 9411
(1998, 2, 10, 'Bloodscalp Channeling Staff', 20356, 2, 0, 1, 36199, 7239, 17, -1, -1, 33, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 9411, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 85, 0, 0, 0, '', 25, 0, 0, 0, 0, 0, 1),
-- Inferno Robe | Armor: 53 | SpellID 1: 9294
(2231, 4, 1, 'Inferno Robe', 16671, 2, 0, 1, 21933, 4386, 20, -1, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9294, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Staff of the Blessed Seer | Spirit: 3 | Stamina: 2 | SpellID 1: 9408
(2271, 2, 10, 'Staff of the Blessed Seer', 20346, 3, 0, 1, 16278, 3255, 17, -1, -1, 23, 18, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 3, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 80, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Necromancer Leggings | Armor: 45 | Intellect: 11 | Stamina: 12 | SpellID 1: 7708
(2277, 4, 1, 'Necromancer Leggings', 3173, 3, 0, 1, 18104, 3620, 7, -1, -1, 35, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7708, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Staff of the Shade | SpellID 1: 9414
(2549, 2, 10, 'Staff of the Shade', 20330, 3, 0, 1, 25082, 5016, 17, -1, -1, 27, 22, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2600, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 95, 0, 0, 0, '', 42, 0, 0, 0, 0, 0, 1),
-- Elven Spirit Claws | Armor: 91 | Spirit: 9 | Intellect: 5 | SpellID 1: 9411
(2564, 4, 2, 'Elven Spirit Claws', 4485, 3, 0, 1, 34085, 6817, 10, -1, -1, 50, 45, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Rod of Molten Fire | Fire Resistance: 6 | SpellID 1: 7688
(2565, 4, 0, 'Rod of Molten Fire', 6555, 3, 0, 1, 12453, 3113, 23, -1, -1, 35, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 7688, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Augural Shroud | Armor: 42 | Intellect: 10 | Agility: 11
(2620, 4, 1, 'Augural Shroud', 15284, 2, 0, 1, 15067, 3013, 1, -1, -1, 39, 34, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Holy Shroud | Armor: 40 | Spirit: 6 | SpellID 1: 25067
(2721, 4, 1, 'Holy Shroud', 16826, 3, 0, 1, 9914, 1982, 1, -1, -1, 32, 27, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Death Speaker Scepter | Spirit: 1 | SpellID 1: 7678 | SpellID 2: 7706
(2816, 2, 4, 'Death Speaker Scepter', 19669, 3, 0, 1, 36620, 7324, 21, -1, -1, 33, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 7678, 1, 0, 0, -1, 0, -1, 7706, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Hurricane 1-5 Frost Damage, no SpellID
(2824, 2, 2, 'Hurricane', 20554, 4, 0, 1, 160160, 32032, 15, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 63, 0, 1, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 2, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 63, 0, 0, 0, 0, 0, 1),
-- Antipodean Rod | SpellID 1: 7685 | SpellID 2: 7699
(2879, 4, 0, 'Antipodean Rod', 13109, 3, 0, 1, 15605, 3121, 23, -1, -1, 22, 17, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 7685, 1, 0, 0, -1, 0, -1, 7699, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Seal of Wrynn | Stamina: 2 | Spirit: 6
(2933, 4, 0, 'Seal of Wrynn', 9845, 2, 0, 1, 15000, 3750, 11, -1, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 2, 6, 6, 3, 0, 4, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Eye of Paleth | SpellID 1: 7679
(2943, 4, 0, 'Eye of Paleth', 21600, 2, 0, 1, 2150, 537, 23, -1, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7679, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, '', 25, 0, 0, 0, 0, 0, 1),
-- Cursed Eye of Paleth | SpellID 1: 7708
(2944, 4, 0, 'Cursed Eye of Paleth', 21598, 2, 0, 1, 0, 0, 23, -1, -1, 31, 26, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7708, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Icicle Rod | Intellect: 4 | SpellID 1: 7701
(2950, 2, 10, 'Icicle Rod', 20378, 2, 0, 1, 17384, 3476, 17, -1, -1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 75, 0, 0, 0, '', 23, 0, 0, 0, 0, 0, 1),
-- Night Watch Pantaloons | Armor: 39 | Spirit: 8 | Strength: 8
(2954, 4, 1, 'Night Watch Pantaloons', 14615, 2, 0, 1, 12425, 2485, 7, -1, -1, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 8, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Smoldering Pants | Armor: 35 | SpellID 1: 7688
(3073, 4, 1, 'Smoldering Pants', 16846, 2, 0, 1, 6059, 1211, 7, -1, -1, 26, 21, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7688, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Eye of Flame | Armor: 70 | Intellect: 10 | Spirit: 10 | Fire Resistance: 15 | SpellID 1: 17876
(3075, 4, 1, 'Eye of Flame', 15322, 4, 0, 1, 75368, 15073, 1, -1, -1, 55, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 15, 0, 0, 0, 0, 0, 0, 0, 17876, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 60, 0, 0, 0, '', 63, 0, 0, 0, 0, 0, 1),
-- Scorching Sash | Armor: 33 | Spirit: 9 | SpellID 1: 7688
(4117, 4, 1, 'Scorching Sash', 16830, 2, 0, 1, 15596, 3119, 6, -1, -1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7688, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Phoenix Pants | Armor: 34 | Intellect: 4 | SpellID 1: 7687
(4317, 4, 1, 'Phoenix Pants', 12399, 2, 0, 1, 5382, 1076, 7, -1, -1, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7687, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 1),
-- Azure Silk Gloves | Armor: 26 | Spirit: 3 | SpellID 1: 7701
(4319, 4, 1, 'Azure Silk Gloves', 17130, 2, 0, 1, 4076, 815, 10, -1, -1, 29, 24, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Shadow Hood | Armor: 37 | Intellect: 11 | SpellID 1: 7706
(4323, 4, 1, 'Shadow Hood', 15319, 2, 0, 1, 9995, 1999, 1, -1, -1, 34, 29, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7706, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Azure Silk Vest | Armor: 43 | Intellect: 9 | SpellID 1: 7699
(4324, 4, 1, 'Azure Silk Vest', 17128, 2, 0, 1, 9373, 1874, 5, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7699, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Star Belt | Armor: 30 | Spirit: 4 | SpellID 1: 9397
(4329, 4, 1, 'Star Belt', 6315, 2, 0, 1, 10603, 2120, 6, -1, -1, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Phoenix Gloves | Armor: 24 | SpellID 1: 7686
(4331, 4, 1, 'Phoenix Gloves', 13195, 2, 0, 1, 2630, 526, 10, -1, -1, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7686, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 1),
-- Minor Recombobulator
(4381, 4, 0, 'Minor Recombobulator', 22293, 1, 0, 1, 2400, 600, 12, -1, -1, 28, 0, 202, 140, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10, 0, 300000, 1153, 120000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 8, '', 4, 0, 0, 0, 0, 0, 1),
-- Swampland Trousers | Armor: 38 | Spirit: 7 | Agility: 8
(4505, 4, 1, 'Swampland Trousers', 16791, 2, 0, 1, 9871, 1974, 7, -1, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 8, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Pulsating Hydra Heart | Stamina: 2 | SpellID 1: 7685
(5183, 4, 0, 'Pulsating Hydra Heart', 21607, 3, 0, 1, 6300, 1575, 23, -1, -1, 20, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7685, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Spellstone | SpellID 1: 128 | Level 31
(5522, 4, 0, 'Spellstone', 21610, 1, 2, 1, 0, 0, 23, -1, -1, 31, 31, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, -1, 0, 180000, 0, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Murloc Scale Belt | Armor: 40 | Quality: Common | Bonding: None | Buy: 7.81 | Sell: 1.56
(5780, 4, 2, 'Murloc Scale Belt', 8905, 1, 0, 1, 781, 156, 6, -1, -1, 18, 13, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 20, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Wandering Boots | Armor: 26 | Intellect: 4 | Agility: 4
(6095, 4, 1, 'Wandering Boots', 11548, 2, 0, 1, 3440, 688, 8, -1, -1, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 4, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 1),
-- Orb of Soranruk | SpellID 1: 7684 | SpellID 2: 7705 | SpellID 3: 18956
(6898, 4, 0, 'Orb of Soran\'ruk', 21597, 2, 0, 1, 16530, 4132, 23, 31488, -1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7684, 1, 0, 0, -1, 0, 0, 7705, 1, 0, 0, -1, 0, -1, 18956, 0, 0, 0, 1800000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 23, 0, 0, 0, 0, 0, 1),
-- Azure Silk Pants | Armor: 36 | Intellect: 6 | SpellID 1: 7701
(7046, 4, 1, 'Azure Silk Pants', 13649, 2, 0, 1, 7473, 1494, 7, -1, -1, 28, 23, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Hands of Darkness | Armor: 26 | Spirit: 5 | SpellID 1: 7707
(7047, 4, 1, 'Hands of Darkness', 17146, 2, 0, 1, 4124, 824, 10, -1, -1, 29, 24, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7707, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Truefaith Gloves | Armor: 27 | Intellect: 3 | SpellID 1: 7680
(7049, 4, 1, 'Truefaith Gloves', 17143, 2, 0, 1, 4570, 914, 10, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7680, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 4, 0, 0, 0, 0, 0, 1),
-- Azure Silk Cloak | Armor: 23 | Spirit: 3 | SpellID 1: 7701
(7053, 4, 1, 'Azure Silk Cloak', 23092, 2, 0, 1, 11201, 2240, 16, -1, -1, 35, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Robe of Power | Armor: 55 | Intellect: 12 | Spirit: 8 | SpellID 1: 25109
(7054, 4, 1, 'Robe of Power', 17133, 3, 0, 1, 23504, 4700, 20, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25109, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Azure Shoulders | Armor: 38 | Stamina: 5 | SpellID 1: 7702
(7060, 4, 1, 'Azure Shoulders', 17132, 2, 0, 1, 13958, 2791, 3, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7702, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Crimson Silk Gloves | Armor: 35 | Intellect: 6 | SpellID 1: 23480
(7064, 4, 1, 'Crimson Silk Gloves', 13681, 2, 0, 1, 12849, 2569, 10, -1, -1, 42, 37, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Frost Leather Cloak | Armor: 24 | SpellID 1: 7701
(7377, 4, 1, 'Frost Leather Cloak', 23030, 2, 0, 1, 11347, 2269, 16, -1, -1, 36, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Manaweave Robe | Armor: 28 | Intellect: 2 | Spirit: 2
(7509, 4, 1, 'Manaweave Robe', 22958, 2, 0, 1, 1376, 275, 20, 128, -1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 2, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 60, 0, 0, 0, '', 2, 0, 0, 0, 0, 0, 1),
-- Lesser Spellfire Robes | Armor: 28 | Intellect: 2 | Spirit: 2
(7510, 4, 1, 'Lesser Spellfire Robes', 15201, 2, 0, 1, 2780, 556, 20, 128, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 2, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 60, 0, 0, 0, '', 2, 0, 0, 0, 0, 0, 1),
-- Astral Knot Robe | Armor: 40 | Stamina: 2 | Spirit: 8
(7511, 4, 1, 'Astral Knot Robe', 15223, 2, 0, 1, 9691, 1938, 20, 128, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 7, 2, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Nether-lace Robe | Armor: 40 | Stamina: 2 | Spirit: 8
(7512, 4, 1, 'Nether-lace Robe', 15232, 2, 0, 1, 9727, 1945, 20, 128, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 7, 2, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Ragefire Wand | SpellID 1: 7685
(7513, 2, 19, 'Ragefire Wand', 25078, 2, 0, 1, 49028, 9805, 26, 128, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 60, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 100, 7685, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Icefury Wand | SpellID 1: 7699
(7514, 2, 19, 'Icefury Wand', 25076, 2, 0, 1, 49212, 9842, 26, 128, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 68, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 100, 7699, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Celestial Orb | Intellect: 2 | SpellID 1: 13593 | SpellID 2: 7686 | SpellID 3: 7700
(7515, 4, 0, 'Celestial Orb', 25072, 3, 0, 1, 21530, 5382, 23, 31360, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 13593, 1, 0, 0, 0, 0, 0, 7686, 1, 0, 0, 1800000, 0, 0, 7700, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Band of the Unicorn | SpellID 1: 9397
(7553, 4, 0, 'Band of the Unicorn', 15422, 2, 0, 1, 10170, 2542, 11, -1, -1, 48, 43, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Orb of the Forgotten Seer | SpellID 1: 9397
(7685, 4, 0, 'Orb of the Forgotten Seer', 15725, 3, 0, 1, 27340, 5468, 23, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Blighted Leggings | Armor: 45 | Spirit: 17 | SpellID 1: 7708
(7709, 4, 1, 'Blighted Leggings', 15824, 3, 0, 1, 17797, 3559, 7, -1, -1, 35, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7708, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Hypnotic Blade | Intellect: 8 | Spirit: 3
(7714, 2, 15, 'Hypnotic Blade', 20318, 3, 0, 1, 19175, 3835, 13, -1, -1, 39, 34, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 65, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Hand of Righteousness | Spirit: 8 | SpellID 1: 7680
(7721, 2, 4, 'Hand of Righteousness', 19735, 3, 0, 1, 89611, 17922, 21, -1, -1, 44, 39, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 7680, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Omega Orb | SpellID 1: 9396
(7749, 4, 0, 'Omega Orb', 21595, 2, 0, 1, 19540, 4885, 23, -1, -1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, '', 27, 0, 0, 0, 0, 0, 1),
-- Windweaver Staff | Intellect: 15 | Stamina: 7 | SpellID 1: 13596
(7757, 2, 10, 'Windweaver Staff', 20316, 3, 0, 1, 64374, 12874, 17, -1, -1, 37, 32, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3100, 0, 0, 13596, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Archaic Defender | Armor: 100 | SpellID 1: 21411
(9385, 2, 8, 'Archaic Defender', 20249, 3, 0, 1, 61404, 12280, 17, -1, -1, 36, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 3100, 0, 0, 21411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 100, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Beacon of Hope | Spirit: 4 | SpellID 1: 9407
(9393, 4, 0, 'Beacon of Hope', 11410, 3, 0, 1, 31530, 7882, 23, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 9407, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Worn Running Boots | Armor: 72 | Agility: 11 | Stamina: 3 | Buy: 37.32 | Sell: 7.46
(9398, 4, 2, 'Worn Running Boots', 18361, 1, 0, 1, 3732, 746, 8, -1, -1, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 11, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Girdle of Golem Strength | Armor: 128 | Strength: 12 | SpellID 1: 13383
(9405, 4, 3, 'Girdle of Golem Strength', 18283, 3, 0, 1, 10277, 2055, 6, -1, -1, 33, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13383, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Papal Fez | Armor: 51 | Intellect: 17 | Spirit: 9 | SpellID 1: 9407
(9431, 4, 1, 'Papal Fez', 18334, 3, 0, 1, 24426, 4885, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Elemental Raiment | Armor: 59 | Fire Resistance: 5 | Nature Resistance: 5 | Frost Resistance: 5 | Shadow Resistance: 5 | Arcane Resistance: 5 | SpellID 1: 9417
(9434, 4, 1, 'Elemental Raiment', 18338, 3, 0, 1, 28240, 5648, 5, -1, -1, 41, 36, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 5, 5, 5, 5, 5, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Spidertank Oilrag | Armor: 20 | Agility: 7
(9448, 4, 1, 'Spidertank Oilrag', 18366, 2, 0, 1, 5774, 1154, 9, -1, -1, 33, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Acidic Walkers | Armor: 34 | Intellect: 8 | Spirit: 7 | Agility: 4 | Nature Resistance: 5
(9454, 4, 1, 'Acidic Walkers', 14749, 3, 0, 1, 9923, 1984, 8, -1, -1, 32, 27, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 7, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Bad Mojo Mask | Armor: 57 | Intellect: 24 | SpellID 1: 7709
(9470, 4, 1, 'Bad Mojo Mask', 18689, 3, 0, 1, 39292, 7858, 1, -1, -1, 49, 44, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7709, 1, 0, 0, 900000, 0, 180000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Witch Doctors Cane | Spirit: 9 | SpellID 1: 17990
(9482, 2, 10, 'Witch Doctor\'s Cane', 20269, 3, 0, 1, 147925, 29585, 17, -1, -1, 47, 42, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 17990, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Spellshock Leggings | Armor: 63 | Intellect: 10 | Stamina: 9 | SpellID 1: 9344
(9484, 4, 1, 'Spellshock Leggings', 22426, 3, 0, 1, 54811, 10962, 7, 2047, 255, 50, 45, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Nether-lace Tunic | Armor: 40 | Stamina: 2 | Spirit: 8
(9515, 4, 1, 'Nether-lace Tunic', 32153, 2, 0, 1, 10056, 2011, 5, 128, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 2, 5, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Astral Knot Blouse | Armor: 40 | Stamina: 2 | Spirit: 8
(9516, 4, 1, 'Astral Knot Blouse', 18440, 2, 0, 1, 10355, 2071, 5, 128, -1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 2, 5, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 5, 0, 0, 0, 0, 0, 1),
-- Celestial Stave | Intellect: 2 | SpellID 1: 13594 | SpellID 2: 7687 | SpellID 3: 7701
(9517, 2, 10, 'Celestial Stave', 20348, 2, 0, 1, 78687, 15737, 17, 128, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 13594, 1, 0, 0, -1, 0, -1, 7687, 1, 0, 0, -1, 0, -1, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Talvashs Gold Ring | Stamina: 5 | Spirit: 5
(9538, 4, 0, 'Talvash\'s Gold Ring', 224, 2, 0, 1, 25852, 6463, 11, -1, -1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Noggs Gold Ring | Stamina: 5 | Spirit: 5
(9588, 4, 0, 'Nogg\'s Gold Ring', 224, 2, 0, 1, 25852, 6463, 11, -1, -1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 43, 0, 0, 0, 0, 0, 1),
-- Bastion of Stormwind | Armor: 495 | SpellID 1: 13383
(9607, 4, 6, 'Bastion of Stormwind', 18533, 2, 0, 1, 8810, 1762, 14, 2, -1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13383, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 9, 0, 75, 0, 0, 0, '', 23, 0, 0, 0, 0, 0, 1),
-- Dual Reinforced Leggings | Armor: 391 | SpellID 1: 13386
(9625, 4, 3, 'Dual Reinforced Leggings', 28317, 3, 0, 1, 31721, 6344, 7, -1, -1, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Reforged Blade of Heroes | Stamina: 8 | Strength: 3
(9718, 2, 7, 'Reforged Blade of Heroes', 13488, 3, 0, 1, 57106, 11421, 13, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 8, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2200, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 90, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Shadoweave Pants | Armor: 48 | Stamina: 6 | SpellID 1: 9414
(10002, 4, 1, 'Shadoweave Pants', 19061, 2, 0, 1, 26380, 5276, 7, -1, -1, 42, 37, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Black Mageweave Gloves | Armor: 35 | SpellID 1: 9415
(10003, 4, 1, 'Black Mageweave Gloves', 18835, 2, 0, 1, 14296, 2859, 10, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Shadoweave Robe | Armor: 57 | Spirit: 7 | SpellID 1: 9414
(10004, 4, 1, 'Shadoweave Robe', 24951, 2, 0, 1, 28694, 5738, 20, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Red Mageweave Pants | Armor: 49 | Intellect: 12 | SpellID 1: 25109
(10009, 4, 1, 'Red Mageweave Pants', 16764, 2, 0, 1, 26424, 5284, 7, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25109, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Red Mageweave Gloves | Armor: 37 | Intellect: 10 | SpellID 1: 9396
(10018, 4, 1, 'Red Mageweave Gloves', 19111, 2, 0, 1, 16376, 3275, 10, -1, -1, 45, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Dreamweave Gloves | Armor: 41 | Spirit: 7 | Intellect: 4 | SpellID 1: 12019
(10019, 4, 1, 'Dreamweave Gloves', 18999, 3, 0, 1, 19721, 3944, 10, -1, -1, 45, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 7, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12019, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Dreamweave Vest | Armor: 65 | Spirit: 14 | Intellect: 9 | SpellID 1: 12019
(10021, 4, 1, 'Dreamweave Vest', 18949, 3, 0, 1, 39731, 7946, 5, -1, -1, 45, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 14, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12019, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Shadoweave Gloves | Armor: 37 | Intellect: 5 | SpellID 1: 9412
(10023, 4, 1, 'Shadoweave Gloves', 19055, 2, 0, 1, 16672, 3334, 10, -1, -1, 45, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9412, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Shadoweave Mask | Armor: 52 | Intellect: 10 | SpellID 1: 9325
(10025, 4, 1, 'Shadoweave Mask', 19060, 2, 0, 1, 33952, 6790, 1, -1, -1, 49, 44, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9325, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Shadoweave Shoulders | Armor: 46 | Stamina: 7 | SpellID 1: 9412
(10028, 4, 1, 'Shadoweave Shoulders', 18866, 2, 0, 1, 29692, 5938, 3, -1, -1, 47, 42, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9412, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Shadoweave Boots | Armor: 43 | Spirit: 10 | SpellID 1: 7709
(10031, 4, 1, 'Shadoweave Boots', 19051, 2, 0, 1, 30150, 6030, 8, -1, -1, 48, 43, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7709, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 35, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Dreamweave Circlet | Armor: 53 | Spirit: 12 | Intellect: 6 | SpellID 1: 9415
(10041, 4, 1, 'Dreamweave Circlet', 19000, 2, 0, 1, 42968, 8593, 1, -1, -1, 50, 45, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 12, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Cindercloth Robe | Armor: 59 | SpellID 1: 25065
(10042, 4, 1, 'Cindercloth Robe', 14606, 2, 0, 1, 33222, 6644, 20, -1, -1, 45, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25065, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Cindercloth Boots | Armor: 44 | SpellID 1: 23481
(10044, 4, 1, 'Cindercloth Boots', 18933, 2, 0, 1, 33827, 6765, 8, -1, -1, 49, 44, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23481, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 35, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Shadowy Bracers | Armor: 26 | Intellect: 8 | Spirit: 4 | SpellID 1: 7705
(10461, 4, 1, 'Shadowy Bracers', 19314, 2, 0, 1, 15410, 3082, 9, -1, -1, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7705, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 7, 0, 0, 0, 0, 0, 1),
-- Spellpower Goggles Xtreme | Armor: 46 | SpellID 1: 9417
(10502, 4, 1, 'Spellpower Goggles Xtreme', 19409, 2, 0, 1, 20441, 4088, 1, -1, -1, 43, 0, 202, 215, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 8, '', 7, 0, 0, 0, 0, 0, 1),
-- Quillshooter |
(10567, 2, 2, 'Quillshooter', 20649, 3, 0, 1, 43628, 8725, 15, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 58, 0, 7, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 2, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 75, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Freezing Shard | SpellID 1: 7701
(10572, 2, 19, 'Freezing Shard', 28747, 3, 0, 1, 47960, 9592, 26, 128, -1, 39, 34, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 61, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 100, 7701, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Deaths Head Vestment | Armor: 58 | Spirit: 13 | Stamina: 12 | Strength: 8
(10581, 4, 1, 'Death\'s Head Vestment', 19506, 3, 0, 1, 26553, 5310, 5, -1, -1, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 13, 7, 12, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Shard of Afrasa | SpellID 1: 12732
(10659, 4, 0, 'Shard of Afrasa', 2516, 2, 0, 1, 18650, 4662, 12, -1, -1, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12732, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Vanquishers Sword | SpellID 1: 9329
(10823, 2, 7, 'Vanquisher\'s Sword', 20086, 2, 0, 1, 88981, 17796, 13, -1, -1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2200, 0, 0, 9329, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 90, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Amberglow Talisman | Agility: 1 | Spirit: 10
(10824, 4, 0, 'Amberglow Talisman', 9859, 2, 0, 1, 23720, 5930, 2, -1, -1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 1, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Spire of Hakkar | Spirit: 16 | Stamina: 16 | SpellID 1: 9416
(10844, 2, 10, 'Spire of Hakkar', 20258, 3, 0, 1, 221570, 44314, 17, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 16, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 0, 0, 9416, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Nether Force Wand | SpellID 1: 13592
(11263, 2, 19, 'Nether Force Wand', 25077, 2, 0, 1, 50517, 10103, 26, 128, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 64, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 100, 13592, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Lesser Magic Wand
(11287, 2, 19, 'Lesser Magic Wand', 21096, 1, 32768, 1, 2544, 508, 26, -1, -1, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 11, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 100, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Greater Magic Wand
(11288, 2, 19, 'Greater Magic Wand', 21097, 1, 32768, 1, 7675, 1535, 26, -1, -1, 23, 13, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 28, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 100, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lesser Mystic Wand
(11289, 2, 19, 'Lesser Mystic Wand', 21098, 1, 32768, 1, 17905, 3581, 26, -1, -1, 31, 26, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 39, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 100, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Greater Mystic Wand
(11290, 2, 19, 'Greater Mystic Wand', 21101, 1, 32768, 1, 26316, 5263, 26, -1, -1, 35, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 71, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 100, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Flameseer Mantle | Armor: 51 | Spirit: 10 | SpellID 1: 23480
(11310, 4, 1, 'Flameseer Mantle', 5116, 3, 0, 1, 32990, 6598, 3, -1, -1, 47, 42, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Spritecaster Cape | Armor: 34 | Stamina: 2 | Intellect: 4 | Spirit: 10
(11623, 4, 1, 'Spritecaster Cape', 26137, 2, 0, 1, 49999, 9999, 16, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 2, 5, 4, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Kentic Amice | Armor: 51 | Intellect: 13 | Spirit: 7
(11624, 4, 1, 'Kentic Amice', 28788, 2, 0, 1, 45399, 9079, 3, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Blackveil Cape | Armor: 34 | Strength: 5 | Agility: 10
(11626, 4, 1, 'Blackveil Cape', 26278, 2, 0, 1, 48493, 9698, 16, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 5, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Fleetfoot Greaves | Armor: 198 | Agility: 15 | Spirit: 5
(11627, 4, 3, 'Fleetfoot Greaves', 28658, 2, 0, 1, 73344, 14668, 8, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 5, 0, 7, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Houndmasters Rifle | SpellID 1: 18201
(11629, 2, 3, 'Houndmaster\'s Rifle', 28781, 3, 0, 1, 122636, 24527, 26, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 3, 100, 18201, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 75, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Stoneshell Guard | Armor: 1706 | Strength: 5
(11631, 4, 6, 'Stoneshell Guard', 21613, 2, 0, 1, 99468, 19893, 14, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 31, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Earthslag Shoulders | Armor: 373 | Strength: 11 | Spirit: 11
(11632, 4, 4, 'Earthslag Shoulders', 28725, 2, 0, 1, 46802, 9360, 3, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 11, 5, 0, 7, 0, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Spiderfang Carapace | Armor: 515 | Strength: 16 | Stamina: 14 | Agility: 3
(11633, 4, 4, 'Spiderfang Carapace', 21898, 2, 0, 1, 70380, 14076, 5, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 16, 7, 14, 5, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Silkweb Gloves | Armor: 44 | Stamina: 12 | Intellect: 11
(11634, 4, 1, 'Silkweb Gloves', 28741, 2, 0, 1, 35319, 7063, 10, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Banthok Sash | Armor: 43 | Stamina: 10 | Intellect: 12
(11662, 4, 1, 'Ban\'thok Sash', 28642, 2, 0, 1, 37313, 7462, 6, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Ogreseer Fists | Armor: 88 | Intellect: 10 | Spirit: 10 | Strength: 4
(11665, 4, 2, 'Ogreseer Fists', 17263, 2, 0, 1, 42661, 8532, 10, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 5, 10, 6, 10, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Naglering | Arcane Resistance: 10 | SpellID 1: 15438 | SpellID 2: 15464
(11669, 4, 0, 'Naglering', 9837, 3, 0, 1, 68630, 17157, 11, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 15438, 1, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Shadefiend Boots | Armor: 99 | Strength: 4 | Stamina: 6 | Agility: 9
(11675, 4, 2, 'Shadefiend Boots', 18979, 2, 0, 1, 72320, 14464, 8, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 4, 7, 6, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 50, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Graverot Cape | Armor: 36 | Stamina: 11 | Spirit: 6
(11677, 4, 1, 'Graverot Cape', 28381, 2, 0, 1, 58276, 11655, 16, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 11, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Rubicund Armguards | Armor: 130 | Stamina: 11 | Agility: 6
(11679, 4, 3, 'Rubicund Armguards', 28820, 2, 0, 1, 58691, 11738, 9, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 11, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Splinthide Shoulders | Armor: 108 | Strength: 12 | Spirit: 12
(11685, 4, 2, 'Splinthide Shoulders', 28704, 2, 0, 1, 69706, 13941, 3, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 12, 7, 0, 5, 0, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 60, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Grizzles Skinner | Strength: 5 | Stamina: 5 | Agility: 5
(11702, 2, 0, 'Grizzle\'s Skinner', 28765, 2, 0, 1, 183763, 36752, 21, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 5, 7, 5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 90, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Stonewall Girdle | Armor: 455 | Stamina: 5
(11703, 4, 4, 'Stonewall Girdle', 28686, 2, 0, 1, 36892, 7378, 6, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Savage Gladiator Chain | Armor: 369 | Stamina: 13 | SpellID 1: 21416 | SpellID 2: 7598
(11726, 4, 3, 'Savage Gladiator Chain', 28724, 4, 0, 1, 167666, 33533, 5, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21416, 1, 0, 0, -1, 0, -1, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 140, 0, 0, 0, '', 64, 0, 0, 0, 0, 0, 1),
-- Savage Gladiator Leggings | Armor: 296 | Stamina: 19 | Strength: 12 | Spirit: 18
(11728, 4, 3, 'Savage Gladiator Leggings', 21694, 3, 0, 1, 126682, 25336, 7, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 19, 3, 0, 4, 12, 6, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Savage Gladiator Helm | Armor: 275 | Stamina: 28 | Spirit: 12
(11729, 4, 3, 'Savage Gladiator Helm', 28826, 3, 0, 1, 95365, 19073, 1, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 28, 3, 0, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 70, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Savage Gladiator Grips | Armor: 211 | Agility: 9 | Stamina: 14 | Spirit: 14
(11730, 4, 3, 'Savage Gladiator Grips', 28723, 3, 0, 1, 63813, 12762, 10, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 9, 5, 0, 7, 14, 4, 0, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Savage Gladiator Greaves | Armor: 233 | Agility: 13 | Strength: 13 | Stamina: 13
(11731, 4, 3, 'Savage Gladiator Greaves', 28666, 3, 0, 1, 96501, 19300, 8, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 13, 4, 13, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Fists of Phalanx | Armor: 334 | Strength: 17 | Stamina: 2
(11745, 4, 4, 'Fists of Phalanx', 28740, 2, 0, 1, 39391, 7878, 10, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 17, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Golem Skull Helm | Armor: 477 | Stamina: 18 | Strength: 18 | SpellID 1: 21407
(11746, 4, 4, 'Golem Skull Helm', 21717, 3, 0, 1, 59309, 11861, 1, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 4, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Flamestrider Robes | Armor: 153 | Spirit: 25 | Stamina: 5 | Intellect: 6 | Fire Resistance: 10
(11747, 4, 2, 'Flamestrider Robes', 21719, 3, 0, 1, 83299, 16659, 20, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 7, 5, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Pyric Caduceus | SpellID 1: 7688
(11748, 2, 19, 'Pyric Caduceus', 28807, 3, 0, 1, 125416, 25083, 26, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 123, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 100, 7688, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Searingscale Leggings | Armor: 277 | Spirit: 25 | Intellect: 10 | Fire Resistance: 10
(11749, 4, 3, 'Searingscale Leggings', 28722, 3, 0, 1, 100708, 20141, 7, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 5, 10, 7, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 277, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Kindling Stave | Spirit: 25 | Stamina: 10 | Fire Resistance: 10
(11750, 2, 10, 'Kindling Stave', 21723, 3, 0, 1, 216172, 43234, 17, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 7, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 2900, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Boreal Mantle | Armor: 61 | Frost Resistance: 10 | SpellID 1: 9308
(11782, 4, 1, 'Boreal Mantle', 21771, 3, 0, 1, 63602, 12720, 3, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 10, 0, 0, 0, 0, 0, 9308, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Arbiters Blade | Intellect: 6 | Spirit: 10
(11784, 2, 7, 'Arbiter\'s Blade', 21773, 3, 0, 1, 169178, 33835, 21, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 7, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 90, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Rock Golem Bulwark | Armor: 1994 | Stamina: 10 | Arcane Resistance: 15
(11785, 4, 6, 'Rock Golem Bulwark', 18814, 3, 0, 1, 145415, 29083, 14, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1994, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 36, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Lavacrest Leggings | Armor: 483 | Strength: 20 | Stamina: 12
(11802, 4, 4, 'Lavacrest Leggings', 19843, 2, 0, 1, 89883, 17976, 7, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 20, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Force of Magma | SpellID 1: 18086
(11803, 2, 5, 'Force of Magma', 21793, 2, 0, 1, 250889, 50177, 17, -1, -1, 56, 51, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3200, 0, 0, 18086, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Sash of the Burning Heart | Armor: 46 | Spirit: 15 | Stamina: 10 | SpellID 1: 23480
(11807, 4, 1, 'Sash of the Burning Heart', 28825, 3, 0, 1, 45767, 9153, 6, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 15, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Circle of Flame | Armor: 74 | Spirit: 15 | Fire Resistance: 15 | SpellID 1: 17447
(11808, 4, 1, 'Circle of Flame', 28268, 4, 0, 1, 96461, 19292, 1, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 15, 0, 0, 0, 0, 0, 0, 0, 17447, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 60, 0, 0, 0, '', 64, 0, 0, 0, 0, 0, 1),
-- Force of Will | SpellID 1: 15594 | SpellID 2: 13390
(11810, 4, 0, 'Force of Will', 19767, 3, 0, 1, 40000, 10000, 12, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15594, 1, 0, 0, -1, 0, -1, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cape of the Fire Salamander | Armor: 41 | Spirit: 16 | Stamina: 5 | Fire Resistance: 7
(11812, 4, 1, 'Cape of the Fire Salamander', 22997, 3, 0, 1, 69895, 13979, 16, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 16, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Molten Fists | Armor: 215 | Fire Resistance: 10 | SpellID 1: 18186
(11814, 4, 3, 'Molten Fists', 21805, 3, 0, 1, 65415, 13083, 10, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18186, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Angerforges Battle Axe | Strength: 22 | Stamina: 7
(11816, 2, 1, 'Angerforge\'s Battle Axe', 22212, 2, 0, 1, 244414, 48882, 17, -1, -1, 56, 51, 0, 0, 197, 0, 0, 0, 0, 0, 1, 0, 4, 22, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2600, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Second Wind | SpellID 1: 15604 | SpellID 2: 9407
(11819, 4, 0, 'Second Wind', 18725, 3, 0, 1, 40000, 10000, 12, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15604, 0, 0, 0, 900000, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Royal Decorated Armor | Armor: 313 | Strength: 7 | Stamina: 22
(11820, 4, 3, 'Royal Decorated Armor', 28819, 2, 0, 1, 133809, 26761, 5, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 7, 7, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 120, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Omnicast Boots | Armor: 52 | SpellID 1: 9343
(11822, 4, 1, 'Omnicast Boots', 28660, 2, 0, 1, 70768, 14153, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Luminary Kilt | Armor: 133 | Intellect: 17 | Spirit: 17
(11823, 4, 2, 'Luminary Kilt', 28728, 2, 0, 1, 118385, 23677, 7, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 75, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Cyclopean Band | Spirit: 15 | Strength: 4 | Intellect: 4
(11824, 4, 0, 'Cyclopean Band', 9847, 3, 0, 1, 54630, 13657, 11, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 6, 15, 4, 4, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Burst of Knowledge | SpellID 1: 15646 | SpellID 2: 9397
(11832, 4, 0, 'Burst of Knowledge', 19764, 3, 0, 1, 40000, 10000, 12, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15646, 0, 0, 0, 900000, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Senior Designers Pantaloons | Armor: 62 | Spirit: 20 | Stamina: 9
(11841, 4, 1, 'Senior Designer\'s Pantaloons', 28720, 2, 0, 1, 75164, 15032, 7, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 20, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Lead Surveyors Mantle | Armor: 223 | Intellect: 14 | Spirit: 8
(11842, 4, 3, 'Lead Surveyor\'s Mantle', 28792, 2, 0, 1, 85252, 17050, 3, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 70, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Spirit of Aquementas | SpellID 1: 12854
(11904, 4, 0, 'Spirit of Aquementas', 21936, 2, 0, 1, 55260, 13815, 23, -1, -1, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12854, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, '', 30, 0, 0, 0, 0, 0, 1),
-- Blood-etched Blade | SpellID 1: 15695
(11922, 2, 15, 'Blood-etched Blade', 25609, 3, 0, 1, 217457, 43491, 13, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 15695, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 65, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- The Hammer of Grace | SpellID 1: 9316
(11923, 2, 4, 'The Hammer of Grace', 21956, 3, 0, 1, 218244, 43648, 21, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 9316, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Robes of the Royal Crown | Armor: 85 | Spirit: 29 | Intellect: 9 | Stamina: 5 | Agility: 3
(11924, 4, 1, 'Robes of the Royal Crown', 28814, 3, 0, 1, 102378, 20475, 20, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 29, 5, 9, 7, 5, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Legplates of the Eternal Guardian | Armor: 742 | SpellID 1: 21418
(11927, 4, 4, 'Legplates of the Eternal Guardian', 21961, 3, 0, 1, 82283, 16456, 7, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21418, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Thaurissans Royal Scepter | Spirit: 15 | Intellect: 5 | Stamina: 5
(11928, 4, 0, 'Thaurissan\'s Royal Scepter', 21962, 3, 0, 1, 88181, 22045, 23, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 15, 5, 5, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Guiding Stave of Wisdom | Spirit: 29 | Stamina: 10 | Frost Resistance: 10
(11932, 2, 10, 'Guiding Stave of Wisdom', 21968, 3, 0, 1, 291612, 58322, 17, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 29, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 3300, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Star of Mystaria | Spirit: 9 | Intellect: 9 | Stamina: 9 | Agility: 7
(12103, 4, 0, 'Star of Mystaria', 23717, 3, 0, 1, 48630, 12157, 2, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 5, 9, 7, 9, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Raincaster Drape | Armor: 38 | Spirit: 9 | SpellID 1: 9407
(12110, 4, 1, 'Raincaster Drape', 28240, 2, 0, 1, 58054, 11610, 16, -1, -1, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Sunborne Cape | Armor: 36 | Spirit: 5 | SpellID 1: 9399
(12113, 4, 1, 'Sunborne Cape', 28210, 2, 0, 1, 52219, 10443, 16, -1, -1, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9399, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Stalwart Clutch | Armor: 300 | Stamina: 12 | SpellID 1: 21408
(12115, 4, 4, 'Stalwart Clutch', 28224, 2, 0, 1, 35060, 7012, 6, -1, -1, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 40, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Cindercloth Leggings | Armor: 56 | Spirit: 15 | SpellID 1: 9400
(12256, 4, 1, 'Cindercloth Leggings', 16764, 2, 0, 1, 43828, 8765, 7, -1, -1, 49, 44, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9400, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 1),
-- Searing Golden Blade | SpellID 1: 7687
(12260, 2, 15, 'Searing Golden Blade', 22258, 2, 0, 1, 51977, 10395, 13, -1, -1, 39, 34, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 7687, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 55, 0, 0, 0, '', 26, 0, 0, 0, 0, 0, 1),
-- The Judges Gavel | SpellID 1: 16451
(12400, 2, 5, 'The Judge\'s Gavel', 28673, 3, 0, 1, 189166, 37833, 17, 2047, 255, 52, 47, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 16451, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Bloodfire Talons | Armor: 96 | Spirit: 9 | Intellect: 5 | Fire Resistance: 10 | SpellID 1: 9415
(12464, 4, 2, 'Bloodfire Talons', 28680, 3, 0, 1, 42601, 8520, 10, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- The Judges Gavel | SpellID 1: 16451
(12528, 2, 5, 'The Judge\'s Gavel', 28673, 3, 0, 1, 189166, 37833, 17, -1, -1, 52, 47, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 16451, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Spire of the Stoneshaper | Intellect: 17 | Spirit: 20 | SpellID 1: 16470
(12532, 2, 10, 'Spire of the Stoneshaper', 22722, 3, 0, 1, 242507, 48501, 17, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 20, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 0, 0, 16470, 0, 0, 0, 900000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Funeral Pyre Vestment | Armor: 73 | Spirit: 25 | Fire Resistance: 10 | Shadow Resistance: 10
(12542, 4, 1, 'Funeral Pyre Vestment', 26053, 3, 0, 1, 61781, 12356, 20, -1, -1, 51, 46, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Songstone of Ironforge | Intellect: 7 | Spirit: 4 | SpellID 1: 9415
(12543, 4, 0, 'Songstone of Ironforge', 9837, 3, 0, 1, 28625, 7156, 11, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Eye of Orgrimmar | Spirit: 4 | Intellect: 7 | SpellID 1: 9415
(12545, 4, 0, 'Eye of Orgrimmar', 9837, 3, 0, 1, 28330, 7082, 11, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 4, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Mar Aloms Grip | Armor: 100 | Spirit: 15 | SpellID 1: 9407
(12547, 4, 2, 'Mar Alom\'s Grip', 28797, 3, 0, 1, 52597, 10519, 10, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Runed Golem Shackles | Armor: 244 | Strength: 14 | SpellID 1: 13384
(12550, 4, 4, 'Runed Golem Shackles', 28824, 3, 0, 1, 32324, 6464, 9, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Hands of the Exalted Herald | Armor: 88 | Intellect: 13 | Spirit: 12 | SpellID 1: 25067
(12554, 4, 1, 'Hands of the Exalted Herald', 28771, 3, 0, 1, 47373, 9474, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Ebonsteel Spaulders | Armor: 463 | Stamina: 17 | Agility: 10 | Spirit: 9
(12557, 4, 4, 'Ebonsteel Spaulders', 28727, 3, 0, 1, 71841, 14368, 3, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 17, 3, 10, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Longsword | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(12584, 2, 7, 'Grand Marshal\'s Longsword', 31966, 4, 32768, 1, 248182, 49636, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Dustfeather Sash | Armor: 49 | Intellect: 21 | Stamina: 10
(12589, 4, 1, 'Dustfeather Sash', 21796, 3, 0, 1, 51257, 10251, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Felstriker -> Deathstriker
(12590, 2, 15, 'Deathstriker', 25613, 4, 0, 1, 378124, 75624, 13, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1700, 0, 0, 16551, 2, 0, 1.4, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Blackblade of Shahram | SpellID 1: 16602
(12592, 2, 8, 'Blackblade of Shahram', 22906, 4, 0, 1, 476208, 95241, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 16602, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Draconian Deflector | Armor: 2153 | Stamina: 7 | Fire Resistance: 10 | SpellID 1: 21411
(12602, 4, 6, 'Draconian Deflector', 23419, 3, 0, 1, 176064, 35212, 14, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2153, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21411, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 40, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Crystallized Girdle | Armor: 97 | Stamina: 6 | Intellect: 22 | Spirit: 6
(12606, 4, 2, 'Crystallized Girdle', 22837, 3, 0, 1, 63340, 12668, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 6, 5, 22, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Butchers Apron | Armor: 38 | Stamina: 4 | Spirit: 12
(12608, 4, 1, 'Butcher\'s Apron', 28693, 2, 0, 1, 66160, 13232, 16, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 4, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Polychromatic Visionwrap | Arcane Resistance: 20 | Fire Resistance: 20 | Nature Resistance: 20 | Frost Resistance: 20 | Shadow Resistance: 20
(12609, 4, 0, 'Polychromatic Visionwrap', 22843, 3, 0, 1, 102494, 20498, 5, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 20, 20, 20, 20, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Wildthorn Mail | Armor: 322 | Spirit: 11 | Stamina: 5 | SpellID 1: 17991
(12624, 4, 3, 'Wildthorn Mail', 25754, 3, 0, 1, 103212, 20642, 5, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 11, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17991, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 120, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Storm Gauntlets | Armor: 218 | Intellect: 7 | Fire Resistance: 10 | SpellID 1: 16615 | SpellID 2: 9411
(12632, 4, 3, 'Storm Gauntlets', 25835, 3, 0, 1, 70498, 14099, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 10, 0, 0, 0, 0, 0, 0, 0, 16615, 1, 0, 0, -1, 0, -1, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Whitesoul Helm | Armor: 629 | Spirit: 15 | Intellect: 15 | SpellID 1: 9317
(12633, 4, 4, 'Whitesoul Helm', 22901, 3, 0, 1, 74299, 14859, 1, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 15, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9317, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Backusarian Gauntlets | Armor: 392 | Strength: 9 | Stamina: 15 | Spirit: 14
(12637, 4, 4, 'Backusarian Gauntlets', 22910, 3, 0, 1, 51582, 10316, 10, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 9, 7, 15, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Invulnerable Mail | Armor: 554 | SpellID 1: 16620 | SpellID 2: 21416
(12641, 4, 3, 'Invulnerable Mail', 25748, 4, 0, 1, 219182, 43836, 5, -1, -1, 63, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16620, 1, 0, 0, -1, 0, -1, 21416, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Blackcrow | SpellID 1: 15464
(12651, 2, 18, 'Blackcrow', 22929, 3, 0, 1, 180279, 36055, 26, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 117, 0, 1, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3200, 2, 100, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 75, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Leggings of Arcana | Armor: 166 | Spirit: 30 | Intellect: 20 | SpellID 1: 9415
(12756, 4, 2, 'Leggings of Arcana', 23199, 4, 0, 1, 175287, 35057, 7, -1, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 30, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Mixologists Tunic | Armor: 144 | Strength: 15 | Stamina: 14 | Agility: 5
(12793, 4, 2, 'Mixologist\'s Tunic', 23266, 2, 0, 1, 99230, 19846, 5, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 15, 7, 14, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Legguards of the Chromatic Defier | Armor: 349 | Agility: 30 | Strength: 20 | Stamina: 15
(12903, 4, 3, 'Legguards of the Chromatic Defier', 23473, 4, 0, 1, 227412, 45482, 7, -1, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 30, 4, 20, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Wildfire Cape | Armor: 39 | Fire Resistance: 15
(12905, 4, 1, 'Wildfire Cape', 28605, 2, 0, 1, 81798, 16359, 16, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Briarwood Reed | SpellID 1: 15714
(12930, 4, 0, 'Briarwood Reed', 8232, 3, 0, 1, 40000, 10000, 12, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15714, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- DalRends Tribal Guardian | Armor: 100 | SpellID 1: 13390
(12939, 2, 7, 'Dal\'Rend\'s Tribal Guardian', 25647, 3, 0, 1, 301818, 60363, 22, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 41, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Legplates of the Chromatic Defier | Armor: 349 | Intellect: 9 | Spirit: 30 | Stamina: 8
(12945, 4, 3, 'Legplates of the Chromatic Defier', 23473, 4, 0, 1, 212825, 42565, 7, -1, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 6, 30, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Spiritshroud Leggings | Armor: 78 | Spirit: 21 | Intellect: 21 | Stamina: 10 | Agility: 5
(12965, 4, 1, 'Spiritshroud Leggings', 23551, 3, 0, 1, 111721, 22344, 7, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 21, 5, 21, 7, 10, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Blackmist Armguards | Armor: 77 | Stamina: 13 | Spirit: 5 | Shadow Resistance: 10 | SpellID 1: 15464
(12966, 4, 2, 'Blackmist Armguards', 23552, 3, 0, 1, 70092, 14018, 9, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 10, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Seeping Willow | SpellID 1: 17196
(12969, 2, 5, 'Seeping Willow', 23557, 3, 0, 1, 354420, 70884, 17, -1, -1, 63, 58, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3300, 0, 0, 17196, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Ring of Defense | Armor: 20 | SpellID 1: 13384
(12985, 4, 0, 'Ring of Defense', 28812, 3, 0, 1, 4615, 1153, 11, -1, -1, 22, 17, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13384, 1, 0, 0, 900000, 0, 30000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 7, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Magicians Mantle | Armor: 32 | Intellect: 9 | SpellID 1: 9393
(12998, 4, 1, 'Magician\'s Mantle', 28651, 3, 0, 1, 5103, 1020, 3, -1, -1, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9393, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Maidens Circle | Spirit: 6 | Intellect: 7 | SpellID 1: 9415
(13001, 4, 0, 'Maiden\'s Circle', 9833, 3, 0, 1, 42594, 10648, 11, -1, -1, 61, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 6, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Mageflame Cloak | Armor: 41 | Fire Resistance: 10 | SpellID 1: 23481
(13007, 4, 1, 'Mageflame Cloak', 28616, 3, 0, 1, 67926, 13585, 16, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 10, 0, 0, 0, 0, 0, 0, 0, 23481, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Elder Wizards Mantle | Armor: 60 | Intellect: 20 | SpellID 1: 9396
(13013, 4, 1, 'Elder Wizard\'s Mantle', 28643, 3, 0, 1, 61778, 12355, 3, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Umbral Crystal | Stamina: 5 | SpellID 1: 9412
(13029, 4, 0, 'Umbral Crystal', 24122, 3, 0, 1, 22453, 5613, 23, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9412, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 45, 0, 0, 0, 0, 0, 1),
-- Orb of Mistmantle | Spirit: 4 | SpellID 1: 7677 | SpellID 2: 7706
(13031, 4, 0, 'Orb of Mistmantle', 28803, 3, 0, 1, 5605, 1401, 23, -1, -1, 28, 23, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 7677, 1, 0, 0, 0, 0, 0, 7706, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 42, 0, 0, 0, 0, 0, 1),
-- Guardian Blade | Armor: 40 | SpellID 1: 21409
(13041, 2, 8, 'Guardian Blade', 28768, 3, 0, 1, 22582, 4516, 17, -1, -1, 26, 21, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 21409, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 95, 0, 0, 0, '', 42, 0, 0, 0, 0, 0, 1),
-- Deanship Claymore | Spirit: 4 | SpellID 1: 21411
(13049, 2, 8, 'Deanship Claymore', 28707, 3, 0, 1, 30958, 6191, 17, -1, -1, 29, 26, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 21411, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 100, 0, 0, 0, '', 42, 0, 0, 0, 0, 0, 1),
-- Stonegrip Gauntlets | Armor: 392 | Strength: 9 | Stamina: 14 | SpellID 1: 21411
(13072, 4, 4, 'Stonegrip Gauntlets', 28352, 3, 0, 1, 52134, 10426, 10, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 9, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Golem Shard Leggings | Armor: 429 | Strength: 22 | SpellID 1: 18369
(13074, 4, 4, 'Golem Shard Leggings', 21961, 3, 0, 1, 40124, 8024, 7, -1, -1, 46, 41, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18369, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 100, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Medallion of Grand Marshal Morris | Stamina: 7 | SpellID 1: 21411
(13091, 4, 0, 'Medallion of Grand Marshal Morris', 23717, 3, 0, 1, 42549, 10637, 2, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21411, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Wolfrunner Shoes | Armor: 58 | Stamina: 11 | Spirit: 11 | Strength: 11
(13101, 4, 1, 'Wolfrunner Shoes', 28597, 3, 0, 1, 71592, 14318, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 11, 6, 11, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Cassandras Grace | Armor: 55 | Spirit: 9 | Stamina: 7 | SpellID 1: 18031
(13102, 4, 1, 'Cassandra\'s Grace', 28974, 3, 0, 1, 34399, 6879, 1, -1, -1, 47, 42, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Tooth of Gnarr | Intellect: 15 | Spirit: 10
(13141, 4, 0, 'Tooth of Gnarr', 9860, 3, 0, 1, 48373, 12093, 2, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Brigam Girdle | Armor: 369 | Strength: 15 | Stamina: 16 | Spirit: 10
(13142, 4, 4, 'Brigam Girdle', 23628, 3, 0, 1, 58210, 11642, 6, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 15, 7, 16, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Trindlehaven Staff | Intellect: 30 | Stamina: 12
(13161, 2, 10, 'Trindlehaven Staff', 23673, 3, 0, 1, 328749, 65749, 17, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 30, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2100, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Relentless Scythe | Agility: 8 | Strength: 20 | Stamina: 8 | SpellID 1: 13665
(13163, 2, 8, 'Relentless Scythe', 23683, 3, 0, 1, 347689, 69537, 17, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 8, 4, 20, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Plate of the Shaman King | Armor: 627 | Stamina: 12 | Spirit: 29
(13168, 4, 4, 'Plate of the Shaman King', 23559, 3, 0, 1, 95425, 19085, 5, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 6, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Tressermane Leggings | Armor: 148 | Spirit: 23 | Stamina: 12 | Intellect: 14
(13169, 4, 2, 'Tressermane Leggings', 23710, 3, 0, 1, 119741, 23948, 7, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 23, 7, 12, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 75, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Skyshroud Leggings | Armor: 75 | Stamina: 8 | Intellect: 8 | SpellID 1: 14127
(13170, 4, 1, 'Skyshroud Leggings', 28713, 3, 0, 1, 96151, 19230, 7, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 8, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Talisman of Evasion | Agility: 7 | SpellID 1: 13669
(13177, 4, 0, 'Talisman of Evasion', 6494, 2, 0, 1, 65585, 16396, 2, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Rosewine Circle | Spirit: 16 | Agility: 7
(13178, 4, 0, 'Rosewine Circle', 23728, 3, 0, 1, 55130, 13782, 11, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 6, 16, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Brazecore Armguards | Armor: 155 | Intellect: 7 | Stamina: 10 | Spirit: 11
(13179, 4, 3, 'Brazecore Armguards', 23730, 3, 0, 1, 74583, 14916, 9, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 7, 10, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Phase Blade | Stamina: 8 | Strength: 5
(13182, 2, 7, 'Phase Blade', 23734, 2, 0, 1, 220713, 44142, 13, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 8, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2100, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Fallbrush Handgrips | Armor: 107 | Spirit: 22 | Intellect: 5 | Stamina: 8
(13184, 4, 2, 'Fallbrush Handgrips', 23736, 3, 0, 1, 68191, 13638, 10, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 22, 5, 5, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Sunderseer Mantle | Armor: 65 | Intellect: 17 | Spirit: 11 | Stamina: 4 | Agility: 7
(13185, 4, 1, 'Sunderseer Mantle', 23737, 3, 0, 1, 82111, 16422, 3, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 11, 7, 4, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Armswake Cloak | Armor: 39 | Stamina: 15
(13203, 4, 1, 'Armswake Cloak', 23747, 2, 0, 1, 77649, 15529, 16, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bashguuder | SpellID 1: 17315
(13204, 2, 4, 'Bashguuder', 25619, 2, 0, 1, 259727, 51945, 13, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 17315, 2, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Wolfshear Leggings | Armor: 76 | Spirit: 30 | Stamina: 5 | Nature Resistance: 10
(13206, 4, 1, 'Wolfshear Leggings', 23753, 3, 0, 1, 99402, 19880, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 30, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bleak Howler Armguards | Armor: 75 | Spirit: 14 | Intellect: 8 | Strength: 7
(13208, 4, 2, 'Bleak Howler Armguards', 23760, 3, 0, 1, 62603, 12520, 9, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 14, 5, 8, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Seal of the Dawn | SpellID 1: 17319
(13209, 4, 0, 'Seal of the Dawn', 23763, 3, 0, 1, 38462, 9615, 12, -1, -1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17319, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Slashclaw Bracers | Armor: 141 | Spirit: 7 | Strength: 6 | SpellID 1: 15464
(13211, 4, 3, 'Slashclaw Bracers', 23769, 2, 0, 1, 60311, 12062, 9, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 7, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Halycons Spiked Collar | SpellID 1: 18067
(13212, 4, 0, 'Halycon\'s Spiked Collar', 23766, 2, 0, 1, 42683, 10670, 2, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18067, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Gilded Gauntlets | Armor: 201 | Stamina: 13 | Intellect: 13
(13244, 4, 3, 'Gilded Gauntlets', 23827, 2, 0, 1, 72411, 14482, 10, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Kreshs Back | Armor: 471 | SpellID 1: 13384
(13245, 4, 6, 'Kresh\'s Back', 23835, 3, 0, 1, 5323, 1064, 14, -1, -1, 20, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 9, 0, 75, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 1),
-- Burstshot Harquebus | Spirit: 8 | SpellID 1: 9140
(13248, 2, 3, 'Burstshot Harquebus', 8257, 3, 0, 1, 148350, 29670, 26, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2600, 3, 100, 9140, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 75, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Hands of Power | Armor: 53 | Spirit: 6 | Intellect: 6 | SpellID 1: 9346
(13253, 4, 1, 'Hands of Power', 23846, 3, 0, 1, 49916, 9983, 10, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 6, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Trueaim Gauntlets | Armor: 198 | SpellID 1: 17818
(13255, 4, 3, 'Trueaim Gauntlets', 23849, 2, 0, 1, 71834, 14366, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17818, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Demonic Runed Spaulders | Armor: 126 | Intellect: 14 | Strength: 12 | Spirit: 12
(13257, 4, 2, 'Demonic Runed Spaulders', 23852, 3, 0, 1, 90441, 18088, 3, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 4, 12, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Ogreseer Tower Boots | Armor: 58 | Intellect: 7 | Spirit: 20 | Strength: 5
(13282, 4, 1, 'Ogreseer Tower Boots', 18905, 3, 0, 1, 68423, 13684, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 6, 20, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Magus Ring | Intellect: 9 | Spirit: 4 | Stamina: 6
(13283, 4, 0, 'Magus Ring', 23435, 2, 0, 1, 59630, 14907, 11, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 9, 6, 4, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Swiftdart Battleboots | Armor: 218 | Stamina: 5 | Agility: 17
(13284, 4, 3, 'Swiftdart Battleboots', 23901, 2, 0, 1, 86560, 17312, 8, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 3, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Alannas Embrace | Armor: 96 | Intellect: 20 | Spirit: 20 | Stamina: 20 | SpellID 1: 9416
(13314, 4, 1, 'Alanna\'s Embrace', 24760, 4, 0, 1, 151110, 30222, 20, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 20, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9416, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dracorian Gauntlets | Armor: 231 | Spirit: 18 | Stamina: 10 | Intellect: 11
(13344, 4, 3, 'Dracorian Gauntlets', 29001, 3, 0, 1, 86054, 17210, 10, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 18, 7, 10, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Robes of the Exalted | Armor: 89 | Spirit: 11 | Intellect: 5 | SpellID 1: 18039
(13346, 4, 1, 'Robes of the Exalted', 24025, 3, 0, 1, 115591, 23118, 20, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 11, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18039, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Demonshear | SpellID 1: 17483
(13348, 2, 8, 'Demonshear', 24049, 3, 0, 1, 363849, 72769, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 17483, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Scepter of the Unholy | Stamina: 5 | Shadow Resistance: 7 | SpellID 1: 9325
(13349, 2, 4, 'Scepter of the Unholy', 24033, 3, 0, 1, 292145, 58429, 21, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 2400, 0, 0, 9325, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Fire Striders | Armor: 61 | Spirit: 5 | Fire Resistance: 15 | SpellID 1: 23483
(13369, 4, 1, 'Fire Striders', 24054, 3, 0, 1, 87634, 17526, 8, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 15, 0, 0, 0, 0, 0, 0, 0, 23483, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Slavedrivers Cane | SpellID 1: 17494
(13372, 2, 10, 'Slavedriver\'s Cane', 24063, 3, 0, 1, 318846, 63769, 17, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 139, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 0, 0, 17494, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Willeys Portable Howitzer | Stamina: 9 | Spirit: 4
(13380, 2, 3, 'Willey\'s Portable Howitzer', 18298, 3, 0, 1, 192216, 38443, 26, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 9, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 3, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 75, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Woollies of the Prancing Minstrel | Armor: 301 | Stamina: 10 | Spirit: 12 | SpellID 1: 13670
(13383, 4, 3, 'Woollies of the Prancing Minstrel', 24070, 3, 0, 1, 134323, 26864, 7, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13670, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- The Postmasters Tunic | Armor: 87 | Spirit: 10 | Intellect: 30 | Agility: 5
(13388, 4, 1, 'The Postmaster\'s Tunic', 25049, 3, 0, 1, 105586, 21117, 5, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 5, 30, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 81, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- The Postmasters Trousers | Armor: 76 | Spirit: 20 | Intellect: 20 | Agility: 12
(13389, 4, 1, 'The Postmaster\'s Trousers', 25050, 3, 0, 1, 108730, 21746, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 20, 5, 20, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 81, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- The Postmasters Band | Armor: 70 | Intellect: 30 | Stamina: 10 | Shadow Resistance: 10
(13390, 4, 1, 'The Postmaster\'s Band', 24292, 3, 0, 1, 81837, 16367, 1, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 30, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 81, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- The Postmasters Treads | Armor: 100 | Agility: 22 | Strength: 6 | Stamina: 6
(13391, 4, 1, 'The Postmaster\'s Treads', 25051, 3, 0, 1, 82127, 16425, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 22, 4, 6, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 81, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- The Postmasters Seal | Spirit: 17 | Intellect: 6 | Agility: 3
(13392, 4, 0, 'The Postmaster\'s Seal', 24087, 3, 0, 1, 48846, 12211, 11, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 6, 17, 5, 6, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 81, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Skuls Cold Embrace | Armor: 617 | Stamina: 20 | Strength: 19 | Spirit: 9 | Frost Resistance: 10
(13394, 4, 4, 'Skul\'s Cold Embrace', 24102, 3, 0, 1, 90881, 18176, 5, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 4, 19, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 617, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Skuls Ghastly Touch | SpellID 1: 7709
(13396, 2, 19, 'Skul\'s Ghastly Touch', 24106, 3, 0, 1, 154265, 30853, 26, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 131, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 100, 7709, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Boots of the Shrieker | Armor: 120 | Intellect: 10 | Spirit: 10 | Stamina: 10 | Strength: 10 | Shadow Resistance: 10
(13398, 4, 2, 'Boots of the Shrieker', 9653, 3, 0, 1, 100142, 20028, 8, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 10, 7, 10, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Vambraces of the Sadist | Armor: 270 | Stamina: 7 | Spirit: 6 | SpellID 1: 7597
(13400, 4, 4, 'Vambraces of the Sadist', 24110, 3, 0, 1, 46482, 9296, 9, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Timmys Galoshes | Armor: 240 | Stamina: 11 | Agility: 11 | Spirit: 11 | Strength: 11
(13402, 4, 3, 'Timmy\'s Galoshes', 33114, 3, 0, 1, 105843, 21168, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 11, 3, 11, 4, 11, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Grimgore Noose | Armor: 47 | Spirit: 10 | Stamina: 8 | Intellect: 17 | Strength: 3
(13403, 4, 1, 'Grimgore Noose', 24113, 3, 0, 1, 47008, 9401, 6, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 7, 8, 5, 17, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Wailing Nightbane Pauldrons | Armor: 448 | Stamina: 14 | Strength: 14 | Spirit: 5 | Shadow Resistance: 10
(13405, 4, 4, 'Wailing Nightbane Pauldrons', 24115, 3, 0, 1, 65511, 13102, 3, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 14, 4, 14, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 448, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Handcrafted Mastersmith Leggings | Armor: 785
(13498, 4, 4, 'Handcrafted Mastersmith Leggings', 24162, 2, 0, 1, 99454, 19890, 7, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Runeblade of Baron Rivendare | SpellID 1: 17625
(13505, 2, 8, 'Runeblade of Baron Rivendare', 24166, 4, 0, 1, 456725, 91345, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 17625, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Greater Spellstone | SpellID 1: 17729
(13602, 4, 0, 'Greater Spellstone', 21610, 1, 2, 1, 0, 0, 23, -1, -1, 43, 43, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17729, 0, -1, 0, 180000, 0, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Major Spellstone | SpellID 1: 17730
(13603, 4, 0, 'Major Spellstone', 21610, 1, 2, 1, 0, 0, 23, -1, -1, 60, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17730, 0, -1, 0, 180000, 0, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Firestone | SpellID 1: 17945
(13699, 4, 0, 'Firestone', 24380, 1, 2, 1, 0, 0, 23, -1, -1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17945, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Greater Firestone | SpellID 1: 17947
(13700, 4, 0, 'Greater Firestone', 24380, 1, 2, 1, 0, 0, 23, -1, -1, 46, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17947, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Major Firestone | SpellID 1: 17949
(13701, 4, 0, 'Major Firestone', 24380, 1, 2, 1, 0, 0, 23, -1, -1, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17949, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Runecloth Gloves | Armor: 45 | Spirit: 9 | Intellect: 9 | SpellID 1: 9397
(13863, 4, 1, 'Runecloth Gloves', 25231, 2, 0, 1, 33085, 6617, 10, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 9, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Frostweave Robe | Armor: 66 | Spirit: 11 | SpellID 1: 9305
(13868, 4, 1, 'Frostweave Robe', 24612, 2, 0, 1, 48328, 9665, 20, -1, -1, 51, 46, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9305, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Frostweave Tunic | Armor: 66 | Intellect: 11 | SpellID 1: 9305
(13869, 4, 1, 'Frostweave Tunic', 24610, 2, 0, 1, 48513, 9702, 5, -1, -1, 51, 46, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9305, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Frostweave Gloves | Armor: 43 | Intellect: 6 | SpellID 1: 9404
(13870, 4, 1, 'Frostweave Gloves', 24616, 2, 0, 1, 27358, 5471, 10, -1, -1, 53, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9404, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Frostweave Pants | Armor: 63 | Spirit: 12 | SpellID 1: 9305
(13871, 4, 1, 'Frostweave Pants', 24615, 2, 0, 1, 67183, 13436, 7, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9305, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Bonecreeper Stylus | Intellect: 4 | SpellID 1: 9396
(13938, 2, 19, 'Bonecreeper Stylus', 24743, 3, 0, 1, 196521, 39304, 26, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 155, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1900, 0, 100, 9396, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Tombstone Breastplate | Armor: 174 | Strength: 4 | Stamina: 10 | Spirit: 6 | SpellID 1: 7598
(13944, 4, 2, 'Tombstone Breastplate', 28632, 3, 0, 1, 134044, 26808, 5, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 4, 7, 10, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Verdant Footpads | Armor: 118 | SpellID 1: 9318 | SpellID 2: 9358
(13954, 4, 2, 'Verdant Footpads', 28627, 3, 0, 1, 101934, 20386, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 9358, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Stoneform Shoulders | Armor: 688 | SpellID 1: 13390
(13955, 4, 4, 'Stoneform Shoulders', 24777, 3, 0, 1, 81837, 16367, 3, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Voones Vice Grips | Armor: 221 | Agility: 6 | Spirit: 6 | Strength: 6 | SpellID 1: 15465
(13963, 4, 3, 'Voone\'s Vice Grips', 29003, 3, 0, 1, 72665, 14533, 10, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 6, 3, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15465, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Witchblade | Intellect: 8 | SpellID 1: 13596 | SpellID 2: 7709
(13964, 2, 15, 'Witchblade', 24775, 3, 0, 1, 268060, 53612, 13, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 13596, 1, 0, 0, -1, 0, -1, 7709, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Windreaver Greaves | Armor: 247 | Agility: 20 | Spirit: 7 | Strength: 7
(13967, 4, 3, 'Windreaver Greaves', 28604, 3, 0, 1, 116692, 23338, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 6, 7, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Loomguard Armbraces | Armor: 157 | Intellect: 7 | Stamina: 6 | SpellID 1: 25067
(13969, 4, 3, 'Loomguard Armbraces', 24793, 3, 0, 1, 80097, 16019, 9, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cindercloth Vest | Armor: 68 | Spirit: 11 | SpellID 1: 23482
(14042, 4, 1, 'Cindercloth Vest', 24893, 2, 0, 1, 52808, 10561, 5, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23482, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Cindercloth Gloves | Armor: 44 | Spirit: 11 | SpellID 1: 9399
(14043, 4, 1, 'Cindercloth Gloves', 24896, 2, 0, 1, 29778, 5955, 10, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9399, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 25, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Cindercloth Cloak | Armor: 36 | Intellect: 8 | SpellID 1: 7688
(14044, 4, 1, 'Cindercloth Cloak', 23422, 2, 0, 1, 47516, 9503, 16, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7688, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Cindercloth Pants | Armor: 63 | Intellect: 12 | SpellID 1: 23482
(14045, 4, 1, 'Cindercloth Pants', 24895, 2, 0, 1, 67404, 13480, 7, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23482, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Brightcloth Cloak | Armor: 36 | Frost Resistance: 7 | Shadow Resistance: 7 | SpellID 1: 7701
(14103, 4, 1, 'Brightcloth Cloak', 24928, 2, 0, 1, 48582, 9716, 16, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 7, 7, 0, 0, 0, 0, 7701, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Felcloth Robe | Armor: 79 | Stamina: 7 | SpellID 1: 18012
(14106, 4, 1, 'Felcloth Robe', 24932, 2, 0, 1, 90268, 18053, 20, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18012, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 70, 0, 0, 0, '', 11, 0, 0, 0, 0, 0, 1),
-- Felcloth Pants | Armor: 62 | Intellect: 12 | SpellID 1: 9325
(14107, 4, 1, 'Felcloth Pants', 13679, 2, 0, 1, 65704, 13140, 7, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9325, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 55, 0, 0, 0, '', 9, 0, 0, 0, 0, 0, 1),
-- Felcloth Boots | Armor: 51 | Spirit: 12 | SpellID 1: 9399
(14108, 4, 1, 'Felcloth Boots', 24935, 2, 0, 1, 55560, 11112, 8, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9399, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 35, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Felcloth Hood | Armor: 61 | Intellect: 10 | SpellID 1: 14794
(14111, 4, 1, 'Felcloth Hood', 24933, 2, 0, 1, 53875, 10775, 1, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14794, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Felcloth Shoulders | Armor: 60 | Spirit: 5 | SpellID 1: 9325
(14112, 4, 1, 'Felcloth Shoulders', 24934, 2, 0, 1, 67549, 13509, 3, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9325, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 0, '', 11, 0, 0, 0, 0, 0, 1),
-- Robe of Winter Night | Armor: 81 | Intellect: 12 | SpellID 1: 18016 | SpellID 2: 17898
(14136, 4, 1, 'Robe of Winter Night', 25834, 3, 0, 1, 85127, 17025, 20, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18016, 1, 0, 0, -1, 0, -1, 17898, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Robe of the Archmage | Armor: 96 | Intellect: 12 | SpellID 1: 14055 | SpellID 2: 18384 | SpellID 3: 18385
(14152, 4, 1, 'Robe of the Archmage', 25205, 4, 0, 1, 144077, 28815, 20, 31360, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14055, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 18385, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robe of the Void | Armor: 96 | Stamina: 14 | SpellID 1: 18023 | SpellID 2: 18386
(14153, 4, 1, 'Robe of the Void', 25201, 4, 0, 1, 144603, 28920, 20, 31488, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18023, 1, 0, 0, -1, 0, -1, 18386, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Truefaith Vestments | Armor: 96 | Stamina: 14 | SpellID 1: 18041 | SpellID 2: 18379 | SpellID 3: 18388
(14154, 4, 1, 'Truefaith Vestments', 25203, 4, 0, 1, 145144, 29028, 20, 31248, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18041, 1, 0, 0, -1, 0, -1, 18379, 1, 0, 0, 0, 0, 0, 18388, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Freezing Lich Robes | Armor: 88 | Frost Resistance: 15 | SpellID 1: 17901
(14340, 4, 1, 'Freezing Lich Robes', 25039, 3, 0, 1, 108891, 21778, 20, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 15, 0, 0, 0, 0, 0, 17901, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deaths Clutch | Armor: 131 | Intellect: 12 | Spirit: 11 | Strength: 11 | Stamina: 12
(14503, 4, 2, 'Death\'s Clutch', 25104, 3, 0, 1, 98260, 19652, 3, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 11, 4, 11, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 60, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Pattern: Truefaith Vestments | SpellID 1: 18532
(14512, 9, 2, 'Pattern: Truefaith Vestments', 1102, 4, 64, 1, 60000, 15000, 0, -1, -1, 62, 0, 197, 300, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18532, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Pattern: Robe of the Archmage | SpellID 1: 18536
(14513, 9, 2, 'Pattern: Robe of the Archmage', 1102, 4, 64, 1, 60000, 15000, 0, -1, -1, 62, 0, 197, 300, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18536, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Pattern: Robe of the Void | SpellID 1: 18537
(14514, 9, 2, 'Pattern: Robe of the Void', 1102, 4, 64, 1, 60000, 15000, 0, -1, -1, 62, 0, 197, 300, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18537, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Maelstrom Leggings | Armor: 320 | Spirit: 20 | Intellect: 20 | Strength: 10 | Agility: 6
(14522, 4, 3, 'Maelstrom Leggings', 25111, 3, 0, 1, 156591, 31318, 7, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 20, 3, 6, 5, 20, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Boneclenched Gauntlets | Armor: 624 | Frost Resistance: 10
(14525, 4, 4, 'Boneclenched Gauntlets', 25116, 3, 0, 1, 52805, 10561, 10, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 624, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Rattlecage Buckler | Armor: 1890 | Spirit: 10 | Intellect: 10
(14528, 4, 6, 'Rattlecage Buckler', 25138, 2, 0, 1, 142424, 28484, 14, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 36, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Corpselight Greaves | Armor: 404 | Stamina: 18 | Shadow Resistance: 5
(14537, 4, 4, 'Corpselight Greaves', 25160, 2, 0, 1, 70839, 14167, 8, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 404, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deadwalker Mantle | Armor: 60 | Stamina: 13 | Intellect: 6
(14538, 4, 1, 'Deadwalker Mantle', 28705, 2, 0, 1, 71093, 14218, 3, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Darkshade Gloves | Armor: 50 | Arcane Resistance: 15 | Shadow Resistance: 10
(14543, 4, 1, 'Darkshade Gloves', 28703, 2, 0, 1, 52394, 10478, 10, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 10, 15, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Ghostloom Leggings | Armor: 138 | Intellect: 18 | Spirit: 13 | Stamina: 10
(14545, 4, 2, 'Ghostloom Leggings', 25169, 2, 0, 1, 109989, 21997, 7, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 13, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 75, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Royal Cap Spaulders | Armor: 249 | Spirit: 14 | Intellect: 9 | Agility: 5
(14548, 4, 3, 'Royal Cap Spaulders', 28817, 2, 0, 1, 123964, 24792, 3, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 14, 5, 9, 7, 0, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 70, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Stockade Pauldrons | Armor: 472 | Stamina: 20 | Spirit: 10 | SpellID 1: 21411
(14552, 4, 4, 'Stockade Pauldrons', 28282, 4, 0, 1, 76890, 15378, 3, -1, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 100, 0, 0, 0, '', 63, 0, 0, 0, 0, 0, 1),
-- Sash of Mercy | Armor: 105 | Spirit: 10 | Stamina: 14 | SpellID 1: 18034
(14553, 4, 2, 'Sash of Mercy', 28386, 4, 0, 1, 88667, 17733, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 10, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18034, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodmail Legguards | Armor: 286 | Stamina: 6 | Strength: 3 | Spirit: 25
(14612, 4, 3, 'Bloodmail Legguards', 25223, 2, 0, 1, 163111, 32622, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 7, 6, 4, 3, 3, 0, 6, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 123, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bloodmail Belt | Armor: 184 | Agility: 11 | Strength: 17
(14614, 4, 3, 'Bloodmail Belt', 25219, 2, 0, 1, 82135, 16427, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 5, 0, 3, 11, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 123, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bloodmail Gauntlets | Armor: 204 | Intellect: 7 | Spirit: 17
(14615, 4, 3, 'Bloodmail Gauntlets', 25221, 2, 0, 1, 74583, 14916, 10, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 5, 7, 4, 0, 6, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 123, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bloodmail Boots | Armor: 225 | Spirit: 20
(14616, 4, 3, 'Bloodmail Boots', 25220, 2, 0, 1, 112796, 22559, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 5, 0, 4, 0, 3, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 123, 60, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deathbone Girdle | Armor: 326 | Strength: 15 | Stamina: 8 | Agility: 5
(14620, 4, 4, 'Deathbone Girdle', 25225, 2, 0, 1, 50677, 10135, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 15, 7, 8, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 124, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deathbone Sabatons | Armor: 398 | Stamina: 12 | Spirit: 10
(14621, 4, 4, 'Deathbone Sabatons', 25227, 2, 0, 1, 76306, 15261, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 124, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deathbone Gauntlets | Armor: 362 | Stamina: 12 | Spirit: 10 | Agility: 10
(14622, 4, 4, 'Deathbone Gauntlets', 25224, 2, 0, 1, 51064, 10212, 10, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 6, 10, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 124, 45, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deathbone Legguards | Armor: 507 | Strength: 15 | Agility: 14 | Spirit: 14
(14623, 4, 4, 'Deathbone Legguards', 25226, 2, 0, 1, 102515, 20503, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 15, 3, 14, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 124, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Deathbone Chestplate | Armor: 637 | Stamina: 12 | Spirit: 12 | SpellID 1: 21423
(14624, 4, 4, 'Deathbone Chestplate', 24102, 3, 0, 1, 102891, 20578, 5, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 12, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21423, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 124, 135, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Necropile Robe | Armor: 87 | Stamina: 25 | Spirit: 12 | Intellect: 12
(14626, 4, 1, 'Necropile Robe', 25245, 3, 0, 1, 103664, 20732, 20, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 25, 6, 12, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 122, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Necropile Cuffs | Armor: 34 | Stamina: 5 | Spirit: 13
(14629, 4, 1, 'Necropile Cuffs', 4607, 2, 0, 1, 53790, 10758, 9, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 6, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 122, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Necropile Boots | Armor: 54 | Stamina: 16 | Intellect: 8
(14631, 4, 1, 'Necropile Boots', 18863, 2, 0, 1, 81258, 16251, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 16, 5, 8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 122, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Necropile Leggings | Armor: 69 | Intellect: 18 | Spirit: 5 | Stamina: 15
(14632, 4, 1, 'Necropile Leggings', 25255, 2, 0, 1, 108730, 21746, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 5, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 122, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Necropile Mantle | Armor: 59 | Stamina: 14 | Intellect: 10 | Agility: 6
(14633, 4, 1, 'Necropile Mantle', 25247, 2, 0, 1, 81837, 16367, 3, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 14, 5, 10, 6, 0, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 122, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cadaverous Belt | Armor: 88 | Stamina: 10 | Strength: 15
(14636, 4, 2, 'Cadaverous Belt', 25248, 2, 0, 1, 62381, 12476, 6, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 121, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cadaverous Leggings | Armor: 136 | Stamina: 18 | Strength: 10
(14638, 4, 2, 'Cadaverous Leggings', 26966, 2, 0, 1, 125728, 25145, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 121, 75, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cadaverous Gloves | Armor: 97 | Spirit: 10
(14640, 4, 2, 'Cadaverous Gloves', 25253, 2, 0, 1, 63340, 12668, 10, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 121, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cadaverous Walkers | Armor: 107 | Stamina: 8 | Agility: 16
(14641, 4, 2, 'Cadaverous Walkers', 11571, 2, 0, 1, 95373, 19074, 8, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 8, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 121, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Warstrike Shoulder Pads | Armor: 249 | Intellect: 13 | Stamina: 5
(14817, 4, 3, 'Warstrike Shoulder Pads', 27142, 2, 0, 1, 104419, 20883, 3, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 11, 0, 0, 0, 0, 0, 1),
-- Green Dragonscale Breastplate | Armor: 311 | Spirit: 25 | Nature Resistance: 11
(15045, 4, 3, 'Green Dragonscale Breastplate', 25671, 3, 0, 1, 99692, 19938, 5, -1, -1, 52, 47, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 490, 120, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Green Dragonscale Leggings | Armor: 282 | Spirit: 26 | Nature Resistance: 11
(15046, 4, 3, 'Green Dragonscale Leggings', 25673, 3, 0, 1, 112411, 22482, 7, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 26, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 282, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 490, 90, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Red Dragonscale Breastplate | Armor: 360 | Fire Resistance: 12 | SpellID 1: 18038
(15047, 4, 3, 'Red Dragonscale Breastplate', 25675, 3, 0, 1, 149181, 29836, 5, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 360, 0, 12, 0, 0, 0, 0, 0, 0, 0, 18038, 1, 0, 0, 3600000, 0, 600000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 120, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Stormshroud Shoulders | Armor: 114 | Stamina: 10 | SpellID 1: 7597 | SpellID 2: 13669
(15058, 4, 2, 'Stormshroud Shoulders', 25687, 2, 0, 1, 88158, 17631, 3, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 142, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Living Breastplate | Armor: 169 | Spirit: 25 | Nature Resistance: 10 | SpellID 1: 23796
(15059, 4, 2, 'Living Breastplate', 25688, 3, 0, 1, 123882, 24776, 5, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 0, 10, 0, 0, 0, 0, 0, 0, 23796, 1, 0, 0, 3600000, 0, 600000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Living Leggings | Armor: 142 | Spirit: 25 | Nature Resistance: 8 | SpellID 1: 23796
(15060, 4, 2, 'Living Leggings', 25694, 3, 0, 1, 106387, 21277, 7, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 8, 0, 0, 0, 0, 0, 0, 23796, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 75, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Living Shoulders | Armor: 117 | Spirit: 13 | Nature Resistance: 8 | SpellID 1: 9316
(15061, 4, 2, 'Living Shoulders', 25695, 3, 0, 1, 69017, 13803, 3, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 13, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, 0, 0, 8, 0, 0, 0, 0, 0, 0, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 60, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Staff of NohOrahil | Intellect: 6 | Stamina: 3 | SpellID 1: 9400
(15105, 2, 10, 'Staff of Noh\'Orahil', 28231, 2, 0, 1, 71989, 14397, 17, 256, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 9400, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 85, 0, 0, 0, '', 26, 0, 0, 0, 0, 0, 1),
-- Staff of DarOrahil | Intellect: 6 | Stamina: 3 | SpellID 1: 9413
(15106, 2, 10, 'Staff of Dar\'Orahil', 28236, 2, 0, 1, 72237, 14447, 17, 256, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 9413, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 85, 0, 0, 0, '', 26, 0, 0, 0, 0, 0, 1),
-- Orb of NohOrahil | Intellect: 5 | SpellID 1: 23480 | SpellID 2: 18957
(15107, 4, 0, 'Orb of Noh\'Orahil', 25072, 3, 0, 1, 20000, 5000, 23, 31488, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 23480, 1, 0, 0, 0, 0, 0, 18957, 0, 0, 0, 1800000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Orb of DarOrahil | Intellect: 5 | SpellID 1: 7709 | SpellID 2: 18957
(15108, 4, 0, 'Orb of Dar\'Orahil', 25072, 3, 0, 1, 20000, 5000, 23, 31488, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7709, 1, 0, 0, 0, 0, 0, 18957, 0, 0, 0, 1800000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '', 44, 0, 0, 0, 0, 0, 1),
-- Staff of Soranruk | SpellID 1: 7707 | SpellID 2: 7686
(15109, 2, 10, 'Staff of Soran\'ruk', 28225, 2, 0, 1, 16723, 3344, 17, 256, -1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7707, 1, 0, 0, -1, 0, -1, 7686, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 75, 0, 0, 0, '', 23, 0, 0, 0, 0, 0, 1),
-- Privates Tabard
(15196, 4, 0, 'Private\'s Tabard', 31254, 1, 0, 1, 10000, 2500, 19, -1, -1, 20, 0, 0, 0, 0, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Scouts Tabard
(15197, 4, 0, 'Scout\'s Tabard', 31255, 1, 0, 1, 10000, 2500, 19, -1, -1, 20, 0, 0, 0, 0, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knights Colors
(15198, 4, 0, 'Knight\'s Colors', 31253, 1, 0, 1, 40000, 10000, 19, -1, -1, 40, 0, 0, 0, 0, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Stone Guards Herald
(15199, 4, 0, 'Stone Guard\'s Herald', 31252, 1, 0, 1, 40000, 10000, 19, -1, -1, 40, 0, 0, 0, 0, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Senior Sergeants Insignia | Stamina: 4 | Spirit: 4 | Intellect: 4
(15200, 4, 0, 'Senior Sergeant\'s Insignia', 30797, 3, 32768, 1, 20000, 5000, 2, -1, -1, 35, 30, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 4, 6, 4, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Ornate Adamantium Breastplate | Armor: 807 | Stamina: 22 | SpellID 1: 21411
(15413, 4, 4, 'Ornate Adamantium Breastplate', 26373, 3, 0, 1, 112596, 22519, 5, -1, -1, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Fine Light Crossbow
(15808, 2, 18, 'Fine Light Crossbow', 10671, 1, 0, 1, 3640, 728, 26, -1, -1, 21, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 2, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Hameyas Slayer
(15814, 2, 7, 'Hameya\'s Slayer', 26503, 2, 0, 1, 209558, 41911, 13, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 30, 0, 0, 0, 0, 0, 1),
-- Ring of Protection | Armor: 300 | Stamina: 6
(15855, 4, 0, 'Ring of Protection', 26537, 3, 0, 1, 31555, 7888, 11, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Spellpower Goggles Xtreme Plus | Armor: 57 | SpellID 1: 14254
(15999, 4, 1, 'Spellpower Goggles Xtreme Plus', 26614, 2, 0, 1, 45014, 9002, 1, -1, -1, 54, 0, 202, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 45, 0, 0, 8, '', 9, 0, 0, 0, 0, 0, 1),
-- Arcanite Dragonling
(16022, 4, 0, 'Arcanite Dragonling', 21632, 3, 64, 1, 160000, 40000, 12, -1, -1, 60, 50, 202, 300, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600000, 94, 60000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 8, '', 49, 0, 0, 0, 0, 0, 1),
-- Fordrings Seal | SpellID 1: 9318
(16058, 4, 0, 'Fordring\'s Seal', 26001, 3, 0, 1, 40625, 10156, 11, -1, -1, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Senior Sergeants Insignia | Stamina: 17 | Spirit: 7
(16335, 4, 0, 'Senior Sergeant\'s Insignia', 30797, 3, 32768, 1, 40000, 10000, 2, -1, -1, 63, 58, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 17, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeants Cloak | Armor: 96 | Stamina: 14
(16341, 4, 1, 'Sergeant\'s Cloak', 27088, 3, 32768, 1, 21425, 4285, 16, -1, -1, 50, 45, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeants Cape | Armor: 115 | Stamina: 17
(16342, 4, 1, 'Sergeant\'s Cape', 27087, 3, 32768, 1, 44154, 8830, 16, -1, -1, 63, 58, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Blade | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(16345, 2, 7, 'High Warlord\'s Blade', 31997, 4, 32768, 1, 247416, 49483, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Silk Boots | Armor: 61 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(16369, 4, 1, 'Knight-Lieutenant\'s Silk Boots', 31063, 3, 32768, 1, 42081, 8416, 8, 128, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Silk Gloves | Armor: 56 | Stamina: 11 | SpellID 1: 23037 | SpellID 2: 14248
(16391, 4, 1, 'Knight-Lieutenant\'s Silk Gloves', 31064, 3, 32768, 1, 28261, 5652, 10, 128, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23037, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Leather Boots | Armor: 121 | Stamina: 18 | Agility: 11 | SpellID 1: 23049
(16392, 4, 2, 'Knight-Lieutenant\'s Leather Boots', 31068, 3, 32768, 1, 53190, 10638, 8, 8, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dragonhide Footwraps | Armor: 121 | Strength: 12 | Agility: 5 | Stamina: 12 | Intellect: 5 | Spirit: 5 | SpellID 1: 9343
(16393, 4, 2, 'Knight-Lieutenant\'s Dragonhide Footwraps', 31070, 3, 32768, 1, 53384, 10676, 8, 1024, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 12, 3, 5, 7, 12, 5, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Leather Gauntlets | Armor: 110 | Stamina: 15 | Agility: 10 | SpellID 1: 15807
(16396, 4, 2, 'Knight-Lieutenant\'s Leather Gauntlets', 31075, 3, 32768, 1, 36942, 7388, 10, 8, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15807, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dragonhide Gloves | Armor: 110 | Strength: 12 | Agility: 12 | Stamina: 12 | SpellID 1: 23217
(16397, 4, 2, 'Knight-Lieutenant\'s Dragonhide Gloves', 31071, 3, 32768, 1, 37072, 7414, 10, 1024, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Chain Boots | Armor: 255 | Stamina: 17 | Agility: 10 | SpellID 1: 13669
(16401, 4, 3, 'Knight-Lieutenant\'s Chain Boots', 31244, 3, 32768, 1, 67983, 13596, 8, 4, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Chain Gauntlets | Armor: 231 | Stamina: 18 | Agility: 11 | SpellID 1: 23157
(16403, 4, 3, 'Knight-Lieutenant\'s Chain Gauntlets', 31245, 3, 32768, 1, 41118, 8223, 10, 4, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Plate Boots | Armor: 452 | Stamina: 23 | Strength: 8 | Agility: 5
(16405, 4, 4, 'Knight-Lieutenant\'s Plate Boots', 26752, 3, 32768, 1, 41433, 8286, 8, 1, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 23, 4, 8, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Plate Gauntlets | Armor: 410 | Strength: 16 | Stamina: 15 | SpellID 1: 22778
(16406, 4, 4, 'Knight-Lieutenant\'s Plate Gauntlets', 31086, 3, 32768, 1, 27728, 5545, 10, 1, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 16, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Lamellar Sabatons | Armor: 452 | Stamina: 16 | Strength: 15 | Intellect: 7 | Agility: 6
(16409, 4, 4, 'Knight-Lieutenant\'s Lamellar Sabatons', 31082, 3, 32768, 1, 42068, 8413, 8, 2, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 4, 15, 5, 7, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Lamellar Gauntlets | Armor: 410 | Stamina: 16 | Strength: 15 | SpellID 1: 23300
(16410, 4, 4, 'Knight-Lieutenant\'s Lamellar Gauntlets', 30321, 3, 32768, 1, 28152, 5630, 10, 2, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23300, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Silk Raiment | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 18384
(16413, 4, 1, 'Knight-Captain\'s Silk Raiment', 31057, 3, 32768, 1, 58463, 11692, 20, 128, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Silk Leggings | Armor: 78 | Stamina: 16 | Spirit: 16 | Intellect: 13 | SpellID 1: 14254
(16414, 4, 1, 'Knight-Captain\'s Silk Leggings', 27230, 3, 32768, 1, 58676, 11735, 7, 128, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 16, 6, 16, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Silk Spaulders | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(16415, 4, 1, 'Lieutenant Commander\'s Silk Spaulders', 27231, 3, 32768, 1, 44167, 8833, 3, 128, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Crown | Armor: 73 | Stamina: 16 | Intellect: 16 | Spirit: 16 | SpellID 1: 18384
(16416, 4, 1, 'Lieutenant Commander\'s Crown', 27232, 3, 32768, 1, 44322, 8864, 1, 128, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 16, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 343, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Leather Armor | Armor: 176 | Stamina: 25 | Agility: 13 | SpellID 1: 7597
(16417, 4, 2, 'Knight-Captain\'s Leather Armor', 31072, 3, 32768, 1, 74137, 14827, 5, 8, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 25, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Leather Veil | Armor: 143 | Stamina: 26 | SpellID 1: 13669 | SpellID 2: 9141 | SpellID 3: 15464
(16418, 4, 2, 'Lieutenant Commander\'s Leather Veil', 31077, 3, 32768, 1, 55802, 11160, 1, 8, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Leather Legguards | Armor: 154 | Stamina: 13 | Strength: 7 | SpellID 1: 7598
(16419, 4, 2, 'Knight-Captain\'s Leather Legguards', 31073, 3, 32768, 1, 74670, 14934, 7, 8, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Leather Spaulders | Armor: 132 | Stamina: 23 | Agility: 7 | SpellID 1: 9141
(16420, 4, 2, 'Lieutenant Commander\'s Leather Spaulders', 31076, 3, 32768, 1, 56197, 11239, 3, 8, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 348, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dragonhide Tunic | Armor: 176 | Stamina: 14 | Strength: 13 | Agility: 9 | Intellect: 8 | SpellID 1: 9345 | SpellID 2: 7597
(16421, 4, 2, 'Knight-Captain\'s Dragonhide Tunic', 31074, 3, 32768, 1, 75195, 15039, 5, 1024, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 14, 4, 13, 3, 9, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dragonhide Leggings | Armor: 154 | Strength: 12 | Agility: 12 | Stamina: 12 | Intellect: 9 | Spirit: 12 | SpellID 1: 13669 | SpellID 2: 9330
(16422, 4, 2, 'Knight-Captain\'s Dragonhide Leggings', 27235, 3, 32768, 1, 75461, 15092, 7, 1024, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 5, 9, 6, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9330, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dragonhide Epaulets | Armor: 132 | Strength: 10 | Agility: 10 | Stamina: 10 | Spirit: 10 | Intellect: 6 | SpellID 1: 9398
(16423, 4, 2, 'Lieutenant Commander\'s Dragonhide Epaulets', 27236, 3, 32768, 1, 51392, 10278, 3, 1024, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 4, 10, 3, 10, 7, 10, 6, 10, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9398, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dragonhide Shroud | Armor: 143 | Stamina: 16 | Agility: 11 | Strength: 11 | Intellect: 11 | Spirit: 9 | SpellID 1: 9329 | SpellID 2: 9342
(16424, 4, 2, 'Lieutenant Commander\'s Dragonhide Shroud', 27234, 3, 32768, 1, 51586, 10317, 1, 1024, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 3, 11, 4, 11, 5, 11, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9329, 1, 0, 0, -1, 0, -1, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 381, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Chain Hauberk | Armor: 370 | Stamina: 18 | Agility: 16 | SpellID 1: 9334 | SpellID 2: 7597
(16425, 4, 3, 'Knight-Captain\'s Chain Hauberk', 31241, 3, 32768, 1, 82858, 16571, 5, 4, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9334, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Chain Leggings | Armor: 324 | Agility: 18 | Stamina: 17 | SpellID 1: 7597 | SpellID 2: 13669
(16426, 4, 3, 'Knight-Captain\'s Chain Leggings', 31242, 3, 32768, 1, 83178, 16635, 7, 4, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 18, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Chain Pauldrons | Armor: 278 | Stamina: 20 | Agility: 10 | SpellID 1: 9141
(16427, 4, 3, 'Lieutenant Commander\'s Chain Pauldrons', 31247, 3, 32768, 1, 64619, 12923, 3, 4, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Chain Helmet | Armor: 301 | Stamina: 24 | Agility: 15 | Intellect: 10 | SpellID 1: 9141
(16428, 4, 3, 'Lieutenant Commander\'s Chain Helmet', 31246, 3, 32768, 1, 64573, 12914, 1, 4, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 24, 3, 15, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 362, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Plate Helm | Armor: 534 | Stamina: 31 | Strength: 9 | Agility: 8
(16429, 4, 4, 'Lieutenant Commander\'s Plate Helm', 28934, 3, 32768, 1, 43208, 8641, 1, 1, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 31, 4, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Plate Chestguard | Armor: 657 | Stamina: 25 | Strength: 9 | Agility: 6 | SpellID 1: 7597
(16430, 4, 4, 'Knight-Captain\'s Plate Chestguard', 31083, 3, 32768, 1, 57824, 11564, 5, 1, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 25, 4, 9, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Plate Leggings | Armor: 575 | Stamina: 13 | Strength: 7 | SpellID 1: 7598
(16431, 4, 4, 'Knight-Captain\'s Plate Leggings', 26659, 3, 32768, 1, 58031, 11606, 7, 1, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Plate Pauldrons | Armor: 493 | Stamina: 23 | Strength: 7 | Agility: 6
(16432, 4, 4, 'Lieutenant Commander\'s Plate Pauldrons', 26662, 3, 32768, 1, 43683, 8736, 3, 1, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 4, 7, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 282, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Lamellar Breastplate | Armor: 657 | Stamina: 25 | Strength: 9 | Agility: 8 | SpellID 1: 7597
(16433, 4, 4, 'Knight-Captain\'s Lamellar Breastplate', 30315, 3, 32768, 1, 58457, 11691, 5, 2, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 25, 4, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Lamellar Headguard | Armor: 534 | Stamina: 31 | Strength: 9 | Agility: 8
(16434, 4, 4, 'Lieutenant Commander\'s Lamellar Headguard', 30316, 3, 32768, 1, 44003, 8800, 1, 2, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 31, 4, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Lamellar Leggings | Armor: 575 | Stamina: 13 | Strength: 7 | SpellID 1: 7598
(16435, 4, 4, 'Knight-Captain\'s Lamellar Leggings', 31084, 3, 32768, 1, 58878, 11775, 7, 2, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Lamellar Shoulders | Armor: 493 | Stamina: 12 | Strength: 12 | Agility: 12 | Intellect: 7 | Spirit: 5
(16436, 4, 4, 'Lieutenant Commander\'s Lamellar Shoulders', 31085, 3, 32768, 1, 44318, 8863, 3, 2, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 12, 4, 12, 3, 12, 5, 7, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 401, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Silk Footwraps | Armor: 69 | Intellect: 21 | Stamina: 21 | SpellID 1: 9342
(16437, 4, 1, 'Marshal\'s Silk Footwraps', 33009, 4, 32768, 1, 87619, 17523, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 21, 7, 21, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Silk Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 22747 | SpellID 2: 23037
(16440, 4, 1, 'Marshal\'s Silk Gloves', 32988, 4, 32768, 1, 59036, 11807, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22747, 1, 0, 0, -1, 0, -1, 23037, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Coronet | Armor: 81 | Stamina: 24 | Intellect: 24 | Spirit: 19 | SpellID 1: 18384
(16441, 4, 1, 'Field Marshal\'s Coronet', 32978, 4, 32768, 1, 102878, 20575, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 24, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Silk Leggings | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(16442, 4, 1, 'Marshal\'s Silk Leggings', 28715, 4, 32768, 1, 118901, 23780, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Silk Vestments | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 18384
(16443, 4, 1, 'Field Marshal\'s Silk Vestments', 32981, 4, 32768, 1, 128464, 25692, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Silk Spaulders | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(16444, 4, 1, 'Field Marshal\'s Silk Spaulders', 33004, 4, 32768, 1, 96713, 19342, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Footguards | Armor: 136 | Stamina: 26 | Agility: 16 | SpellID 1: 23049
(16446, 4, 2, 'Marshal\'s Leather Footguards', 30333, 4, 32768, 1, 105206, 21041, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Gauntlets | Armor: 123 | Strength: 18 | Agility: 17 | Stamina: 15 | SpellID 1: 23217
(16448, 4, 2, 'Marshal\'s Dragonhide Gauntlets', 30334, 4, 32768, 1, 70662, 14132, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 3, 17, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Spaulders | Armor: 148 | Strength: 12 | Agility: 12 | Stamina: 12 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16449, 4, 2, 'Field Marshal\'s Dragonhide Spaulders', 30328, 4, 32768, 1, 123156, 24631, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Legguards | Armor: 173 | Strength: 16 | Agility: 16 | Stamina: 15 | Intellect: 13 | Spirit: 15 | SpellID 1: 13669 | SpellID 2: 9332
(16450, 4, 2, 'Marshal\'s Dragonhide Legguards', 30329, 4, 32768, 1, 142360, 28472, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 16, 3, 16, 7, 15, 5, 13, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Helmet | Armor: 160 | Stamina: 16 | Agility: 16 | Strength: 15 | Intellect: 15 | Spirit: 13 | SpellID 1: 9346 | SpellID 2: 14027
(16451, 4, 2, 'Field Marshal\'s Dragonhide Helmet', 30330, 4, 32768, 1, 124055, 24811, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 3, 16, 4, 15, 5, 15, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 14027, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dragonhide Breastplate | Armor: 197 | Strength: 19 | Stamina: 18 | Agility: 14 | Intellect: 13 | SpellID 1: 14089 | SpellID 2: 7597
(16452, 4, 2, 'Field Marshal\'s Dragonhide Breastplate', 30327, 4, 32768, 1, 166014, 33202, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 19, 7, 18, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14089, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Chestpiece | Armor: 197 | Stamina: 35 | Agility: 20 | SpellID 1: 7597
(16453, 4, 2, 'Field Marshal\'s Leather Chestpiece', 30327, 4, 32768, 1, 166621, 33324, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Handgrips | Armor: 123 | Stamina: 18 | Agility: 14 | SpellID 1: 14049
(16454, 4, 2, 'Marshal\'s Leather Handgrips', 30334, 4, 32768, 1, 72222, 14444, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Mask | Armor: 160 | Stamina: 35 | SpellID 1: 13669 | SpellID 2: 15464 | SpellID 3: 9336
(16455, 4, 2, 'Field Marshal\'s Leather Mask', 30330, 4, 32768, 1, 125864, 25172, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 9336, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Leather Leggings | Armor: 173 | Stamina: 24 | Strength: 12 | SpellID 1: 7598 | SpellID 2: 15464
(16456, 4, 2, 'Marshal\'s Leather Leggings', 30329, 4, 32768, 1, 145493, 29098, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 0, 7, 24, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Leather Epaulets | Armor: 148 | Stamina: 26 | Agility: 15 | SpellID 1: 9332
(16457, 4, 2, 'Field Marshal\'s Leather Epaulets', 30328, 4, 32768, 1, 126763, 25352, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dragonhide Boots | Armor: 136 | Strength: 15 | Stamina: 14 | Intellect: 11 | Spirit: 10 | Agility: 10 | SpellID 1: 25110
(16459, 4, 2, 'Marshal\'s Dragonhide Boots', 30333, 4, 32768, 1, 102463, 20492, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 15, 7, 14, 5, 11, 6, 10, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Boots | Armor: 286 | Stamina: 26 | Agility: 14 | SpellID 1: 13669
(16462, 4, 3, 'Marshal\'s Chain Boots', 32095, 4, 32768, 1, 124912, 24982, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 14, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Grips | Armor: 260 | Stamina: 18 | Agility: 17 | Intellect: 16 | SpellID 1: 23157
(16463, 4, 3, 'Marshal\'s Chain Grips', 32098, 4, 32768, 1, 83221, 16644, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 17, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Helm | Armor: 338 | Stamina: 27 | Agility: 19 | Intellect: 17 | Spirit: 10 | SpellID 1: 9331
(16465, 4, 3, 'Field Marshal\'s Chain Helm', 32093, 4, 32768, 1, 145586, 29117, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 27, 3, 19, 5, 17, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Breastplate | Armor: 416 | Stamina: 24 | Agility: 23 | SpellID 1: 14049 | SpellID 2: 7597
(16466, 4, 3, 'Field Marshal\'s Chain Breastplate', 32094, 4, 32768, 1, 194844, 38968, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 3, 23, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Chain Legguards | Armor: 364 | Agility: 23 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 13669 | SpellID 3: 15464
(16467, 4, 3, 'Marshal\'s Chain Legguards', 32097, 4, 32768, 1, 168943, 33788, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 23, 7, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Chain Spaulders | Armor: 312 | Stamina: 26 | Agility: 15 | SpellID 1: 9332
(16468, 4, 3, 'Field Marshal\'s Chain Spaulders', 32092, 4, 32768, 1, 147880, 29576, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 3, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Lamellar Gloves | Armor: 461 | Strength: 20 | Stamina: 16 | Agility: 13 | SpellID 1: 23300
(16471, 4, 4, 'Marshal\'s Lamellar Gloves', 30321, 4, 32768, 1, 57148, 11429, 10, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 7, 16, 5, 0, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23300, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Lamellar Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Intellect: 8 | Agility: 7
(16472, 4, 4, 'Marshal\'s Lamellar Boots', 30319, 4, 32768, 1, 86028, 17205, 8, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 5, 8, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Chestplate | Armor: 738 | Stamina: 35 | Strength: 14 | Agility: 13 | SpellID 1: 7597
(16473, 4, 4, 'Field Marshal\'s Lamellar Chestplate', 30315, 4, 32768, 1, 133270, 26654, 5, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 14, 5, 0, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Faceguard | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 11
(16474, 4, 4, 'Field Marshal\'s Lamellar Faceguard', 30316, 4, 32768, 1, 100317, 20063, 1, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 5, 0, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Lamellar Legplates | Armor: 646 | Stamina: 19 | Strength: 15 | SpellID 1: 15464 | SpellID 2: 7598
(16475, 4, 4, 'Marshal\'s Lamellar Legplates', 30317, 4, 32768, 1, 118969, 23793, 7, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 19, 4, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Lamellar Pauldrons | Armor: 553 | Stamina: 18 | Strength: 17 | Intellect: 10 | Spirit: 10
(16476, 4, 4, 'Field Marshal\'s Lamellar Pauldrons', 30318, 4, 32768, 1, 93787, 18757, 3, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 18, 4, 17, 5, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Plate Armor | Armor: 738 | Stamina: 35 | Strength: 13 | Agility: 13 | SpellID 1: 7597
(16477, 4, 4, 'Field Marshal\'s Plate Armor', 30315, 4, 32768, 1, 125536, 25107, 5, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 13, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Plate Helm | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 15
(16478, 4, 4, 'Field Marshal\'s Plate Helm', 30316, 4, 32768, 1, 94516, 18903, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Legguards | Armor: 646 | Stamina: 20 | Strength: 16 | SpellID 1: 7598 | SpellID 2: 15464
(16479, 4, 4, 'Marshal\'s Plate Legguards', 30317, 4, 32768, 1, 109282, 21856, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Plate Shoulderguards | Armor: 553 | Stamina: 26 | Strength: 15 | Agility: 11
(16480, 4, 4, 'Field Marshal\'s Plate Shoulderguards', 30318, 4, 32768, 1, 95235, 19047, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Agility: 11
(16483, 4, 4, 'Marshal\'s Plate Boots', 30319, 4, 32768, 1, 83212, 16642, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Plate Gauntlets | Armor: 461 | Strength: 18 | Stamina: 17 | Agility: 15 | SpellID 1: 22778
(16484, 4, 4, 'Marshal\'s Plate Gauntlets', 30321, 4, 32768, 1, 55679, 11135, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 17, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Silk Footwraps | Armor: 61 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(16485, 4, 1, 'Blood Guard\'s Silk Footwraps', 31097, 3, 32768, 1, 42556, 8511, 8, 128, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Silk Cuffs | Armor: 39 | Stamina: 17 | Intellect: 7
(16486, 4, 1, 'First Sergeant\'s Silk Cuffs', 27255, 3, 32768, 1, 28477, 5695, 9, 400, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Silk Gloves | Armor: 56 | Stamina: 11 | SpellID 1: 23037 | SpellID 2: 14248
(16487, 4, 1, 'Blood Guard\'s Silk Gloves', 31098, 3, 32768, 1, 28584, 5716, 10, 128, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23037, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Silk Hood | Armor: 73 | Stamina: 16 | Intellect: 16 | Spirit: 16 | SpellID 1: 18384
(16489, 4, 1, 'Champion\'s Silk Hood', 31099, 3, 32768, 1, 43191, 8638, 1, 128, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 16, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Silk Pants | Armor: 78 | Stamina: 16 | Spirit: 16 | Intellect: 13 | SpellID 1: 14254
(16490, 4, 1, 'Legionnaire\'s Silk Pants', 26144, 3, 32768, 1, 57801, 11560, 7, 128, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 16, 6, 16, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Silk Robes | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 18384
(16491, 4, 1, 'Legionnaire\'s Silk Robes', 31102, 3, 32768, 1, 59534, 11906, 20, 128, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Silk Shoulderpads | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(16492, 4, 1, 'Champion\'s Silk Shoulderpads', 31100, 3, 32768, 1, 44810, 8962, 3, 128, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 341, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dragonhide Boots | Armor: 121 | Stamina: 12 | Strength: 12 | Intellect: 5 | Agility: 5 | Spirit: 5 | SpellID 1: 9343
(16494, 4, 2, 'Blood Guard\'s Dragonhide Boots', 27263, 3, 32768, 1, 56412, 11282, 8, 1024, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 4, 12, 5, 5, 3, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dragonhide Gauntlets | Armor: 110 | Strength: 12 | Agility: 12 | Stamina: 12 | SpellID 1: 23217
(16496, 4, 2, 'Blood Guard\'s Dragonhide Gauntlets', 27265, 3, 32768, 1, 34268, 6853, 10, 1024, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Leather Armguards | Armor: 77 | Stamina: 17 | Agility: 7
(16497, 4, 2, 'First Sergeant\'s Leather Armguards', 30801, 3, 32768, 1, 34402, 6880, 9, 8, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Leather Treads | Armor: 121 | Stamina: 18 | Agility: 11 | SpellID 1: 23049
(16498, 4, 2, 'Blood Guard\'s Leather Treads', 31035, 3, 32768, 1, 51802, 10360, 8, 8, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Leather Vices | Armor: 110 | Stamina: 15 | Agility: 10 | SpellID 1: 15807
(16499, 4, 2, 'Blood Guard\'s Leather Vices', 31036, 3, 32768, 1, 34664, 6932, 10, 8, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15807, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dragonhide Spaulders | Armor: 132 | Strength: 10 | Agility: 10 | Stamina: 10 | Spirit: 10 | Intellect: 6 | SpellID 1: 9398
(16501, 4, 2, 'Champion\'s Dragonhide Spaulders', 28935, 3, 32768, 1, 52396, 10479, 3, 1024, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 4, 10, 3, 10, 7, 10, 6, 10, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9398, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dragonhide Trousers | Armor: 154 | Strength: 12 | Agility: 12 | Stamina: 12 | Spirit: 12 | Intellect: 9 | SpellID 1: 13669 | SpellID 2: 9330
(16502, 4, 2, 'Legionnaire\'s Dragonhide Trousers', 27267, 3, 32768, 1, 70128, 14025, 7, 1024, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 6, 12, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9330, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dragonhide Helm | Armor: 143 | Stamina: 16 | Agility: 11 | Strength: 11 | Intellect: 11 | Spirit: 9 | SpellID 1: 9329 | SpellID 2: 9342
(16503, 4, 2, 'Champion\'s Dragonhide Helm', 28106, 3, 32768, 1, 52790, 10558, 1, 1024, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 3, 11, 4, 11, 5, 11, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9329, 1, 0, 0, -1, 0, -1, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dragonhide Breastplate | Armor: 176 | Stamina: 14 | Strength: 13 | Agility: 9 | Intellect: 8 | SpellID 1: 7597 | SpellID 2: 9345
(16504, 4, 2, 'Legionnaire\'s Dragonhide Breastplate', 31037, 3, 32768, 1, 70653, 14130, 5, 1024, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 14, 4, 13, 3, 9, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 382, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Leather Hauberk | Armor: 176 | Stamina: 25 | Agility: 13 | SpellID 1: 7597
(16505, 4, 2, 'Legionnaire\'s Leather Hauberk', 31039, 3, 32768, 1, 70920, 14184, 5, 8, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 25, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Leather Headguard | Armor: 143 | Stamina: 26 | SpellID 1: 13669 | SpellID 2: 15464 | SpellID 3: 9141
(16506, 4, 2, 'Champion\'s Leather Headguard', 30358, 3, 32768, 1, 53384, 10676, 1, 8, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Leather Mantle | Armor: 132 | Stamina: 23 | Agility: 7 | SpellID 1: 9141
(16507, 4, 2, 'Champion\'s Leather Mantle', 31038, 3, 32768, 1, 55014, 11002, 3, 8, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Leather Leggings | Armor: 154 | Stamina: 13 | Strength: 7 | SpellID 1: 7598
(16508, 4, 2, 'Legionnaire\'s Leather Leggings', 31040, 3, 32768, 1, 73619, 14723, 7, 8, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 347, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Plate Boots | Armor: 452 | Stamina: 23 | Strength: 8 | Agility: 5
(16509, 4, 4, 'Blood Guard\'s Plate Boots', 31050, 3, 32768, 1, 44331, 8866, 8, 1, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 23, 4, 8, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Plate Gloves | Armor: 410 | Strength: 16 | Stamina: 15 | SpellID 1: 22778
(16510, 4, 4, 'Blood Guard\'s Plate Gloves', 31051, 3, 32768, 1, 29657, 5931, 10, 1, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 16, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Plate Armor | Armor: 657 | Stamina: 25 | Strength: 9 | Agility: 6 | SpellID 1: 7597
(16513, 4, 4, 'Legionnaire\'s Plate Armor', 27274, 3, 32768, 1, 59955, 11991, 5, 1, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 25, 4, 9, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Plate Headguard | Armor: 534 | Stamina: 31 | Strength: 9 | Agility: 8
(16514, 4, 4, 'Champion\'s Plate Headguard', 30071, 3, 32768, 1, 45121, 9024, 1, 1, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 31, 4, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Plate Legguards | Armor: 575 | Stamina: 13 | Strength: 7 | SpellID 1: 7598
(16515, 4, 4, 'Legionnaire\'s Plate Legguards', 31052, 3, 32768, 1, 60375, 12075, 7, 1, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Plate Pauldrons | Armor: 493 | Stamina: 23 | Strength: 7 | Agility: 6
(16516, 4, 4, 'Champion\'s Plate Pauldrons', 31049, 3, 32768, 1, 41118, 8223, 3, 1, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 4, 7, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 281, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Mail Walkers | Armor: 255 | Stamina: 14 | Intellect: 10 | SpellID 1: 9343 | SpellID 2: 22801
(16518, 4, 3, 'Blood Guard\'s Mail Walkers', 31183, 3, 32768, 1, 62426, 12485, 8, 64, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 14, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 22801, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Mail Grips | Armor: 231 | Stamina: 15 | Intellect: 7 | Strength: 6 | SpellID 1: 14254
(16519, 4, 3, 'Blood Guard\'s Mail Grips', 27279, 3, 32768, 1, 41593, 8318, 10, 64, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 5, 7, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Mail Helm | Armor: 301 | Stamina: 25 | Intellect: 9 | Strength: 8 | SpellID 1: 7597
(16521, 4, 3, 'Champion\'s Mail Helm', 30072, 3, 32768, 1, 62862, 12572, 1, 64, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 25, 5, 9, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Mail Chestpiece | Armor: 370 | Stamina: 20 | Intellect: 20 | SpellID 1: 7597
(16522, 4, 3, 'Legionnaire\'s Mail Chestpiece', 31185, 3, 32768, 1, 84136, 16827, 5, 64, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Mail Leggings | Armor: 324 | Stamina: 20 | Intellect: 11 | Agility: 5 | SpellID 1: 15715
(16523, 4, 3, 'Legionnaire\'s Mail Leggings', 31186, 3, 32768, 1, 86745, 17349, 7, 64, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 11, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Mail Shoulders | Armor: 278 | Stamina: 16 | Intellect: 15 | Strength: 5 | Agility: 5 | SpellID 1: 9396
(16524, 4, 3, 'Champion\'s Mail Shoulders', 30382, 3, 32768, 1, 65588, 13117, 3, 64, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 4, 5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 301, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Chain Breastplate | Armor: 370 | Stamina: 18 | Agility: 16 | SpellID 1: 9334 | SpellID 2: 7597
(16525, 4, 3, 'Legionnaire\'s Chain Breastplate', 31048, 3, 32768, 1, 87375, 17475, 5, 4, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9334, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Chain Headguard | Armor: 301 | Stamina: 24 | Agility: 15 | Intellect: 10 | SpellID 1: 9141
(16526, 4, 3, 'Champion\'s Chain Headguard', 31184, 3, 32768, 1, 65771, 13154, 1, 4, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 24, 3, 15, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Chain Leggings | Armor: 324 | Agility: 18 | Stamina: 17 | SpellID 1: 7597 | SpellID 2: 13669
(16527, 4, 3, 'Legionnaire\'s Chain Leggings', 30367, 3, 32768, 1, 88015, 17603, 7, 4, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 18, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Chain Pauldrons | Armor: 278 | Stamina: 20 | Agility: 10 | SpellID 1: 9141
(16528, 4, 3, 'Champion\'s Chain Pauldrons', 31047, 3, 32768, 1, 66545, 13309, 3, 4, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Chain Gauntlets | Armor: 231 | Stamina: 18 | Agility: 11 | SpellID 1: 23157
(16530, 4, 3, 'Blood Guard\'s Chain Gauntlets', 31182, 3, 32768, 1, 44482, 8896, 10, 4, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Chain Boots | Armor: 255 | Stamina: 17 | Agility: 10 | SpellID 1: 13669
(16531, 4, 3, 'Blood Guard\'s Chain Boots', 31181, 3, 32768, 1, 67261, 13452, 8, 4, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 361, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Mail Wristguards | Armor: 162 | Stamina: 17 | Intellect: 7
(16532, 4, 3, 'First Sergeant\'s Mail Wristguards', 27277, 3, 32768, 1, 44802, 8960, 9, 68, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Cowl | Armor: 81 | Stamina: 24 | Intellect: 24 | Spirit: 19 | SpellID 1: 18384
(16533, 4, 1, 'Warlord\'s Silk Cowl', 32999, 4, 32768, 1, 102523, 20504, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 24, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Trousers | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(16534, 4, 1, 'General\'s Silk Trousers', 32998, 4, 32768, 1, 118504, 23700, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Raiment | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 18384
(16535, 4, 1, 'Warlord\'s Silk Raiment', 33085, 4, 32768, 1, 137669, 27533, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Silk Amice | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(16536, 4, 1, 'Warlord\'s Silk Amice', 33089, 4, 32768, 1, 93758, 18751, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Boots | Armor: 69 | Stamina: 21 | Intellect: 21 | SpellID 1: 9342
(16539, 4, 1, 'General\'s Silk Boots', 32996, 4, 32768, 1, 84182, 16836, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 21, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Silk Handguards | Armor: 63 | Stamina: 16 | SpellID 1: 23037 | SpellID 2: 22747
(16540, 4, 1, 'General\'s Silk Handguards', 32997, 4, 32768, 1, 56325, 11265, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23037, 1, 0, 0, -1, 0, -1, 22747, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Armor | Armor: 738 | Stamina: 35 | Strength: 13 | Agility: 13 | SpellID 1: 7597
(16541, 4, 4, 'Warlord\'s Plate Armor', 30373, 4, 32768, 1, 130894, 26178, 5, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 13, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Headpiece | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 15
(16542, 4, 4, 'Warlord\'s Plate Headpiece', 30374, 4, 32768, 1, 98535, 19707, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Leggings | Armor: 646 | Stamina: 20 | Strength: 16 | SpellID 1: 7598 | SpellID 2: 15464
(16543, 4, 4, 'General\'s Plate Leggings', 30375, 4, 32768, 1, 113910, 22782, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Plate Shoulders | Armor: 553 | Stamina: 26 | Strength: 15 | Agility: 11
(16544, 4, 4, 'Warlord\'s Plate Shoulders', 30928, 4, 32768, 1, 99253, 19850, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Agility: 11
(16545, 4, 4, 'General\'s Plate Boots', 30370, 4, 32768, 1, 86054, 17210, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Plate Gauntlets | Armor: 461 | Strength: 18 | Stamina: 17 | Agility: 15 | SpellID 1: 22778
(16548, 4, 4, 'General\'s Plate Gauntlets', 30371, 4, 32768, 1, 57993, 11598, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 17, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Hauberk | Armor: 197 | Strength: 19 | Stamina: 18 | Agility: 14 | Intellect: 13 | SpellID 1: 14248 | SpellID 2: 7597
(16549, 4, 2, 'Warlord\'s Dragonhide Hauberk', 32110, 4, 32768, 1, 168443, 33688, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 19, 7, 18, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Helmet | Armor: 160 | Stamina: 16 | Agility: 16 | Strength: 15 | Intellect: 15 | Spirit: 13 | SpellID 1: 9346 | SpellID 2: 14027
(16550, 4, 2, 'Warlord\'s Dragonhide Helmet', 32134, 4, 32768, 1, 126788, 25357, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 3, 16, 4, 15, 5, 15, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 14027, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dragonhide Epaulets | Armor: 148 | Stamina: 12 | Agility: 12 | Strength: 12 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16551, 4, 2, 'Warlord\'s Dragonhide Epaulets', 32129, 4, 32768, 1, 127243, 25448, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 12, 3, 12, 4, 12, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Leggings | Armor: 173 | Strength: 16 | Agility: 16 | Stamina: 15 | Spirit: 15 | Intellect: 13 | SpellID 1: 13669 | SpellID 2: 9332
(16552, 4, 2, 'General\'s Dragonhide Leggings', 32108, 4, 32768, 1, 147067, 29413, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 16, 3, 16, 7, 15, 6, 15, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Boots | Armor: 136 | Strength: 15 | Stamina: 14 | Intellect: 11 | Agility: 10 | Spirit: 10 | SpellID 1: 25110
(16554, 4, 2, 'General\'s Dragonhide Boots', 32106, 4, 32768, 1, 111087, 22217, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 15, 7, 14, 5, 11, 3, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dragonhide Gloves | Armor: 123 | Strength: 18 | Agility: 17 | Stamina: 15 | SpellID 1: 23217
(16555, 4, 2, 'General\'s Dragonhide Gloves', 32107, 4, 32768, 1, 69095, 13819, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 3, 17, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Treads | Armor: 136 | Stamina: 26 | Agility: 16 | SpellID 1: 23049
(16558, 4, 2, 'General\'s Leather Treads', 32114, 4, 32768, 1, 104823, 20964, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Mitts | Armor: 123 | Stamina: 18 | Agility: 14 | SpellID 1: 14049
(16560, 4, 2, 'General\'s Leather Mitts', 32113, 4, 32768, 1, 70400, 14080, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Helm | Armor: 160 | Stamina: 35 | SpellID 1: 9336 | SpellID 2: 13669 | SpellID 3: 15464
(16561, 4, 2, 'Warlord\'s Leather Helm', 32132, 4, 32768, 1, 122700, 24540, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9336, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Spaulders | Armor: 148 | Stamina: 26 | Agility: 15 | SpellID 1: 9332
(16562, 4, 2, 'Warlord\'s Leather Spaulders', 32131, 4, 32768, 1, 123156, 24631, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Leather Breastplate | Armor: 197 | Stamina: 35 | Agility: 20 | SpellID 1: 7597
(16563, 4, 2, 'Warlord\'s Leather Breastplate', 32115, 4, 32768, 1, 164799, 32959, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Leather Legguards | Armor: 173 | Stamina: 24 | Strength: 12 | SpellID 1: 7598 | SpellID 2: 15464
(16564, 4, 2, 'General\'s Leather Legguards', 32112, 4, 32768, 1, 142884, 28576, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 24, 3, 0, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Chestpiece | Armor: 416 | Agility: 23 | Stamina: 24 | SpellID 1: 14049 | SpellID 2: 7597
(16565, 4, 3, 'Warlord\'s Chain Chestpiece', 32122, 4, 32768, 1, 199217, 39843, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 23, 7, 24, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Helmet | Armor: 338 | Agility: 19 | Stamina: 27 | Intellect: 17 | Spirit: 10 | SpellID 1: 9331
(16566, 4, 3, 'Warlord\'s Chain Helmet', 32135, 4, 32768, 1, 149959, 29991, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 19, 7, 27, 5, 17, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Legguards | Armor: 364 | Agility: 23 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 13669 | SpellID 3: 15464
(16567, 4, 3, 'General\'s Chain Legguards', 32120, 4, 32768, 1, 173333, 34666, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 23, 7, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Chain Shoulders | Armor: 312 | Agility: 15 | Stamina: 26 | SpellID 1: 9332
(16568, 4, 3, 'Warlord\'s Chain Shoulders', 32125, 4, 32768, 1, 151709, 30341, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 3, 15, 7, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Boots | Armor: 286 | Agility: 14 | Stamina: 26 | SpellID 1: 13669
(16569, 4, 3, 'General\'s Chain Boots', 32124, 4, 32768, 1, 131526, 26305, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 14, 7, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Chain Gloves | Armor: 260 | Agility: 17 | Stamina: 18 | Intellect: 16 | SpellID 1: 23157
(16571, 4, 3, 'General\'s Chain Gloves', 32119, 4, 32768, 1, 81655, 16331, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 17, 7, 18, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Boots | Armor: 286 | Stamina: 18 | Intellect: 17 | SpellID 1: 22801 | SpellID 2: 14254
(16573, 4, 3, 'General\'s Mail Boots', 32126, 4, 32768, 1, 123976, 24795, 8, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22801, 1, 0, 0, -1, 0, -1, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Gauntlets | Armor: 260 | Stamina: 17 | Intellect: 15 | Strength: 11 | SpellID 1: 14248
(16574, 4, 3, 'General\'s Mail Gauntlets', 32100, 4, 32768, 1, 82591, 16518, 10, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 17, 5, 15, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Armor | Armor: 416 | Stamina: 35 | Intellect: 20 | SpellID 1: 7597
(16577, 4, 3, 'Warlord\'s Mail Armor', 32103, 4, 32768, 1, 193406, 38681, 5, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 20, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Helm | Armor: 338 | Stamina: 35 | Intellect: 11 | Strength: 10 | SpellID 1: 7597
(16578, 4, 3, 'Warlord\'s Mail Helm', 32133, 4, 32768, 1, 145586, 29117, 1, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 11, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Mail Leggings | Armor: 364 | Stamina: 23 | Intellect: 19 | Agility: 15 | SpellID 1: 14127
(16579, 4, 3, 'General\'s Mail Leggings', 32127, 4, 32768, 1, 168313, 33662, 7, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Mail Spaulders | Armor: 312 | Stamina: 18 | Intellect: 17 | Strength: 11 | Agility: 8 | SpellID 1: 25109
(16580, 4, 3, 'Warlord\'s Mail Spaulders', 32128, 4, 32768, 1, 147331, 29466, 3, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 4, 11, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25109, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Magisters Gloves | Armor: 52 | Spirit: 14 | Intellect: 14 | Stamina: 6 | Agility: 6
(16684, 4, 1, 'Magister\'s Gloves', 29593, 3, 0, 1, 45468, 9093, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 14, 5, 14, 7, 6, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 181, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Magisters Belt | Armor: 46 | Intellect: 21 | Spirit: 9
(16685, 4, 1, 'Magister\'s Belt', 29596, 3, 0, 1, 43470, 8694, 6, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 181, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Magisters Leggings | Armor: 76 | Spirit: 21 | Intellect: 20 | Stamina: 8 | Agility: 8
(16687, 4, 1, 'Magister\'s Leggings', 29273, 3, 0, 1, 101408, 20281, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 21, 5, 20, 7, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 181, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Magisters Robes | Armor: 89 | Intellect: 31 | Spirit: 13
(16688, 4, 1, 'Magister\'s Robes', 29591, 3, 0, 1, 112228, 22445, 20, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 13, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 181, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Magisters Mantle | Armor: 64 | Intellect: 22 | Spirit: 9
(16689, 4, 1, 'Magister\'s Mantle', 30211, 3, 0, 1, 72986, 14597, 3, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 22, 6, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 181, 50, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Devout Gloves | Armor: 52 | Spirit: 17 | Intellect: 10 | Stamina: 7 | Agility: 4
(16692, 4, 1, 'Devout Gloves', 30427, 3, 0, 1, 46861, 9372, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 17, 5, 10, 7, 7, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 182, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Devout Skirt | Armor: 76 | Spirit: 23 | Intellect: 15 | Stamina: 8 | Agility: 8
(16694, 4, 1, 'Devout Skirt', 30424, 3, 0, 1, 104103, 20820, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 23, 5, 15, 7, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 182, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Dreadmist Leggings | Armor: 76 | Spirit: 21 | Stamina: 15 | Intellect: 12 | Agility: 5
(16699, 4, 1, 'Dreadmist Leggings', 29797, 3, 0, 1, 106014, 21202, 7, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 21, 7, 15, 5, 12, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 183, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Dreadmist Wraps | Armor: 52 | Spirit: 14 | Intellect: 9 | Stamina: 9 | Agility: 8
(16705, 4, 1, 'Dreadmist Wraps', 29800, 3, 0, 1, 45639, 9127, 10, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 14, 5, 9, 7, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 183, 30, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Shadowcraft Boots | Armor: 115 | Intellect: 21 | Stamina: 9
(16711, 4, 2, 'Shadowcraft Boots', 28162, 3, 0, 1, 87528, 17505, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 184, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Arcanist Crown | Armor: 83 | Stamina: 10 | Intellect: 35 | Spirit: 13 | Fire Resistance: 4 | Nature Resistance: 4 | Frost Resistance: 4 | SpellID 1: 18384 | SpellID 2: 7685
(16795, 4, 1, 'Arcanist Crown', 31517, 4, 0, 1, 136797, 27359, 1, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 5, 35, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 4, 4, 4, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 7685, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Leggings | Armor: 89 | Intellect: 20 | Spirit: 24 | Stamina: 12 | Agility: 5 | Fire Resistance: 5 | Nature Resistance: 7 | Frost Resistance: 5 | Shadow Resistance: 13 | SpellID 1: 13592 | SpellID 2: 23480
(16796, 4, 1, 'Arcanist Leggings', 30582, 4, 0, 1, 169953, 33990, 7, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 24, 7, 12, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 5, 7, 5, 13, 0, 0, 0, 0, 13592, 1, 0, 0, -1, 0, -1, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Mantle | Armor: 76 | Intellect: 24 | Spirit: 9 | Holy Resistance: 5 | Fire Resistance: 5 | SpellID 1: 13599
(16797, 4, 1, 'Arcanist Mantle', 30586, 4, 0, 1, 127958, 25591, 3, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 5, 5, 0, 0, 0, 0, 0, 0, 0, 13599, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Robes | Armor: 102 | Intellect: 33 | Spirit: 16 | Stamina: 7 | Agility: 7 | SpellID 1: 13596 | SpellID 2: 23480 | SpellID 3: 7703
(16798, 4, 1, 'Arcanist Robes', 30581, 4, 0, 1, 171269, 34253, 20, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 33, 6, 16, 7, 7, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13596, 1, 0, 0, -1, 0, -1, 23480, 1, 0, 0, -1, 0, -1, 7703, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Bindings | Armor: 44 | Intellect: 20 | Spirit: 8 | Holy Resistance: 4 | Fire Resistance: 7 | Frost Resistance: 4
(16799, 4, 1, 'Arcanist Bindings', 30584, 4, 0, 1, 85963, 17192, 9, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 7, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 4, 7, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Boots | Armor: 70 | Stamina: 10 | Intellect: 15 | Spirit: 17 | Agility: 3 | Nature Resistance: 6 | Shadow Resistance: 3
(16800, 4, 1, 'Arcanist Boots', 30587, 4, 0, 1, 129425, 25885, 8, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 5, 15, 6, 17, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Gloves | Armor: 63 | Intellect: 17 | Spirit: 18 | Stamina: 8 | Agility: 8 | Holy Resistance: 7 | Frost Resistance: 3 | SpellID 1: 23480
(16801, 4, 1, 'Arcanist Gloves', 30585, 4, 0, 1, 86612, 17322, 10, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 18, 7, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 7, 0, 0, 3, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Belt | Armor: 57 | Intellect: 26 | Spirit: 11 | SpellID 1: 18379
(16802, 4, 1, 'Arcanist Belt', 30583, 4, 0, 1, 86941, 17388, 6, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18379, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Slippers | Armor: 70 | Intellect: 11 | Stamina: 18 | Spirit: 14 | Nature Resistance: 8 | Frost Resistance: 6 | Shadow Resistance: 10 | SpellID 1: 7685
(16803, 4, 1, 'Felheart Slippers', 31975, 4, 0, 1, 130905, 26181, 8, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 7, 18, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 8, 6, 10, 0, 0, 0, 0, 7685, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Bracers | Armor: 44 | Intellect: 11 | Spirit: 8 | Stamina: 15 | SpellID 1: 21587
(16804, 4, 1, 'Felheart Bracers', 31970, 4, 0, 1, 87589, 17517, 9, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 8, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21587, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Gloves | Armor: 63 | Intellect: 10 | Spirit: 17 | Stamina: 11 | Agility: 7 | SpellID 1: 9414 | SpellID 2: 23480
(16805, 4, 1, 'Felheart Gloves', 31971, 4, 0, 1, 87918, 17583, 10, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 17, 7, 11, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Belt | Armor: 57 | Intellect: 18 | Spirit: 10 | Stamina: 11 | Fire Resistance: 15 | Frost Resistance: 6 | SpellID 1: 7709 | SpellID 2: 21587
(16806, 4, 1, 'Felheart Belt', 31969, 4, 0, 1, 88247, 17649, 6, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 10, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 15, 0, 6, 0, 0, 0, 0, 0, 7709, 1, 0, 0, -1, 0, -1, 21587, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Shoulder Pads | Armor: 76 | Intellect: 17 | Spirit: 9 | Stamina: 18 | Frost Resistance: 5 | Arcane Resistance: 10 | SpellID 1: 23480
(16807, 4, 1, 'Felheart Shoulder Pads', 31974, 4, 0, 1, 132864, 26572, 3, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 9, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 5, 0, 10, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Horns | Armor: 83 | Intellect: 23 | Spirit: 16 | Stamina: 20 | Agility: 5 | Holy Resistance: 3 | Shadow Resistance: 10 | Arcane Resistance: 3
(16808, 4, 1, 'Felheart Horns', 31987, 4, 0, 1, 133344, 26668, 1, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 16, 7, 20, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 3, 0, 0, 0, 10, 3, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Robes | Armor: 102 | Intellect: 23 | Stamina: 24 | Spirit: 19 | Fire Resistance: 5 | Nature Resistance: 3 | SpellID 1: 7685 | SpellID 2: 7706 | SpellID 3: 21587
(16809, 4, 1, 'Felheart Robes', 31973, 4, 0, 1, 178450, 35690, 20, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 7, 24, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 5, 3, 0, 0, 0, 0, 0, 0, 7685, 1, 0, 0, -1, 0, -1, 7706, 1, 0, 0, -1, 0, -1, 21587, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Pants | Armor: 89 | Intellect: 11 | Spirit: 22 | Stamina: 17 | Agility: 8 | Fire Resistance: 8 | Nature Resistance: 8 | Frost Resistance: 8 | Shadow Resistance: 8 | Arcane Resistance: 8 | SpellID 1: 7709 | SpellID 2: 7685
(16810, 4, 1, 'Felheart Pants', 31972, 4, 0, 1, 179108, 35821, 7, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 22, 7, 17, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 8, 8, 8, 8, 8, 0, 0, 0, 7709, 1, 0, 0, -1, 0, -1, 7685, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Boots of Prophecy | Armor: 70 | Intellect: 11 | Spirit: 20 | Stamina: 9 | Agility: 8 | Fire Resistance: 10 | Arcane Resistance: 10
(16811, 4, 1, 'Boots of Prophecy', 31718, 4, 0, 1, 134811, 26962, 8, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 20, 7, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gloves of Prophecy | Armor: 63 | Intellect: 10 | Spirit: 22 | Stamina: 6 | Frost Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 9414
(16812, 4, 1, 'Gloves of Prophecy', 30620, 4, 0, 1, 90203, 18040, 10, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 22, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 5, 5, 0, 0, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Circlet of Prophecy | Armor: 83 | Intellect: 23 | Spirit: 23 | Stamina: 15 | Holy Resistance: 3 | SpellID 1: 9414 | SpellID 2: 9407
(16813, 4, 1, 'Circlet of Prophecy', 31371, 4, 0, 1, 139330, 27866, 1, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 23, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 3, 0, 0, 0, 0, 0, 0, 0, 0, 9414, 1, 0, 0, -1, 0, -1, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pants of Prophecy | Armor: 89 | Intellect: 17 | Spirit: 27 | Stamina: 10 | Agility: 10 | Fire Resistance: 5 | Nature Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 25067
(16814, 4, 1, 'Pants of Prophecy', 28198, 4, 0, 1, 186432, 37286, 7, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 27, 7, 10, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 5, 5, 0, 5, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robes of Prophecy | Armor: 102 | Intellect: 24 | Spirit: 23 | Stamina: 20 | Holy Resistance: 5 | Fire Resistance: 5 | Nature Resistance: 5 | Frost Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 7706
(16815, 4, 1, 'Robes of Prophecy', 31490, 4, 0, 1, 169278, 33855, 20, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 23, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 5, 5, 5, 5, 5, 0, 0, 0, 0, 7706, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Mantle of Prophecy | Armor: 76 | Intellect: 23 | Spirit: 10 | Stamina: 10 | Agility: 3 | Frost Resistance: 7 | SpellID 1: 9407
(16816, 4, 1, 'Mantle of Prophecy', 30623, 4, 0, 1, 127452, 25490, 3, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 10, 7, 10, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 7, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Girdle of Prophecy | Armor: 57 | Intellect: 22 | Spirit: 15 | Nature Resistance: 7 | Shadow Resistance: 8 | SpellID 1: 9407
(16817, 4, 1, 'Girdle of Prophecy', 30621, 4, 0, 1, 85296, 17059, 6, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 22, 6, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 7, 0, 8, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Belt | Armor: 65 | Intellect: 30 | Spirit: 13 | Fire Resistance: 13 | SpellID 1: 23480
(16818, 4, 1, 'Netherwind Belt', 34046, 4, 0, 1, 139475, 27895, 6, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 30, 6, 13, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 13, 0, 0, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Vambraces of Prophecy | Armor: 44 | Intellect: 11 | Spirit: 15 | Stamina: 3 | Fire Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 9407
(16819, 4, 1, 'Vambraces of Prophecy', 30617, 4, 0, 1, 85945, 17189, 9, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 15, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 5, 0, 0, 5, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Chestpiece | Armor: 200 | Agility: 29 | Stamina: 14 | Strength: 10 | Spirit: 7 | Fire Resistance: 10 | Frost Resistance: 10 | Arcane Resistance: 12
(16820, 4, 2, 'Nightslayer Chestpiece', 31105, 4, 0, 1, 215686, 43137, 5, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 29, 7, 14, 4, 10, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 10, 0, 10, 0, 12, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Cover | Armor: 163 | Agility: 20 | Stamina: 15 | Strength: 12 | Spirit: 5 | Nature Resistance: 4 | SpellID 1: 7598
(16821, 4, 2, 'Nightslayer Cover', 31514, 4, 0, 1, 162381, 32476, 1, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 7, 15, 4, 12, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163, 0, 0, 4, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Pants | Armor: 175 | Agility: 27 | Stamina: 15 | Strength: 11 | Spirit: 8 | Frost Resistance: 8 | Shadow Resistance: 12 | SpellID 1: 13669
(16822, 4, 2, 'Nightslayer Pants', 31340, 4, 0, 1, 217330, 43466, 7, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 27, 7, 15, 4, 11, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 0, 0, 0, 8, 12, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Shoulder Pads | Armor: 150 | Agility: 24 | Stamina: 5 | Strength: 3 | Spirit: 4 | Nature Resistance: 11 | Shadow Resistance: 7 | SpellID 1: 15464
(16823, 4, 2, 'Nightslayer Shoulder Pads', 31504, 4, 0, 1, 163597, 32719, 3, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 24, 7, 5, 4, 3, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 11, 0, 7, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Boots | Armor: 138 | Agility: 23 | Stamina: 15 | Spirit: 7 | Nature Resistance: 9 | Arcane Resistance: 5
(16824, 4, 2, 'Nightslayer Boots', 31109, 4, 0, 1, 164214, 32842, 8, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 7, 15, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, 0, 9, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Bracelets | Armor: 88 | Agility: 16 | Stamina: 11 | Spirit: 8 | Fire Resistance: 8
(16825, 4, 2, 'Nightslayer Bracelets', 31106, 4, 0, 1, 109887, 21977, 9, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 16, 7, 11, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Gloves | Armor: 125 | Agility: 15 | Stamina: 11 | Strength: 13 | Spirit: 5 | Frost Resistance: 12 | Arcane Resistance: 12
(16826, 4, 2, 'Nightslayer Gloves', 31503, 4, 0, 1, 110287, 22057, 10, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 7, 11, 4, 13, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 12, 0, 12, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Belt | Armor: 113 | Agility: 17 | Stamina: 11 | Strength: 9 | Fire Resistance: 14 | Shadow Resistance: 10 | Arcane Resistance: 10
(16827, 4, 2, 'Nightslayer Belt', 31339, 4, 0, 1, 110698, 22139, 6, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 7, 11, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 0, 14, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Belt | Armor: 113 | Intellect: 20 | Spirit: 7 | Stamina: 8 | Strength: 10 | Nature Resistance: 6 | SpellID 1: 13599
(16828, 4, 2, 'Cenarion Belt', 31722, 4, 0, 1, 111109, 22221, 6, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 7, 7, 8, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 0, 0, 6, 0, 0, 0, 0, 0, 0, 13599, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Boots | Armor: 138 | Intellect: 11 | Spirit: 20 | Stamina: 12 | Agility: 7 | Nature Resistance: 8 | Frost Resistance: 5 | Arcane Resistance: 6
(16829, 4, 2, 'Cenarion Boots', 31724, 4, 0, 1, 171697, 34339, 8, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 20, 7, 12, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, 0, 8, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Bracers | Armor: 88 | Intellect: 11 | Spirit: 10 | Stamina: 5 | Fire Resistance: 6 | SpellID 1: 25067
(16830, 4, 2, 'Cenarion Bracers', 31725, 4, 0, 1, 114864, 22972, 9, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 10, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 6, 0, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Gloves | Armor: 125 | Intellect: 10 | Spirit: 22 | Stamina: 8 | Strength: 10 | Fire Resistance: 7 | SpellID 1: 13596
(16831, 4, 2, 'Cenarion Gloves', 31726, 4, 0, 1, 115275, 23055, 10, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 22, 7, 8, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 7, 0, 0, 0, 0, 0, 0, 0, 13596, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Spaulders | Armor: 169 | Agility: 30 | Stamina: 13 | Strength: 4 | Spirit: 3 | Holy Resistance: 10 | Frost Resistance: 10
(16832, 4, 2, 'Bloodfang Spaulders', 33653, 4, 0, 1, 282662, 56532, 3, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 30, 7, 13, 4, 4, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 10, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Vestments | Armor: 200 | Intellect: 23 | Spirit: 20 | Stamina: 15 | Strength: 10 | Agility: 3 | SpellID 1: 18031
(16833, 4, 2, 'Cenarion Vestments', 31797, 4, 0, 1, 232195, 46439, 20, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 20, 7, 15, 4, 10, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Helm | Armor: 163 | Intellect: 24 | Spirit: 20 | Stamina: 14 | Holy Resistance: 3 | Fire Resistance: 8 | Shadow Resistance: 12 | SpellID 1: 25067
(16834, 4, 2, 'Cenarion Helm', 32790, 4, 0, 1, 174746, 34949, 1, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 20, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163, 3, 8, 0, 0, 12, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Leggings | Armor: 175 | Intellect: 15 | Spirit: 24 | Stamina: 11 | Agility: 5 | Holy Resistance: 3 | Fire Resistance: 5 | Nature Resistance: 3 | Frost Resistance: 5 | SpellID 1: 13599 | SpellID 2: 9411
(16835, 4, 2, 'Cenarion Leggings', 31729, 4, 0, 1, 211575, 42315, 7, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 24, 7, 11, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 3, 5, 3, 5, 0, 0, 0, 0, 0, 13599, 1, 0, 0, -1, 0, -1, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Spaulders | Armor: 150 | Intellect: 18 | Spirit: 8 | Stamina: 11 | Agility: 7 | Frost Resistance: 8 | Shadow Resistance: 8 | SpellID 1: 9411
(16836, 4, 2, 'Cenarion Spaulders', 32016, 4, 0, 1, 159298, 31859, 3, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 8, 7, 11, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 8, 8, 0, 0, 0, 0, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Boots | Armor: 290 | Spirit: 19 | Stamina: 13 | Agility: 11 | Nature Resistance: 7 | Shadow Resistance: 5 | Arcane Resistance: 3 | SpellID 1: 7703
(16837, 4, 3, 'Earthfury Boots', 31830, 4, 0, 1, 192750, 38550, 8, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 6, 19, 7, 13, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 7, 0, 5, 3, 0, 0, 0, 7703, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Belt | Armor: 237 | Intellect: 18 | Spirit: 12 | Stamina: 7 | Strength: 8 | Frost Resistance: 3 | SpellID 1: 9407 | SpellID 2: 9411
(16838, 4, 3, 'Earthfury Belt', 31829, 4, 0, 1, 128411, 25682, 6, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 12, 7, 7, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 0, 0, 3, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Gauntlets | Armor: 264 | Intellect: 8 | Spirit: 18 | Stamina: 7 | Strength: 6 | Fire Resistance: 7 | Frost Resistance: 5 | SpellID 1: 25067 | SpellID 2: 7696
(16839, 4, 3, 'Earthfury Gauntlets', 31834, 4, 0, 1, 128905, 25781, 10, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 18, 7, 7, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, 0, 7, 0, 5, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 7696, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Bracers | Armor: 185 | Intellect: 10 | Spirit: 8 | Stamina: 7 | Strength: 8 | Agility: 7 | Fire Resistance: 5 | SpellID 1: 9407
(16840, 4, 3, 'Earthfury Bracers', 31831, 4, 0, 1, 129398, 25879, 9, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 8, 7, 7, 4, 8, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185, 0, 5, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Vestments | Armor: 422 | Intellect: 20 | Spirit: 18 | Stamina: 15 | Strength: 4 | Shadow Resistance: 3 | SpellID 1: 18031
(16841, 4, 3, 'Earthfury Vestments', 31832, 4, 0, 1, 259783, 51956, 20, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 18, 7, 15, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 0, 0, 0, 3, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Helmet | Armor: 343 | Intellect: 23 | Spirit: 12 | Stamina: 20 | Agility: 3 | Holy Resistance: 3 | Nature Resistance: 3 | Frost Resistance: 7 | SpellID 1: 23481 | SpellID 2: 9404
(16842, 4, 3, 'Earthfury Helmet', 31835, 4, 0, 1, 195557, 39111, 1, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 12, 7, 20, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, 3, 0, 3, 7, 0, 0, 0, 0, 0, 23481, 1, 0, 0, -1, 0, -1, 9404, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Legguards | Armor: 369 | Intellect: 14 | Spirit: 23 | Stamina: 13 | Strength: 12 | Fire Resistance: 11 | Nature Resistance: 7 | Shadow Resistance: 7 | SpellID 1: 9411
(16843, 4, 3, 'Earthfury Legguards', 31836, 4, 0, 1, 261730, 52346, 7, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 23, 7, 13, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 11, 7, 0, 7, 0, 0, 0, 0, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Epaulets | Armor: 317 | Intellect: 17 | Spirit: 9 | Stamina: 14 | Agility: 4 | Holy Resistance: 9 | Fire Resistance: 9 | SpellID 1: 23480
(16844, 4, 3, 'Earthfury Epaulets', 31833, 4, 0, 1, 197913, 39582, 3, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 9, 7, 14, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 317, 9, 9, 0, 0, 0, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Breastplate | Armor: 422 | Agility: 24 | Intellect: 14 | Stamina: 23 | Strength: 3 | Holy Resistance: 6 | Fire Resistance: 7 | Nature Resistance: 6 | SpellID 1: 7597
(16845, 4, 3, 'Giantstalker\'s Breastplate', 32022, 4, 0, 1, 270742, 54148, 5, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 24, 5, 14, 7, 23, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 6, 7, 6, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Helmet | Armor: 343 | Agility: 20 | Intellect: 16 | Spirit: 7 | Stamina: 23 | Holy Resistance: 8 | Fire Resistance: 12 | Frost Resistance: 12
(16846, 4, 3, 'Giantstalker\'s Helmet', 32028, 4, 0, 1, 203796, 40759, 1, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 16, 6, 7, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, 8, 12, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Leggings | Armor: 369 | Agility: 27 | Intellect: 6 | Spirit: 15 | Stamina: 15 | Strength: 8 | Holy Resistance: 8 | Frost Resistance: 8 | Shadow Resistance: 8
(16847, 4, 3, 'Giantstalker\'s Leggings', 32029, 4, 0, 1, 272715, 54543, 7, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 27, 5, 6, 6, 15, 7, 15, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 8, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Epaulets | Armor: 317 | Agility: 22 | Intellect: 5 | Spirit: 9 | Stamina: 15 | SpellID 1: 15464
(16848, 4, 3, 'Giantstalker\'s Epaulets', 32030, 4, 0, 1, 206188, 41237, 3, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 22, 5, 5, 6, 9, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Boots | Armor: 290 | Agility: 22 | Spirit: 7 | Stamina: 15 | Strength: 6 | Nature Resistance: 9 | Shadow Resistance: 5
(16849, 4, 3, 'Giantstalker\'s Boots', 32040, 4, 0, 1, 206912, 41382, 8, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 22, 6, 7, 7, 15, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 9, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Bracers | Armor: 185 | Agility: 15 | Intellect: 7 | Spirit: 6 | Stamina: 8 | Fire Resistance: 8 | Frost Resistance: 7
(16850, 4, 3, 'Giantstalker\'s Bracers', 32021, 4, 0, 1, 137824, 27564, 9, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 5, 7, 6, 6, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185, 0, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Belt | Armor: 237 | Agility: 15 | Intellect: 5 | Spirit: 12 | Stamina: 11 | Fire Resistance: 10 | Nature Resistance: 9 | Shadow Resistance: 9
(16851, 4, 3, 'Giantstalker\'s Belt', 32019, 4, 0, 1, 138317, 27663, 6, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 5, 5, 6, 12, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 10, 9, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Gloves | Armor: 264 | Agility: 15 | Stamina: 10 | Spirit: 3 | Strength: 5 | SpellID 1: 13670
(16852, 4, 3, 'Giantstalker\'s Gloves', 32024, 4, 0, 1, 138810, 27762, 10, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 7, 10, 6, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13670, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Chestguard | Armor: 749 | Intellect: 18 | Spirit: 11 | Stamina: 24 | Strength: 15 | Agility: 4 | Nature Resistance: 9 | SpellID 1: 25067
(16853, 4, 4, 'Lawbringer Chestguard', 31505, 4, 0, 1, 185721, 37144, 5, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 11, 7, 24, 4, 15, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 0, 9, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Helm | Armor: 608 | Intellect: 14 | Spirit: 11 | Stamina: 20 | Strength: 14 | Nature Resistance: 6 | Frost Resistance: 6 | SpellID 1: 7597 | SpellID 2: 25067
(16854, 4, 4, 'Lawbringer Helm', 31506, 4, 0, 1, 139784, 27956, 1, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 11, 7, 20, 4, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 0, 0, 6, 6, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Legplates | Armor: 655 | Intellect: 10 | Spirit: 15 | Stamina: 15 | Strength: 23 | Agility: 5 | Fire Resistance: 12 | Shadow Resistance: 8 | SpellID 1: 13669
(16855, 4, 4, 'Lawbringer Legplates', 31352, 4, 0, 1, 169242, 33848, 7, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 15, 7, 15, 4, 23, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 655, 0, 12, 0, 0, 8, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Spaulders | Armor: 562 | Intellect: 14 | Spirit: 8 | Stamina: 18 | Strength: 11 | Agility: 7 | Fire Resistance: 8 | Shadow Resistance: 8
(16856, 4, 4, 'Lawbringer Spaulders', 31510, 4, 0, 1, 127425, 25485, 3, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 8, 7, 18, 4, 11, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 562, 0, 8, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Bracers | Armor: 328 | Intellect: 7 | Spirit: 12 | Stamina: 11 | Strength: 10 | Agility: 8
(16857, 4, 4, 'Lawbringer Bracers', 31509, 4, 0, 1, 85270, 17054, 9, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 7, 6, 12, 7, 11, 4, 10, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Belt | Armor: 421 | Intellect: 16 | Spirit: 8 | Stamina: 15 | Strength: 13 | Arcane Resistance: 3 | SpellID 1: 9407
(16858, 4, 4, 'Lawbringer Belt', 31353, 4, 0, 1, 85599, 17119, 6, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 8, 7, 15, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 421, 0, 0, 0, 0, 0, 3, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Boots | Armor: 515 | Spirit: 11 | Stamina: 20 | Strength: 13 | Agility: 4 | Shadow Resistance: 9 | SpellID 1: 15464
(16859, 4, 4, 'Lawbringer Boots', 31354, 4, 0, 1, 128891, 25778, 8, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 6, 11, 7, 20, 4, 13, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 9, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Gauntlets | Armor: 468 | Spirit: 17 | Stamina: 11 | Strength: 15 | Frost Resistance: 10 | Arcane Resistance: 11 | SpellID 1: 13674
(16860, 4, 4, 'Lawbringer Gauntlets', 31507, 4, 0, 1, 86247, 17249, 10, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 6, 17, 7, 11, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 0, 0, 10, 0, 11, 0, 0, 0, 13674, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracers of Might | Armor: 328 | Stamina: 18 | Strength: 11 | Agility: 8 | Fire Resistance: 5
(16861, 4, 4, 'Bracers of Might', 31020, 4, 0, 1, 88932, 17786, 9, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 4, 11, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sabatons of Might | Armor: 515 | Stamina: 23 | Strength: 15 | Spirit: 5 | Agility: 4 | Frost Resistance: 7
(16862, 4, 4, 'Sabatons of Might', 31025, 4, 0, 1, 133891, 26778, 8, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 15, 6, 5, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Might | Armor: 468 | Stamina: 17 | Strength: 18 | Spirit: 11 | Fire Resistance: 7 | Shadow Resistance: 11 | SpellID 1: 7597
(16863, 4, 4, 'Gauntlets of Might', 31022, 4, 0, 1, 89589, 17917, 10, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 17, 4, 18, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 7, 0, 0, 11, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Might | Armor: 421 | Stamina: 15 | Strength: 17 | Agility: 5 | Fire Resistance: 11 | Nature Resistance: 8 | Frost Resistance: 9 | Arcane Resistance: 9 | SpellID 1: 13669
(16864, 4, 4, 'Belt of Might', 31019, 4, 0, 1, 89909, 17981, 6, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 15, 4, 17, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 421, 0, 11, 8, 9, 0, 9, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Might | Armor: 749 | Stamina: 28 | Strength: 20 | Spirit: 7 | Fire Resistance: 8 | Shadow Resistance: 8 | SpellID 1: 13675
(16865, 4, 4, 'Breastplate of Might', 31021, 4, 0, 1, 180477, 36095, 5, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 28, 4, 20, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 8, 0, 0, 8, 0, 0, 0, 0, 13675, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Might | Armor: 608 | Stamina: 27 | Strength: 17 | Spirit: 10 | Holy Resistance: 12 | Nature Resistance: 7 | SpellID 1: 15464
(16866, 4, 4, 'Helm of Might', 31260, 4, 0, 1, 135851, 27170, 1, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 17, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 12, 0, 7, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Might | Armor: 655 | Stamina: 23 | Strength: 24 | Spirit: 7 | Agility: 12 | SpellID 1: 13665
(16867, 4, 4, 'Legplates of Might', 31023, 4, 0, 1, 181792, 36358, 7, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 24, 6, 7, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Might | Armor: 562 | Stamina: 22 | Strength: 15 | Agility: 10 | Nature Resistance: 6 | Frost Resistance: 5 | Shadow Resistance: 6
(16868, 4, 4, 'Pauldrons of Might', 31024, 4, 0, 1, 136824, 27364, 3, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 22, 4, 15, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 562, 0, 0, 6, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Chestguard | Armor: 225 | Intellect: 23 | Spirit: 32 | Stamina: 16 | Strength: 8 | Fire Resistance: 5 | Nature Resistance: 7 | Frost Resistance: 6 | SpellID 1: 13592 | SpellID 2: 7692 | SpellID 3: 7678
(16897, 4, 2, 'Stormrage Chestguard', 30536, 4, 0, 1, 356759, 71351, 5, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 32, 7, 16, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 5, 7, 6, 0, 0, 0, 0, 0, 13592, 1, 0, 0, -1, 0, -1, 7692, 1, 0, 0, -1, 0, -1, 7678, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Boots | Armor: 154 | Intellect: 12 | Spirit: 23 | Stamina: 14 | Agility: 7 | Fire Resistance: 8 | Shadow Resistance: 6 | SpellID 1: 13596
(16898, 4, 2, 'Stormrage Boots', 30542, 4, 0, 1, 268546, 53709, 8, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 23, 7, 14, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 8, 0, 0, 6, 0, 0, 0, 0, 13596, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Handguards | Armor: 140 | Intellect: 13 | Spirit: 25 | Stamina: 8 | Strength: 8 | SpellID 1: 7692 | SpellID 2: 25067
(16899, 4, 2, 'Stormrage Handguards', 34016, 4, 0, 1, 179700, 35940, 10, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 25, 7, 8, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7692, 1, 0, 0, -1, 0, -1, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Cover | Armor: 183 | Intellect: 31 | Spirit: 17 | Stamina: 15 | Holy Resistance: 9 | Shadow Resistance: 9 | SpellID 1: 13604 | SpellID 2: 18031
(16900, 4, 2, 'Stormrage Cover', 33655, 4, 0, 1, 270555, 54111, 1, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 17, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 9, 0, 0, 0, 9, 0, 0, 0, 0, 13604, 1, 0, 0, -1, 0, -1, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Legguards | Armor: 197 | Intellect: 17 | Spirit: 27 | Stamina: 14 | Strength: 6 | Fire Resistance: 12 | Frost Resistance: 9 | Shadow Resistance: 8 | SpellID 1: 13592 | SpellID 2: 9360
(16901, 4, 2, 'Stormrage Legguards', 30540, 4, 0, 1, 362079, 72415, 7, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 27, 7, 14, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 12, 0, 9, 8, 0, 0, 0, 0, 13592, 1, 0, 0, -1, 0, -1, 9360, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Pauldrons | Armor: 169 | Intellect: 23 | Spirit: 13 | Stamina: 15 | Strength: 4 | Fire Resistance: 6 | Nature Resistance: 14
(16902, 4, 2, 'Stormrage Pauldrons', 30546, 4, 0, 1, 272537, 54507, 3, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 13, 7, 15, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Belt | Armor: 126 | Intellect: 20 | Spirit: 13 | Stamina: 6 | Strength: 10 | Frost Resistance: 3 | SpellID 1: 9360 | SpellID 2: 9407
(16903, 4, 2, 'Stormrage Belt', 30541, 4, 0, 1, 182361, 36472, 6, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 13, 7, 6, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 3, 0, 0, 0, 0, 0, 9360, 1, 0, 0, -1, 0, -1, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Bracers | Armor: 98 | Intellect: 12 | Spirit: 16 | Stamina: 3 | Arcane Resistance: 9 | SpellID 1: 13599
(16904, 4, 2, 'Stormrage Bracers', 30548, 4, 0, 1, 183030, 36606, 9, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 16, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 9, 0, 0, 0, 13599, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Chestpiece | Armor: 225 | Agility: 40 | Stamina: 12 | Strength: 11 | Spirit: 11 | Fire Resistance: 8 | Shadow Resistance: 8 | SpellID 1: 13669
(16905, 4, 2, 'Bloodfang Chestpiece', 33650, 4, 0, 1, 367400, 73480, 5, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 40, 7, 12, 4, 11, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 8, 0, 0, 8, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Boots | Armor: 154 | Agility: 27 | Stamina: 16 | Strength: 4 | Spirit: 8 | Nature Resistance: 13
(16906, 4, 2, 'Bloodfang Boots', 31111, 4, 0, 1, 276527, 55305, 8, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 27, 7, 16, 4, 4, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Gloves | Armor: 140 | Agility: 17 | Stamina: 13 | Strength: 16 | Fire Resistance: 8 | SpellID 1: 15465
(16907, 4, 2, 'Bloodfang Gloves', 33651, 4, 0, 1, 185021, 37004, 10, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 7, 13, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 8, 0, 0, 0, 0, 0, 0, 0, 15465, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Hood | Armor: 183 | Agility: 23 | Stamina: 17 | Strength: 9 | Holy Resistance: 7 | Frost Resistance: 7 | Shadow Resistance: 8 | SpellID 1: 20884
(16908, 4, 2, 'Bloodfang Hood', 33743, 4, 0, 1, 278536, 55707, 1, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 7, 17, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 7, 0, 0, 7, 8, 0, 0, 0, 0, 20884, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Pants | Armor: 197 | Agility: 36 | Stamina: 18 | Strength: 11 | Spirit: 8 | Holy Resistance: 10 | Fire Resistance: 10 | Nature Resistance: 10 | Frost Resistance: 10 | Shadow Resistance: 10
(16909, 4, 2, 'Bloodfang Pants', 31115, 4, 0, 1, 346046, 69209, 7, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 36, 7, 18, 4, 11, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Belt | Armor: 126 | Agility: 17 | Stamina: 11 | Strength: 13 | Spirit: 5 | Fire Resistance: 11 | Nature Resistance: 3 | Shadow Resistance: 10 | SpellID 1: 7597
(16910, 4, 2, 'Bloodfang Belt', 31110, 4, 0, 1, 173692, 34738, 6, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 7, 11, 4, 13, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 11, 3, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Bracers | Armor: 98 | Agility: 23 | Stamina: 13 | Spirit: 9
(16911, 4, 2, 'Bloodfang Bracers', 31127, 4, 0, 1, 174362, 34872, 9, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 7, 13, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Boots | Armor: 80 | Intellect: 17 | Spirit: 20 | Stamina: 13 | Nature Resistance: 10 | SpellID 1: 13599
(16912, 4, 1, 'Netherwind Boots', 34044, 4, 0, 1, 210038, 42007, 8, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 20, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 10, 0, 0, 0, 0, 0, 0, 13599, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Gloves | Armor: 72 | Intellect: 17 | Spirit: 23 | Stamina: 3 | Shadow Resistance: 15 | SpellID 1: 23480 | SpellID 2: 7699
(16913, 4, 1, 'Netherwind Gloves', 34041, 4, 0, 1, 140546, 28109, 10, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 23, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 15, 0, 0, 0, 0, 23480, 1, 0, 0, -1, 0, -1, 7699, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Crown | Armor: 94 | Intellect: 40 | Spirit: 14 | Stamina: 8 | Fire Resistance: 3 | Arcane Resistance: 8 | SpellID 1: 13604
(16914, 4, 1, 'Netherwind Crown', 34218, 4, 0, 1, 211623, 42324, 1, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 40, 6, 14, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 3, 0, 0, 0, 8, 0, 0, 0, 13604, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Pants | Armor: 101 | Intellect: 26 | Spirit: 27 | Agility: 8 | Nature Resistance: 3 | Frost Resistance: 17 | SpellID 1: 9307
(16915, 4, 1, 'Netherwind Pants', 34039, 4, 0, 1, 283236, 56647, 7, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 27, 7, 0, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 3, 17, 0, 0, 0, 0, 0, 9307, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Robes | Armor: 116 | Intellect: 36 | Spirit: 17 | Stamina: 8 | Fire Resistance: 9 | Nature Resistance: 3 | SpellID 1: 25065
(16916, 4, 1, 'Netherwind Robes', 34038, 4, 0, 1, 284307, 56861, 20, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 36, 6, 17, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 9, 3, 0, 0, 0, 0, 0, 0, 25065, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Mantle | Armor: 87 | Intellect: 27 | Spirit: 8 | Stamina: 10 | Agility: 6 | Holy Resistance: 6 | SpellID 1: 23481
(16917, 4, 1, 'Netherwind Mantle', 34254, 4, 0, 1, 214012, 42802, 3, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 8, 7, 10, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 6, 0, 0, 0, 0, 0, 0, 0, 0, 23481, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Bindings | Armor: 51 | Intellect: 23 | Spirit: 13 | Stamina: 9
(16918, 4, 1, 'Netherwind Bindings', 34045, 4, 0, 1, 143210, 28642, 9, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 13, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Boots of Transcendence | Armor: 80 | Intellect: 13 | Spirit: 23 | Stamina: 15 | Agility: 6 | SpellID 1: 9328
(16919, 4, 1, 'Boots of Transcendence', 34055, 4, 0, 1, 215619, 43123, 8, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 23, 7, 15, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9328, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Handguards of Transcendence | Armor: 72 | Intellect: 13 | Spirit: 25 | Nature Resistance: 6 | SpellID 1: 9318
(16920, 4, 1, 'Handguards of Transcendence', 34051, 4, 0, 1, 144281, 28856, 10, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 6, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Halo of Transcendence | Armor: 94 | Intellect: 27 | Spirit: 26 | Stamina: 17 | Fire Resistance: 12 | Nature Resistance: 12 | Shadow Resistance: 12 | Arcane Resistance: 12
(16921, 4, 1, 'Halo of Transcendence', 34233, 4, 0, 1, 217204, 43440, 1, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 26, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 12, 12, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Leggings of Transcendence | Armor: 101 | Intellect: 23 | Spirit: 31 | Stamina: 8 | Frost Resistance: 14 | SpellID 1: 18009
(16922, 4, 1, 'Leggings of Transcendence', 34049, 4, 0, 1, 290677, 58135, 7, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 31, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 14, 0, 0, 0, 0, 0, 18009, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robes of Transcendence | Armor: 116 | Intellect: 27 | Spirit: 27 | Stamina: 17 | Shadow Resistance: 8 | Arcane Resistance: 8 | SpellID 1: 17371
(16923, 4, 1, 'Robes of Transcendence', 34047, 4, 0, 1, 291748, 58349, 20, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 27, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 0, 0, 0, 8, 8, 0, 0, 0, 17371, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Transcendence | Armor: 87 | Intellect: 25 | Spirit: 13 | Stamina: 12 | Agility: 4 | Fire Resistance: 5 | Nature Resistance: 3 | SpellID 1: 9408 | SpellID 2: 9414
(16924, 4, 1, 'Pauldrons of Transcendence', 34048, 4, 0, 1, 219593, 43918, 3, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 13, 7, 12, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 5, 3, 0, 0, 0, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Transcendence | Armor: 65 | Intellect: 25 | Spirit: 17 | Stamina: 8 | Fire Resistance: 6 | Shadow Resistance: 8 | Arcane Resistance: 8 | SpellID 1: 9408
(16925, 4, 1, 'Belt of Transcendence', 34053, 4, 0, 1, 150767, 30153, 6, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 17, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 6, 0, 0, 8, 8, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bindings of Transcendence | Armor: 51 | Intellect: 13 | Spirit: 23 | Stamina: 9
(16926, 4, 1, 'Bindings of Transcendence', 34052, 4, 0, 1, 151303, 30260, 9, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 23, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Boots | Armor: 80 | Intellect: 13 | Spirit: 10 | Stamina: 25 | Fire Resistance: 10 | SpellID 1: 9346
(16927, 4, 1, 'Nemesis Boots', 34015, 4, 0, 1, 227758, 45551, 8, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 10, 7, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Gloves | Armor: 72 | Intellect: 11 | Spirit: 20 | Stamina: 13 | Holy Resistance: 3 | Nature Resistance: 12 | SpellID 1: 17868
(16928, 4, 1, 'Nemesis Gloves', 34013, 4, 0, 1, 137868, 27573, 10, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 20, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 12, 0, 0, 0, 0, 0, 0, 17868, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Skullcap | Armor: 94 | Intellect: 18 | Spirit: 13 | Stamina: 27 | Frost Resistance: 10 | Shadow Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 21599 | SpellID 2: 14799
(16929, 4, 1, 'Nemesis Skullcap', 34369, 4, 0, 1, 207606, 41521, 1, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 13, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 10, 10, 10, 0, 0, 0, 21599, 1, 0, 0, -1, 0, -1, 14799, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Leggings | Armor: 101 | Intellect: 17 | Spirit: 16 | Stamina: 27 | Agility: 9 | Fire Resistance: 10 | Frost Resistance: 3 | SpellID 1: 14798
(16930, 4, 1, 'Nemesis Leggings', 29857, 4, 0, 1, 277879, 55575, 7, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 16, 7, 27, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 10, 0, 3, 0, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Robes | Armor: 116 | Intellect: 23 | Spirit: 17 | Stamina: 27 | Agility: 5 | Fire Resistance: 3 | Shadow Resistance: 9 | Arcane Resistance: 9 | SpellID 1: 18009
(16931, 4, 1, 'Nemesis Robes', 34014, 4, 0, 1, 278950, 55790, 20, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 17, 7, 27, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 3, 0, 0, 9, 9, 0, 0, 0, 18009, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Spaulders | Armor: 87 | Intellect: 17 | Spirit: 8 | Stamina: 17 | Agility: 6 | Fire Resistance: 6
(16932, 4, 1, 'Nemesis Spaulders', 34022, 4, 0, 1, 209994, 41998, 3, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 8, 7, 17, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Belt | Armor: 65 | Intellect: 8 | Spirit: 6 | Stamina: 18 | Fire Resistance: 13 | Shadow Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 13384 | SpellID 2: 15715
(16933, 4, 1, 'Nemesis Belt', 34011, 4, 0, 1, 140532, 28106, 6, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 6, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 13, 0, 0, 10, 10, 0, 0, 0, 13384, 0, 0, 0, -1, 0, -1, 15715, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Bracers | Armor: 51 | Intellect: 11 | Spirit: 6 | Stamina: 21 | SpellID 1: 9344
(16934, 4, 1, 'Nemesis Bracers', 34012, 4, 0, 1, 141067, 28213, 9, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 6, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Bracers | Armor: 211 | Agility: 21 | Intellect: 8 | Spirit: 6 | Stamina: 9 | Holy Resistance: 9
(16935, 4, 3, 'Dragonstalker\'s Bracers', 33666, 4, 0, 1, 212405, 42481, 9, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 21, 5, 8, 6, 6, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Belt | Armor: 271 | Agility: 15 | Intellect: 13 | Spirit: 11 | Stamina: 12 | SpellID 1: 13670
(16936, 4, 3, 'Dragonstalker\'s Belt', 33665, 4, 0, 1, 213187, 42637, 6, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 5, 13, 6, 11, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13670, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Spaulders | Armor: 362 | Agility: 23 | Intellect: 14 | Spirit: 8 | Stamina: 15 | Nature Resistance: 9 | Frost Resistance: 8
(16937, 4, 3, 'Dragonstalker\'s Spaulders', 34091, 4, 0, 1, 322412, 64482, 3, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 5, 14, 6, 8, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 0, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Legguards | Armor: 422 | Agility: 33 | Intellect: 11 | Spirit: 16 | Stamina: 23 | Strength: 8 | Holy Resistance: 8
(16938, 4, 3, 'Dragonstalker\'s Legguards', 33672, 4, 0, 1, 429588, 85917, 7, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 33, 5, 11, 6, 16, 7, 23, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Helm | Armor: 392 | Agility: 20 | Intellect: 21 | Spirit: 6 | Stamina: 21 | Strength: 7 | Fire Resistance: 12 | Shadow Resistance: 11 | Arcane Resistance: 11 | SpellID 1: 7597
(16939, 4, 3, 'Dragonstalker\'s Helm', 34367, 4, 0, 1, 323363, 64672, 1, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 21, 6, 6, 7, 21, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 12, 0, 0, 11, 11, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Gauntlets | Armor: 301 | Agility: 17 | Spirit: 8 | Stamina: 20 | Strength: 9 | Fire Resistance: 10 | Nature Resistance: 10 | Frost Resistance: 10 | Shadow Resistance: 3 | Arcane Resistance: 3
(16940, 4, 3, 'Dragonstalker\'s Gauntlets', 33668, 4, 0, 1, 216379, 43275, 10, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 5, 0, 6, 8, 7, 20, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 10, 10, 10, 3, 3, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Greaves | Armor: 332 | Agility: 25 | Spirit: 12 | Stamina: 17 | Shadow Resistance: 10 | Arcane Resistance: 10
(16941, 4, 3, 'Dragonstalker\'s Greaves', 34269, 4, 0, 1, 335892, 67178, 8, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 25, 5, 0, 6, 12, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Breastplate | Armor: 482 | Agility: 36 | Intellect: 16 | Spirit: 4 | Stamina: 23 | Shadow Resistance: 3 | Arcane Resistance: 3 | SpellID 1: 15464
(16942, 4, 3, 'Dragonstalker\'s Breastplate', 33667, 4, 0, 1, 447482, 89496, 5, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 36, 5, 16, 6, 4, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 3, 3, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracers of Ten Storms | Armor: 182 | Intellect: 11 | Spirit: 12 | Stamina: 7 | Strength: 9 | Fire Resistance: 7 | Nature Resistance: 6 | Frost Resistance: 6 | SpellID 1: 9411
(16943, 4, 3, 'Bracers of Ten Storms', 34079, 4, 0, 1, 224522, 44904, 9, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 12, 7, 7, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182, 0, 7, 6, 6, 0, 0, 0, 0, 0, 9411, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Ten Storms | Armor: 234 | Intellect: 20 | Spirit: 13 | Stamina: 4 | Strength: 16 | SpellID 1: 17371
(16944, 4, 3, 'Belt of Ten Storms', 34078, 4, 0, 1, 225326, 45065, 6, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 13, 7, 4, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17371, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Epaulets of Ten Storms | Armor: 312 | Intellect: 17 | Spirit: 10 | Stamina: 23 | Shadow Resistance: 9 | Arcane Resistance: 9 | SpellID 1: 9408
(16945, 4, 3, 'Epaulets of Ten Storms', 34255, 4, 0, 1, 340702, 68140, 3, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 10, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 9, 9, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Ten Storms | Armor: 364 | Intellect: 12 | Spirit: 33 | Stamina: 15 | Strength: 16 | Agility: 8 | Arcane Resistance: 6 | SpellID 1: 7679 | SpellID 2: 9401
(16946, 4, 3, 'Legplates of Ten Storms', 34084, 4, 0, 1, 453866, 90773, 7, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 33, 7, 15, 4, 16, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 6, 0, 0, 0, 7679, 1, 0, 0, -1, 0, -1, 9401, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helmet of Ten Storms | Armor: 338 | Intellect: 23 | Spirit: 17 | Stamina: 16 | Fire Resistance: 8 | Nature Resistance: 8 | SpellID 1: 17868 | SpellID 2: 17990
(16947, 4, 3, 'Helmet of Ten Storms', 34217, 4, 0, 1, 341572, 68314, 1, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 17, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 8, 8, 0, 0, 0, 0, 0, 0, 17868, 1, 0, 0, -1, 0, -1, 17990, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Ten Storms | Armor: 260 | Spirit: 23 | Stamina: 7 | Strength: 13 | Fire Resistance: 6 | Frost Resistance: 6 | SpellID 1: 9408 | SpellID 2: 9461
(16948, 4, 3, 'Gauntlets of Ten Storms', 34082, 4, 0, 1, 206780, 41356, 10, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 23, 7, 7, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 6, 0, 6, 0, 0, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 9461, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Greaves of Ten Storms | Armor: 286 | Agility: 17 | Spirit: 20 | Stamina: 13 | Frost Resistance: 3 | SpellID 1: 17892
(16949, 4, 3, 'Greaves of Ten Storms', 34083, 4, 0, 1, 312760, 62552, 8, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 6, 20, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 3, 0, 0, 0, 0, 0, 17892, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Ten Storms | Armor: 416 | Intellect: 31 | Spirit: 20 | Stamina: 17 | Strength: 15 | Shadow Resistance: 3 | Arcane Resistance: 3 | SpellID 1: 9408 | SpellID 2: 9404
(16950, 4, 3, 'Breastplate of Ten Storms', 34081, 4, 0, 1, 416775, 83355, 5, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 20, 7, 17, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 3, 3, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 9404, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Bindings | Armor: 375 | Intellect: 9 | Spirit: 5 | Stamina: 19 | Strength: 11 | Holy Resistance: 6 | Nature Resistance: 6
(16951, 4, 4, 'Judgement Bindings', 33634, 4, 0, 1, 139446, 27889, 9, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 6, 5, 7, 19, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 6, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Belt | Armor: 482 | Intellect: 20 | Spirit: 11 | Stamina: 13 | Strength: 20 | Fire Resistance: 8 | Frost Resistance: 8
(16952, 4, 4, 'Judgement Belt', 33633, 4, 0, 1, 139982, 27996, 6, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 11, 7, 13, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 8, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Spaulders | Armor: 642 | Intellect: 17 | Spirit: 12 | Stamina: 25 | Strength: 13
(16953, 4, 4, 'Judgement Spaulders', 34258, 4, 0, 1, 210776, 42155, 3, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 12, 7, 25, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Legplates | Armor: 749 | Intellect: 11 | Spirit: 17 | Stamina: 20 | Strength: 31 | Agility: 7 | SpellID 1: 25067
(16954, 4, 4, 'Judgement Legplates', 33637, 4, 0, 1, 282077, 56415, 7, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 17, 7, 20, 4, 31, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Crown | Armor: 696 | Intellect: 19 | Spirit: 4 | Stamina: 31 | Strength: 17 | Agility: 4 | Holy Resistance: 7 | Fire Resistance: 8 | SpellID 1: 18031
(16955, 4, 4, 'Judgement Crown', 34216, 4, 0, 1, 212361, 42472, 1, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 4, 7, 31, 4, 17, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 7, 8, 0, 0, 0, 0, 0, 0, 0, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Gauntlets | Armor: 535 | Spirit: 13 | Stamina: 15 | Strength: 19 | Agility: 6 | Holy Resistance: 3 | Frost Resistance: 8 | Shadow Resistance: 5 | SpellID 1: 25067
(16956, 4, 4, 'Judgement Gauntlets', 33636, 4, 0, 1, 142110, 28422, 10, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 6, 13, 7, 15, 4, 19, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 3, 0, 0, 8, 5, 0, 0, 0, 0, 25067, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Sabatons | Armor: 589 | Spirit: 17 | Strength: 15 | Agility: 6 | Nature Resistance: 8 | Shadow Resistance: 5
(16957, 4, 4, 'Judgement Sabatons', 33639, 4, 0, 1, 219723, 43944, 8, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 6, 17, 7, 0, 4, 15, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 0, 8, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Breastplate | Armor: 857 | Intellect: 18 | Spirit: 16 | Stamina: 33 | Strength: 17 | Agility: 5 | Fire Resistance: 6 | Shadow Resistance: 6
(16958, 4, 4, 'Judgement Breastplate', 33635, 4, 0, 1, 294007, 58801, 5, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 16, 7, 33, 4, 17, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 6, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracelets of Wrath | Armor: 375 | Stamina: 23 | Strength: 13 | Spirit: 6
(16959, 4, 4, 'Bracelets of Wrath', 33982, 4, 0, 1, 147539, 29507, 9, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 13, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Waistband of Wrath | Armor: 482 | Stamina: 16 | Strength: 23 | Spirit: 7 | Fire Resistance: 6 | Nature Resistance: 5 | Shadow Resistance: 3 | Arcane Resistance: 6 | SpellID 1: 13674
(16960, 4, 4, 'Waistband of Wrath', 33990, 4, 0, 1, 148074, 29614, 6, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 16, 4, 23, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 6, 5, 0, 3, 6, 0, 0, 0, 13674, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Wrath | Armor: 642 | Stamina: 30 | Strength: 17 | Agility: 8 | Holy Resistance: 6 | Shadow Resistance: 6
(16961, 4, 4, 'Pauldrons of Wrath', 34253, 4, 0, 1, 222915, 44583, 3, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 30, 4, 17, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 6, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Wrath | Armor: 749 | Stamina: 23 | Strength: 36 | Spirit: 8 | Fire Resistance: 7 | SpellID 1: 13669
(16962, 4, 4, 'Legplates of Wrath', 33986, 4, 0, 1, 298263, 59652, 7, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 36, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 7, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Wrath | Armor: 696 | Stamina: 36 | Strength: 22 | Spirit: 3 | Fire Resistance: 6 | Frost Resistance: 6 | Shadow Resistance: 5 | SpellID 1: 7597
(16963, 4, 4, 'Helm of Wrath', 34215, 4, 0, 1, 224501, 44900, 1, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 36, 4, 22, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 0, 6, 0, 6, 5, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Wrath | Armor: 535 | Stamina: 17 | Strength: 23 | Spirit: 7 | Holy Resistance: 8 | Nature Resistance: 10 | Shadow Resistance: 8 | SpellID 1: 15464
(16964, 4, 4, 'Gauntlets of Wrath', 33984, 4, 0, 1, 150203, 30040, 10, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 17, 4, 23, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 8, 0, 10, 0, 8, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sabatons of Wrath | Armor: 589 | Stamina: 30 | Strength: 16 | Spirit: 3 | Frost Resistance: 8
(16965, 4, 4, 'Sabatons of Wrath', 33989, 4, 0, 1, 226108, 45221, 8, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 30, 4, 16, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Wrath | Armor: 857 | Stamina: 40 | Strength: 23 | Spirit: 10 | Nature Resistance: 3
(16966, 4, 4, 'Breastplate of Wrath', 33983, 4, 0, 1, 302519, 60503, 5, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 40, 4, 23, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Flarecore Gloves | Armor: 60 | Intellect: 14 | Stamina: 10 | Fire Resistance: 25
(16979, 4, 1, 'Flarecore Gloves', 28754, 4, 0, 1, 74510, 14902, 10, 31632, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Shard of the Scale
(17064, 4, 0, 'Shard of the Scale', 26374, 4, 0, 1, 183658, 45914, 12, -1, -1, 71, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 241, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Medallion of Steadfast Might | Stamina: 10 | Strength: 8 | SpellID 1: 13669 | SpellID 2: 21408
(17065, 4, 0, 'Medallion of Steadfast Might', 4841, 4, 0, 1, 133525, 33381, 2, -1, -1, 68, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, 0, 0, 0, 21408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Drillborer Disk | Armor: 2291 | Stamina: 10 | Holy Resistance: 10 | SpellID 1: 15438 | SpellID 2: 13675
(17066, 4, 6, 'Drillborer Disk', 34110, 4, 0, 1, 289852, 57970, 14, -1, -1, 67, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2291, 10, 0, 0, 0, 0, 0, 0, 0, 0, 15438, 1, 0, 0, -1, 0, -1, 13675, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 46, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Deathbringer | SpellID 1: 21141
(17068, 2, 0, 'Deathbringer', 29161, 4, 0, 1, 674164, 134832, 13, -1, -1, 75, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 21141, 2, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Strikers Mark | SpellID 1: 9331 | SpellID 2: 15464
(17069, 2, 2, 'Striker\'s Mark', 30927, 4, 0, 1, 378731, 75746, 15, -1, -1, 69, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1900, 2, 100, 9331, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Fang of the Mystics | Intellect: 10
(17070, 2, 15, 'Fang of the Mystics', 29706, 4, 0, 1, 546537, 109307, 13, -1, -1, 70, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38.7, 85.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Blastershot Launcher | SpellID 1: 7597
(17072, 2, 3, 'Blastershot Launcher', 29163, 4, 0, 1, 412860, 82572, 26, -1, -1, 70, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3, 100, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthshaker | SpellID 1: 21152
(17073, 2, 5, 'Earthshaker', 32162, 4, 0, 1, 568157, 113631, 17, -1, -1, 66, 60, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 158, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3500, 0, 0, 21152, 2, 0, 2, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Shadowstrike | SpellID 1: 21170 | SpellID 2: 21180
(17074, 2, 6, 'Shadowstrike', 29176, 4, 1088, 1, 492571, 98514, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3100, 0, 0, 21170, 2, 0, 0, -1, 0, -1, 21180, 0, 0, 0, -1, 1150, 60000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Viskag the Bloodletter
(17075, 2, 7, 'Vis\'kag the Bloodletter', 32197, 4, 0, 1, 676334, 135266, 13, -1, -1, 74, 58, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 0, 0, 0, 1.3, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bonereavers Edge | SpellID 1: 21153 | SpellID 2: 7597
(17076, 2, 8, 'Bonereaver\'s Edge', 32199, 4, 0, 1, 982192, 196438, 17, -1, -1, 77, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 0, 0, 21153, 2, 0, 3, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sapphiron Drape | Armor: 49 | Intellect: 15 | Stamina: 10 | Holy Resistance: 5 | Frost Resistance: 5 | SpellID 1: 9397
(17078, 4, 1, 'Sapphiron Drape', 29719, 4, 0, 1, 186019, 37203, 16, -1, -1, 72, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 5, 0, 0, 5, 0, 0, 0, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Shard of the Flame
(17082, 4, 0, 'Shard of the Flame', 29722, 4, 0, 1, 184585, 46146, 12, -1, -1, 74, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 241, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Azuresong Mageblade | Intellect: 8 | Stamina: 5 | Arcane Resistance: 10 | SpellID 1: 18384
(17103, 2, 7, 'Azuresong Mageblade', 29677, 4, 0, 1, 559117, 111823, 21, -1, -1, 71, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2400, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Aurastone Hammer | Intellect: 10 | Stamina: 10 | Shadow Resistance: 10 | SpellID 1: 21618
(17105, 2, 4, 'Aurastone Hammer', 34109, 4, 0, 1, 510891, 102178, 13, -1, -1, 69, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 2700, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Choker of Enlightenment | Intellect: 10 | Spirit: 10 | SpellID 1: 12854
(17109, 4, 0, 'Choker of Enlightenment', 9858, 4, 0, 1, 134500, 33625, 2, -1, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12854, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Seal of the Archmagus | Intellect: 10 | Stamina: 10 | Spirit: 10 | Holy Resistance: 5 | Fire Resistance: 5 | Nature Resistance: 5 | Frost Resistance: 5 | Shadow Resistance: 5 | SpellID 1: 21623
(17110, 4, 0, 'Seal of the Archmagus', 29697, 4, 0, 1, 98595, 24648, 11, -1, -1, 70, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 10, 7, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 21623, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Amberseal Keeper | Intellect: 20 | Fire Resistance: 5 | Nature Resistance: 5 | Frost Resistance: 5 | Shadow Resistance: 5 | Arcane Resistance: 5 | SpellID 1: 21636 | SpellID 2: 9415
(17113, 2, 10, 'Amberseal Keeper', 29703, 4, 0, 1, 596390, 119278, 17, -1, -1, 67, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 3300, 0, 0, 21636, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Thunderstrike
(17223, 2, 6, 'Thunderstrike', 29191, 4, 1088, 1, 485373, 97074, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3100, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 1150, 60000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dreadweave Boots | Armor: 61 | Intellect: 15 | Stamina: 10 | SpellID 1: 14254
(17562, 4, 1, 'Knight-Lieutenant\'s Dreadweave Boots', 31059, 3, 32768, 1, 43683, 8736, 8, 256, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 5, 15, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dreadweave Gloves | Armor: 56 | Stamina: 18 | Intellect: 11 | SpellID 1: 23046
(17564, 4, 1, 'Knight-Lieutenant\'s Dreadweave Gloves', 31060, 3, 32768, 1, 29332, 5866, 10, 256, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Headguard | Armor: 73 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17566, 4, 1, 'Lieutenant Commander\'s Headguard', 30341, 3, 32768, 1, 44318, 8863, 1, 256, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dreadweave Leggings | Armor: 78 | Stamina: 21 | Intellect: 20 | SpellID 1: 9345
(17567, 4, 1, 'Knight-Captain\'s Dreadweave Leggings', 30385, 3, 32768, 1, 59304, 11860, 7, 256, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 21, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dreadweave Robe | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17568, 4, 1, 'Knight-Captain\'s Dreadweave Robe', 31053, 3, 32768, 1, 55273, 11054, 20, 256, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dreadweave Mantle | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17569, 4, 1, 'Lieutenant Commander\'s Dreadweave Mantle', 31066, 3, 32768, 1, 41614, 8322, 3, 256, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 346, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dreadweave Hood | Armor: 73 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17570, 4, 1, 'Champion\'s Dreadweave Hood', 27258, 3, 32768, 1, 41774, 8354, 1, 256, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dreadweave Leggings | Armor: 78 | Stamina: 15 | Intellect: 13 | SpellID 1: 14127
(17571, 4, 1, 'Legionnaire\'s Dreadweave Leggings', 31032, 3, 32768, 1, 55912, 11182, 7, 256, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 15, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dreadweave Robe | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17572, 4, 1, 'Legionnaire\'s Dreadweave Robe', 27260, 3, 32768, 1, 56119, 11223, 20, 256, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dreadweave Shoulders | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17573, 4, 1, 'Champion\'s Dreadweave Shoulders', 30381, 3, 32768, 1, 42249, 8449, 3, 256, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dreadweave Boots | Armor: 61 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17576, 4, 1, 'Blood Guard\'s Dreadweave Boots', 31026, 3, 32768, 1, 42724, 8544, 8, 256, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dreadweave Gloves | Armor: 56 | Stamina: 11 | SpellID 1: 23046 | SpellID 2: 14248
(17577, 4, 1, 'Blood Guard\'s Dreadweave Gloves', 27256, 3, 32768, 1, 28589, 5717, 10, 256, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 345, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Coronal | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17578, 4, 1, 'Field Marshal\'s Coronal', 32979, 4, 32768, 1, 98160, 19632, 1, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Leggings | Armor: 88 | Stamina: 23 | Intellect: 16 | SpellID 1: 14055
(17579, 4, 1, 'Marshal\'s Dreadweave Leggings', 33007, 4, 32768, 1, 113479, 22695, 7, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14055, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dreadweave Shoulders | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(17580, 4, 1, 'Field Marshal\'s Dreadweave Shoulders', 33002, 4, 32768, 1, 98879, 19775, 3, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Dreadweave Robe | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 25110
(17581, 4, 1, 'Field Marshal\'s Dreadweave Robe', 33001, 4, 32768, 1, 132325, 26465, 20, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Boots | Armor: 69 | Intellect: 21 | Stamina: 21 | SpellID 1: 9342
(17583, 4, 1, 'Marshal\'s Dreadweave Boots', 33006, 4, 32768, 1, 86351, 17270, 8, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 21, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Dreadweave Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23046 | SpellID 2: 22747
(17584, 4, 1, 'Marshal\'s Dreadweave Gloves', 32995, 4, 32768, 1, 59280, 11856, 10, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 22747, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Boots | Armor: 69 | Stamina: 21 | Intellect: 21 | SpellID 1: 9342
(17586, 4, 1, 'General\'s Dreadweave Boots', 33076, 4, 0, 1, 81034, 16206, 8, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23046 | SpellID 2: 22747
(17588, 4, 1, 'General\'s Dreadweave Gloves', 33077, 4, 0, 1, 54437, 10887, 10, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 22747, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(17590, 4, 1, 'Warlord\'s Dreadweave Mantle', 33088, 4, 0, 1, 95255, 19051, 3, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Hood | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17591, 4, 1, 'Warlord\'s Dreadweave Hood', 33071, 4, 0, 1, 95609, 19121, 1, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Dreadweave Robe | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 25110
(17592, 4, 1, 'Warlord\'s Dreadweave Robe', 33079, 4, 0, 1, 127965, 25593, 20, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Dreadweave Pants | Armor: 88 | Stamina: 23 | Intellect: 16 | SpellID 1: 14055
(17593, 4, 1, 'General\'s Dreadweave Pants', 30380, 4, 0, 1, 110961, 22192, 7, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14055, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Satin Boots | Armor: 61 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17594, 4, 1, 'Knight-Lieutenant\'s Satin Boots', 31061, 3, 32768, 1, 42405, 8481, 8, 16, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Satin Gloves | Armor: 56 | Stamina: 11 | SpellID 1: 23043 | SpellID 2: 14248
(17596, 4, 1, 'Knight-Lieutenant\'s Satin Gloves', 31062, 3, 32768, 1, 28480, 5696, 10, 16, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Diadem | Armor: 73 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17598, 4, 1, 'Lieutenant Commander\'s Diadem', 31065, 3, 32768, 1, 43035, 8607, 1, 16, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Satin Leggings | Armor: 78 | Stamina: 16 | Intellect: 13 | Spirit: 16 | SpellID 1: 14254
(17599, 4, 1, 'Knight-Captain\'s Satin Leggings', 25198, 3, 32768, 1, 57594, 11518, 7, 16, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 16, 5, 13, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Satin Robes | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17600, 4, 1, 'Knight-Captain\'s Satin Robes', 31058, 3, 32768, 1, 59333, 11866, 20, 16, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Satin Amice | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17601, 4, 1, 'Lieutenant Commander\'s Satin Amice', 31067, 3, 32768, 1, 44659, 8931, 3, 16, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 344, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Headdress | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17602, 4, 1, 'Field Marshal\'s Headdress', 32980, 4, 32768, 1, 102198, 20439, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Pants | Armor: 88 | Stamina: 23 | Intellect: 16 | Spirit: 19 | SpellID 1: 14127
(17603, 4, 1, 'Marshal\'s Satin Pants', 32991, 4, 32768, 1, 118130, 23626, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Satin Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(17604, 4, 1, 'Field Marshal\'s Satin Mantle', 33005, 4, 32768, 1, 102927, 20585, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshals Satin Vestments | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 25110
(17605, 4, 1, 'Field Marshal\'s Satin Vestments', 32984, 4, 32768, 1, 137722, 27544, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Sandals | Armor: 69 | Intellect: 21 | Stamina: 21 | SpellID 1: 9342
(17607, 4, 1, 'Marshal\'s Satin Sandals', 32992, 4, 32768, 1, 81332, 16266, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 21, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshals Satin Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 22747 | SpellID 2: 23043
(17608, 4, 1, 'Marshal\'s Satin Gloves', 32990, 4, 32768, 1, 54431, 10886, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22747, 1, 0, 0, -1, 0, -1, 23043, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Satin Cowl | Armor: 73 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17610, 4, 1, 'Champion\'s Satin Cowl', 31030, 3, 32768, 1, 41761, 8352, 1, 16, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Satin Trousers | Armor: 78 | Stamina: 16 | Intellect: 13 | Spirit: 16 | SpellID 1: 14254
(17611, 4, 1, 'Legionnaire\'s Satin Trousers', 31033, 3, 32768, 1, 55895, 11179, 7, 16, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 16, 5, 13, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Satin Vestments | Armor: 89 | Stamina: 20 | Intellect: 20 | SpellID 1: 9345
(17612, 4, 1, 'Legionnaire\'s Satin Vestments', 30351, 3, 32768, 1, 56108, 11221, 20, 16, -1, 63, 58, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Satin Shoulderpads | Armor: 67 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17613, 4, 1, 'Champion\'s Satin Shoulderpads', 31031, 3, 32768, 1, 42236, 8447, 3, 16, -1, 63, 58, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Satin Boots | Armor: 61 | Stamina: 16 | Intellect: 15 | SpellID 1: 9417
(17616, 4, 1, 'Blood Guard\'s Satin Boots', 31027, 3, 32768, 1, 43860, 8772, 8, 16, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Satin Gloves | Armor: 56 | Stamina: 11 | SpellID 1: 23043 | SpellID 2: 14248
(17617, 4, 1, 'Blood Guard\'s Satin Gloves', 31028, 3, 32768, 1, 29344, 5868, 10, 16, -1, 63, 58, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 342, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Boots | Armor: 69 | Stamina: 21 | Intellect: 21 | SpellID 1: 9342
(17618, 4, 1, 'General\'s Satin Boots', 33080, 4, 32768, 1, 87023, 17404, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23043 | SpellID 2: 22747
(17620, 4, 1, 'General\'s Satin Gloves', 33081, 4, 32768, 1, 58435, 11687, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 22747, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 25110
(17622, 4, 1, 'Warlord\'s Satin Mantle', 33083, 4, 32768, 1, 102188, 20437, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Cowl | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17623, 4, 1, 'Warlord\'s Satin Cowl', 33082, 4, 32768, 1, 102553, 20510, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlords Satin Robes | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 25110
(17624, 4, 1, 'Warlord\'s Satin Robes', 33084, 4, 32768, 1, 137223, 27444, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Generals Satin Leggings | Armor: 88 | Stamina: 23 | Intellect: 16 | Spirit: 19 | SpellID 1: 14127
(17625, 4, 1, 'General\'s Satin Leggings', 26021, 4, 32768, 1, 118947, 23789, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Gloves of the Greatfather | Armor: 66 | SpellID 1: 7681 | SpellID 2: 7694
(17721, 4, 2, 'Gloves of the Greatfather', 29898, 2, 0, 1, 11340, 2268, 10, -1, -1, 38, 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7681, 1, 0, 0, -1, 0, -1, 7694, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 30, 0, 0, 0, '', 6, 0, 0, 0, 0, 0, 1),
-- Helm of the Mountain | Armor: 683 | Nature Resistance: 10 | SpellID 1: 13390
(17734, 4, 4, 'Helm of the Mountain', 29911, 3, 0, 1, 52285, 10457, 1, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 683, 0, 0, 10, 0, 0, 0, 0, 0, 0, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 80, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Natures Embrace | Armor: 73 | SpellID 1: 21513 | SpellID 2: 18378
(17741, 4, 1, 'Nature\'s Embrace', 29918, 3, 0, 1, 57238, 11447, 20, -1, -1, 51, 46, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21513, 1, 0, 0, -1, 0, -1, 18378, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Resurgence Rod | SpellID 1: 18378 | SpellID 2: 21345
(17743, 2, 10, 'Resurgence Rod', 22391, 3, 0, 1, 203739, 40747, 17, -1, -1, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 139, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 18378, 1, 0, 0, -1, 0, -1, 21345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Blade of Eternal Darkness | SpellID 1: 21978
(17780, 2, 15, 'Blade of Eternal Darkness', 29957, 4, 64, 1, 233983, 46796, 21, -1, -1, 54, 49, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 21978, 1, 0, 0, 30000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 63, 0, 0, 0, 0, 0, 1),
-- Fist of Stone
(17943, 2, 4, 'Fist of Stone', 29910, 3, 0, 1, 160783, 32156, 21, -1, -1, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 1),
-- Coal Miner Boots | Armor: 102 | Stamina: 13 | Fire Resistance: 10
(18043, 4, 2, 'Coal Miner Boots', 2373, 2, 0, 1, 77476, 15495, 8, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Hurleys Tankard | Stamina: 10
(18044, 2, 4, 'Hurley\'s Tankard', 30436, 2, 0, 1, 207391, 41478, 21, -1, -1, 57, 52, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Flame Walkers | Armor: 251 | Fire Resistance: 10
(18047, 4, 3, 'Flame Walkers', 30439, 3, 0, 1, 122142, 24428, 8, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Mastersmiths Hammer | Fire Resistance: 10 | SpellID 1: 7686
(18048, 2, 4, 'Mastersmith\'s Hammer', 30440, 2, 0, 1, 246023, 49204, 21, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 2400, 0, 0, 7686, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Zumrahs Vexing Cane | Intellect: 10 | Stamina: 10 | SpellID 1: 9417
(18082, 2, 10, 'Zum\'rah\'s Vexing Cane', 30472, 3, 0, 1, 140809, 28161, 17, -1, -1, 47, 42, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 46, 0, 0, 0, 0, 0, 1),
-- Dragonrider Boots | Armor: 61 | Intellect: 16 | Stamina: 5 | Fire Resistance: 10
(18102, 4, 1, 'Dragonrider Boots', 14617, 3, 0, 1, 85794, 17158, 8, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 16, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Drape of Benediction | Armor: 52 | Intellect: 10 | Stamina: 9 | Spirit: 4 | SpellID 1: 9407
(18208, 4, 1, 'Drape of Benediction', 15273, 4, 0, 1, 145737, 29147, 16, -1, -1, 67, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 10, 7, 9, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Core Marksman Rifle
(18282, 2, 3, 'Core Marksman Rifle', 31210, 4, 0, 1, 331739, 66347, 26, -1, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Barbed Thorn Necklace | Stamina: 7 | Intellect: 6 | SpellID 1: 9409
(18289, 4, 0, 'Barbed Thorn Necklace', 9860, 3, 0, 1, 38804, 9701, 2, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9409, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Unbridled Leggings | Armor: 140 | Stamina: 18 | Strength: 11 | SpellID 1: 21596
(18298, 4, 2, 'Unbridled Leggings', 30654, 3, 0, 1, 103427, 20685, 7, -1, -1, 56, 51, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21596, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 75, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Lethtendriss Wand | SpellID 1: 9395
(18301, 2, 19, 'Lethtendris\'s Wand', 30660, 2, 0, 1, 146815, 29363, 26, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 113, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1700, 0, 100, 9395, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 55, 0, 0, 0, '', 30, 0, 0, 0, 0, 0, 1),
-- Riptide Shoes | Armor: 52 | Intellect: 12
(18307, 4, 1, 'Riptide Shoes', 30667, 2, 0, 1, 55815, 11163, 8, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 35, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Energized Chestplate | Armor: 617 | Strength: 13 | Stamina: 20 | Intellect: 12
(18312, 4, 4, 'Energized Chestplate', 30675, 3, 0, 1, 90369, 18073, 5, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 13, 7, 20, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Merciful Greaves | Armor: 240 | Intellect: 14 | Stamina: 14
(18318, 4, 3, 'Merciful Greaves', 30679, 3, 0, 1, 110286, 22057, 8, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Energetic Rod | Intellect: 5 | SpellID 1: 25109
(18321, 2, 4, 'Energetic Rod', 30915, 3, 0, 1, 246601, 49320, 21, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 25109, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 90, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Waterspout Boots | Armor: 114 | Intellect: 6 | Spirit: 6 | SpellID 1: 25110
(18322, 4, 2, 'Waterspout Boots', 6779, 3, 0, 1, 80686, 16137, 8, -1, -1, 58, 53, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25110, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 50, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Wand of Arcane Potency | SpellID 1: 13597
(18338, 2, 19, 'Wand of Arcane Potency', 21016, 3, 0, 1, 182979, 36595, 26, -1, -1, 59, 54, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 122, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 100, 13597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 2, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 1),
-- Magically Sealed Bracers | Armor: 383
(18351, 4, 4, 'Magically Sealed Bracers', 30704, 2, 0, 1, 43702, 8740, 9, -1, -1, 61, 56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 40, 0, 0, 0, '', 11, 0, 0, 0, 0, 0, 1),
-- Pimgibs Collar
(18354, 4, 0, 'Pimgib\'s Collar', 1399, 3, 0, 1, 69864, 17466, 12, 31488, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Vigilance Charm
(18370, 4, 0, 'Vigilance Charm', 30722, 3, 0, 1, 86450, 21612, 12, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Blade of the New Moon | Stamina: 5
(18372, 2, 15, 'Blade of the New Moon', 30724, 3, 0, 1, 283580, 56716, 21, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bracers of the Eclipse | Armor: 76 | Agility: 10 | Stamina: 9
(18375, 4, 2, 'Bracers of the Eclipse', 30727, 3, 0, 1, 71649, 14329, 9, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 10, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Odious Greaves | Armor: 251 | Stamina: 18 | Intellect: 9
(18379, 4, 3, 'Odious Greaves', 30736, 3, 0, 1, 118957, 23791, 8, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 18, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Robe of Everlasting Night | Armor: 88 | Intellect: 13 | Stamina: 11 | Spirit: 5 | SpellID 1: 14254
(18385, 4, 1, 'Robe of Everlasting Night', 30744, 3, 0, 1, 107684, 21536, 20, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 7, 11, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 80, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Cloak of the Cosmos | Armor: 44 | Intellect: 11 | Stamina: 7 | SpellID 1: 23796
(18389, 4, 1, 'Cloak of the Cosmos', 15247, 3, 0, 1, 84152, 16830, 16, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23796, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Eyestalk Cord | Armor: 98 | Intellect: 15 | Stamina: 9 | SpellID 1: 9317
(18391, 4, 2, 'Eyestalk Cord', 30749, 3, 0, 1, 65383, 13076, 6, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9317, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Demon Howl Wristguards | Armor: 160 | Stamina: 17
(18394, 4, 3, 'Demon Howl Wristguards', 30753, 3, 0, 1, 85666, 17133, 9, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Mind Carver | Intellect: 8 | SpellID 1: 9397
(18396, 2, 7, 'Mind Carver', 30754, 3, 0, 1, 287583, 57516, 21, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 3, 0, 0, 0, 90, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Onyxia Blood Talisman | Fire Resistance: 15
(18406, 4, 0, 'Onyxia Blood Talisman', 30764, 4, 0, 1, 184123, 46030, 12, -1, -1, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felcloth Gloves | Armor: 55 | Stamina: 9 | SpellID 1: 18009
(18407, 4, 1, 'Felcloth Gloves', 17216, 3, 0, 1, 55696, 11139, 10, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18009, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Inferno Gloves | Armor: 55 | Intellect: 9 | SpellID 1: 17868
(18408, 4, 1, 'Inferno Gloves', 30772, 3, 0, 1, 55893, 11178, 10, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17868, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Spry Boots | Armor: 102 | Agility: 12
(18411, 4, 2, 'Spry Boots', 31732, 2, 0, 1, 68520, 13704, 8, -1, -1, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 45, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Cloak of Warding | Armor: 214 | SpellID 1: 13386
(18413, 4, 1, 'Cloak of Warding', 30783, 3, 0, 1, 85353, 17070, 16, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Sergeants Cloak | Armor: 66 | Stamina: 9
(18427, 4, 1, 'Sergeant\'s Cloak', 27088, 3, 32768, 1, 6611, 1322, 16, -1, -1, 35, 30, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Senior Sergeants Insignia | Stamina: 14 | Spirit: 6
(18428, 4, 0, 'Senior Sergeant\'s Insignia', 30797, 3, 32768, 1, 30000, 7500, 2, -1, -1, 50, 45, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 14, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Plate Bracers | Armor: 287 | Stamina: 17 | Strength: 7
(18429, 4, 4, 'First Sergeant\'s Plate Bracers', 27273, 3, 32768, 1, 29447, 5889, 9, 1, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Plate Bracers | Armor: 231 | Stamina: 14 | Strength: 6
(18430, 4, 4, 'First Sergeant\'s Plate Bracers', 27273, 3, 32768, 1, 14391, 2878, 9, 1, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Mail Wristguards | Armor: 131 | Stamina: 14 | Intellect: 6
(18432, 4, 3, 'First Sergeant\'s Mail Wristguards', 27277, 3, 32768, 1, 21742, 4348, 9, 68, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Dragonhide Armguards | Armor: 77 | Stamina: 17 | Intellect: 7
(18434, 4, 2, 'First Sergeant\'s Dragonhide Armguards', 27262, 3, 32768, 1, 37468, 7493, 9, 1024, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Leather Armguards | Armor: 64 | Stamina: 14 | Intellect: 6
(18435, 4, 2, 'First Sergeant\'s Leather Armguards', 30801, 3, 32768, 1, 18311, 3662, 9, 8, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 3, 0, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Dragonhide Armguards | Armor: 64 | Stamina: 14 | Intellect: 6
(18436, 4, 2, 'First Sergeant\'s Dragonhide Armguards', 27262, 3, 32768, 1, 17086, 3417, 9, 1024, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- First Sergeants Silk Cuffs | Armor: 31 | Stamina: 14 | Intellect: 6
(18437, 4, 1, 'First Sergeant\'s Silk Cuffs', 27255, 3, 32768, 1, 13721, 2744, 9, 400, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeants Cape | Armor: 66 | Stamina: 9
(18440, 4, 1, 'Sergeant\'s Cape', 27087, 3, 32768, 1, 6443, 1288, 16, -1, -1, 35, 30, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeants Cape | Armor: 96 | Stamina: 14
(18441, 4, 1, 'Sergeant\'s Cape', 27087, 3, 32768, 1, 20891, 4178, 16, -1, -1, 50, 45, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Master Sergeants Insignia | Stamina: 9 | Spirit: 4
(18442, 4, 0, 'Master Sergeant\'s Insignia', 30799, 3, 32768, 1, 20000, 5000, 2, -1, -1, 35, 30, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 9, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Master Sergeants Insignia | Stamina: 17 | Spirit: 7
(18443, 4, 0, 'Master Sergeant\'s Insignia', 30799, 3, 32768, 1, 40000, 10000, 2, -1, -1, 63, 58, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 17, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Master Sergeants Insignia | Stamina: 14 | Spirit: 6
(18444, 4, 0, 'Master Sergeant\'s Insignia', 30799, 3, 32768, 1, 30000, 7500, 2, -1, -1, 50, 45, 0, 0, 0, 8, 0, 0, 0, 1, 1, 0, 7, 14, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Plate Wristguards | Armor: 287 | Stamina: 17 | Strength: 7
(18445, 4, 4, 'Sergeant Major\'s Plate Wristguards', 27223, 3, 32768, 1, 29021, 5804, 9, 3, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Plate Wristguards | Armor: 231 | Stamina: 14 | Strength: 6
(18447, 4, 4, 'Sergeant Major\'s Plate Wristguards', 27223, 3, 32768, 1, 14235, 2847, 9, 3, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Chain Armguards | Armor: 162 | Stamina: 17 | Intellect: 7
(18448, 4, 3, 'Sergeant Major\'s Chain Armguards', 31248, 3, 32768, 1, 44007, 8801, 9, 4, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Chain Armguards | Armor: 131 | Stamina: 14 | Intellect: 6
(18449, 4, 3, 'Sergeant Major\'s Chain Armguards', 31248, 3, 32768, 1, 21507, 4301, 9, 4, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Leather Armsplints | Armor: 77 | Stamina: 17 | Agility: 7
(18452, 4, 2, 'Sergeant Major\'s Leather Armsplints', 30804, 3, 32768, 1, 34553, 6910, 9, 8, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Leather Armsplints | Armor: 64 | Stamina: 14 | Agility: 6
(18453, 4, 2, 'Sergeant Major\'s Leather Armsplints', 30804, 3, 32768, 1, 16890, 3378, 9, 8, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Dragonhide Armsplints | Armor: 77 | Stamina: 17 | Intellect: 7
(18454, 4, 2, 'Sergeant Major\'s Dragonhide Armsplints', 30805, 3, 32768, 1, 34815, 6963, 9, 1024, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 17, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Dragonhide Armsplints | Armor: 64 | Stamina: 14 | Intellect: 6
(18455, 4, 2, 'Sergeant Major\'s Dragonhide Armsplints', 30805, 3, 32768, 1, 17020, 3404, 9, 1024, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Silk Cuffs | Armor: 39 | Stamina: 18 | Intellect: 7
(18456, 4, 1, 'Sergeant Major\'s Silk Cuffs', 30806, 3, 32768, 1, 28065, 5613, 9, 400, -1, 63, 58, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 18, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Sergeant Majors Silk Cuffs | Armor: 31 | Stamina: 14 | Intellect: 6
(18457, 4, 1, 'Sergeant Major\'s Silk Cuffs', 30806, 3, 32768, 1, 13373, 2674, 9, 400, -1, 50, 45, 0, 0, 0, 9, 0, 0, 0, 1, 1, 0, 7, 14, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Modest Armguards | Armor: 141 | Intellect: 10
(18458, 4, 3, 'Modest Armguards', 26103, 2, 0, 1, 61064, 12212, 9, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 35, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Gallants Wristguards | Armor: 249 | Intellect: 14
(18459, 4, 4, 'Gallant\'s Wristguards', 30807, 2, 0, 1, 39536, 7907, 9, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 40, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Sergeants Cloak | Armor: 115 | Stamina: 17
(18461, 4, 1, 'Sergeant\'s Cloak', 27088, 3, 32768, 1, 42888, 8577, 16, -1, -1, 63, 58, 0, 0, 0, 7, 0, 0, 0, 1, 1, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Royal Seal of EldreThalas | Fire Resistance: 10 | SpellID 1: 9344
(18465, 4, 0, 'Royal Seal of Eldre\'Thalas', 29712, 3, 0, 1, 0, 0, 12, 8, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 'Blessed by the Shen\'dralar Ancients.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Royal Seal of EldreThalas | Fire Resistance: 10
(18467, 4, 0, 'Royal Seal of Eldre\'Thalas', 29712, 3, 0, 1, 0, 0, 12, 256, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 'Blessed by the Shen\'dralar Ancients.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Royal Seal of EldreThalas | Fire Resistance: 10
(18469, 4, 0, 'Royal Seal of Eldre\'Thalas', 29712, 3, 0, 1, 0, 0, 12, 16, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 'Blessed by the Shen\'dralar Ancients.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Royal Seal of EldreThalas | Fire Resistance: 10
(18471, 4, 0, 'Royal Seal of Eldre\'Thalas', 29712, 3, 0, 1, 0, 0, 12, 64, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 'Blessed by the Shen\'dralar Ancients.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Royal Seal of EldreThalas | Fire Resistance: 10
(18473, 4, 0, 'Royal Seal of Eldre\'Thalas', 29712, 3, 0, 1, 0, 0, 12, 4, -1, 62, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 'Blessed by the Shen\'dralar Ancients.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Carrion Scorpid Helm | Armor: 262 | Stamina: 10 | SpellID 1: 9346
(18479, 4, 3, 'Carrion Scorpid Helm', 30820, 2, 0, 1, 88957, 17791, 1, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 10, 0, 0, 0, 0, 0, 1),
-- Ogre Toothpick Shooter | Agility: 6 | Stamina: 5
(18482, 2, 2, 'Ogre Toothpick Shooter', 8106, 2, 0, 1, 154930, 30986, 15, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 6, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2200, 2, 100, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 65, 0, 0, 0, '', 30, 0, 0, 0, 0, 0, 1),
-- Redoubt Cloak | Armor: 45 | Stamina: 15 | SpellID 1: 13390
(18495, 4, 1, 'Redoubt Cloak', 30831, 3, 0, 1, 83851, 16770, 16, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Sublime Wristguards | Armor: 37 | Intellect: 10 | Spirit: 6 | Stamina: 6
(18497, 4, 1, 'Sublime Wristguards', 30833, 3, 0, 1, 47443, 9488, 9, -1, -1, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 6, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 30, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Monstrous Glaive | Stamina: 23 | SpellID 1: 13665 | SpellID 2: 13390
(18502, 2, 6, 'Monstrous Glaive', 30836, 3, 0, 1, 350636, 70127, 17, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 1, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Kromcrushs Chestplate | Armor: 777 | Strength: 16 | Stamina: 16
(18503, 4, 4, 'Kromcrush\'s Chestplate', 30837, 3, 0, 1, 112609, 22521, 5, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 16, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 135, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Boots of the Full Moon | Armor: 60 | Intellect: 12 | Spirit: 9 | Stamina: 12
(18507, 4, 1, 'Boots of the Full Moon', 19921, 3, 0, 1, 78460, 15692, 8, -1, -1, 62, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 6, 9, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Grimy Metal Boots | Armor: 552 | Strength: 17
(18521, 4, 4, 'Grimy Metal Boots', 30854, 3, 0, 1, 88032, 17606, 8, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 65, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Brightly Glowing Stone | Stamina: 7 | SpellID 1: 9318
(18523, 4, 0, 'Brightly Glowing Stone', 30855, 3, 0, 1, 139243, 34810, 23, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Bracers of Prosperity | Armor: 77 | Intellect: 10 | Stamina: 8 | Spirit: 5 | SpellID 1: 9407
(18525, 4, 2, 'Bracers of Prosperity', 30859, 3, 0, 1, 68652, 13730, 9, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 7, 8, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 35, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Harmonious Gauntlets | Armor: 231 | Intellect: 5 | Spirit: 5 | Stamina: 5 | SpellID 1: 18033
(18527, 4, 3, 'Harmonious Gauntlets', 30862, 3, 0, 1, 89941, 17988, 10, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 6, 5, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18033, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Unyielding Maul | Armor: 250 | Stamina: 12 | SpellID 1: 21408
(18531, 2, 5, 'Unyielding Maul', 30867, 3, 0, 1, 326918, 65383, 17, -1, -1, 62, 57, 0, 0, 199, 0, 0, 0, 0, 0, 1, 0, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 3200, 0, 0, 21408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 1, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Rod of the Ogre Magi | Intellect: 14 | Stamina: 11 | Spirit: 7 | SpellID 1: 18384 | SpellID 2: 9344
(18534, 2, 10, 'Rod of the Ogre Magi', 30870, 3, 0, 1, 357515, 71503, 17, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 7, 11, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2700, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 100, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 1),
-- Infernal Headcage | Armor: 358 | Intellect: 25 | Spirit: 14 | Stamina: 24 | Fire Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 9415
(18546, 4, 3, 'Infernal Headcage', 30889, 4, 0, 1, 240179, 48035, 1, -1, -1, 69, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 14, 7, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 358, 0, 10, 0, 0, 10, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Unmelting Ice Girdle | Armor: 452 | Agility: 14 | Strength: 14 | Stamina: 14 | Frost Resistance: 16 | SpellID 1: 21408
(18547, 4, 4, 'Unmelting Ice Girdle', 30894, 4, 0, 1, 118096, 23619, 6, -1, -1, 71, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 14, 4, 14, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 16, 0, 0, 0, 0, 0, 21408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Aegis | Armor: 2929 | Stamina: 18 | Strength: 7 | SpellID 1: 13959
(18825, 4, 6, 'Grand Marshal\'s Aegis', 31733, 4, 32768, 1, 159036, 31807, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 18, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Shield Wall | Armor: 2929 | Stamina: 23 | Strength: 10 | SpellID 1: 13959
(18826, 4, 6, 'High Warlord\'s Shield Wall', 31746, 4, 32768, 1, 159587, 31917, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 23, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Handaxe | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18827, 2, 0, 'Grand Marshal\'s Handaxe', 31956, 4, 32768, 1, 250241, 50048, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Cleaver | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18828, 2, 0, 'High Warlord\'s Cleaver', 31957, 4, 32768, 1, 251127, 50225, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Sunderer | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18830, 2, 1, 'Grand Marshal\'s Sunderer', 31302, 4, 32768, 1, 286137, 57227, 17, -1, -1, 78, 60, 0, 0, 197, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Battle Axe | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18831, 2, 1, 'High Warlord\'s Battle Axe', 31958, 4, 32768, 1, 287244, 57448, 17, -1, -1, 78, 60, 0, 0, 197, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Bullseye | SpellID 1: 21436
(18833, 2, 2, 'Grand Marshal\'s Bullseye', 31759, 4, 32768, 1, 173657, 34731, 15, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 2, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 5579
(18834, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 1, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5579, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Recurve | SpellID 1: 21436
(18835, 2, 2, 'High Warlord\'s Recurve', 31748, 4, 32768, 1, 174986, 34997, 15, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 2, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Repeater | SpellID 1: 21436
(18836, 2, 18, 'Grand Marshal\'s Repeater', 31757, 4, 32768, 1, 175650, 35130, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 2, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Crossbow | SpellID 1: 21436
(18837, 2, 18, 'High Warlord\'s Crossbow', 31749, 4, 32768, 1, 176297, 35259, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 2, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Dirk | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18838, 2, 15, 'Grand Marshal\'s Dirk', 31379, 4, 32768, 1, 242293, 48458, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Razor | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18840, 2, 15, 'High Warlord\'s Razor', 31381, 4, 32768, 1, 244064, 48812, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Right Hand Blade | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18843, 2, 13, 'Grand Marshal\'s Right Hand Blade', 32033, 4, 32768, 1, 246698, 49339, 21, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Right Claw | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18844, 2, 13, 'High Warlord\'s Right Claw', 31754, 4, 32768, 1, 247584, 49516, 21, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 5579
(18845, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 64, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5579, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 5579
(18846, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 4, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5579, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Left Hand Blade | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9141
(18847, 2, 13, 'Grand Marshal\'s Left Hand Blade', 32032, 4, 32768, 1, 250218, 50043, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Left Claw | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9141
(18848, 2, 13, 'High Warlord\'s Left Claw', 31752, 4, 32768, 1, 251079, 50215, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 23273
(18849, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 8, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23273, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 23274
(18850, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 128, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23274, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 23276
(18851, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 16, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23276, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 23273
(18852, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 256, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23273, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Horde | SpellID 1: 23277
(18853, 4, 0, 'Insignia of the Horde', 31306, 3, 32768, 1, 15000, 3750, 12, 1024, -1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23277, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 5579
(18854, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 1, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5579, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Hand Cannon | SpellID 1: 21436
(18855, 2, 3, 'Grand Marshal\'s Hand Cannon', 31758, 4, 32768, 1, 179726, 35945, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 5579
(18856, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 4, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5579, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23273
(18857, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 8, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23273, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23273
(18858, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 256, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23273, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23274
(18859, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 128, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23274, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Street Sweeper | SpellID 1: 21436
(18860, 2, 3, 'High Warlord\'s Street Sweeper', 31747, 4, 32768, 1, 183012, 36602, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23276
(18862, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 16, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23276, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23277
(18863, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 1024, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23277, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Insignia of the Alliance | SpellID 1: 23276
(18864, 4, 0, 'Insignia of the Alliance', 31318, 3, 32768, 1, 15000, 3750, 12, 2, 77, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23276, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Punisher | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18865, 2, 4, 'Grand Marshal\'s Punisher', 31955, 4, 32768, 1, 248422, 49684, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Bludgeon | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(18866, 2, 4, 'High Warlord\'s Bludgeon', 31751, 4, 32768, 1, 249308, 49861, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Battle Hammer | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18867, 2, 5, 'Grand Marshal\'s Battle Hammer', 31954, 4, 32768, 1, 312712, 62542, 17, -1, -1, 78, 60, 0, 0, 199, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Pulverizer | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18868, 2, 5, 'High Warlord\'s Pulverizer', 31750, 4, 32768, 1, 313819, 62763, 17, -1, -1, 78, 60, 0, 0, 199, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Glaive | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18869, 2, 6, 'Grand Marshal\'s Glaive', 31761, 4, 32768, 1, 284969, 56993, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Pig Sticker | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18871, 2, 6, 'High Warlord\'s Pig Sticker', 31766, 4, 32768, 1, 295085, 59017, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Stave | Stamina: 36 | Intellect: 20 | Spirit: 15 | SpellID 1: 17493
(18873, 2, 10, 'Grand Marshal\'s Stave', 31764, 4, 32768, 1, 297299, 59459, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 5, 20, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 17493, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords War Staff | Stamina: 36 | Intellect: 20 | Spirit: 15 | SpellID 1: 17493
(18874, 2, 10, 'High Warlord\'s War Staff', 31765, 4, 32768, 1, 298407, 59681, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 5, 20, 6, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 17493, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Claymore | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18876, 2, 8, 'Grand Marshal\'s Claymore', 31996, 4, 32768, 1, 300592, 60118, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Greatsword | Stamina: 36 | Strength: 20 | SpellID 1: 7597
(18877, 2, 8, 'High Warlord\'s Greatsword', 31998, 4, 32768, 1, 301699, 60339, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Thunderfury, Blessed Blade of the Windseeker | Agility: 5 | Stamina: 8 | Fire Resistance: 8 | Nature Resistance: 9 | SpellID 1: 21992
(19019, 2, 7, 'Thunderfury, Blessed Blade of the Windseeker', 30606, 5, 0, 1, 615704, 123140, 21, -1, -1, 80, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 5, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 115, 0, 16, 30, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 0, 0, 0, 1900, 0, 0, 21992, 2, 0, 5.52, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 125, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Dreamscale Breastplate | Armor: 434 | Agility: 15 | Stamina: 15 | Intellect: 14 | Nature Resistance: 30 | SpellID 1: 21618
(20380, 4, 3, 'Dreamscale Breastplate', 32818, 4, 0, 1, 289792, 57958, 5, -1, -1, 68, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 15, 7, 15, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 434, 0, 0, 30, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Blood Guards Chain Greaves | Armor: 266 | Stamina: 19 | Agility: 20
(22843, 4, 3, 'Blood Guard\'s Chain Greaves', 31181, 3, 32768, 1, 75422, 15084, 8, 4, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 19, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dragonhide Treads | Armor: 126 | Stamina: 13 | Strength: 13 | Intellect: 6 | Agility: 6 | Spirit: 6 | SpellID 1: 9343
(22852, 4, 2, 'Blood Guard\'s Dragonhide Treads', 27263, 3, 32768, 1, 59605, 11921, 8, 1024, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 13, 4, 13, 5, 6, 3, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dreadweave Walkers | Armor: 64 | Stamina: 17 | Intellect: 13 | SpellID 1: 9346
(22855, 4, 1, 'Blood Guard\'s Dreadweave Walkers', 31026, 3, 32768, 1, 47684, 9536, 8, 256, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Leather Walkers | Armor: 166 | Stamina: 18 | SpellID 1: 23049 | SpellID 2: 9335
(22856, 4, 2, 'Blood Guard\'s Leather Walkers', 31035, 3, 32768, 1, 60961, 12192, 8, 8, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Mail Greaves | Armor: 266 | Stamina: 14 | Intellect: 12 | Strength: 13 | SpellID 2: 22801
(22857, 4, 3, 'Blood Guard\'s Mail Greaves', 31183, 3, 32768, 1, 73757, 14751, 8, 64, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 14, 5, 12, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 22801, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Plate Greaves | Armor: 472 | Stamina: 23 | Strength: 10 | Agility: 9
(22858, 4, 4, 'Blood Guard\'s Plate Greaves', 31050, 3, 32768, 1, 49139, 9827, 8, 1, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 23, 4, 10, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Satin Walkers | Armor: 64 | Stamina: 17 | Intellect: 15 | SpellID 1: 9343
(22859, 4, 1, 'Blood Guard\'s Satin Walkers', 31027, 3, 32768, 1, 47684, 9536, 8, 16, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Silk Walkers | Armor: 104 | Stamina: 15 | Intellect: 10 | SpellID 1: 9344 | SpellID 2: 23727
(22860, 4, 1, 'Blood Guard\'s Silk Walkers', 31097, 3, 0, 1, 49504, 9900, 8, 128, 511, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Chain Vices | Armor: 242 | Stamina: 16 | Agility: 18 | SpellID 1: 28539
(22862, 4, 3, 'Blood Guard\'s Chain Vices', 31182, 3, 32768, 1, 49869, 9973, 10, 4, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28539, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dragonhide Grips | Armor: 115 | Strength: 13 | Agility: 10 | Stamina: 12 | Intellect: 9 | SpellID 1: 23217
(22863, 4, 2, 'Blood Guard\'s Dragonhide Grips', 27265, 3, 32768, 1, 39737, 7947, 10, 1024, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 13, 3, 10, 7, 12, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Leather Grips | Armor: 155 | Stamina: 18 | SpellID 1: 9331 | SpellID 2: 7597
(22864, 4, 2, 'Blood Guard\'s Leather Grips', 31036, 3, 32768, 1, 41866, 8373, 10, 8, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Dreadweave Handwraps | Armor: 58 | Stamina: 14 | Intellect: 4 | SpellID 1: 23046 | SpellID 2: 14248
(22865, 4, 1, 'Blood Guard\'s Dreadweave Handwraps', 27256, 3, 32768, 1, 33616, 6723, 10, 256, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 14, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Mail Vices | Armor: 242 | Stamina: 15 | Intellect: 9 | SpellID 1: 18384 | SpellID 2: 9342
(22867, 4, 3, 'Blood Guard\'s Mail Vices', 27279, 3, 32768, 1, 50789, 10157, 10, 64, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Plate Gauntlets | Armor: 429 | Strength: 17 | Stamina: 17 | SpellID 1: 22778
(22868, 4, 4, 'Blood Guard\'s Plate Gauntlets', 31051, 3, 32768, 1, 31789, 6357, 10, 1, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 17, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Satin Handwraps | Armor: 98 | Stamina: 12 | Intellect: 5 | SpellID 1: 23043 | SpellID 2: 14248
(22869, 4, 1, 'Blood Guard\'s Satin Handwraps', 31028, 3, 32768, 1, 34106, 6821, 10, 16, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Blood Guards Silk Handwraps | Armor: 98 | Stamina: 12 | Intellect: 10 | SpellID 1: 23037 | SpellID 2: 9346
(22870, 4, 1, 'Blood Guard\'s Silk Handwraps', 31098, 3, 0, 1, 34226, 6845, 10, 128, 511, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23037, 1, 0, 0, -1, 0, -1, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Plate Hauberk | Armor: 706 | Stamina: 23 | Strength: 21 | SpellID 1: 7597
(22872, 4, 4, 'Legionnaire\'s Plate Hauberk', 27274, 3, 32768, 1, 70603, 14120, 5, 1, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 23, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Plate Leggings | Armor: 618 | Stamina: 17 | Strength: 12 | SpellID 1: 7598
(22873, 4, 4, 'Legionnaire\'s Plate Leggings', 31052, 3, 32768, 1, 70875, 14175, 7, 1, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 17, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Chain Hauberk | Armor: 398 | Agility: 16 | Stamina: 13 | Intellect: 6 | SpellID 1: 7598
(22874, 4, 3, 'Legionnaire\'s Chain Hauberk', 31048, 3, 32768, 1, 106709, 21341, 5, 4, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 16, 7, 13, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Chain Legguards | Armor: 348 | Agility: 16 | Stamina: 13 | Intellect: 6 | SpellID 1: 7598
(22875, 4, 3, 'Legionnaire\'s Chain Legguards', 30367, 3, 32768, 1, 107117, 21423, 7, 4, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 16, 7, 13, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Mail Hauberk | Armor: 398 | Stamina: 18 | Intellect: 18 | Strength: 17 | SpellID 1: 7597
(22876, 4, 3, 'Legionnaire\'s Mail Hauberk', 31185, 3, 32768, 1, 107525, 21505, 5, 64, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 18, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dragonhide Chestpiece | Armor: 218 | Stamina: 13 | Strength: 13 | Agility: 12 | Intellect: 12 | SpellID 1: 7597 | SpellID 2: 9344
(22877, 4, 2, 'Legionnaire\'s Dragonhide Chestpiece', 31037, 3, 32768, 1, 89935, 17987, 5, 1024, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 13, 3, 12, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dragonhide Leggings | Armor: 215 | Strength: 12 | Agility: 12 | Stamina: 12 | Spirit: 5 | Intellect: 12 | SpellID 1: 18384 | SpellID 2: 9343
(22878, 4, 2, 'Legionnaire\'s Dragonhide Leggings', 27267, 3, 32768, 1, 90275, 18055, 7, 1024, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 6, 5, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Leather Chestpiece | Armor: 248 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 15806
(22879, 4, 2, 'Legionnaire\'s Leather Chestpiece', 31039, 3, 32768, 1, 90615, 18123, 5, 8, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 15806, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Leather Legguards | Armor: 225 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 15806
(22880, 4, 2, 'Legionnaire\'s Leather Legguards', 31040, 3, 32768, 1, 90955, 18191, 7, 8, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 15806, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dreadweave Legguards | Armor: 84 | Stamina: 21 | Intellect: 13 | SpellID 1: 14127
(22881, 4, 1, 'Legionnaire\'s Dreadweave Legguards', 31032, 3, 32768, 1, 73028, 14605, 7, 256, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 21, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Satin Legguards | Armor: 144 | Stamina: 19 | Intellect: 15 | SpellID 1: 14248 | SpellID 2: 21626
(22882, 4, 1, 'Legionnaire\'s Satin Legguards', 31033, 3, 32768, 1, 73300, 14660, 7, 16, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 19, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Silk Legguards | Armor: 144 | Stamina: 18 | Intellect: 17 | Spirit: 5 | SpellID 1: 14248 | SpellID 2: 18384
(22883, 4, 1, 'Legionnaire\'s Silk Legguards', 26144, 3, 0, 1, 73572, 14714, 7, 128, 511, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Dreadweave Tunic | Armor: 96 | Stamina: 20 | Intellect: 20 | SpellID 1: 15715
(22884, 4, 1, 'Legionnaire\'s Dreadweave Tunic', 27260, 3, 32768, 1, 73844, 14768, 20, 256, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Satin Tunic | Armor: 156 | Stamina: 19 | Intellect: 15 | SpellID 1: 14248 | SpellID 2: 21626
(22885, 4, 1, 'Legionnaire\'s Satin Tunic', 30351, 3, 32768, 1, 74108, 14821, 20, 16, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 19, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Silk Tunic | Armor: 156 | Stamina: 18 | Intellect: 17 | Spirit: 5 | SpellID 1: 18384 | SpellID 2: 14248
(22886, 4, 1, 'Legionnaire\'s Silk Tunic', 31102, 3, 0, 1, 74380, 14876, 20, 128, 511, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Legionnaires Mail Legguards | Armor: 348 | Stamina: 18 | Intellect: 17 | SpellID 1: 14248 | SpellID 2: 18384
(22887, 4, 3, 'Legionnaire\'s Mail Legguards', 31186, 3, 32768, 1, 111979, 22395, 7, 64, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, 0, 0, 0, 18384, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Plate Shoulders | Armor: 552 | Stamina: 18 | Strength: 17 | SpellID 1: 7597
(23243, 4, 4, 'Champion\'s Plate Shoulders', 31049, 3, 32768, 1, 65791, 13158, 3, 1, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 18, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Plate Helm | Armor: 598 | Stamina: 24 | Strength: 21 | SpellID 1: 7597 | SpellID 2: 15464
(23244, 4, 4, 'Champion\'s Plate Helm', 30071, 3, 32768, 1, 66027, 13205, 1, 1, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 24, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 537, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Chain Helm | Armor: 337 | Agility: 18 | Stamina: 14 | Intellect: 9 | SpellID 1: 7598
(23251, 4, 3, 'Champion\'s Chain Helm', 31184, 3, 32768, 1, 91920, 18384, 1, 4, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 3, 18, 7, 14, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Chain Shoulders | Armor: 311 | Agility: 18 | Stamina: 13 | SpellID 1: 7597
(23252, 4, 3, 'Champion\'s Chain Shoulders', 31047, 3, 32768, 1, 92684, 18536, 3, 4, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 3, 18, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 543, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dragonhide Headguard | Armor: 198 | Stamina: 16 | Agility: 12 | Strength: 16 | Intellect: 16 | Spirit: 8 | SpellID 1: 9346
(23253, 4, 2, 'Champion\'s Dragonhide Headguard', 28106, 3, 32768, 1, 77190, 15438, 1, 1024, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 3, 12, 4, 16, 5, 16, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dragonhide Shoulders | Armor: 206 | Strength: 12 | Agility: 6 | Stamina: 12 | Spirit: 6 | Intellect: 12 | SpellID 1: 9343
(23254, 4, 2, 'Champion\'s Dragonhide Shoulders', 28935, 3, 32768, 1, 77477, 15495, 3, 1024, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 4, 12, 3, 6, 7, 12, 6, 6, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 539, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dreadweave Cowl | Armor: 81 | Stamina: 21 | Intellect: 18 | SpellID 1: 14248 | SpellID 2: 18384
(23255, 4, 1, 'Champion\'s Dreadweave Cowl', 27258, 3, 32768, 1, 62217, 12443, 1, 256, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 21, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Dreadweave Spaulders | Armor: 75 | Stamina: 17 | Intellect: 13 | SpellID 1: 9417 | SpellID 2: 18384
(23256, 4, 1, 'Champion\'s Dreadweave Spaulders', 30381, 3, 32768, 1, 62454, 12490, 3, 256, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 17, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 541, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Leather Helm | Armor: 238 | Stamina: 23 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 14089
(23257, 4, 2, 'Champion\'s Leather Helm', 30358, 3, 32768, 1, 78362, 15672, 1, 8, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 14089, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Leather Shoulders | Armor: 196 | Stamina: 17 | SpellID 1: 9332 | SpellID 2: 7597 | SpellID 3: 15464
(23258, 4, 2, 'Champion\'s Leather Shoulders', 31038, 3, 32768, 1, 80763, 16152, 3, 8, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 522, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Mail Headguard | Armor: 337 | Stamina: 24 | Intellect: 16 | Strength: 6 | SpellID 1: 7597 | SpellID 2: 18384
(23259, 4, 3, 'Champion\'s Mail Headguard', 30072, 3, 32768, 1, 97270, 19454, 1, 64, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 24, 5, 16, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Mail Pauldrons | Armor: 311 | Stamina: 16 | Intellect: 10 | Strength: 5 | SpellID 1: 9344 | SpellID 2: 18384
(23260, 4, 3, 'Champion\'s Mail Pauldrons', 30382, 3, 32768, 1, 98058, 19611, 3, 64, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 5, 10, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 538, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Satin Hood | Armor: 131 | Stamina: 20 | Intellect: 18 | SpellID 1: 14248 | SpellID 2: 21626
(23261, 4, 1, 'Champion\'s Satin Hood', 31030, 3, 32768, 1, 65312, 13062, 1, 16, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Satin Mantle | Armor: 115 | Stamina: 14 | Intellect: 12 | SpellID 1: 9345 | SpellID 2: 21626
(23262, 4, 1, 'Champion\'s Satin Mantle', 31031, 3, 32768, 1, 65548, 13109, 3, 16, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 14, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 540, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Silk Cowl | Armor: 141 | Stamina: 19 | Intellect: 18 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 14248
(23263, 4, 1, 'Champion\'s Silk Cowl', 31099, 3, 0, 1, 65784, 13156, 1, 128, 511, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 19, 5, 18, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Champions Silk Mantle | Armor: 135 | Stamina: 14 | Intellect: 11 | Spirit: 4 | SpellID 1: 9344 | SpellID 2: 18384
(23264, 4, 1, 'Champion\'s Silk Mantle', 31100, 3, 0, 1, 66020, 13204, 3, 128, 511, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 14, 5, 11, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 542, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Lamellar Breastplate | Armor: 706 | Stamina: 18 | Strength: 17 | Intellect: 12 | SpellID 1: 15715
(23272, 4, 4, 'Knight-Captain\'s Lamellar Breastplate', 30315, 3, 32768, 1, 70845, 14169, 5, 2, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 4, 17, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Lamellar Leggings | Armor: 618 | Stamina: 17 | Strength: 18 | Intellect: 12 | SpellID 1: 15715
(23273, 4, 4, 'Knight-Captain\'s Lamellar Leggings', 31084, 3, 32768, 1, 71110, 14222, 7, 2, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 17, 4, 18, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Lamellar Gauntlets | Armor: 429 | Stamina: 13 | Strength: 12 | SpellID 1: 23300 | SpellID 2: 7597
(23274, 4, 4, 'Knight-Lieutenant\'s Lamellar Gauntlets', 30321, 3, 32768, 1, 33256, 6651, 10, 2, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 13, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23300, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Lamellar Sabatons | Armor: 472 | Stamina: 12 | Strength: 12 | Intellect: 12 | SpellID 1: 9344
(23275, 4, 4, 'Knight-Lieutenant\'s Lamellar Sabatons', 31082, 3, 32768, 1, 50069, 10013, 8, 2, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 4, 12, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Lamellar Headguard | Armor: 598 | Stamina: 19 | Strength: 18 | Intellect: 12 | SpellID 1: 18049
(23276, 4, 4, 'Lieutenant Commander\'s Lamellar Headguard', 30316, 3, 32768, 1, 64132, 12826, 1, 2, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 19, 4, 18, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Lamellar Shoulders | Armor: 552 | Stamina: 14 | Strength: 14 | Intellect: 8 | SpellID 1: 14799
(23277, 4, 4, 'Lieutenant Commander\'s Lamellar Shoulders', 31085, 3, 32768, 1, 64368, 12873, 3, 2, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 14, 4, 14, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 544, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Chain Greaves | Armor: 266 | Stamina: 19 | Agility: 20
(23278, 4, 3, 'Knight-Lieutenant\'s Chain Greaves', 36006, 3, 32768, 1, 76266, 15253, 8, 4, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 19, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Chain Vices | Armor: 242 | Stamina: 16 | Agility: 18 | SpellID 1: 28539
(23279, 4, 3, 'Knight-Lieutenant\'s Chain Vices', 35798, 3, 32768, 1, 50804, 10160, 10, 4, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 16, 3, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28539, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dragonhide Grips | Armor: 115 | Strength: 13 | Agility: 10 | Stamina: 12 | Intellect: 9 | SpellID 1: 23217
(23280, 4, 2, 'Knight-Lieutenant\'s Dragonhide Grips', 36003, 3, 32768, 1, 42486, 8497, 10, 1024, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 13, 3, 10, 7, 12, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dragonhide Treads | Armor: 126 | Stamina: 13 | Strength: 13 | Intellect: 6 | Agility: 6 | Spirit: 6 | SpellID 1: 9343
(23281, 4, 2, 'Knight-Lieutenant\'s Dragonhide Treads', 36004, 3, 32768, 1, 63961, 12792, 8, 1024, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 13, 4, 13, 5, 6, 3, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dreadweave Handwraps | Armor: 58 | Stamina: 14 | Intellect: 4 | SpellID 1: 23046 | SpellID 2: 14248
(23282, 4, 1, 'Knight-Lieutenant\'s Dreadweave Handwraps', 31060, 3, 32768, 1, 34236, 6847, 10, 256, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 14, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Dreadweave Walkers | Armor: 64 | Stamina: 17 | Intellect: 13 | SpellID 1: 9346
(23283, 4, 1, 'Knight-Lieutenant\'s Dreadweave Walkers', 36007, 3, 32768, 1, 51539, 10307, 8, 256, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Leather Grips | Armor: 155 | Stamina: 18 | SpellID 1: 9331 | SpellID 2: 7597
(23284, 4, 2, 'Knight-Lieutenant\'s Leather Grips', 31075, 3, 32768, 1, 43099, 8619, 10, 8, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Leather Walkers | Armor: 166 | Stamina: 18 | SpellID 1: 23049 | SpellID 2: 9335
(23285, 4, 2, 'Knight-Lieutenant\'s Leather Walkers', 31068, 3, 32768, 1, 64880, 12976, 8, 8, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Plate Gauntlets | Armor: 429 | Strength: 17 | Stamina: 17 | SpellID 1: 22778
(23286, 4, 4, 'Knight-Lieutenant\'s Plate Gauntlets', 35808, 3, 32768, 1, 34726, 6945, 10, 1, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 4, 17, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 45, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Plate Greaves | Armor: 472 | Stamina: 23 | Strength: 10 | Agility: 9
(23287, 4, 4, 'Knight-Lieutenant\'s Plate Greaves', 26752, 3, 32768, 1, 52274, 10454, 8, 1, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 23, 4, 10, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Satin Handwraps | Armor: 98 | Stamina: 12 | Intellect: 5 | SpellID 1: 23043 | SpellID 2: 14248
(23288, 4, 1, 'Knight-Lieutenant\'s Satin Handwraps', 36010, 3, 32768, 1, 34969, 6993, 10, 16, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Satin Walkers | Armor: 64 | Stamina: 17 | Intellect: 15 | SpellID 1: 9343
(23289, 4, 1, 'Knight-Lieutenant\'s Satin Walkers', 36008, 3, 32768, 1, 47634, 9526, 8, 16, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 17, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Silk Handwraps | Armor: 98 | Stamina: 12 | Intellect: 10 | SpellID 1: 23037 | SpellID 2: 9346
(23290, 4, 1, 'Knight-Lieutenant\'s Silk Handwraps', 36013, 3, 32768, 1, 32762, 6552, 10, 128, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 12, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23037, 1, 0, 0, -1, 0, -1, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 30, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Lieutenants Silk Walkers | Armor: 104 | Stamina: 15 | Intellect: 10 | SpellID 1: 9344 | SpellID 2: 23727
(23291, 4, 1, 'Knight-Lieutenant\'s Silk Walkers', 31063, 3, 32768, 1, 49329, 9865, 8, 128, -1, 66, 60, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 7, 15, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Chain Hauberk | Armor: 398 | Agility: 16 | Stamina: 13 | Intellect: 6 | SpellID 1: 7598
(23292, 4, 3, 'Knight-Captain\'s Chain Hauberk', 35799, 3, 32768, 1, 109168, 21833, 5, 4, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 16, 7, 13, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Chain Legguards | Armor: 348 | Agility: 16 | Stamina: 13 | Intellect: 6 | SpellID 1: 7598
(23293, 4, 3, 'Knight-Captain\'s Chain Legguards', 35800, 3, 32768, 1, 109575, 21915, 7, 4, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 3, 16, 7, 13, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dragonhide Chestpiece | Armor: 218 | Stamina: 13 | Strength: 13 | Agility: 12 | Intellect: 12 | SpellID 1: 7597 | SpellID 2: 9344
(23294, 4, 2, 'Knight-Captain\'s Dragonhide Chestpiece', 35805, 3, 32768, 1, 91653, 18330, 5, 1024, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 13, 4, 13, 3, 12, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dragonhide Leggings | Armor: 215 | Strength: 12 | Agility: 12 | Stamina: 12 | Spirit: 5 | Intellect: 12 | SpellID 1: 18384 | SpellID 2: 9343
(23295, 4, 2, 'Knight-Captain\'s Dragonhide Leggings', 27235, 3, 32768, 1, 91983, 18396, 7, 1024, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 6, 5, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dreadweave Legguards | Armor: 84 | Stamina: 21 | Intellect: 13 | SpellID 1: 14127
(23296, 4, 1, 'Knight-Captain\'s Dreadweave Legguards', 30385, 3, 32768, 1, 73859, 14771, 7, 256, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 21, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Dreadweave Tunic | Armor: 96 | Stamina: 20 | Intellect: 20 | SpellID 1: 15715
(23297, 4, 1, 'Knight-Captain\'s Dreadweave Tunic', 36017, 3, 32768, 1, 74130, 14826, 20, 256, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 20, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Leather Chestpiece | Armor: 248 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 15806
(23298, 4, 2, 'Knight-Captain\'s Leather Chestpiece', 36015, 3, 32768, 1, 93003, 18600, 5, 8, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 15806, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Leather Legguards | Armor: 225 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 15806
(23299, 4, 2, 'Knight-Captain\'s Leather Legguards', 36014, 3, 32768, 1, 93334, 18666, 7, 8, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 15806, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Plate Hauberk | Armor: 706 | Stamina: 23 | Strength: 21 | SpellID 1: 7597
(23300, 4, 4, 'Knight-Captain\'s Plate Hauberk', 31083, 3, 32768, 1, 74939, 14987, 5, 1, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 23, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 135, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Plate Leggings | Armor: 618 | Stamina: 17 | Strength: 12 | SpellID 1: 7598
(23301, 4, 4, 'Knight-Captain\'s Plate Leggings', 35809, 3, 32768, 1, 75211, 15042, 7, 1, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 17, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Satin Legguards | Armor: 144 | Stamina: 19 | Intellect: 15 | SpellID 1: 14248 | SpellID 2: 21626
(23302, 4, 1, 'Knight-Captain\'s Satin Legguards', 36018, 3, 32768, 1, 75483, 15096, 7, 16, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 19, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Satin Tunic | Armor: 156 | Stamina: 19 | Intellect: 15 | SpellID 1: 14248 | SpellID 2: 21626
(23303, 4, 1, 'Knight-Captain\'s Satin Tunic', 36021, 3, 32768, 1, 75747, 15149, 20, 16, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 19, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Silk Legguards | Armor: 144 | Stamina: 18 | Intellect: 17 | Spirit: 5 | SpellID 1: 14248 | SpellID 2: 18384
(23304, 4, 1, 'Knight-Captain\'s Silk Legguards', 36022, 3, 32768, 1, 76019, 15203, 7, 128, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 65, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Knight-Captains Silk Tunic | Armor: 156 | Stamina: 18 | Intellect: 17 | Spirit: 5 | SpellID 1: 18384 | SpellID 2: 14248
(23305, 4, 1, 'Knight-Captain\'s Silk Tunic', 36024, 3, 32768, 1, 76291, 15258, 20, 128, -1, 68, 60, 0, 0, 0, 12, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Chain Helm | Armor: 337 | Agility: 18 | Stamina: 14 | Intellect: 9 | SpellID 1: 7598
(23306, 4, 3, 'Lieutenant Commander\'s Chain Helm', 35801, 3, 32768, 1, 92666, 18533, 1, 4, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 3, 18, 7, 14, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Chain Shoulders | Armor: 311 | Agility: 18 | Stamina: 13 | SpellID 1: 7597
(23307, 4, 3, 'Lieutenant Commander\'s Chain Shoulders', 35802, 3, 32768, 1, 93424, 18684, 3, 4, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 3, 18, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 550, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dragonhide Headguard | Armor: 198 | Stamina: 16 | Agility: 12 | Strength: 16 | Intellect: 16 | Spirit: 8 | SpellID 1: 9346
(23308, 4, 2, 'Lieutenant Commander\'s Dragonhide Headguard', 35806, 3, 32768, 1, 77804, 15560, 1, 1024, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 16, 3, 12, 4, 16, 5, 16, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dragonhide Shoulders | Armor: 206 | Strength: 12 | Agility: 6 | Stamina: 12 | Spirit: 6 | Intellect: 12 | SpellID 1: 9343
(23309, 4, 2, 'Lieutenant Commander\'s Dragonhide Shoulders', 35807, 3, 32768, 1, 78099, 15619, 3, 1024, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 4, 12, 3, 6, 7, 12, 6, 6, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 551, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dreadweave Cowl | Armor: 81 | Stamina: 21 | Intellect: 18 | SpellID 1: 14248 | SpellID 2: 18384
(23310, 4, 1, 'Lieutenant Commander\'s Dreadweave Cowl', 36040, 3, 32768, 1, 62709, 12541, 1, 256, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 21, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Dreadweave Spaulders | Armor: 75 | Stamina: 17 | Intellect: 13 | SpellID 1: 9417 | SpellID 2: 18384
(23311, 4, 1, 'Lieutenant Commander\'s Dreadweave Spaulders', 36027, 3, 32768, 1, 62945, 12589, 3, 256, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 17, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 547, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Leather Helm | Armor: 238 | Stamina: 23 | SpellID 1: 7597 | SpellID 2: 15464 | SpellID 3: 14089
(23312, 4, 2, 'Lieutenant Commander\'s Leather Helm', 36043, 3, 32768, 1, 78976, 15795, 1, 8, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 14089, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Leather Shoulders | Armor: 196 | Stamina: 17 | SpellID 1: 9332 | SpellID 2: 7597 | SpellID 3: 15464
(23313, 4, 2, 'Lieutenant Commander\'s Leather Shoulders', 36044, 3, 32768, 1, 79271, 15854, 3, 8, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 548, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Plate Helm | Armor: 598 | Stamina: 24 | Strength: 21 | SpellID 1: 7597 | SpellID 2: 15464
(23314, 4, 4, 'Lieutenant Commander\'s Plate Helm', 35810, 3, 32768, 1, 63647, 12729, 1, 1, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 24, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Plate Shoulders | Armor: 552 | Stamina: 18 | Strength: 17 | SpellID 1: 7597
(23315, 4, 4, 'Lieutenant Commander\'s Plate Shoulders', 35811, 3, 32768, 1, 63883, 12776, 3, 1, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 18, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 545, 80, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Satin Hood | Armor: 131 | Stamina: 20 | Intellect: 18 | SpellID 1: 14248 | SpellID 2: 21626
(23316, 4, 1, 'Lieutenant Commander\'s Satin Hood', 36042, 3, 32768, 1, 64119, 12823, 1, 16, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 20, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Satin Mantle | Armor: 115 | Stamina: 14 | Intellect: 12 | SpellID 1: 9345 | SpellID 2: 21626
(23317, 4, 1, 'Lieutenant Commander\'s Satin Mantle', 36038, 3, 32768, 1, 64355, 12871, 3, 16, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 14, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 549, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Silk Cowl | Armor: 141 | Stamina: 19 | Intellect: 18 | Spirit: 6 | SpellID 1: 18384 | SpellID 2: 14248
(23318, 4, 1, 'Lieutenant Commander\'s Silk Cowl', 36041, 3, 32768, 1, 64585, 12917, 1, 128, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 19, 5, 18, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Lieutenant Commanders Silk Mantle | Armor: 135 | Stamina: 14 | Intellect: 11 | Spirit: 4 | SpellID 1: 9344 | SpellID 2: 18384
(23319, 4, 1, 'Lieutenant Commander\'s Silk Mantle', 27231, 3, 32768, 1, 64821, 12964, 3, 128, -1, 71, 60, 0, 0, 0, 14, 0, 0, 0, 1, 1, 0, 7, 14, 5, 11, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 546, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);

-- * LOOT TABLES

UPDATE creature_loot_template SET item=330068, mincountOrRef=-330068 WHERE entry=10435 and item=323240; -- Magistrate Barthilas
REPLACE INTO reference_loot_template VALUE -- Magistrate Barthilas
(330068, 13376, 10, 1, 1, 1, 0),
(330068, 8283, 0, 1, 1, 1, 0),
(330068, 8289, 0, 1, 1, 1, 0),
(330068, 8290, 0, 1, 1, 1, 0),
(330068, 8296, 0, 1, 1, 1, 0),
(330068, 8300, 0, 1, 1, 1, 0),
(330068, 8307, 0, 1, 1, 1, 0),
(330068, 8308, 0, 1, 1, 1, 0),
(330068, 8309, 0, 1, 1, 1, 0),
(330068, 8310, 0, 1, 1, 1, 0),
(330068, 10105, 0, 1, 1, 1, 0),
(330068, 10136, 0, 1, 1, 1, 0),
(330068, 10137, 0, 1, 1, 1, 0),
(330068, 10140, 0, 1, 1, 1, 0),
(330068, 10144, 0, 1, 1, 1, 0),
(330068, 10146, 0, 1, 1, 1, 0),
(330068, 10147, 0, 1, 1, 1, 0),
(330068, 10149, 0, 1, 1, 1, 0),
(330068, 10154, 0, 1, 1, 1, 0),
(330068, 10155, 0, 1, 1, 1, 0),
(330068, 10156, 0, 1, 1, 1, 0),
(330068, 10161, 0, 1, 1, 1, 0),
(330068, 10210, 0, 1, 1, 1, 0),
(330068, 10217, 0, 1, 1, 1, 0),
(330068, 10219, 0, 1, 1, 1, 0),
(330068, 10226, 0, 1, 1, 1, 0),
(330068, 10228, 0, 1, 1, 1, 0),
(330068, 10230, 0, 1, 1, 1, 0),
(330068, 10249, 0, 1, 1, 1, 0),
(330068, 10256, 0, 1, 1, 1, 0),
(330068, 10258, 0, 1, 1, 1, 0),
(330068, 10267, 0, 1, 1, 1, 0),
(330068, 10275, 0, 1, 1, 1, 0),
(330068, 10363, 0, 1, 1, 1, 0),
(330068, 10373, 0, 1, 1, 1, 0),
(330068, 10376, 0, 1, 1, 1, 0),
(330068, 10379, 0, 1, 1, 1, 0),
(330068, 10380, 0, 1, 1, 1, 0),
(330068, 10383, 0, 1, 1, 1, 0),
(330068, 10387, 0, 1, 1, 1, 0),
(330068, 10391, 0, 1, 1, 1, 0),
(330068, 11979, 0, 1, 1, 1, 0),
(330068, 12016, 0, 1, 1, 1, 0),
(330068, 12046, 0, 1, 1, 1, 0),
(330068, 12057, 0, 1, 1, 1, 0),
(330068, 14303, 0, 1, 1, 1, 0),
(330068, 14306, 0, 1, 1, 1, 0),
(330068, 14308, 0, 1, 1, 1, 0),
(330068, 14312, 0, 1, 1, 1, 0),
(330068, 14317, 0, 1, 1, 1, 0),
(330068, 14323, 0, 1, 1, 1, 0),
(330068, 14324, 0, 1, 1, 1, 0),
(330068, 14325, 0, 1, 1, 1, 0),
(330068, 14330, 0, 1, 1, 1, 0),
(330068, 14337, 0, 1, 1, 1, 0),
(330068, 14458, 0, 1, 1, 1, 0),
(330068, 14465, 0, 1, 1, 1, 0),
(330068, 14684, 0, 1, 1, 1, 0),
(330068, 14688, 0, 1, 1, 1, 0),
(330068, 14863, 0, 1, 1, 1, 0),
(330068, 14865, 0, 1, 1, 1, 0),
(330068, 14868, 0, 1, 1, 1, 0),
(330068, 14935, 0, 1, 1, 1, 0),
(330068, 14936, 0, 1, 1, 1, 0),
(330068, 14966, 0, 1, 1, 1, 0),
(330068, 14973, 0, 1, 1, 1, 0),
(330068, 14976, 0, 1, 1, 1, 0),
(330068, 14977, 0, 1, 1, 1, 0),
(330068, 15189, 0, 1, 1, 1, 0),
(330068, 15192, 0, 1, 1, 1, 0),
(330068, 15194, 0, 1, 1, 1, 0),
(330068, 15239, 0, 1, 1, 1, 0),
(330068, 15266, 0, 1, 1, 1, 0),
(330068, 15278, 0, 1, 1, 1, 0),
(330068, 15282, 0, 1, 1, 1, 0),
(330068, 15288, 0, 1, 1, 1, 0),
(330068, 15325, 0, 1, 1, 1, 0),
(330068, 15430, 0, 1, 1, 1, 0),
(330068, 15433, 0, 1, 1, 1, 0),
(330068, 15434, 0, 1, 1, 1, 0),
(330068, 15436, 0, 1, 1, 1, 0),
(330068, 15437, 0, 1, 1, 1, 0),
(330068, 15660, 0, 1, 1, 1, 0),
(330068, 15664, 0, 1, 1, 1, 0),
(330068, 15665, 0, 1, 1, 1, 0),
(330068, 15667, 0, 1, 1, 1, 0),
(330068, 15670, 0, 1, 1, 1, 0),
(330068, 15672, 0, 1, 1, 1, 0),
(330068, 15674, 0, 1, 1, 1, 0),
(330068, 15676, 0, 1, 1, 1, 0),
(330068, 15677, 0, 1, 1, 1, 0),
(330068, 15679, 0, 1, 1, 1, 0),
(330068, 15683, 0, 1, 1, 1, 0),
(330068, 15931, 0, 1, 1, 1, 0),
(330068, 15943, 0, 1, 1, 1, 0),
(330068, 15986, 0, 1, 1, 1, 0),
(330068, 15987, 0, 1, 1, 1, 0);
UPDATE creature_loot_template SET ChanceOrQuestChance=30 WHERE mincountOrRef=-326158; -- Golemagg
UPDATE creature_loot_template SET ChanceOrQuestChance=30 WHERE mincountOrRef=-326264; -- Garr
UPDATE creature_loot_template SET maxcount=1,chanceorquestchance=100 WHERE mincountOrRef=-330001; -- Ragnaros
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item=12219;  -- LBRS Gems Pre-1.11
UPDATE creature_loot_template SET ChanceOrQuestChance=20 WHERE item=12335; -- LBRS Gems Pre-1.11
UPDATE creature_loot_template SET ChanceOrQuestChance=15 WHERE item=12336; -- LBRS Gems Pre-1.11
UPDATE creature_loot_template SET ChanceOrQuestChance=25 WHERE item=12337; -- LBRS Gems Pre-1.11
UPDATE creature_loot_template SET ChanceOrQuestChance=0 WHERE item=323242; -- Baroness Anastari
REPLACE INTO reference_loot_template VALUE (323241, 13534, 0, 1, 1, 1, 0); -- Baroness Anastari
REPLACE INTO reference_loot_template VALUE (323241, 16704, 0, 1, 1, 1, 0); -- Baroness Anastari
UPDATE creature_loot_template SET ChanceOrQuestChance=0 WHERE item=323244; -- Nerub'enkan
REPLACE INTO reference_loot_template VALUE (323243, 13529, 0, 1, 1, 1, 0); -- Nerub'enkan
REPLACE INTO reference_loot_template VALUE (323243, 16675, 0, 1, 1, 1, 0); -- Nerub'enkan
UPDATE creature_loot_template SET ChanceOrQuestChance=0 WHERE item=323246; -- Maleki the Pallid
REPLACE INTO reference_loot_template VALUE (323245, 13524, 0, 1, 1, 1, 0); -- Maleki the Pallid
REPLACE INTO reference_loot_template VALUE (323245, 16691, 0, 1, 1, 1, 0); -- Maleki the Pallid
UPDATE creature_loot_template set condition_id=70 where item in (22527,22529,22528,22525,22526); -- NOT CONFIRMED
    
-- * VENDORS

-- Old-school mounts
REPLACE INTO npc_vendor VALUE (3685,15293,0,0);
REPLACE INTO npc_vendor VALUE (3685,15292,0,0);
REPLACE INTO npc_vendor VALUE (3362,12330,0,0);
REPLACE INTO npc_vendor VALUE (3362,12351,0,0);
REPLACE INTO npc_vendor VALUE (7952,8586,0,0);
REPLACE INTO npc_vendor VALUE (7952,13317,0,0);
REPLACE INTO npc_vendor VALUE (384,12353,0,0);
REPLACE INTO npc_vendor VALUE (4885,12353,0,0);
REPLACE INTO npc_vendor VALUE (2357,12353,0,0);
REPLACE INTO npc_vendor VALUE (1460,12353,0,0);
REPLACE INTO npc_vendor VALUE (384,12354,0,0);
REPLACE INTO npc_vendor VALUE (4885,12354,0,0);
REPLACE INTO npc_vendor VALUE (2357,12354,0,0);
REPLACE INTO npc_vendor VALUE (1261,13328,0,0);
REPLACE INTO npc_vendor VALUE (1261,13329,0,0);
REPLACE INTO npc_vendor VALUE (4730,12302,0,0);
REPLACE INTO npc_vendor VALUE (4730,12303,0,0);
REPLACE INTO npc_vendor VALUE (7955,13326,0,0);
REPLACE INTO npc_vendor VALUE (7955,13327,0,0);

-- Old PvP Vendors
DELETE FROM npc_vendor WHERE entry in (12785,12795);
INSERT INTO npc_vendor VALUE (12785, 16369, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16391, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16392, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16393, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16396, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16397, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16401, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16403, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16405, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16406, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16409, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16410, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16413, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16414, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16415, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16416, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16417, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16418, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16419, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16420, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16421, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16422, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16423, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16424, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16425, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16426, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16427, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16428, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16429, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16430, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16431, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16432, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16433, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16434, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16435, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16436, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16437, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16440, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16441, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16442, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16443, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16444, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16446, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16448, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16449, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16450, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16451, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16452, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16453, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16454, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16455, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16456, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16457, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16459, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16462, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16463, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16465, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16466, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16467, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16468, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16471, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16472, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16473, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16474, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16475, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16476, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16477, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16478, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16479, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16480, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16483, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 16484, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17562, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17564, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17566, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17567, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17568, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17569, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17578, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17579, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17580, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17581, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17583, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17584, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17594, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17596, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17598, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17599, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17600, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17601, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17602, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17603, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17604, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17605, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17607, 0, 0);
INSERT INTO npc_vendor VALUE (12785, 17608, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16485, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16487, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16489, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16490, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16491, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16492, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16494, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16496, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16498, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16499, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16501, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16502, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16503, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16504, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16505, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16506, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16507, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16508, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16509, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16510, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16513, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16514, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16515, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16516, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16518, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16519, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16521, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16522, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16523, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16524, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16525, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16526, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16527, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16528, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16530, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16531, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16533, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16534, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16535, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16536, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16539, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16540, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16541, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16542, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16543, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16544, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16545, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16548, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16549, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16550, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16551, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16552, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16554, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16555, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16558, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16560, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16561, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16562, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16563, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16564, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16565, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16566, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16567, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16568, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16569, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16571, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16573, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16574, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16577, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16578, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16579, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 16580, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17570, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17571, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17572, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17573, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17576, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17577, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17586, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17588, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17590, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17591, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17592, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17593, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17610, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17611, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17612, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17613, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17616, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17617, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17618, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17620, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17622, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17623, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17624, 0, 0);
INSERT INTO npc_vendor VALUE (12795, 17625, 0, 0);
		
-- * FORBIDDEN CREATURES

REPLACE INTO forbidden_creatures SELECT entry FROM creature_template WHERE entry IN (
6109,    -- Azuregos
12397,   -- Lord Kazzak
14541,   -- Swift Gray Wolf
14544,   -- Swift Orange Raptor
14547,   -- Swift White Ram
14550,   -- Great Gray Kodo
14553,   -- Swift Green Mechanostrider
14558,   -- Purple Skeletal Warhorse
14559,   -- Swift Palomino
14602,   -- Swift Stormsaber
14722,   -- Clavicus Knavingham
14723,   -- Mistina Steelshield
14724,   -- Bubulo Acerbus
14725,   -- Raedon Duskstriker
14726,   -- Rashona Straglash
14727,   -- Vehena
14728,   -- Rumstag Proudstrider
14729,   -- Ralston Farnsley
14921,   -- Rin'wosho the Trader
15070,   -- Vinchaxa
15181,   -- Commander Mar'alith
15183,   -- Geologist Larksbane
15189,   -- Beetix Ficklespragg
15190,   -- Noggle Ficklespragg
15194,   -- Hermit Ortell
15270    -- Huum Wildmane
);

-- * CREATURES

-- Pre-1.4 Stables
-- Human
UPDATE creature SET modelid=0 WHERE id in (14561,14560,14559);
UPDATE creature SET id=306 WHERE id=14561;
UPDATE creature SET id=305 WHERE id=14560;
-- Dwarf
UPDATE creature SET modelid=0 WHERE id in (14546,14548,14547);
UPDATE creature SET id=4780 WHERE id=14546;
UPDATE creature SET id=4778 WHERE id=14548;
-- Elf
UPDATE creature SET modelid=0 WHERE id in (14556,14555,14602);
UPDATE creature SET id=10322 WHERE id=14556;
UPDATE creature SET id=7322 WHERE id=14555;
-- Gnome
UPDATE creature SET modelid=0 WHERE id in (14551,14552,14553);
UPDATE creature SET id=11150 WHERE id=14551;
UPDATE creature SET id=10179 WHERE id=14552;
-- Tauren
UPDATE creature SET modelid=0 WHERE id in (14542,14549,14550);
UPDATE creature SET id=12148 WHERE id=14542;
UPDATE creature SET id=12151 WHERE id=14549;
-- Orc
UPDATE creature SET modelid=0 WHERE id in (14540,14539,14541);
UPDATE creature SET id=4270 WHERE id=14540;
UPDATE creature SET id=359 WHERE id=14539;
-- Troll
UPDATE creature SET modelid=0 WHERE id in (14545,14543,14544);
UPDATE creature SET id=7704 WHERE id=14545;
UPDATE creature SET id=7706 WHERE id=14543;
-- Pre 1.4 Mount FIX
UPDATE creature_template SET modelid_1=9695 WHERE entry=10322;

-- * FORBIDDEN QUESTS

REPLACE INTO forbidden_quests SELECT entry FROM quest_template WHERE entry IN (
19999, -- Ca passe ou �a casse ! | [DEPRECATED] useless
55001, -- The Alliance needs you! | [DEPRECATED] useless
55002, -- The Alliance needs you! | [DEPRECATED] useless
55003, -- The Alliance needs you! | [DEPRECATED] useless
55011, -- The Horde needs you! | [DEPRECATED] useless
55012, -- The Horde needs you! | [DEPRECATED] useless
55013, -- The Horde needs you! | [DEPRECATED] useless
55021, -- The Alliance needs you! | [DEPRECATED] useless
55022, -- The Alliance needs you! | [DEPRECATED] useless
55023, -- The Alliance needs you! | [DEPRECATED] useless
55031, -- The Alliance needs you! | [DEPRECATED] useless
55032, -- The Alliance needs you! | [DEPRECATED] useless
55033, -- The Alliance needs you! | [DEPRECATED] useless
55041, -- The Horde needs you! | [DEPRECATED] useless
55042, -- The Horde needs you! | [DEPRECATED] useless
55043, -- The Horde needs you! | [DEPRECATED] useless
55051, -- The Horde needs you! | [DEPRECATED] useless
55052, -- The Horde needs you! | [DEPRECATED] useless
55053, -- The Horde needs you! | [DEPRECATED] useless
55061, -- The Alliance needs you! | [DEPRECATED] useless
55062, -- The Alliance needs you! | [DEPRECATED] useless
55063, -- The Alliance needs you! | [DEPRECATED] useless
55071, -- The Horde needs you! | [DEPRECATED] useless
55072, -- The Horde needs you! | [DEPRECATED] useless
55073, -- The Horde needs you! | [DEPRECATED] useless
55101, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55111, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55121, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55131, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55141, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55151, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55161, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
55171, -- Retour au pays | [DEPRECATED] Rewards Contest Winners Tabard
137701, -- Rapport de reconnaissance de la Ruche Ashi | [DEPRECATED] useless
137702, -- Rapport de reconnaissance de la Ruche Zora | [DEPRECATED] useless
137703, -- Rapport de reconnaissance de la Ruche Regal | [DEPRECATED] useless
137705, -- Quete Arena | [DEPRECATED] useless
137706, -- A Strange Journey | [DEPRECATED] Zeth'Kur merge
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
7877, -- The Treasure of the Shen'dralar | Dire Maul quest (NOTE: Duplicate with 7462)
171, -- A Warden of the Alliance | Childrens Week added (1.4 patch notes)
172, -- Children's Week | Childrens Week added (1.4 patch notes)
7487, -- Attunement to the Core | Molten core discovery quest changed to attunement (1.4 patch notes)
7541, -- Service to the Horde | Minor questline added
7562, -- Mor'zul Bloodbringer | 1.4 Warlock mount quest
7563, -- Rage of Blood | 1.4 Warlock mount quest
7564, -- Wildeyes | 1.4 Warlock mount quest
7581, -- The Prison's Bindings | 1.4 Warlock mount quest
7582, -- The Prison's Casing | 1.4 Warlock mount quest
7583, -- Suppression | 1.4 Warlock mount quest
7601, -- What Niby Commands | 1.4 Warlock mount quest
7602, -- Flawless Fel Essence | 1.4 Warlock mount quest
7603, -- Kroshius' Infernal Core | 1.4 Warlock mount quest
7604, -- A Binding Contract | 1.4 Raid loot table update (Sulfuras)
7621, -- A Warning | 1.4 Raid loot table update (Benediction)
7622, -- The Balance of Light and Shadow | 1.4 Raid loot table update (Benediction)
7623, -- Lord Banehollow | 1.4 Warlock mount quest
7624, -- Ulathek the Traitor | 1.4 Warlock mount quest
7625, -- Xorothian Stardust | 1.4 Warlock mount quest
7626, -- Bell of Dethmoora | 1.4 Warlock mount quest
7627, -- Wheel of the Black March | 1.4 Warlock mount quest
7628, -- Doomsday Candle | 1.4 Warlock mount quest
7629, -- Imp Delivery | 1.4 Warlock mount quest
7630, -- Arcanite | 1.4 Warlock mount quest
7631, -- Dreadsteed of Xoroth | 1.4 Warlock mount quest
7632, -- The Ancient Leaf | 1.4 Raid loot table update (hunter leaf quest)
7633, -- An Introduction | 1.4 Raid loot table update (hunter leaf quest)
7634, -- Ancient Sinew Wrapped Lamina | 1.4 Raid loot table update (hunter leaf quest)
7635, -- A Proper String | 1.4 Raid loot table update (hunter leaf quest)
7636, -- Stave of the Ancients | 1.4 Raid loot table update (hunter leaf quest)
7637, -- Emphasis on Sacrifice | 1.4 Paladin mount quest
7638, -- Lord Grayson Shadowbreaker | 1.4 Paladin mount quest
7639, -- To Show Due Judgment | 1.4 Paladin mount quest
7640, -- Exorcising Terrordale | 1.4 Paladin mount quest
7641, -- The Work of Grimand Elmore | 1.4 Paladin mount quest
7642, -- Collection of Goods | 1.4 Paladin mount quest
7643, -- Ancient Equine Spirit | 1.4 Paladin mount quest
7644, -- Blessed Arcanite Barding | 1.4 Paladin mount quest
7645, -- Manna-Enriched Horse Feed | 1.4 Paladin mount quest
7646, -- The Divination Scryer | 1.4 Paladin mount quest
7647, -- Judgment and Redemption | 1.4 Paladin mount quest
7648, -- Grimand's Finest Work | 1.4 Paladin mount quest
7649, -- Enchanted Thorium Platemail: Volume I | Added April 2005 with patch
7650, -- Enchanted Thorium Platemail: Volume II | Added April 2005 with patch
7651, -- Enchanted Thorium Platemail: Volume III | Added April 2005 with patch
7652, -- A Blue Light Bargain | Added April 2005 with patch
7653, -- Imperial Plate Belt | Added April 2005 with patch
7654, -- Imperial Plate Boots | Added April 2005 with patch
7655, -- Imperial Plate Bracer | Added April 2005 with patch
7656, -- Imperial Plate Chest | Added April 2005 with patch
7657, -- Imperial Plate Helm | Added April 2005 with patch
7658, -- Imperial Plate Leggings | Added April 2005 with patch
7659, -- Imperial Plate Shoulders | Added April 2005 with patch
7660, -- Wolf Swapping - Arctic Wolf | New mount models (1.4 patch notes)
7661, -- Wolf Swapping - Red Wolf | New mount models (1.4 patch notes)
7662, -- New Kodo - Teal | New mount models (1.4 patch notes)
7663, -- New Kodo - Green | New mount models (1.4 patch notes)
7664, -- Ivory Raptor Replacement | New mount models (1.4 patch notes)
7665, -- Red Raptor Replacement | New mount models (1.4 patch notes)
7666, -- Again Into the Great Ossuary | 1.4 Paladin mount quest
7671, -- Frostsaber Replacement | New mount models (1.4 patch notes)
7672, -- Nightsaber Replacement | New mount models (1.4 patch notes)
7673, -- Frost Ram Exchange | New mount models (1.4 patch notes)
7674, -- Black Ram Exchange | New mount models (1.4 patch notes)
7675, -- Icy Blue Mechanostrider Replacement | New mount models (1.4 patch notes)
7676, -- White Mechanostrider Replacement | New mount models (1.4 patch notes)
7677, -- White Stallion Exchange | New mount models (1.4 patch notes)
7678, -- Palomino Exchange | New mount models (1.4 patch notes)
7810, -- Arena Master | 1.4 Gurubashi arena event (see patch notes)
7838, -- Arena Grandmaster | 1.4 Gurubashi arena event (see patch notes)
5892, -- Irondeep Supplies | AV Quest (duplicate?)
5893, -- Coldtooth Supplies | AV Quest (duplicate?)
6741, -- More Booty! | AV Quest
6781, -- More Armor Scraps | AV Quest
6801, -- Lokholar the Ice Lord | AV Quest
6825, -- Call of Air - Guse's Fleet | AV Quest
6826, -- Call of Air - Jeztor's Fleet | AV Quest
6827, -- Call of Air - Mulverick's Fleet | AV Quest
6846, -- Begin the Attack! | AV Quest
6847, -- Master Ryson's All Seeing Eye | AV Quest
6848, -- Master Ryson's All Seeing Eye | AV Quest
6861, -- Zinfizzlex's Portable Shredder Unit | AV Quest
6862, -- Zinfizzlex's Portable Shredder Unit | AV Quest
6881, -- Ivus the Forest Lord | AV Quest
6901, -- Launch the Attack! | AV Quest
6941, -- Call of Air - Vipore's Fleet | AV Quest
6942, -- Call of Air - Slidore's Fleet | AV Quest
6943, -- Call of Air - Ichman's Fleet | AV Quest
6982, -- Coldtooth Supplies | AV Quest
6985, -- Irondeep Supplies | AV Quest
7001, -- Empty Stables | AV Quest
7002, -- Ram Hide Harnesses | AV Quest
7003, -- Zapped Giants | Quests added to Feralas (1.5 patch notes)
7026, -- Ram Riding Harnesses | AV Quest
7027, -- Empty Stables | AV Quest
7081, -- Alterac Valley Graveyards | AV Quest
7082, -- The Graveyards of Alterac | AV Quest
7101, -- Towers and Bunkers | AV Quest
7102, -- Towers and Bunkers | AV Quest
7121, -- The Quartermaster | AV Quest
7122, -- Capture a Mine | AV Quest
7123, -- Speak with our Quartermaster | AV Quest
7124, -- Capture a Mine | AV Quest
7141, -- The Battle of Alterac | AV Quest
7142, -- The Battle for Alterac | AV Quest
7161, -- Proving Grounds | AV Quest
7162, -- Proving Grounds | AV Quest
7163, -- Rise and Be Recognized | AV Quest
7164, -- Honored Amongst the Clan | AV Quest
7165, -- Earned Reverence | AV Quest
7166, -- Legendary Heroes | AV Quest
7167, -- The Eye of Command | AV Quest
7168, -- Rise and Be Recognized | AV Quest
7169, -- Honored Amongst the Guard | AV Quest
7170, -- Earned Reverence | AV Quest
7171, -- Legendary Heroes | AV Quest
7172, -- The Eye of Command | AV Quest
7181, -- The Legend of Korrak | AV Quest
7202, -- Korrak the Bloodrager | AV Quest
7223, -- Armor Scraps | AV Quest
7224, -- Enemy Booty | AV Quest
7241, -- In Defense of Frostwolf | AV Quest
7261, -- The Sovereign Imperative | AV Quest
7281, -- Brotherly Love | AV Quest
7282, -- Brotherly Love | AV Quest
7301, -- Fallen Sky Lords | AV Quest
7302, -- Fallen Sky Lords | AV Quest
7361, -- Favor Amongst the Darkspear | AV Quest
7362, -- Ally of the Tauren | AV Quest
7363, -- The Human Condition | AV Quest
7364, -- Gnomeregan Bounty | AV Quest
7365, -- Staghelm's Requiem | AV Quest
7366, -- The Archbishop's Mercy | AV Quest
7367, -- Defusing the Threat | AV Quest
7368, -- Defusing the Threat | AV Quest
7381, -- The Return of Korrak | AV Quest
7382, -- Korrak the Everliving | AV Quest
7385, -- A Gallon of Blood | AV Quest
7386, -- Crystal Cluster | AV Quest
7401, -- Wanted: DWARVES! | AV Quest
7402, -- Wanted: ORCS! | AV Quest
7421, -- Darkspear Defense | AV Quest
7422, -- Tuft it Out | AV Quest
7423, -- I've Got A Fever For More Bone Chips | AV Quest
7424, -- What the Hoof? | AV Quest
7425, -- Staghelm's Mojo Jamboree | AV Quest
7426, -- One Man's Love | AV Quest
7427, -- Wanted: MORE DWARVES! | AV Quest
7428, -- Wanted: MORE ORCS! | AV Quest
7701, -- WANTED: Overseer Maltorius | Quests added to Thorium Point (See retail patch notes)
7721, -- Fuel for the Zapping | Quests added to Feralas (1.5 patch notes)
7722, -- What the Flux? | Quests added to Thorium Point (See retail patch notes)
7723, -- Curse These Fat Fingers | Quests added to Thorium Point (See retail patch notes)
7724, -- Fiery Menace! | Quests added to Thorium Point (See retail patch notes)
7725, -- Again With the Zapped Giants | Quests added to Feralas (1.5 patch notes)
7726, -- Refuel for the Zapping | Quests added to Feralas (1.5 patch notes)
7727, -- Incendosaurs? Whateverosaur is More Like It | Quests added to Thorium Point (See retail patch notes)
7728, -- STOLEN: Smithing Tuyere and Lookout's Spyglass | Quests added to Thorium Point (See retail patch notes)
7729, -- JOB OPPORTUNITY: Culling the Competition | Quests added to Thorium Point (See retail patch notes)
7730, -- Zukk'ash Infestation | Quests added to Feralas (1.5 patch notes)
7731, -- Stinglasher | Quests added to Feralas (1.5 patch notes)
7732, -- Zukk'ash Report | Quests added to Feralas (1.5 patch notes)
7733, -- Improved Quality | "Quest ""Improved Quality"" added in 1.5 (allakhazam dating and inference from item/quest ID)"
7734, -- Improved Quality | "Quest ""Improved Quality"" added in 1.5 (allakhazam dating and inference from item/quest ID)"
7735, -- Pristine Yeti Hide | Quests added to Feralas (1.5 patch notes)
7736, -- Restoring Fiery Flux Supplies via Kingsblood | Quests added to Thorium Point (See retail patch notes)
7737, -- Gaining Acceptance | Quests added to Thorium Point (See retail patch notes)
7738, -- Perfect Yeti Hide | Quests added to Feralas (1.5 patch notes)
7788, -- Vanquish the Invaders! | Deprecated WSG quest for Silverwing/Warsong talismans
7789, -- Quell the Silverwing Usurpers | Deprecated WSG quest for Silverwing/Warsong talismans
7791, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7793, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7794, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7795, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7796, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7797, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7798, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7799, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7800, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7801, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7802, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7803, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7804, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7805, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7806, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7807, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7808, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7809, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7811, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7812, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7813, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7814, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7815, -- Snapjaws, Mon! | Quests added to Revantusk Village (See retail patch notes)
7816, -- Gammerita, Mon! | Quests added to Revantusk Village (See retail patch notes)
7817, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7818, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7819, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7820, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7821, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7822, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7823, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7824, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7825, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7826, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7827, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7828, -- Stalking the Stalkers | Quests added to Revantusk Village (See retail patch notes)
7829, -- Hunt the Savages | Quests added to Revantusk Village (See retail patch notes)
7830, -- Avenging the Fallen | Quests added to Revantusk Village (See retail patch notes)
7831, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7832, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7833, -- A Donation of Wool | Cloth quartermasters added (see 1.5 patch notes)
7834, -- A Donation of Silk | Cloth quartermasters added (see 1.5 patch notes)
7835, -- A Donation of Mageweave | Cloth quartermasters added (see 1.5 patch notes)
7836, -- A Donation of Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7837, -- Additional Runecloth | Cloth quartermasters added (see 1.5 patch notes)
7839, -- Vilebranch Hooligans | Quests added to Revantusk Village (See retail patch notes)
7840, -- Lard Lost His Lunch | Quests added to Revantusk Village (See retail patch notes)
7841, -- Message to the Wildhammer | Quests added to Revantusk Village (See retail patch notes)
7842, -- Another Message to the Wildhammer | Quests added to Revantusk Village (See retail patch notes)
7843, -- The Final Message to the Wildhammer | Quests added to Revantusk Village (See retail patch notes)
7844, -- Cannibalistic Cousins | Quests added to Revantusk Village (See retail patch notes)
7845, -- Kidnapped Elder Torntusk! | Quests added to Revantusk Village (See retail patch notes)
7846, -- Recover the Key! | Quests added to Revantusk Village (See retail patch notes)
7847, -- Return to Primal Torntusk | Quests added to Revantusk Village (See retail patch notes)
7848, -- Attunement to the Core | NOTE: This replaces 7487 to allow Dwarf priests to complete it
7849, -- Separation Anxiety | Quests added to Revantusk Village (See retail patch notes)
7850, -- Dark Vessels | Quests added to Revantusk Village (See retail patch notes)
7861, -- Wanted: Vile Priestess Hexx and Her Minions | Quests added to Revantusk Village (See retail patch notes)
7862, -- Job Opening: Guard Captain of Revantusk Village | Quests added to Revantusk Village (See retail patch notes)
7863, -- Sentinel Basic Care Package | WSG quest available on release (Allakhazam dating)
7864, -- Sentinel Standard Care Package | WSG quest available on release (Allakhazam dating)
7865, -- Sentinel Advanced Care Package | WSG quest available on release (Allakhazam dating)
7866, -- Outrider Basic Care Package | WSG quest available on release (Allakhazam dating)
7867, -- Outrider Standard Care Package | WSG quest available on release (Allakhazam dating)
7868, -- Outrider Advanced Care Package | WSG quest available on release (Allakhazam dating)
7871, -- Vanquish the Invaders! | Deprecated WSG quest for Silverwing/Warsong talismans
7872, -- Vanquish the Invaders! | Deprecated WSG quest for Silverwing/Warsong talismans
7873, -- Vanquish the Invaders! | Deprecated WSG quest for Silverwing/Warsong talismans
7874, -- Quell the Silverwing Usurpers | Deprecated WSG quest for Silverwing/Warsong talismans
7875, -- Quell the Silverwing Usurpers | Deprecated WSG quest for Silverwing/Warsong talismans
7876, -- Quell the Silverwing Usurpers | Deprecated WSG quest for Silverwing/Warsong talismans
7521, -- Thunderaan the Windseeker | Quest not completable before 1.6
7761, -- Blackhand's Command | BWL Quest
7781, -- The Lord of Blackrock | BWL Quest
7782, -- The Lord of Blackrock | BWL Quest
7783, -- The Lord of Blackrock | BWL Quest
7784, -- The Lord of Blackrock | BWL Quest
7785, -- Examine the Vessel | Quest not completable before 1.6
7786, -- Thunderaan the Windseeker | Quest not completable before 1.6
7787, -- Rise, Thunderfury! | Quest not completable before 1.6
7881, -- Carnival Boots | 1.6 Retail Patch Notes (Darkmoon Faire)
7882, -- Carnival Jerkins | 1.6 Retail Patch Notes (Darkmoon Faire)
7883, -- The World's Largest Gnome! | 1.6 Retail Patch Notes (Darkmoon Faire)
7884, -- Crocolisk Boy and the Bearded Murloc | 1.6 Retail Patch Notes (Darkmoon Faire)
7885, -- Armor Kits | 1.6 Retail Patch Notes (Darkmoon Faire)
7889, -- Coarse Weightstone | 1.6 Retail Patch Notes (Darkmoon Faire)
7890, -- Heavy Grinding Stone | 1.6 Retail Patch Notes (Darkmoon Faire)
7891, -- Green Iron Bracers | 1.6 Retail Patch Notes (Darkmoon Faire)
7892, -- Big Black Mace | 1.6 Retail Patch Notes (Darkmoon Faire)
7893, -- Rituals of Strength | 1.6 Retail Patch Notes (Darkmoon Faire)
7894, -- Copper Modulator | 1.6 Retail Patch Notes (Darkmoon Faire)
7895, -- Whirring Bronze Gizmo | 1.6 Retail Patch Notes (Darkmoon Faire)
7896, -- Green Fireworks | 1.6 Retail Patch Notes (Darkmoon Faire)
7897, -- Mechanical Repair Kits | 1.6 Retail Patch Notes (Darkmoon Faire)
7898, -- Thorium Widget | 1.6 Retail Patch Notes (Darkmoon Faire)
7899, -- Small Furry Paws | 1.6 Retail Patch Notes (Darkmoon Faire)
7900, -- Torn Bear Pelts | 1.6 Retail Patch Notes (Darkmoon Faire)
7901, -- Soft Bushy Tails | 1.6 Retail Patch Notes (Darkmoon Faire)
7902, -- Vibrant Plumes | 1.6 Retail Patch Notes (Darkmoon Faire)
7903, -- Evil Bat Eyes | 1.6 Retail Patch Notes (Darkmoon Faire)
7905, -- The Darkmoon Faire | 1.6 Retail Patch Notes (Darkmoon Faire)
7907, -- Darkmoon Beast Deck | 1.6 Retail Patch Notes (Darkmoon Faire)
7926, -- The Darkmoon Faire | 1.6 Retail Patch Notes (Darkmoon Faire)
7927, -- Darkmoon Portals Deck | 1.6 Retail Patch Notes (Darkmoon Faire)
7928, -- Darkmoon Warlords Deck | 1.6 Retail Patch Notes (Darkmoon Faire)
7929, -- Darkmoon Elementals Deck | 1.6 Retail Patch Notes (Darkmoon Faire)
7930, -- 5 Tickets - Darkmoon Flower | 1.6 Retail Patch Notes (Darkmoon Faire)
7931, -- 5 Tickets - Minor Darkmoon Prize | 1.6 Retail Patch Notes (Darkmoon Faire)
7932, -- 12 Tickets - Lesser Darkmoon Prize | 1.6 Retail Patch Notes (Darkmoon Faire)
7933, -- 40 Tickets - Greater Darkmoon Prize | 1.6 Retail Patch Notes (Darkmoon Faire)
7934, -- 50 Tickets - Darkmoon Storage Box | 1.6 Retail Patch Notes (Darkmoon Faire)
7935, -- 10 Tickets - Last Month's Mutton | 1.6 Retail Patch Notes (Darkmoon Faire)
7936, -- 50 Tickets - Last Year's Mutton | 1.6 Retail Patch Notes (Darkmoon Faire)
7937, -- Your Fortune Awaits You... | 1.6 Retail Patch Notes (Darkmoon Faire)
7938, -- Your Fortune Awaits You... | 1.6 Retail Patch Notes (Darkmoon Faire)
7939, -- More Dense Grinding Stones | 1.6 Retail Patch Notes (Darkmoon Faire)
7940, -- 1200 Tickets - Orb of the Darkmoon | 1.6 Retail Patch Notes (Darkmoon Faire)
7941, -- More Armor Kits | 1.6 Retail Patch Notes (Darkmoon Faire)
7942, -- More Thorium Widgets | 1.6 Retail Patch Notes (Darkmoon Faire)
7943, -- More Bat Eyes | 1.6 Retail Patch Notes (Darkmoon Faire)
7944, -- Your Fortune Awaits You... | 1.6 Retail Patch Notes (Darkmoon Faire)
7945, -- Your Fortune Awaits You... | 1.6 Retail Patch Notes (Darkmoon Faire)
7946, -- Spawn of Jubjub | 1.6 Retail Patch Notes (Darkmoon Faire)
7981, -- 1200 Tickets - Amulet of the Darkmoon | 1.6 Retail Patch Notes (Darkmoon Faire)
8222, -- Glowing Scorpid Blood | Darkmoon Faire (Patch 1.6)
8223, -- More Glowing Scorpid Blood | Darkmoon Faire (Patch 1.6)
7667, -- Material Assistance | Quest added for Scholomance (horde) (allakhazam dating)
8001, -- Zombie Cleansing | Deprecated quest, possibly related to unintentional ZG release zombie event
8041, -- Strength of Mount Mugamba | ZG Quest
8042, -- Strength of Mount Mugamba | ZG Quest
8043, -- Strength of Mount Mugamba | ZG Quest
8044, -- The Rage of Mount Mugamba | ZG Quest
8045, -- The Heathen's Brand | ZG Quest
8046, -- The Heathen's Brand | ZG Quest
8047, -- The Heathen's Brand | ZG Quest
8048, -- The Hero's Brand | ZG Quest
8049, -- The Eye of Zuldazar | ZG Quest
8050, -- The Eye of Zuldazar | ZG Quest
8051, -- The Eye of Zuldazar | ZG Quest
8052, -- The All-Seeing Eye of Zuldazar | ZG Quest
8053, -- Paragons of Power: The Freethinker's Armguards | ZG Quest
8054, -- Paragons of Power: The Freethinker's Belt | ZG Quest
8055, -- Paragons of Power: The Freethinker's Breastplate | ZG Quest
8056, -- Paragons of Power: The Augur's Bracers (Raid) | ZG Quest
8057, -- Paragons of Power: The Haruspex's Bracers | ZG Quest
8058, -- Paragons of Power: The Vindicator's Armguards | ZG Quest
8059, -- Paragons of Power: The Demoniac's Wraps (Raid) | ZG Quest
8060, -- Paragons of Power: The Illusionist's Wraps | ZG Quest
8061, -- Paragons of Power: The Confessor's Wraps | ZG Quest
8062, -- Paragons of Power: The Predator's Bracers | ZG Quest
8063, -- Paragons of Power: The Madcap's Bracers | ZG Quest
8064, -- Paragons of Power: The Haruspex's Belt | ZG Quest
8065, -- Paragons of Power: The Haruspex's Tunic | ZG Quest
8066, -- Paragons of Power: The Predator's Belt | ZG Quest
8067, -- Paragons of Power: The Predator's Mantle | ZG Quest
8068, -- Paragons of Power: The Illusionist's Mantle | ZG Quest
8069, -- Paragons of Power: The Illusionist's Robes | ZG Quest
8070, -- Paragons of Power: The Confessor's Bindings | ZG Quest
8071, -- Paragons of Power: The Confessor's Mantle | ZG Quest
8072, -- Paragons of Power: The Madcap's Mantle | ZG Quest
8073, -- Paragons of Power: The Madcap's Tunic | ZG Quest
8074, -- Paragons of Power: The Augur's Belt | ZG Quest
8075, -- Paragons of Power: The Augur's Hauberk | ZG Quest
8076, -- Paragons of Power: The Demoniac's Mantle (Raid) | ZG Quest
8077, -- Paragons of Power: The Demoniac's Robes (Raid) | ZG Quest
8078, -- Paragons of Power: The Vindicator's Belt | ZG Quest
8079, -- Paragons of Power: The Vindicator's Breastplate | ZG Quest
8080, -- Arathi Basin Mark of Honor! | Arathi Basin Quest
8101, -- The Pebble of Kajaro | ZG Quest
8102, -- The Pebble of Kajaro | ZG Quest
8103, -- The Pebble of Kajaro | ZG Quest
8104, -- The Jewel of Kajaro | ZG Quest
8105, -- The Battle for Arathi Basin! | Arathi Basin Quest
8106, -- Kezan's Taint | ZG Quest
8107, -- Kezan's Taint | ZG Quest
8108, -- Kezan's Taint | ZG Quest
8109, -- Kezan's Unstoppable Taint | ZG Quest
8110, -- Enchanted South Seas Kelp | ZG Quest
8111, -- Enchanted South Seas Kelp | ZG Quest
8112, -- Enchanted South Seas Kelp | ZG Quest
8113, -- Pristine Enchanted South Seas Kelp | ZG Quest
8114, -- Control Four Bases | Arathi Basin Quest
8115, -- Control Five Bases | Arathi Basin Quest
8116, -- Vision of Voodress | ZG Quest
8117, -- Vision of Voodress | ZG Quest
8118, -- Vision of Voodress | ZG Quest
8119, -- The Unmarred Vision of Voodress | ZG Quest
8120, -- The Battle for Arathi Basin! | Arathi Basin Quest
8121, -- Take Four Bases | Arathi Basin Quest
8122, -- Take Five Bases | Arathi Basin Quest
8123, -- Cut Arathor Supply Lines | Arathi Basin Quest
8141, -- Zandalrian Shadow Talisman | ZG Quest
8142, -- Zandalrian Shadow Talisman | ZG Quest
8143, -- Zandalrian Shadow Talisman | ZG Quest
8144, -- Zandalrian Shadow Mastery Talisman | ZG Quest
8145, -- The Maelstrom's Tendril | ZG Quest
8146, -- The Maelstrom's Tendril | ZG Quest
8147, -- The Maelstrom's Tendril | ZG Quest
8148, -- The Maelstrom's Wrath | ZG Quest
8151, -- The Hunter's Charm | LVL 50 class quest (hunter), see retail 1.7 patch notes
8153, -- Courser Antlers | LVL 50 class quest (hunter), see retail 1.7 patch notes
8154, -- Arathi Basin Mark of Honor! | Arathi Basin Quest
8155, -- Arathi Basin Mark of Honor! | Arathi Basin Quest
8156, -- Arathi Basin Mark of Honor! | Arathi Basin Quest
8160, -- Cut Arathor Supply Lines | Arathi Basin Quest
8161, -- Cut Arathor Supply Lines | Arathi Basin Quest
8162, -- Cut Arathor Supply Lines | Arathi Basin Quest
8166, -- The Battle for Arathi Basin! | Arathi Basin Quest
8167, -- The Battle for Arathi Basin! | Arathi Basin Quest
8168, -- The Battle for Arathi Basin! | Arathi Basin Quest
8169, -- The Battle for Arathi Basin! | Arathi Basin Quest
8170, -- The Battle for Arathi Basin! | Arathi Basin Quest
8171, -- The Battle for Arathi Basin! | Arathi Basin Quest
8181, -- Confront Yeh'kinya | ZG lore quest added
8182, -- The Hand of Rastakhan | ZG lore quest added
8183, -- The Heart of Hakkar | ZG Quest
8184, -- Presence of Might | ZG Quest
8185, -- Syncretist's Sigil | ZG Quest
8186, -- Death's Embrace | ZG Quest
8187, -- Falcon's Call | ZG Quest
8188, -- Vodouisant's Vigilant Embrace | ZG Quest
8189, -- Presence of Sight | ZG Quest
8190, -- Hoodoo Hex | ZG Quest
8191, -- Prophetic Aura | ZG Quest
8192, -- Animist's Caress | ZG Quest
8193, -- Master Angler | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8194, -- Apprentice Angler | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8195, -- Zulian, Razzashi, and Hakkari Coins | ZG Quest
8196, -- Essence Mangoes | ZG Quest
8201, -- A Collection of Heads | ZG Quest
8221, -- Rare Fish - Keefer's Angelfish | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8224, -- Rare Fish - Dezian Queenfish | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8225, -- Rare Fish - Brownell's Blue Striped Racer | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8227, -- Nat's Measuring Tape | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8228, -- Could I get a Fishing Flier? | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8229, -- Could I get a Fishing Flier? | Stranglethorn fishing extravaganza added (see retail 1.7 patch notes)
8231, -- Wavethrashing | LVL 50 class quest (hunter), see retail 1.7 patch notes
8232, -- The Green Drake | LVL 50 class quest (hunter), see retail 1.7 patch notes
8233, -- A Simple Request | LVL 50 class quest (rogue), see retail 1.7 patch notes
8234, -- Sealed Azure Bag | LVL 50 class quest (rogue), see retail 1.7 patch notes
8235, -- Encoded Fragments | LVL 50 class quest (rogue), see retail 1.7 patch notes
8236, -- The Azure Key | LVL 50 class quest (rogue), see retail 1.7 patch notes
8238, -- Gurubashi, Vilebranch, and Witherbark Coins | ZG Quest
8239, -- Sandfury, Skullsplitter, and Bloodscalp Coins | ZG Quest
8240, -- A Bijou for Zanza | ZG Quest
8241, -- Restoring Fiery Flux Supplies via Iron | 1.7 retail patch notes
8242, -- Restoring Fiery Flux Supplies via Heavy Leather | 1.7 retail patch notes
8243, -- Zanza's Potent Potables | ZG Quest
8246, -- Signets of the Zandalar | ZG Quest
8249, -- Junkboxes Needed | Inferred from allakhazam comment dates
8250, -- Magecraft | LVL 50 class quest (mage), see retail 1.7 patch notes
8251, -- Magic Dust | LVL 50 class quest (mage), see retail 1.7 patch notes
8252, -- The Siren's Coral | LVL 50 class quest (mage), see retail 1.7 patch notes
8253, -- Destroy Morphaz | LVL 50 class quest (mage), see retail 1.7 patch notes
8254, -- Cenarion Aid | LVL 50 class quest (priest), see retail 1.7 patch notes
8255, -- Of Coursers We Know | LVL 50 class quest (priest), see retail 1.7 patch notes
8256, -- The Ichor of Undeath | LVL 50 class quest (priest), see retail 1.7 patch notes
8257, -- Blood of Morphaz | LVL 50 class quest (priest), see retail 1.7 patch notes
8258, -- The Darkreaver Menace | Quest added for Scholomance (horde) (allakhazam dating)
8260, -- Arathor Basic Care Package | Arathi Basin Quest
8261, -- Arathor Standard Care Package | Arathi Basin Quest
8262, -- Arathor Advanced Care Package | Arathi Basin Quest
8263, -- Defiler's Basic Care Package | Arathi Basin Quest
8264, -- Defiler's Standard Care Package | Arathi Basin Quest
8265, -- Defiler's Advanced Care Package | Arathi Basin Quest
8266, -- Ribbons of Sacrifice | Deprecated WSG quest (patch 1.7 notes)
8267, -- Ribbons of Sacrifice | Deprecated WSG quest (patch 1.7 notes)
8268, -- Ribbons of Sacrifice | Deprecated WSG quest (patch 1.7 notes)
8269, -- Ribbons of Sacrifice | Deprecated WSG quest (patch 1.7 notes)
8149, -- Honoring a Hero | Hallow's Eve event added (see 1.8 patch notes)
8150, -- Honoring a Hero | Hallow's Eve event added (see 1.8 patch notes)
8271, -- Hero of the Stormpike | AV overhaul in patch 1.8
8272, -- Hero of the Frostwolf | AV overhaul in patch 1.8
8273, -- Oran's Gratitude | See 1.8 patch notes
8275, -- Taking Back Silithus | Silithus quest revamp
8276, -- Taking Back Silithus | Silithus quest revamp
8277, -- Deadly Desert Venom | Silithus quest revamp
8278, -- Noggle's Last Hope | Silithus quest revamp
8279, -- The Twilight Lexicon | Silithus quest revamp
8280, -- Securing the Supply Lines | Silithus quest revamp
8281, -- Stepping Up Security | Silithus quest revamp
8282, -- Noggle's Lost Satchel | Silithus quest revamp
8283, -- Wanted - Deathclasp, Terror of the Sands | Silithus quest revamp
8284, -- The Twilight Mystery | Silithus quest revamp
8285, -- The Deserter | Silithus quest revamp
8287, -- A Terrible Purpose | Silithus quest revamp
8291, -- Vanquish the Invaders! | Battleground mark turnin system added (1.8 patch notes)
8292, -- Marks of Honor | Deprecated mark turnin quest
8293, -- Marks of Honor | Deprecated mark turnin quest
8294, -- Quell the Silverwing Usurpers | Battleground mark turnin system added (1.8 patch notes)
8297, -- Arathi Basin Mark of Honor! | Battleground mark turnin system added (1.8 patch notes)
8298, -- More Arathi Basin Marks of Honor | Battleground mark turnin system added (1.8 patch notes)
8299, -- Cut Arathor Supply Lines | Battleground mark turnin system added (1.8 patch notes)
8300, -- More Arathi Basin Marks of Honor | Battleground mark turnin system added (1.8 patch notes)
8304, -- Dearest Natalia | Silithus quest revamp
8306, -- Into The Maw of Madness | Silithus quest revamp
8307, -- Desert Recipe | Silithus quest revamp
8308, -- Brann Bronzebeard's Lost Letter | Silithus quest revamp
8309, -- Glyph Chasing | Silithus quest revamp
8310, -- Breaking the Code | Silithus quest revamp
8311, -- Hallow's End Treats for Jesper! | Hallow's Eve event added (see 1.8 patch notes)
8312, -- Hallow's End Treats for Spoops! | Hallow's Eve event added (see 1.8 patch notes)
8313, -- Sharing the Knowledge | Silithus quest revamp
8314, -- Unraveling the Mystery (Elite) | Silithus quest revamp
8315, -- The Calling | Silithus quest revamp
8316, -- Armaments of War | Silithus quest revamp
8317, -- Kitchen Assistance | Silithus quest revamp
8318, -- Secret Communication | Silithus quest revamp
8319, -- Encrypted Twilight Texts | Silithus quest revamp
8320, -- Twilight Geolords | Silithus quest revamp
8321, -- Vyral the Vile | Silithus quest revamp
8322, -- Rotten Eggs | Hallow's Eve event added (see 1.8 patch notes)
8323, -- True Believers | Silithus quest revamp
8324, -- Still Believing | Silithus quest revamp
8331, -- Aurel Goldleaf | Silithus quest revamp
8332, -- Dukes of the Council | Silithus windstones
8333, -- Medallion of Station | Silithus windstones
8341, -- Lords of the Council | Silithus windstones
8342, -- Twilight Ring of Lordship | Silithus windstones
8343, -- Goldleaf's Discovery | Silithus quest revamp
8348, -- Signet of the Dukes | Silithus windstones
8349, -- Bor Wildmane | Silithus quest revamp
8351, -- Bor Wishes to Speak | Silithus quest revamp
8352, -- Scepter of the Council | Silithus windstones
8353, -- Chicken Clucking for a Mint | Hallow's Eve event added (see 1.8 patch notes)
8354, -- Chicken Clucking for a Mint | Hallow's Eve event added (see 1.8 patch notes)
8355, -- Incoming Gumdrop | Hallow's Eve event added (see 1.8 patch notes)
8356, -- Flexing for Nougat | Hallow's Eve event added (see 1.8 patch notes)
8357, -- Dancing for Marzipan | Hallow's Eve event added (see 1.8 patch notes)
8358, -- Incoming Gumdrop | Hallow's Eve event added (see 1.8 patch notes)
8359, -- Flexing for Nougat | Hallow's Eve event added (see 1.8 patch notes)
8360, -- Dancing for Marzipan | Hallow's Eve event added (see 1.8 patch notes)
8361, -- Abyssal Contacts | Silithus windstones
8362, -- Abyssal Crests | Silithus windstones
8363, -- Abyssal Signets | Silithus windstones
8364, -- Abyssal Scepters | Silithus windstones
8365, -- Pirate Hats Ahoy! | New Tanaris quests added (Allakhazam comment dates)
8366, -- Southsea Shakedown | New Tanaris quests added (Allakhazam comment dates)
8367, -- For Great Honor | Battleground mark turnin system added (1.8 patch notes)
8368, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8369, -- Invaders of Alterac Valley | Battleground mark turnin system added (1.8 patch notes)
8370, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8371, -- Concerted Efforts | Battleground mark turnin system added (1.8 patch notes)
8372, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8373, -- The Power of Pine | Hallow's Eve event added (see 1.8 patch notes)
8374, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8375, -- Remember Alterac Valley! | Battleground mark turnin system added (1.8 patch notes)
8376, -- Armaments of War | Silithus quest revamp
8377, -- Armaments of War | Silithus quest revamp
8378, -- Armaments of War | Silithus quest revamp
8379, -- Armaments of War | Silithus quest revamp
8380, -- Armaments of War | Silithus quest revamp
8381, -- Armaments of War | Silithus quest revamp
8382, -- Armaments of War | Silithus quest revamp
8383, -- Remember Alterac Valley! | Battleground mark turnin system added (1.8 patch notes)
8384, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8385, -- Concerted Efforts | Battleground mark turnin system added (1.8 patch notes)
8386, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8387, -- Invaders of Alterac Valley | Battleground mark turnin system added (1.8 patch notes)
8388, -- For Great Honor | Battleground mark turnin system added (1.8 patch notes)
8389, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8390, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8391, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8392, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8393, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8394, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8395, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8396, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8397, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8398, -- Claiming Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8399, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8400, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8401, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8402, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8403, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8404, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8405, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8406, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8407, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8408, -- Fight for Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8409, -- Ruined Kegs | Hallow's Eve event added (see 1.8 patch notes)
8410, -- Elemental Mastery | LVL 50 class quest (shaman), see retail 1.8 patch notes
8411, -- Mastering the Elements | LVL 50 class quest (shaman), see retail 1.8 patch notes
8412, -- Spirit Totem | LVL 50 class quest (shaman), see retail 1.8 patch notes
8413, -- Da Voodoo | LVL 50 class quest (shaman), see retail 1.8 patch notes
8414, -- Dispelling Evil | LVL 50 class quest (paladin), see retail 1.8 patch notes
8415, -- Chillwind Point | LVL 50 class quest (paladin), see retail 1.8 patch notes
8416, -- Inert Scourgestones | LVL 50 class quest (paladin), see retail 1.8 patch notes
8417, -- A Troubled Spirit | LVL 50 class quest (warrior), see 1.8 retail patch notes
8418, -- Forging the Mightstone | LVL 50 class quest (paladin), see retail 1.8 patch notes
8419, -- An Imp's Request | LVL 50 class quest (warlock), see 1.8 retail patch notes
8420, -- Hot and Itchy | LVL 50 class quest (warlock), see 1.8 retail patch notes
8421, -- The Wrong Stuff | LVL 50 class quest (warlock), see 1.8 retail patch notes
8422, -- Trolls of a Feather | LVL 50 class quest (warlock), see 1.8 retail patch notes
8423, -- Warrior Kinship | LVL 50 class quest (warrior), see 1.8 retail patch notes
8424, -- War on the Shadowsworn | LVL 50 class quest (warrior), see 1.8 retail patch notes
8425, -- Voodoo Feathers | LVL 50 class quest (warrior), see 1.8 retail patch notes
8426, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8427, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8428, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8429, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8430, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8431, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8432, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8433, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8434, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8435, -- Battle of Warsong Gulch | Battleground mark turnin system added (1.8 patch notes)
8436, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8437, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8438, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8439, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8440, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8441, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8442, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8443, -- Conquering Arathi Basin | Battleground mark turnin system added (1.8 patch notes)
8446, -- Shrouded in Nightmare | Emerald dragon loot
8447, -- Waking Legends | Emerald dragon loot
8744, -- A Carefully Wrapped Present | Quest added for Christmas 2005
8746, -- Metzen the Reindeer | Quest added for Christmas 2005
8762, -- Metzen the Reindeer | Quest added for Christmas 2005
8763, -- The Hero of the Day | Quest added for Christmas 2005
8767, -- A Gently Shaken Gift | Quest added for Christmas 2005
8768, -- A Gaily Wrapped Present | Quest added for Christmas 2005
8769, -- A Ticking Present | Quest added for Christmas 2005
8803, -- A Festive Gift | Quest added for Christmas 2005
8827, -- Winter's Presents | Quest added for Christmas 2005
8860, -- New Year Celebrations! | New years quest added at end of 2005 (just before 1.9 released)
8861, -- New Year Celebrations! | New years quest added at end of 2005 (just before 1.9 released)
6131, -- Timbermaw Ally | Timbermaw Hold quest revamp
8286, -- What Tomorrow Brings | AQ gate questline
8288, -- Only One May Rise | AQ gate questline
8301, -- The Path of the Righteous | AQ gate questline
8302, -- The Hand of the Righteous | AQ gate questline
8303, -- Anachronos | AQ gate questline
8305, -- Long Forgotten Memories | AQ gate questline
8461, -- Deadwood of the North | Timbermaw Hold quest revamp. Replaces ID: 6221
8462, -- Speak to Nafien | Timbermaw Hold quest revamp
8464, -- Winterfall Activity | Timbermaw Hold quest revamp. Replaces ID: 6421
8465, -- Speak to Salfa | Timbermaw Hold quest revamp
8466, -- Feathers for Grazle | Timbermaw Hold quest revamp
8467, -- Feathers for Nafien | Timbermaw Hold quest revamp
8469, -- Beads for Salfa | Timbermaw Hold quest revamp
8470, -- Deadwood Ritual Totem | Timbermaw Hold quest revamp
8471, -- Winterfall Ritual Totem | Timbermaw Hold quest revamp
8481, -- The Root of All Evil | Timbermaw Hold quest revamp
8484, -- The Brokering of Peace | Timbermaw Hold quest revamp
8485, -- The Brokering of Peace | Timbermaw Hold quest revamp
8492, -- The Alliance Needs Copper Bars! | AQ40 war effort quest
8493, -- The Alliance Needs More Copper Bars! | AQ40 war effort quest
8494, -- The Alliance Needs Iron Bars! | AQ40 war effort quest
8495, -- The Alliance Needs More Iron Bars! | AQ40 war effort quest
8496, -- Bandages for the Field | Silithus badge quests
8497, -- Desert Survival Kits | Silithus badge quests
8498, -- Twilight Battle Orders | Silithus badge quests
8499, -- The Alliance Needs Thorium Bars! | AQ40 war effort quest
8500, -- The Alliance Needs More Thorium Bars! | AQ40 war effort quest
8501, -- Target: Hive'Ashi Stingers | Silithus badge quests
8502, -- Target: Hive'Ashi Workers | Silithus badge quests
8503, -- The Alliance Needs Stranglekelp! | AQ40 war effort quest
8504, -- The Alliance Needs More Stranglekelp! | AQ40 war effort quest
8505, -- The Alliance Needs Purple Lotus! | AQ40 war effort quest
8506, -- The Alliance Needs More Purple Lotus! | AQ40 war effort quest
8507, -- Field Duty | Silithus badge quests
8508, -- Field Duty Papers | Silithus badge quests
8509, -- The Alliance Needs Arthas' Tears! | AQ40 war effort quest
8510, -- The Alliance Needs More Arthas' Tears! | AQ40 war effort quest
8511, -- The Alliance Needs Light Leather! | AQ40 war effort quest
8512, -- The Alliance Needs More Light Leather! | AQ40 war effort quest
8513, -- The Alliance Needs Medium Leather! | AQ40 war effort quest
8514, -- The Alliance Needs More Medium Leather! | AQ40 war effort quest
8515, -- The Alliance Needs Thick Leather! | AQ40 war effort quest
8516, -- The Alliance Needs More Thick Leather! | AQ40 war effort quest
8517, -- The Alliance Needs Linen Bandages! | AQ40 war effort quest
8518, -- The Alliance Needs More Linen Bandages! | AQ40 war effort quest
8519, -- A Pawn on the Eternal Board | AQ gate questline
8520, -- The Alliance Needs Silk Bandages! | AQ40 war effort quest
8521, -- The Alliance Needs More Silk Bandages! | AQ40 war effort quest
8522, -- The Alliance Needs Runecloth Bandages! | AQ40 war effort quest
8523, -- The Alliance Needs More Runecloth Bandages! | AQ40 war effort quest
8524, -- The Alliance Needs Rainbow Fin Albacore! | AQ40 war effort quest
8525, -- The Alliance Needs More Rainbow Fin Albacore! | AQ40 war effort quest
8526, -- The Alliance Needs Roast Raptor! | AQ40 war effort quest
8527, -- The Alliance Needs More Roast Raptor! | AQ40 war effort quest
8528, -- The Alliance Needs Spotted Yellowtail! | AQ40 war effort quest
8529, -- The Alliance Needs More Spotted Yellowtail! | AQ40 war effort quest
8532, -- The Horde Needs Copper Bars! | AQ40 war effort quest
8533, -- The Horde Needs More Copper Bars! | AQ40 war effort quest
8534, -- Hive'Zora Scout Report | Silithus badge quests
8535, -- Hoary Templar | Silithus badge quests
8536, -- Earthen Templar | Silithus badge quests
8537, -- Crimson Templar | Silithus badge quests
8538, -- The Four Dukes | Silithus badge quests
8539, -- Target: Hive'Zora Hive Sisters | Silithus badge quests
8540, -- Boots for the Guard | Silithus badge quests
8541, -- Grinding Stones for the Guard | Silithus badge quests
8542, -- The Horde Needs Tin Bars! | AQ40 war effort quest
8543, -- The Horde Needs More Tin Bars! | AQ40 war effort quest
8544, -- Conqueror's Spaulders | AQ40 Loot
8545, -- The Horde Needs Mithril Bars! | AQ40 war effort quest
8546, -- The Horde Needs More Mithril Bars! | AQ40 war effort quest
8548, -- Volunteer's Battlegear | Silithus badge quests
8549, -- The Horde Needs Peacebloom! | AQ40 war effort quest
8550, -- The Horde Needs More Peacebloom! | AQ40 war effort quest
8555, -- The Charge of the Dragonflights | AQ40 gate quest
8556, -- Signet of Unyielding Strength | AQ20 Loot
8557, -- Drape of Unyielding Strength | AQ20 Loot
8558, -- Sickle of Unyielding Strength | AQ20 Loot
8559, -- Conqueror's Greaves | AQ40 Loot
8560, -- Conqueror's Legguards | AQ40 Loot
8561, -- Conqueror's Crown | AQ40 Loot
8562, -- Conqueror's Breastplate | AQ40 Loot
8572, -- Veteran's Battlegear | Silithus badge quests
8573, -- Champion's Battlegear | Silithus badge quests
8574, -- Stalwart's Battlegear | Silithus badge quests
8575, -- Azuregos's Magical Ledger | AQ40 gate quest
8576, -- Translating the Ledger | AQ40 gate quest
8577, -- Stewvul, Ex-B.F.F. | AQ40 gate quest
8578, -- Scrying Goggles? No Problem! | AQ40 gate quest
8579, -- Mortal Champions | AQ40 quest
8580, -- The Horde Needs Firebloom! | AQ40 war effort quest
8581, -- The Horde Needs More Firebloom! | AQ40 war effort quest
8582, -- The Horde Needs Purple Lotus! | AQ40 war effort quest
8583, -- The Horde Needs More Purple Lotus! | AQ40 war effort quest
8584, -- Never Ask Me About My Business | AQ40 gate quest
8585, -- The Isle of Dread! | AQ40 gate quest
8586, -- Dirge's Kickin' Chimaerok Chops | AQ40 gate quest
8587, -- Return to Narain | AQ40 gate quest
8588, -- The Horde Needs Heavy Leather! | AQ40 war effort quest
8589, -- The Horde Needs More Heavy Leather! | AQ40 war effort quest
8590, -- The Horde Needs Thick Leather! | AQ40 war effort quest
8591, -- The Horde Needs More Thick Leather! | AQ40 war effort quest
8592, -- Tiara of the Oracle | AQ40 Loot
8593, -- Trousers of the Oracle | AQ40 Loot
8594, -- Mantle of the Oracle | AQ40 Loot
8595, -- Mortal Champions | AQ40 quest
8596, -- Footwraps of the Oracle | AQ40 Loot
8597, -- Draconic for Dummies | AQ40 gate quest
8598, -- rAnS0m | AQ40 gate quest
8599, -- Love Song for Narain | AQ40 gate quest
8600, -- The Horde Needs Rugged Leather! | AQ40 war effort quest
8601, -- The Horde Needs More Rugged Leather! | AQ40 war effort quest
8602, -- Stormcaller's Pauldrons | AQ40 Loot
8603, -- Vestments of the Oracle | AQ40 Loot
8604, -- The Horde Needs Wool Bandages! | AQ40 war effort quest
8605, -- The Horde Needs More Wool Bandages! | AQ40 war effort quest
8606, -- Decoy! | AQ40 gate quest
8607, -- The Horde Needs Mageweave Bandages! | AQ40 war effort quest
8608, -- The Horde Needs More Mageweave Bandages! | AQ40 war effort quest
8609, -- The Horde Needs Runecloth Bandages! | AQ40 war effort quest
8610, -- The Horde Needs More Runecloth Bandages! | AQ40 war effort quest
8611, -- The Horde Needs Lean Wolf Steaks! | AQ40 war effort quest
8612, -- The Horde Needs More Lean Wolf Steaks! | AQ40 war effort quest
8613, -- The Horde Needs Spotted Yellowtail! | AQ40 war effort quest
8614, -- The Horde Needs More Spotted Yellowtail! | AQ40 war effort quest
8615, -- The Horde Needs Baked Salmon! | AQ40 war effort quest
8616, -- The Horde Needs More Baked Salmon! | AQ40 war effort quest
8619, -- Morndeep the Elder | Allakhazam dates for Festival of Elune
8620, -- The Only Prescription | AQ40 gate quest
8621, -- Stormcaller's Footguards | AQ40 Loot
8622, -- Stormcaller's Hauberk | AQ40 Loot
8623, -- Stormcaller's Diadem | AQ40 Loot
8624, -- Stormcaller's Leggings | AQ40 Loot
8625, -- Enigma Shoulderpads | AQ40 Loot
8626, -- Striker's Footguards | AQ40 Loot
8627, -- Avenger's Breastplate | AQ40 Loot
8628, -- Avenger's Crown | AQ40 Loot
8629, -- Avenger's Legguards | AQ40 Loot
8630, -- Avenger's Pauldrons | AQ40 Loot
8631, -- Enigma Leggings | AQ40 Loot
8632, -- Enigma Circlet | AQ40 Loot
8633, -- Enigma Robes | AQ40 Loot
8634, -- Enigma Boots | AQ40 Loot
8635, -- Splitrock the Elder | Allakhazam dates for Festival of Elune
8636, -- Rumblerock the Elder | Allakhazam dates for Festival of Elune
8637, -- Deathdealer's Boots | AQ40 Loot
8638, -- Deathdealer's Vest | AQ40 Loot
8639, -- Deathdealer's Helm | AQ40 Loot
8640, -- Deathdealer's Leggings | AQ40 Loot
8641, -- Deathdealer's Spaulders | AQ40 Loot
8642, -- Silvervein the Elder | Allakhazam dates for Festival of Elune
8643, -- Highpeak the Elder | Allakhazam dates for Festival of Elune
8644, -- Stonefort the Elder | Allakhazam dates for Festival of Elune
8645, -- Obsidian the Elder | Allakhazam dates for Festival of Elune
8646, -- Hammershout the Elder | Allakhazam dates for Festival of Elune
8647, -- Bellowrage the Elder | Allakhazam dates for Festival of Elune
8648, -- Darkcore the Elder | Allakhazam dates for Festival of Elune
8649, -- Stormbrow the Elder | Allakhazam dates for Festival of Elune
8650, -- Snowcrown the Elder | Allakhazam dates for Festival of Elune
8651, -- Ironband the Elder | Allakhazam dates for Festival of Elune
8652, -- Graveborn the Elder | Allakhazam dates for Festival of Elune
8653, -- Goldwell the Elder | Allakhazam dates for Festival of Elune
8654, -- Primestone the Elder | Allakhazam dates for Festival of Elune
8655, -- Avenger's Greaves | AQ40 Loot
8656, -- Striker's Hauberk | AQ40 Loot
8657, -- Striker's Diadem | AQ40 Loot
8658, -- Striker's Leggings | AQ40 Loot
8659, -- Striker's Pauldrons | AQ40 Loot
8660, -- Doomcaller's Footwraps | AQ40 Loot
8661, -- Doomcaller's Robes | AQ40 Loot
8662, -- Doomcaller's Circlet | AQ40 Loot
8663, -- Doomcaller's Trousers | AQ40 Loot
8664, -- Doomcaller's Mantle | AQ40 Loot
8665, -- Genesis Boots | AQ40 Loot
8666, -- Genesis Vest | AQ40 Loot
8667, -- Genesis Helm | AQ40 Loot
8668, -- Genesis Trousers | AQ40 Loot
8669, -- Genesis Shoulderpads | AQ40 Loot
8670, -- Runetotem the Elder | Allakhazam dates for Festival of Elune
8671, -- Ragetotem the Elder | Allakhazam dates for Festival of Elune
8672, -- Stonespire the Elder | Allakhazam dates for Festival of Elune
8673, -- Bloodhoof the Elder | Allakhazam dates for Festival of Elune
8674, -- Winterhoof the Elder | Allakhazam dates for Festival of Elune
8675, -- Skychaser the Elder | Allakhazam dates for Festival of Elune
8676, -- Wildmane the Elder | Allakhazam dates for Festival of Elune
8677, -- Darkhorn the Elder | Allakhazam dates for Festival of Elune
8679, -- Grimtotem the Elder | Allakhazam dates for Festival of Elune
8680, -- Windtotem the Elder | Allakhazam dates for Festival of Elune
8681, -- Thunderhorn the Elder | Allakhazam dates for Festival of Elune
8682, -- Skyseer the Elder | Allakhazam dates for Festival of Elune
8683, -- Dawnstrider the Elder | Allakhazam dates for Festival of Elune
8684, -- Dreamseer the Elder | Allakhazam dates for Festival of Elune
8685, -- Mistwalker the Elder | Allakhazam dates for Festival of Elune
8686, -- High Mountain the Elder | Allakhazam dates for Festival of Elune
8687, -- Target: Hive'Zora Tunnelers | Silithus badge quests
8688, -- Windrun the Elder | Allakhazam dates for Festival of Elune
8689, -- Shroud of Infinite Wisdom | AQ20 Loot
8690, -- Cloak of the Gathering Storm | AQ20 Loot
8691, -- Drape of Vaulted Secrets | AQ20 Loot
8692, -- Cloak of Unending Life | AQ20 Loot
8693, -- Cloak of Veiled Shadows | AQ20 Loot
8694, -- Shroud of Unspoken Names | AQ20 Loot
8695, -- Cape of Eternal Justice | AQ20 Loot
8696, -- Cloak of the Unseen Path | AQ20 Loot
8697, -- Ring of Infinite Wisdom | AQ20 Loot
8698, -- Ring of the Gathering Storm | AQ20 Loot
8699, -- Band of Vaulted Secrets | AQ20 Loot
8700, -- Band of Unending Life | AQ20 Loot
8701, -- Band of Veiled Shadows | AQ20 Loot
8702, -- Ring of Unspoken Names | AQ20 Loot
8703, -- Ring of Eternal Justice | AQ20 Loot
8704, -- Signet of the Unseen Path | AQ20 Loot
8705, -- Gavel of Infinite Wisdom | AQ20 Loot
8706, -- Hammer of the Gathering Storm | AQ20 Loot
8707, -- Blade of Vaulted Secrets | AQ20 Loot
8708, -- Mace of Unending Life | AQ20 Loot
8709, -- Dagger of Veiled Shadows | AQ20 Loot
8710, -- Kris of Unspoken Names | AQ20 Loot
8711, -- Blade of Eternal Justice | AQ20 Loot
8712, -- Scythe of the Unseen Path | AQ20 Loot
8713, -- Starsong the Elder | Allakhazam dates for Festival of Elune
8714, -- Moonstrike the Elder | Allakhazam dates for Festival of Elune
8715, -- Bladeleaf the Elder | Allakhazam dates for Festival of Elune
8716, -- Starglade the Elder | Allakhazam dates for Festival of Elune
8717, -- Moonwarden the Elder | Allakhazam dates for Festival of Elune
8718, -- Bladeswift the Elder | Allakhazam dates for Festival of Elune
8719, -- Bladesing the Elder | Allakhazam dates for Festival of Elune
8720, -- Skygleam the Elder | Allakhazam dates for Festival of Elune
8721, -- Starweave the Elder | Allakhazam dates for Festival of Elune
8722, -- Meadowrun the Elder | Allakhazam dates for Festival of Elune
8723, -- Nightwind the Elder | Allakhazam dates for Festival of Elune
8724, -- Morningdew the Elder | Allakhazam dates for Festival of Elune
8725, -- Riversong the Elder | Allakhazam dates for Festival of Elune
8726, -- Brightspear the Elder | Allakhazam dates for Festival of Elune
8727, -- Farwhisper the Elder | Allakhazam dates for Festival of Elune
8728, -- The Good News and The Bad News | AQ40 gate quest
8729, -- The Wrath of Neptulon | AQ40 gate quest
8730, -- Nefarius's Corruption | AQ40 gate quest
8731, -- Field Duty | Silithus badge quests
8732, -- Field Duty Papers | Silithus badge quests
8733, -- Eranikus, Tyrant of the Dream | AQ40 gate quest
8734, -- Tyrande and Remulos | AQ40 gate quest
8735, -- The Nightmare's Corruption | AQ40 gate quest
8736, -- The Nightmare Manifests | AQ40 gate quest
8737, -- Azure Templar | Silithus badge quests
8738, -- Hive'Regal Scout Report | Silithus badge quests
8739, -- Hive'Ashi Scout Report | Silithus badge quests
8740, -- Twilight Marauders | Silithus badge quests
8741, -- The Champion Returns | AQ40 gate quest
8742, -- The Might of Kalimdor | AQ40 gate quest
8743, -- Bang a Gong! | AQ40 gate quest
8745, -- Treasure of the Timeless One | AQ40 gate quest
8747, -- The Path of the Protector | AQ40 quest
8748, -- The Path of the Protector | AQ40 quest
8749, -- The Path of the Protector | AQ40 quest
8750, -- The Path of the Protector | AQ40 quest
8751, -- The Protector of Kalimdor | AQ40 quest
8752, -- The Path of the Conqueror | AQ40 quest
8753, -- The Path of the Conqueror | AQ40 quest
8754, -- The Path of the Conqueror | AQ40 quest
8755, -- The Path of the Conqueror | AQ40 quest
8756, -- The Qiraji Conqueror | AQ40 quest
8757, -- The Path of the Invoker | AQ40 quest
8758, -- The Path of the Invoker | AQ40 quest
8759, -- The Path of the Invoker | AQ40 quest
8760, -- The Path of the Invoker | AQ40 quest
8761, -- The Grand Invoker | AQ40 quest
8764, -- The Changing of Paths - Protector No More | AQ40 quest
8765, -- The Changing of Paths - Invoker No More | AQ40 quest
8766, -- The Changing of Paths - Conqueror No More | AQ40 quest
8770, -- Target: Hive'Ashi Defenders | Silithus badge quests
8771, -- Target: Hive'Ashi Sandstalkers | Silithus badge quests
8772, -- Target: Hive'Zora Waywatchers | Silithus badge quests
8773, -- Target: Hive'Zora Reavers | Silithus badge quests
8774, -- Target: Hive'Regal Ambushers | Silithus badge quests
8775, -- Target: Hive'Regal Spitfires | Silithus badge quests
8776, -- Target: Hive'Regal Slavemakers | Silithus badge quests
8777, -- Target: Hive'Regal Burrowers | Silithus badge quests
8778, -- The Ironforge Brigade Needs Explosives! | Silithus badge quests
8779, -- Scrying Materials | Silithus badge quests
8780, -- Armor Kits for the Field | Silithus badge quests
8781, -- Arms for the Field | Silithus badge quests
8782, -- Uniform Supplies | Silithus badge quests
8783, -- Extraordinary Materials | Silithus badge quests
8784, -- Secrets of the Qiraji | AQ40 quest
8785, -- The Orgrimmar Legion Needs Mojo! | Silithus badge quests
8786, -- Arms for the Field | Silithus badge quests
8787, -- Armor Kits for the Field | Silithus badge quests
8789, -- Imperial Qiraji Armaments | AQ40 quest
8790, -- Imperial Qiraji Regalia | AQ40 quest
8791, -- The Fall of Ossirian | AQ20 quest
8792, -- The Horde Needs Your Help! | AQ40 war effort quest
8793, -- The Horde Needs Your Help! | AQ40 war effort quest
8794, -- The Horde Needs Your Help! | AQ40 war effort quest
8795, -- The Alliance Needs Your Help! | AQ40 war effort quest
8798, -- A Yeti of Your Own | Inferred from Allakhazam comment dates
8800, -- Cenarion Battlegear | Silithus badge quests
8801, -- C'Thun's Legacy | AQ40 quest
8802, -- The Savior of Kalimdor | AQ40 quest
8804, -- Desert Survival Kits | Silithus badge quests
8805, -- Boots for the Guard | Silithus badge quests
8806, -- Grinding Stones for the Guard | Silithus badge quests
8807, -- Scrying Materials | Silithus badge quests
8808, -- Uniform Supplies | Silithus badge quests
8809, -- Extraordinary Materials | Silithus badge quests
8810, -- Bandages for the Field | Silithus badge quests
8811, -- One Commendation Signet | AQ40 war effort quest
8812, -- One Commendation Signet | AQ40 war effort quest
8813, -- One Commendation Signet | AQ40 war effort quest
8814, -- One Commendation Signet | AQ40 war effort quest
8815, -- One Commendation Signet | AQ40 war effort quest
8816, -- One Commendation Signet | AQ40 war effort quest
8817, -- One Commendation Signet | AQ40 war effort quest
8818, -- One Commendation Signet | AQ40 war effort quest
8819, -- Ten Commendation Signets | AQ40 war effort quest
8820, -- Ten Commendation Signets | AQ40 war effort quest
8821, -- Ten Commendation Signets | AQ40 war effort quest
8822, -- Ten Commendation Signets | AQ40 war effort quest
8823, -- Ten Commendation Signets | AQ40 war effort quest
8824, -- Ten Commendation Signets | AQ40 war effort quest
8825, -- Ten Commendation Signets | AQ40 war effort quest
8826, -- Ten Commendation Signets | AQ40 war effort quest
8829, -- The Ultimate Deception | Silithus badge quests
8830, -- One Commendation Signet | AQ40 war effort quest
8831, -- Ten Commendation Signets | AQ40 war effort quest
8832, -- One Commendation Signet | AQ40 war effort quest
8833, -- Ten Commendation Signets | AQ40 war effort quest
8834, -- One Commendation Signet | AQ40 war effort quest
8835, -- Ten Commendation Signets | AQ40 war effort quest
8836, -- One Commendation Signet | AQ40 war effort quest
8837, -- Ten Commendation Signets | AQ40 war effort quest
8838, -- One Commendation Signet | AQ40 war effort quest
8839, -- Ten Commendation Signets | AQ40 war effort quest
8840, -- One Commendation Signet | AQ40 war effort quest
8841, -- Ten Commendation Signets | AQ40 war effort quest
8842, -- One Commendation Signet | AQ40 war effort quest
8843, -- Ten Commendation Signets | AQ40 war effort quest
8844, -- One Commendation Signet | AQ40 war effort quest
8845, -- Ten Commendation Signets | AQ40 war effort quest
8846, -- Five Signets for War Supplies | AQ40 war effort quest
8847, -- Ten Signets for War Supplies | AQ40 war effort quest
8848, -- Fifteen Signets for War Supplies | AQ40 war effort quest
8849, -- Twenty Signets for War Supplies | AQ40 war effort quest
8850, -- Thirty Signets for War Supplies | AQ40 war effort quest
8851, -- Five Signets for War Supplies | AQ40 war effort quest
8852, -- Ten Signets for War Supplies | AQ40 war effort quest
8853, -- Fifteen Signets for War Supplies | AQ40 war effort quest
8854, -- Twenty Signets for War Supplies | AQ40 war effort quest
8855, -- Thirty Signets for War Supplies | AQ40 war effort quest
8857, -- Secrets of the Colossus - Ashi | AQ40 gate event quest
8858, -- Secrets of the Colossus - Regal | AQ40 gate event quest
8859, -- Secrets of the Colossus - Zora | AQ40 gate event quest
8862, -- Elune's Candle | Allakhazam dates for Festival of Elune
8863, -- Festival Dumplings | Allakhazam dates for Festival of Elune
8864, -- Festive Lunar Dresses | Allakhazam dates for Festival of Elune
8865, -- Festive Lunar Pant Suits | Allakhazam dates for Festival of Elune
8866, -- Bronzebeard the Elder | Allakhazam dates for Festival of Elune
8867, -- Lunar Fireworks | Allakhazam dates for Festival of Elune
8868, -- Elune's Blessing | Allakhazam dates for Festival of Elune
8870, -- The Lunar Festival | Allakhazam dates for Festival of Elune
8871, -- The Lunar Festival | Allakhazam dates for Festival of Elune
8872, -- The Lunar Festival | Allakhazam dates for Festival of Elune
8873, -- The Lunar Festival | Allakhazam dates for Festival of Elune
8875, -- The Lunar Festival | Allakhazam dates for Festival of Elune
8876, -- Small Rockets | Allakhazam dates for Festival of Elune
8877, -- Firework Launcher | Allakhazam dates for Festival of Elune
8878, -- Festive Recipes | Allakhazam dates for Festival of Elune
8879, -- Large Rockets | Allakhazam dates for Festival of Elune
8880, -- Cluster Rockets | Allakhazam dates for Festival of Elune
8881, -- Large Cluster Rockets | Allakhazam dates for Festival of Elune
8882, -- Cluster Launcher | Allakhazam dates for Festival of Elune
8883, -- Valadar Starsong | Allakhazam dates for Festival of Elune
8893, -- The Super Egg-O-Matic | Quest added in 1.10 (inferred from Allakhazam comment dates)
8897, -- Dearest Colara, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8898, -- Dearest Colara, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8899, -- Dearest Colara, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8900, -- Dearest Elenia, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8901, -- Dearest Elenia, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8902, -- Dearest Elenia, | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8903, -- Dangerous Love | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8905, -- An Earnest Proposition | Tier 0.5 questline
8906, -- An Earnest Proposition | Tier 0.5 questline
8907, -- An Earnest Proposition | Tier 0.5 questline
8908, -- An Earnest Proposition | Tier 0.5 questline
8909, -- An Earnest Proposition | Tier 0.5 questline
8910, -- An Earnest Proposition | Tier 0.5 questline
8911, -- An Earnest Proposition | Tier 0.5 questline
8912, -- An Earnest Proposition | Tier 0.5 questline
8913, -- An Earnest Proposition | Tier 0.5 questline
8914, -- An Earnest Proposition | Tier 0.5 questline
8915, -- An Earnest Proposition | Tier 0.5 questline
8916, -- An Earnest Proposition | Tier 0.5 questline
8917, -- An Earnest Proposition | Tier 0.5 questline
8918, -- An Earnest Proposition | Tier 0.5 questline
8919, -- An Earnest Proposition | Tier 0.5 questline
8920, -- An Earnest Proposition | Tier 0.5 questline
8921, -- The Ectoplasmic Distiller | Tier 0.5 questline
8922, -- A Supernatural Device | Tier 0.5 questline
8923, -- A Supernatural Device | Tier 0.5 questline
8924, -- Hunting for Ectoplasm | Tier 0.5 questline
8925, -- A Portable Power Source | Tier 0.5 questline
8926, -- Just Compensation | Tier 0.5 questline
8927, -- Just Compensation | Tier 0.5 questline
8928, -- A Shifty Merchant | Tier 0.5 questline
8929, -- In Search of Anthion | Tier 0.5 questline
8930, -- In Search of Anthion | Tier 0.5 questline
8931, -- Just Compensation | Tier 0.5 questline
8932, -- Just Compensation | Tier 0.5 questline
8933, -- Just Compensation | Tier 0.5 questline
8934, -- Just Compensation | Tier 0.5 questline
8935, -- Just Compensation | Tier 0.5 questline
8936, -- Just Compensation | Tier 0.5 questline
8937, -- Just Compensation | Tier 0.5 questline
8938, -- Just Compensation | Tier 0.5 questline
8939, -- Just Compensation | Tier 0.5 questline
8940, -- Just Compensation | Tier 0.5 questline
8941, -- Just Compensation | Tier 0.5 questline
8942, -- Just Compensation | Tier 0.5 questline
8943, -- Just Compensation | Tier 0.5 questline
8944, -- Just Compensation | Tier 0.5 questline
8945, -- Dead Man's Plea | Tier 0.5 questline
8946, -- Proof of Life | Tier 0.5 questline
8947, -- Anthion's Strange Request | Tier 0.5 questline
8948, -- Anthion's Old Friend | Tier 0.5 questline
8949, -- Falrin's Vendetta | Tier 0.5 questline
8950, -- The Instigator's Enchantment | Tier 0.5 questline
8951, -- Anthion's Parting Words | Tier 0.5 questline
8952, -- Anthion's Parting Words | Tier 0.5 questline
8953, -- Anthion's Parting Words | Tier 0.5 questline
8954, -- Anthion's Parting Words | Tier 0.5 questline
8955, -- Anthion's Parting Words | Tier 0.5 questline
8956, -- Anthion's Parting Words | Tier 0.5 questline
8957, -- Anthion's Parting Words | Tier 0.5 questline
8958, -- Anthion's Parting Words | Tier 0.5 questline
8959, -- Anthion's Parting Words | Tier 0.5 questline
8960, -- Bodley's Unfortunate Fate | Tier 0.5 questline
8961, -- Three Kings of Flame | Tier 0.5 questline
8962, -- Components of Importance | Tier 0.5 questline
8963, -- Components of Importance | Tier 0.5 questline
8964, -- Components of Importance | Tier 0.5 questline
8965, -- Components of Importance | Tier 0.5 questline
8966, -- The Left Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8967, -- The Left Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8968, -- The Left Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8969, -- The Left Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8970, -- I See Alcaz Island In Your Future... | Tier 0.5 questline
8977, -- Return to Deliana | Tier 0.5 questline
8978, -- Return to Mokvar | Tier 0.5 questline
8979, -- Fenstad's Hunch | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8980, -- Zinge's Assessment | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8981, -- Gift Giving | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8982, -- Tracing the Source | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8983, -- Tracing the Source | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8984, -- The Source Revealed | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
8985, -- More Components of Importance | Tier 0.5 questline
8986, -- More Components of Importance | Tier 0.5 questline
8987, -- More Components of Importance | Tier 0.5 questline
8988, -- More Components of Importance | Tier 0.5 questline
8989, -- The Right Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8990, -- The Right Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8991, -- The Right Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8992, -- The Right Piece of Lord Valthalak's Amulet | Tier 0.5 questline
8994, -- Final Preparations | Tier 0.5 questline
8995, -- Mea Culpa, Lord Valthalak | Tier 0.5 questline
8996, -- Return to Bodley | Tier 0.5 questline
8997, -- Back to the Beginning | Tier 0.5 questline
8998, -- Back to the Beginning | Tier 0.5 questline
8999, -- Saving the Best for Last | Tier 0.5 questline
9000, -- Saving the Best for Last | Tier 0.5 questline
9001, -- Saving the Best for Last | Tier 0.5 questline
9002, -- Saving the Best for Last | Tier 0.5 questline
9003, -- Saving the Best for Last | Tier 0.5 questline
9004, -- Saving the Best for Last | Tier 0.5 questline
9005, -- Saving the Best for Last | Tier 0.5 questline
9006, -- Saving the Best for Last | Tier 0.5 questline
9007, -- Saving the Best for Last | Tier 0.5 questline
9008, -- Saving the Best for Last | Tier 0.5 questline
9009, -- Saving the Best for Last | Tier 0.5 questline
9010, -- Saving the Best for Last | Tier 0.5 questline
9011, -- Saving the Best for Last | Tier 0.5 questline
9012, -- Saving the Best for Last | Tier 0.5 questline
9013, -- Saving the Best for Last | Tier 0.5 questline
9014, -- Saving the Best for Last | Tier 0.5 questline
9015, -- The Challenge | Tier 0.5 questline
9016, -- Anthion's Parting Words | Tier 0.5 questline
9017, -- Anthion's Parting Words | Tier 0.5 questline
9018, -- Anthion's Parting Words | Tier 0.5 questline
9019, -- Anthion's Parting Words | Tier 0.5 questline
9020, -- Anthion's Parting Words | Tier 0.5 questline
9021, -- Anthion's Parting Words | Tier 0.5 questline
9022, -- Anthion's Parting Words | Tier 0.5 questline
9023, -- The Perfect Poison | The Perfect Poison quest added (Allakhazam comment dates)
9024, -- Aristan's Hunch | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9025, -- Morgan's Discovery | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9026, -- Tracing the Source | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9027, -- Tracing the Source | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9028, -- The Source Revealed | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9029, -- A Bubbling Cauldron | Note: Valentine's Day event added with patch 1.10, but wasn't available until the next year
9032, -- Bodleys Unfortunate Fate | Tier 0.5 questline
9051, -- Toxic Test | LVL 50 class quest (druid), see retail 1.10 patch notes
9052, -- Bloodpetal Poison | LVL 50 class quest (druid), see retail 1.10 patch notes
9063, -- Torwa Pathfinder | LVL 50 class quest (druid), see retail 1.10 patch notes
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
9386, -- A Light in Dark Places | Midsummer Fire festival added in patch 1.11
9415, -- Report to Marshal Bluewall | World pvp objectives added to EPL & Silithus
9416, -- Report to General Kirika | World pvp objectives added to EPL & Silithus
9419, -- Scouring the Desert | World pvp objectives added to EPL & Silithus
9422, -- Scouring the Desert | World pvp objectives added to EPL & Silithus
9664, -- Establishing New Outposts | World pvp objectives added to EPL & Silithus
9665  -- Bolstering Our Defenses | World pvp objectives added to EPL & Silithus
);

-- * QUESTS	


		
-- * PROFESSIONS 

-- Patch 1.2-1.3 [item_enchantment_template]
UPDATE item_enchantment_template SET chance = 4.53 * 100 / (100 - 16.6) WHERE entry=454;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 17.36) WHERE entry=455;
UPDATE item_enchantment_template SET chance = 1.48 * 100 / (100 - 18.46) WHERE entry=456;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 17.18) WHERE entry=457;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 17.42) WHERE entry=458;
UPDATE item_enchantment_template SET chance = 4.62 * 100 / (100 - 16.22) WHERE entry=459;
UPDATE item_enchantment_template SET chance = 4.72 * 100 / (100 - 14.96) WHERE entry=460;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 15.38) WHERE entry=461;
UPDATE item_enchantment_template SET chance = 0.74 * 100 / (100 - 14.24) WHERE entry=462;
UPDATE item_enchantment_template SET chance = 3.64 * 100 / (100 - 14.02) WHERE entry=463;
UPDATE item_enchantment_template SET chance = 3.51 * 100 / (100 - 19.7) WHERE entry=464;
UPDATE item_enchantment_template SET chance = 3.49 * 100 / (100 - 15.56) WHERE entry=465;
UPDATE item_enchantment_template SET chance = 3.7 * 100 / (100 - 15.98) WHERE entry=466;
UPDATE item_enchantment_template SET chance = 3.62 * 100 / (100 - 16.08) WHERE entry=467;
UPDATE item_enchantment_template SET chance = 3.24 * 100 / (100 - 24.26) WHERE entry=468;
UPDATE item_enchantment_template SET chance = 2.88 * 100 / (100 - 24.5) WHERE entry=469;
UPDATE item_enchantment_template SET chance = 2.92 * 100 / (100 - 28.37) WHERE entry=470;
UPDATE item_enchantment_template SET chance = 3.21 * 100 / (100 - 29.3) WHERE entry=471;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 28.91) WHERE entry=472;
UPDATE item_enchantment_template SET chance = 3.8 * 100 / (100 - 2.6) WHERE entry=475;
UPDATE item_enchantment_template SET chance = 4.55 * 100 / (100 - 2.76) WHERE entry=476;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 3) WHERE entry=477;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 3.48) WHERE entry=478;
UPDATE item_enchantment_template SET chance = 4.02 * 100 / (100 - 3.3) WHERE entry=479;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 3.6) WHERE entry=480;
UPDATE item_enchantment_template SET chance = 4.28 * 100 / (100 - 3.26) WHERE entry=481;
UPDATE item_enchantment_template SET chance = 3.08 * 100 / (100 - 3.44) WHERE entry=482;
UPDATE item_enchantment_template SET chance = 3.03 * 100 / (100 - 3.6) WHERE entry=483;
UPDATE item_enchantment_template SET chance = 3.25 * 100 / (100 - 3.26) WHERE entry=484;
UPDATE item_enchantment_template SET chance = 5.47 * 100 / (100 - 3) WHERE entry=485;
UPDATE item_enchantment_template SET chance = 5.63 * 100 / (100 - 3.24) WHERE entry=486;
UPDATE item_enchantment_template SET chance = 5.73 * 100 / (100 - 3.26) WHERE entry=487;
UPDATE item_enchantment_template SET chance = 6 * 100 / (100 - 3.5) WHERE entry=488;
UPDATE item_enchantment_template SET chance = 5.08 * 100 / (100 - 7.64) WHERE entry=489;
UPDATE item_enchantment_template SET chance = 4.67 * 100 / (100 - 6.54) WHERE entry=490;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 6.06) WHERE entry=491;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 6.94) WHERE entry=492;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 5.96) WHERE entry=493;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=497;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=502;
UPDATE item_enchantment_template SET chance = 2.77 * 100 / (100 - 3.3) WHERE entry=506;
UPDATE item_enchantment_template SET chance = 3.05 * 100 / (100 - 3.96) WHERE entry=507;
UPDATE item_enchantment_template SET chance = 3.13 * 100 / (100 - 3.56) WHERE entry=508;
UPDATE item_enchantment_template SET chance = 3.38 * 100 / (100 - 3.7) WHERE entry=509;
UPDATE item_enchantment_template SET chance = 2.77 * 100 / (100 - 7.46) WHERE entry=510;
UPDATE item_enchantment_template SET chance = 2.77 * 100 / (100 - 7.04) WHERE entry=511;
UPDATE item_enchantment_template SET chance = 2.5 * 100 / (100 - 5.5) WHERE entry=512;
UPDATE item_enchantment_template SET chance = 2.8 * 100 / (100 - 5.74) WHERE entry=513;
UPDATE item_enchantment_template SET chance = 2.2 * 100 / (100 - 6.39) WHERE entry=514;
UPDATE item_enchantment_template SET chance = 4.73 * 100 / (100 - 0.1) WHERE entry=531;
UPDATE item_enchantment_template SET chance = 4.05 * 100 / (100 - 0.2) WHERE entry=534;
UPDATE item_enchantment_template SET chance = 4.03 * 100 / (100 - 14) WHERE entry=538;
UPDATE item_enchantment_template SET chance = 2.38 * 100 / (100 - 14.37) WHERE entry=539;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 13.66) WHERE entry=540;
UPDATE item_enchantment_template SET chance = 6.25 * 100 / (100 - 14.9) WHERE entry=541;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 15.32) WHERE entry=542;
UPDATE item_enchantment_template SET chance = 7 * 100 / (100 - 16.06) WHERE entry=543;
UPDATE item_enchantment_template SET chance = 6.7 * 100 / (100 - 14.3) WHERE entry=544;
UPDATE item_enchantment_template SET chance = 6.45 * 100 / (100 - 13.74) WHERE entry=545;
UPDATE item_enchantment_template SET chance = 6.58 * 100 / (100 - 13.4) WHERE entry=546;
UPDATE item_enchantment_template SET chance = 6.85 * 100 / (100 - 12.36) WHERE entry=547;
UPDATE item_enchantment_template SET chance = 6.4 * 100 / (100 - 12.86) WHERE entry=548;
UPDATE item_enchantment_template SET chance = 6.72 * 100 / (100 - 13.64) WHERE entry=549;
UPDATE item_enchantment_template SET chance = 6.58 * 100 / (100 - 15.48) WHERE entry=550;
UPDATE item_enchantment_template SET chance = 5.93 * 100 / (100 - 15.06) WHERE entry=551;
UPDATE item_enchantment_template SET chance = 5.05 * 100 / (100 - 23.02) WHERE entry=552;
UPDATE item_enchantment_template SET chance = 4.3 * 100 / (100 - 24.4) WHERE entry=553;
UPDATE item_enchantment_template SET chance = 4.3 * 100 / (100 - 26.35) WHERE entry=554;
UPDATE item_enchantment_template SET chance = 0.4 * 100 / (100 - 24.74) WHERE entry=555;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 23.2) WHERE entry=556;
UPDATE item_enchantment_template SET chance = 4.33 * 100 / (100 - 4.4) WHERE entry=559;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.44) WHERE entry=560;
UPDATE item_enchantment_template SET chance = 5.35 * 100 / (100 - 3.8) WHERE entry=561;
UPDATE item_enchantment_template SET chance = 3.95 * 100 / (100 - 4.76) WHERE entry=562;
UPDATE item_enchantment_template SET chance = 4.72 * 100 / (100 - 5.25) WHERE entry=563;
UPDATE item_enchantment_template SET chance = 3.6 * 100 / (100 - 4.6) WHERE entry=564;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.26) WHERE entry=565;
UPDATE item_enchantment_template SET chance = 3.63 * 100 / (100 - 4.4) WHERE entry=566;
UPDATE item_enchantment_template SET chance = 3.65 * 100 / (100 - 4.14) WHERE entry=567;
UPDATE item_enchantment_template SET chance = 3.95 * 100 / (100 - 4.06) WHERE entry=568;
UPDATE item_enchantment_template SET chance = 3.8 * 100 / (100 - 4) WHERE entry=569;
UPDATE item_enchantment_template SET chance = 4.25 * 100 / (100 - 3.64) WHERE entry=570;
UPDATE item_enchantment_template SET chance = 4.3 * 100 / (100 - 3.26) WHERE entry=571;
UPDATE item_enchantment_template SET chance = 3.64 * 100 / (100 - 4.06) WHERE entry=572;
UPDATE item_enchantment_template SET chance = 3.68 * 100 / (100 - 5.91) WHERE entry=573;
UPDATE item_enchantment_template SET chance = 3.75 * 100 / (100 - 5.64) WHERE entry=574;
UPDATE item_enchantment_template SET chance = 3.45 * 100 / (100 - 4.94) WHERE entry=575;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.64) WHERE entry=576;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5) WHERE entry=577;
UPDATE item_enchantment_template SET chance = 4.13 * 100 / (100 - 0.66) WHERE entry=580;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 1.04) WHERE entry=581;
UPDATE item_enchantment_template SET chance = 1.78 * 100 / (100 - 0.94) WHERE entry=582;
UPDATE item_enchantment_template SET chance = 4.9 * 100 / (100 - 0.8) WHERE entry=583;
UPDATE item_enchantment_template SET chance = 5.1 * 100 / (100 - 0.84) WHERE entry=584;
UPDATE item_enchantment_template SET chance = 5.22 * 100 / (100 - 0.76) WHERE entry=585;
UPDATE item_enchantment_template SET chance = 5.17 * 100 / (100 - 0.7) WHERE entry=586;
UPDATE item_enchantment_template SET chance = 5.15 * 100 / (100 - 0.86) WHERE entry=587;
UPDATE item_enchantment_template SET chance = 5.5 * 100 / (100 - 0.56) WHERE entry=588;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.84) WHERE entry=589;
UPDATE item_enchantment_template SET chance = 2.9 * 100 / (100 - 4.26) WHERE entry=590;
UPDATE item_enchantment_template SET chance = 2.65 * 100 / (100 - 5) WHERE entry=591;
UPDATE item_enchantment_template SET chance = 2.6 * 100 / (100 - 5.02) WHERE entry=592;
UPDATE item_enchantment_template SET chance = 2.28 * 100 / (100 - 4.46) WHERE entry=593;
UPDATE item_enchantment_template SET chance = 2.13 * 100 / (100 - 6.76) WHERE entry=594;
UPDATE item_enchantment_template SET chance = 2.65 * 100 / (100 - 6.82) WHERE entry=595;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 6.16) WHERE entry=596;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 6.14) WHERE entry=597;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 5.2) WHERE entry=598;
UPDATE item_enchantment_template SET chance = 6.05 * 100 / (100 - 1) WHERE entry=611;
UPDATE item_enchantment_template SET chance = 5.73 * 100 / (100 - 0.94) WHERE entry=612;
UPDATE item_enchantment_template SET chance = 5.63 * 100 / (100 - 0.84) WHERE entry=613;
UPDATE item_enchantment_template SET chance = 5.78 * 100 / (100 - 0.9) WHERE entry=614;
UPDATE item_enchantment_template SET chance = 4.93 * 100 / (100 - 1.8) WHERE entry=615;
UPDATE item_enchantment_template SET chance = 4.2 * 100 / (100 - 1.56) WHERE entry=616;
UPDATE item_enchantment_template SET chance = 4.75 * 100 / (100 - 1.7) WHERE entry=617;
UPDATE item_enchantment_template SET chance = 4.27 * 100 / (100 - 1.6) WHERE entry=618;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 1.6) WHERE entry=619;
UPDATE item_enchantment_template SET chance = 4.04 * 100 / (100 - 31.38) WHERE entry=629;
UPDATE item_enchantment_template SET chance = 3.64 * 100 / (100 - 27.52) WHERE entry=630;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 25.8) WHERE entry=631;
UPDATE item_enchantment_template SET chance = 3.26 * 100 / (100 - 26.7) WHERE entry=632;
UPDATE item_enchantment_template SET chance = 3.08 * 100 / (100 - 24.5) WHERE entry=633;
UPDATE item_enchantment_template SET chance = 2.67 * 100 / (100 - 25.76) WHERE entry=634;
UPDATE item_enchantment_template SET chance = 2.73 * 100 / (100 - 26.02) WHERE entry=635;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 20.8) WHERE entry=636;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 23.46) WHERE entry=637;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 25.43) WHERE entry=638;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 27.53) WHERE entry=639;
UPDATE item_enchantment_template SET chance = 1.85 * 100 / (100 - 33.2) WHERE entry=640;
UPDATE item_enchantment_template SET chance = 3.28 * 100 / (100 - 6.24) WHERE entry=650;
UPDATE item_enchantment_template SET chance = 3.98 * 100 / (100 - 7.16) WHERE entry=651;
UPDATE item_enchantment_template SET chance = 3.83 * 100 / (100 - 6.24) WHERE entry=652;
UPDATE item_enchantment_template SET chance = 4.68 * 100 / (100 - 4.74) WHERE entry=653;
UPDATE item_enchantment_template SET chance = 4.9 * 100 / (100 - 4.88) WHERE entry=654;
UPDATE item_enchantment_template SET chance = 4.97 * 100 / (100 - 4.74) WHERE entry=655;
UPDATE item_enchantment_template SET chance = 4.92 * 100 / (100 - 4.7) WHERE entry=656;
UPDATE item_enchantment_template SET chance = 4.95 * 100 / (100 - 5.4) WHERE entry=657;
UPDATE item_enchantment_template SET chance = 4.27 * 100 / (100 - 5.2) WHERE entry=658;
UPDATE item_enchantment_template SET chance = 3.85 * 100 / (100 - 4.19) WHERE entry=659;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.56) WHERE entry=660;
UPDATE item_enchantment_template SET chance = 4.45 * 100 / (100 - 3.1) WHERE entry=661;
UPDATE item_enchantment_template SET chance = 4.25 * 100 / (100 - 0.56) WHERE entry=671;
UPDATE item_enchantment_template SET chance = 5.13 * 100 / (100 - 0.5) WHERE entry=672;
UPDATE item_enchantment_template SET chance = 5.48 * 100 / (100 - 0.36) WHERE entry=673;
UPDATE item_enchantment_template SET chance = 2.76 * 100 / (100 - 5.72) WHERE entry=674;
UPDATE item_enchantment_template SET chance = 2.8 * 100 / (100 - 6.76) WHERE entry=675;
UPDATE item_enchantment_template SET chance = 2.97 * 100 / (100 - 5.7) WHERE entry=676;
UPDATE item_enchantment_template SET chance = 2.93 * 100 / (100 - 5.7) WHERE entry=677;
UPDATE item_enchantment_template SET chance = 2.63 * 100 / (100 - 7.6) WHERE entry=678;
UPDATE item_enchantment_template SET chance = 2.4 * 100 / (100 - 6.82) WHERE entry=679;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 5.06) WHERE entry=680;
UPDATE item_enchantment_template SET chance = 2.43 * 100 / (100 - 5.2) WHERE entry=681;
UPDATE item_enchantment_template SET chance = 3.7 * 100 / (100 - 3) WHERE entry=682;
UPDATE item_enchantment_template SET chance = 4.75 * 100 / (100 - 0.76) WHERE entry=695;
UPDATE item_enchantment_template SET chance = 5.25 * 100 / (100 - 0.66) WHERE entry=696;
UPDATE item_enchantment_template SET chance = 5.25 * 100 / (100 - 0.5) WHERE entry=697;
UPDATE item_enchantment_template SET chance = 5.02 * 100 / (100 - 0.46) WHERE entry=698;
UPDATE item_enchantment_template SET chance = 4.43 * 100 / (100 - 0.84) WHERE entry=699;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 0.84) WHERE entry=700;
UPDATE item_enchantment_template SET chance = 4.37 * 100 / (100 - 0.96) WHERE entry=701;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 1.37) WHERE entry=702;
UPDATE item_enchantment_template SET chance = 2.7 * 100 / (100 - 1.2) WHERE entry=703;
UPDATE item_enchantment_template SET chance = 5.05 * 100 / (100 - 15.6) WHERE entry=708;
UPDATE item_enchantment_template SET chance = 5.45 * 100 / (100 - 13.94) WHERE entry=709;
UPDATE item_enchantment_template SET chance = 6.13 * 100 / (100 - 15.46) WHERE entry=710;
UPDATE item_enchantment_template SET chance = 6.53 * 100 / (100 - 15.36) WHERE entry=711;
UPDATE item_enchantment_template SET chance = 12.3 * 100 / (100 - 14.93) WHERE entry=712;
UPDATE item_enchantment_template SET chance = 12.8 * 100 / (100 - 13.2) WHERE entry=713;
UPDATE item_enchantment_template SET chance = 6.35 * 100 / (100 - 13.62) WHERE entry=714;
UPDATE item_enchantment_template SET chance = 5.97 * 100 / (100 - 13.9) WHERE entry=715;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 14.78) WHERE entry=716;
UPDATE item_enchantment_template SET chance = 5.13 * 100 / (100 - 13.74) WHERE entry=717;
UPDATE item_enchantment_template SET chance = 4.9 * 100 / (100 - 14.9) WHERE entry=718;
UPDATE item_enchantment_template SET chance = 3.76 * 100 / (100 - 14.54) WHERE entry=719;
UPDATE item_enchantment_template SET chance = 6.9 * 100 / (100 - 21.9) WHERE entry=720;
UPDATE item_enchantment_template SET chance = 6.35 * 100 / (100 - 23.9) WHERE entry=721;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 22.66) WHERE entry=722;
UPDATE item_enchantment_template SET chance = 0.4 * 100 / (100 - 27.65) WHERE entry=723;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.5) WHERE entry=729;
UPDATE item_enchantment_template SET chance = 3.15 * 100 / (100 - 4.1) WHERE entry=730;
UPDATE item_enchantment_template SET chance = 3.4 * 100 / (100 - 4.96) WHERE entry=731;
UPDATE item_enchantment_template SET chance = 6.4 * 100 / (100 - 3.96) WHERE entry=732;
UPDATE item_enchantment_template SET chance = 7.97 * 100 / (100 - 3.9) WHERE entry=733;
UPDATE item_enchantment_template SET chance = 7.9 * 100 / (100 - 3.7) WHERE entry=734;
UPDATE item_enchantment_template SET chance = 3.97 * 100 / (100 - 3.64) WHERE entry=735;
UPDATE item_enchantment_template SET chance = 3.9 * 100 / (100 - 3.64) WHERE entry=736;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 3.84) WHERE entry=737;
UPDATE item_enchantment_template SET chance = 3.27 * 100 / (100 - 3.04) WHERE entry=738;
UPDATE item_enchantment_template SET chance = 2.92 * 100 / (100 - 2.94) WHERE entry=739;
UPDATE item_enchantment_template SET chance = 2.87 * 100 / (100 - 2.9) WHERE entry=740;
UPDATE item_enchantment_template SET chance = 5.3 * 100 / (100 - 4.7) WHERE entry=741;
UPDATE item_enchantment_template SET chance = 4.5 * 100 / (100 - 5) WHERE entry=742;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.18) WHERE entry=743;
UPDATE item_enchantment_template SET chance = 2.25 * 100 / (100 - 6.04) WHERE entry=744;
UPDATE item_enchantment_template SET chance = 0.8 * 100 / (100 - 10.7) WHERE entry=745;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 1) WHERE entry=749;
UPDATE item_enchantment_template SET chance = 2.2 * 100 / (100 - 0.9) WHERE entry=750;
UPDATE item_enchantment_template SET chance = 4.93 * 100 / (100 - 0.86) WHERE entry=751;
UPDATE item_enchantment_template SET chance = 5.5 * 100 / (100 - 0.9) WHERE entry=752;
UPDATE item_enchantment_template SET chance = 5.13 * 100 / (100 - 0.86) WHERE entry=753;
UPDATE item_enchantment_template SET chance = 10.85 * 100 / (100 - 0.8) WHERE entry=754;
UPDATE item_enchantment_template SET chance = 11.17 * 100 / (100 - 0.7) WHERE entry=755;
UPDATE item_enchantment_template SET chance = 5.57 * 100 / (100 - 0.64) WHERE entry=756;
UPDATE item_enchantment_template SET chance = 5.43 * 100 / (100 - 0.64) WHERE entry=757;
UPDATE item_enchantment_template SET chance = 2.97 * 100 / (100 - 3.84) WHERE entry=758;
UPDATE item_enchantment_template SET chance = 3.55 * 100 / (100 - 3.8) WHERE entry=759;
UPDATE item_enchantment_template SET chance = 3.07 * 100 / (100 - 3.74) WHERE entry=760;
UPDATE item_enchantment_template SET chance = 3.25 * 100 / (100 - 4.1) WHERE entry=761;
UPDATE item_enchantment_template SET chance = 5.23 * 100 / (100 - 6.03) WHERE entry=762;
UPDATE item_enchantment_template SET chance = 4.15 * 100 / (100 - 4.85) WHERE entry=763;
UPDATE item_enchantment_template SET chance = 2.08 * 100 / (100 - 5.36) WHERE entry=764;
UPDATE item_enchantment_template SET chance = 1.57 * 100 / (100 - 5.68) WHERE entry=765;
UPDATE item_enchantment_template SET chance = 5.37 * 100 / (100 - 0.56) WHERE entry=779;
UPDATE item_enchantment_template SET chance = 5.7 * 100 / (100 - 0.76) WHERE entry=780;
UPDATE item_enchantment_template SET chance = 5.5 * 100 / (100 - 0.46) WHERE entry=781;
UPDATE item_enchantment_template SET chance = 5.22 * 100 / (100 - 0.54) WHERE entry=782;
UPDATE item_enchantment_template SET chance = 9.53 * 100 / (100 - 1.8) WHERE entry=783;
UPDATE item_enchantment_template SET chance = 9.57 * 100 / (100 - 2.53) WHERE entry=784;
UPDATE item_enchantment_template SET chance = 4.92 * 100 / (100 - 1.69) WHERE entry=785;
UPDATE item_enchantment_template SET chance = 4.2 * 100 / (100 - 1.64) WHERE entry=786;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 16.3) WHERE entry=791;
UPDATE item_enchantment_template SET chance = 2.3 * 100 / (100 - 15.3) WHERE entry=792;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 14.56) WHERE entry=793;
UPDATE item_enchantment_template SET chance = 6.13 * 100 / (100 - 16) WHERE entry=794;
UPDATE item_enchantment_template SET chance = 5.63 * 100 / (100 - 15.2) WHERE entry=795;
UPDATE item_enchantment_template SET chance = 11.8 * 100 / (100 - 15.4) WHERE entry=796;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 14.6) WHERE entry=797;
UPDATE item_enchantment_template SET chance = 5.67 * 100 / (100 - 13.7) WHERE entry=798;
UPDATE item_enchantment_template SET chance = 5.82 * 100 / (100 - 13.68) WHERE entry=799;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 14.18) WHERE entry=800;
UPDATE item_enchantment_template SET chance = 5.63 * 100 / (100 - 14.26) WHERE entry=801;
UPDATE item_enchantment_template SET chance = 5 * 100 / (100 - 14.4) WHERE entry=802;
UPDATE item_enchantment_template SET chance = 3.67 * 100 / (100 - 16.92) WHERE entry=803;
UPDATE item_enchantment_template SET chance = 6.55 * 100 / (100 - 22) WHERE entry=804;
UPDATE item_enchantment_template SET chance = 6.4 * 100 / (100 - 23.2) WHERE entry=805;
UPDATE item_enchantment_template SET chance = 3.23 * 100 / (100 - 23.78) WHERE entry=806;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 23.36) WHERE entry=807;
UPDATE item_enchantment_template SET chance = 4.68 * 100 / (100 - 2.94) WHERE entry=813;
UPDATE item_enchantment_template SET chance = 4.32 * 100 / (100 - 2.8) WHERE entry=814;
UPDATE item_enchantment_template SET chance = 4.15 * 100 / (100 - 3.5) WHERE entry=815;
UPDATE item_enchantment_template SET chance = 3.9 * 100 / (100 - 3.66) WHERE entry=816;
UPDATE item_enchantment_template SET chance = 6.77 * 100 / (100 - 3.47) WHERE entry=817;
UPDATE item_enchantment_template SET chance = 7.37 * 100 / (100 - 2.97) WHERE entry=818;
UPDATE item_enchantment_template SET chance = 3.87 * 100 / (100 - 2.9) WHERE entry=819;
UPDATE item_enchantment_template SET chance = 4 * 100 / (100 - 2.46) WHERE entry=820;
UPDATE item_enchantment_template SET chance = 4.08 * 100 / (100 - 2.76) WHERE entry=821;
UPDATE item_enchantment_template SET chance = 4.25 * 100 / (100 - 2.16) WHERE entry=822;
UPDATE item_enchantment_template SET chance = 4.6 * 100 / (100 - 1.9) WHERE entry=823;
UPDATE item_enchantment_template SET chance = 4.36 * 100 / (100 - 2.52) WHERE entry=824;
UPDATE item_enchantment_template SET chance = 9.8 * 100 / (100 - 5.4) WHERE entry=825;
UPDATE item_enchantment_template SET chance = 9.45 * 100 / (100 - 4.85) WHERE entry=826;
UPDATE item_enchantment_template SET chance = 4.43 * 100 / (100 - 4.84) WHERE entry=827;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 4.36) WHERE entry=828;
UPDATE item_enchantment_template SET chance = 4.28 * 100 / (100 - 0.1) WHERE entry=834;
UPDATE item_enchantment_template SET chance = 3.93 * 100 / (100 - 0.2) WHERE entry=835;
UPDATE item_enchantment_template SET chance = 10.7 * 100 / (100 - 0.1) WHERE entry=838;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 3.36) WHERE entry=842;
UPDATE item_enchantment_template SET chance = 0.44 * 100 / (100 - 3.26) WHERE entry=843;
UPDATE item_enchantment_template SET chance = 2.48 * 100 / (100 - 3.44) WHERE entry=844;
UPDATE item_enchantment_template SET chance = 2.9 * 100 / (100 - 3.2) WHERE entry=845;
UPDATE item_enchantment_template SET chance = 5.65 * 100 / (100 - 6.2) WHERE entry=846;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 6.4) WHERE entry=847;
UPDATE item_enchantment_template SET chance = 2.82 * 100 / (100 - 7.71) WHERE entry=848;
UPDATE item_enchantment_template SET chance = 1.88 * 100 / (100 - 5.5) WHERE entry=849;
UPDATE item_enchantment_template SET chance = 4.05 * 100 / (100 - 15.4) WHERE entry=875;
UPDATE item_enchantment_template SET chance = 5.05 * 100 / (100 - 14.6) WHERE entry=876;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 13.1) WHERE entry=877;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 13.22) WHERE entry=878;
UPDATE item_enchantment_template SET chance = 4.9 * 100 / (100 - 12.38) WHERE entry=879;
UPDATE item_enchantment_template SET chance = 10 * 100 / (100 - 11.94) WHERE entry=880;
UPDATE item_enchantment_template SET chance = 10.3 * 100 / (100 - 11.27) WHERE entry=881;
UPDATE item_enchantment_template SET chance = 5.03 * 100 / (100 - 10.44) WHERE entry=882;
UPDATE item_enchantment_template SET chance = 4.98 * 100 / (100 - 12.24) WHERE entry=883;
UPDATE item_enchantment_template SET chance = 4.27 * 100 / (100 - 13.8) WHERE entry=884;
UPDATE item_enchantment_template SET chance = 3.77 * 100 / (100 - 13.26) WHERE entry=885;
UPDATE item_enchantment_template SET chance = 4.02 * 100 / (100 - 14.5) WHERE entry=886;
UPDATE item_enchantment_template SET chance = 4.35 * 100 / (100 - 14.3) WHERE entry=887;
UPDATE item_enchantment_template SET chance = 8.1 * 100 / (100 - 22.2) WHERE entry=888;
UPDATE item_enchantment_template SET chance = 8.3 * 100 / (100 - 23.6) WHERE entry=889;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 28.96) WHERE entry=890;
UPDATE item_enchantment_template SET chance = 4.4 * 100 / (100 - 26.04) WHERE entry=891;
UPDATE item_enchantment_template SET chance = 3.4 * 100 / (100 - 5.51) WHERE entry=896;
UPDATE item_enchantment_template SET chance = 3.95 * 100 / (100 - 4.7) WHERE entry=897;
UPDATE item_enchantment_template SET chance = 2.87 * 100 / (100 - 4.76) WHERE entry=898;
UPDATE item_enchantment_template SET chance = 3.05 * 100 / (100 - 3.8) WHERE entry=899;
UPDATE item_enchantment_template SET chance = 6.17 * 100 / (100 - 4.28) WHERE entry=900;
UPDATE item_enchantment_template SET chance = 8.4 * 100 / (100 - 4.15) WHERE entry=901;
UPDATE item_enchantment_template SET chance = 8.43 * 100 / (100 - 3.9) WHERE entry=902;
UPDATE item_enchantment_template SET chance = 3.78 * 100 / (100 - 3.64) WHERE entry=903;
UPDATE item_enchantment_template SET chance = 3.58 * 100 / (100 - 3.8) WHERE entry=904;
UPDATE item_enchantment_template SET chance = 3.25 * 100 / (100 - 3.64) WHERE entry=905;
UPDATE item_enchantment_template SET chance = 3.25 * 100 / (100 - 3.74) WHERE entry=906;
UPDATE item_enchantment_template SET chance = 3.23 * 100 / (100 - 3.12) WHERE entry=907;
UPDATE item_enchantment_template SET chance = 3.65 * 100 / (100 - 3.5) WHERE entry=908;
UPDATE item_enchantment_template SET chance = 6.4 * 100 / (100 - 4.91) WHERE entry=909;
UPDATE item_enchantment_template SET chance = 5.8 * 100 / (100 - 4.8) WHERE entry=910;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 4.6) WHERE entry=911;
UPDATE item_enchantment_template SET chance = 2.55 * 100 / (100 - 4.84) WHERE entry=912;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.69) WHERE entry=917;
UPDATE item_enchantment_template SET chance = 4.55 * 100 / (100 - 0.92) WHERE entry=918;
UPDATE item_enchantment_template SET chance = 5.05 * 100 / (100 - 0.86) WHERE entry=919;
UPDATE item_enchantment_template SET chance = 5.23 * 100 / (100 - 0.9) WHERE entry=920;
UPDATE item_enchantment_template SET chance = 5.33 * 100 / (100 - 1) WHERE entry=921;
UPDATE item_enchantment_template SET chance = 10.9 * 100 / (100 - 0.75) WHERE entry=922;
UPDATE item_enchantment_template SET chance = 11.1 * 100 / (100 - 0.85) WHERE entry=923;
UPDATE item_enchantment_template SET chance = 5.3 * 100 / (100 - 0.66) WHERE entry=924;
UPDATE item_enchantment_template SET chance = 5.57 * 100 / (100 - 0.6) WHERE entry=925;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 4.12) WHERE entry=926;
UPDATE item_enchantment_template SET chance = 2.65 * 100 / (100 - 5.2) WHERE entry=927;
UPDATE item_enchantment_template SET chance = 2.82 * 100 / (100 - 4.26) WHERE entry=928;
UPDATE item_enchantment_template SET chance = 2.68 * 100 / (100 - 4.36) WHERE entry=929;
UPDATE item_enchantment_template SET chance = 4.95 * 100 / (100 - 6.2) WHERE entry=930;
UPDATE item_enchantment_template SET chance = 5.13 * 100 / (100 - 7.17) WHERE entry=931;
UPDATE item_enchantment_template SET chance = 2.77 * 100 / (100 - 5.6) WHERE entry=932;
UPDATE item_enchantment_template SET chance = 2.03 * 100 / (100 - 5) WHERE entry=933;
UPDATE item_enchantment_template SET chance = 5.48 * 100 / (100 - 0.64) WHERE entry=947;
UPDATE item_enchantment_template SET chance = 5.63 * 100 / (100 - 0.84) WHERE entry=948;
UPDATE item_enchantment_template SET chance = 5.82 * 100 / (100 - 0.94) WHERE entry=949;
UPDATE item_enchantment_template SET chance = 5.38 * 100 / (100 - 0.64) WHERE entry=950;
UPDATE item_enchantment_template SET chance = 9.67 * 100 / (100 - 1.83) WHERE entry=951;
UPDATE item_enchantment_template SET chance = 8.83 * 100 / (100 - 1.63) WHERE entry=952;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 2.13) WHERE entry=953;
UPDATE item_enchantment_template SET chance = 3.85 * 100 / (100 - 1.3) WHERE entry=954;
UPDATE item_enchantment_template SET chance = 1.97 * 100 / (100 - 35) WHERE entry=959;
UPDATE item_enchantment_template SET chance = 2.57 * 100 / (100 - 30.44) WHERE entry=960;
UPDATE item_enchantment_template SET chance = 2.72 * 100 / (100 - 28.72) WHERE entry=961;
UPDATE item_enchantment_template SET chance = 3.15 * 100 / (100 - 28.5) WHERE entry=962;
UPDATE item_enchantment_template SET chance = 6.65 * 100 / (100 - 29.85) WHERE entry=963;
UPDATE item_enchantment_template SET chance = 6.2 * 100 / (100 - 31.06) WHERE entry=964;
UPDATE item_enchantment_template SET chance = 3.18 * 100 / (100 - 27.4) WHERE entry=965;
UPDATE item_enchantment_template SET chance = 3.37 * 100 / (100 - 27.42) WHERE entry=966;
UPDATE item_enchantment_template SET chance = 3.17 * 100 / (100 - 25.84) WHERE entry=967;
UPDATE item_enchantment_template SET chance = 2.93 * 100 / (100 - 29.2) WHERE entry=968;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 30.41) WHERE entry=969;
UPDATE item_enchantment_template SET chance = 6.3 * 100 / (100 - 28.55) WHERE entry=970;
UPDATE item_enchantment_template SET chance = 5.55 * 100 / (100 - 30.25) WHERE entry=971;
UPDATE item_enchantment_template SET chance = 3.3 * 100 / (100 - 23.88) WHERE entry=972;
UPDATE item_enchantment_template SET chance = 3.35 * 100 / (100 - 27.66) WHERE entry=973;
UPDATE item_enchantment_template SET chance = 3.52 * 100 / (100 - 27.62) WHERE entry=974;
UPDATE item_enchantment_template SET chance = 5.75 * 100 / (100 - 27.9) WHERE entry=975;
UPDATE item_enchantment_template SET chance = 2.85 * 100 / (100 - 7.3) WHERE entry=980;
UPDATE item_enchantment_template SET chance = 4.2 * 100 / (100 - 5.3) WHERE entry=981;
UPDATE item_enchantment_template SET chance = 4.2 * 100 / (100 - 6.42) WHERE entry=982;
UPDATE item_enchantment_template SET chance = 4.65 * 100 / (100 - 6.5) WHERE entry=983;
UPDATE item_enchantment_template SET chance = 9 * 100 / (100 - 6.5) WHERE entry=984;
UPDATE item_enchantment_template SET chance = 8.95 * 100 / (100 - 6.5) WHERE entry=985;
UPDATE item_enchantment_template SET chance = 9.37 * 100 / (100 - 7.16) WHERE entry=986;
UPDATE item_enchantment_template SET chance = 3.53 * 100 / (100 - 5.86) WHERE entry=987;
UPDATE item_enchantment_template SET chance = 3.38 * 100 / (100 - 6.76) WHERE entry=988;
UPDATE item_enchantment_template SET chance = 3.83 * 100 / (100 - 6.68) WHERE entry=989;
UPDATE item_enchantment_template SET chance = 7.2 * 100 / (100 - 7.47) WHERE entry=990;
UPDATE item_enchantment_template SET chance = 7.35 * 100 / (100 - 8.35) WHERE entry=991;
UPDATE item_enchantment_template SET chance = 7.08 * 100 / (100 - 7.56) WHERE entry=992;
UPDATE item_enchantment_template SET chance = 3.5 * 100 / (100 - 8.86) WHERE entry=993;
UPDATE item_enchantment_template SET chance = 4.15 * 100 / (100 - 8.9) WHERE entry=994;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 7.68) WHERE entry=995;
UPDATE item_enchantment_template SET chance = 9.3 * 100 / (100 - 6.2) WHERE entry=996;
UPDATE item_enchantment_template SET chance = 3.6 * 100 / (100 - 1.2) WHERE entry=1002;
UPDATE item_enchantment_template SET chance = 4.15 * 100 / (100 - 1) WHERE entry=1003;
UPDATE item_enchantment_template SET chance = 5.55 * 100 / (100 - 1.3) WHERE entry=1004;
UPDATE item_enchantment_template SET chance = 10.2 * 100 / (100 - 1.1) WHERE entry=1005;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 1.15) WHERE entry=1006;
UPDATE item_enchantment_template SET chance = 11.87 * 100 / (100 - 1.26) WHERE entry=1007;
UPDATE item_enchantment_template SET chance = 4.58 * 100 / (100 - 1.16) WHERE entry=1008;
UPDATE item_enchantment_template SET chance = 4.87 * 100 / (100 - 1) WHERE entry=1009;
UPDATE item_enchantment_template SET chance = 2.88 * 100 / (100 - 3.1) WHERE entry=1010;
UPDATE item_enchantment_template SET chance = 5.82 * 100 / (100 - 3.32) WHERE entry=1011;
UPDATE item_enchantment_template SET chance = 5.45 * 100 / (100 - 3.35) WHERE entry=1012;
UPDATE item_enchantment_template SET chance = 5.7 * 100 / (100 - 3) WHERE entry=1013;
UPDATE item_enchantment_template SET chance = 2.73 * 100 / (100 - 3.8) WHERE entry=1014;
UPDATE item_enchantment_template SET chance = 3.25 * 100 / (100 - 3.8) WHERE entry=1015;
UPDATE item_enchantment_template SET chance = 3.77 * 100 / (100 - 3.3) WHERE entry=1016;
UPDATE item_enchantment_template SET chance = 8.8 * 100 / (100 - 3.7) WHERE entry=1017;
UPDATE item_enchantment_template SET chance = 3.55 * 100 / (100 - 32.3) WHERE entry=1043;
UPDATE item_enchantment_template SET chance = 3.05 * 100 / (100 - 28.9) WHERE entry=1044;
UPDATE item_enchantment_template SET chance = 2.81 * 100 / (100 - 34.64) WHERE entry=1045;
UPDATE item_enchantment_template SET chance = 6.7 * 100 / (100 - 32.25) WHERE entry=1047;
UPDATE item_enchantment_template SET chance = 7.05 * 100 / (100 - 29.33) WHERE entry=1048;
UPDATE item_enchantment_template SET chance = 4 * 100 / (100 - 29.76) WHERE entry=1049;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 26.4) WHERE entry=1050;
UPDATE item_enchantment_template SET chance = 4.33 * 100 / (100 - 26.87) WHERE entry=1051;
UPDATE item_enchantment_template SET chance = 4.38 * 100 / (100 - 26.18) WHERE entry=1052;
UPDATE item_enchantment_template SET chance = 7.67 * 100 / (100 - 26.57) WHERE entry=1053;
UPDATE item_enchantment_template SET chance = 7.15 * 100 / (100 - 26.95) WHERE entry=1054;
UPDATE item_enchantment_template SET chance = 7.27 * 100 / (100 - 27.56) WHERE entry=1055;
UPDATE item_enchantment_template SET chance = 3.5 * 100 / (100 - 23.84) WHERE entry=1056;
UPDATE item_enchantment_template SET chance = 3.33 * 100 / (100 - 25.74) WHERE entry=1057;
UPDATE item_enchantment_template SET chance = 3.9 * 100 / (100 - 25.5) WHERE entry=1058;
UPDATE item_enchantment_template SET chance = 5.7 * 100 / (100 - 28.99) WHERE entry=1059;
UPDATE item_enchantment_template SET chance = 3.7 * 100 / (100 - 7.6) WHERE entry=1064;
UPDATE item_enchantment_template SET chance = 3.45 * 100 / (100 - 8) WHERE entry=1065;
UPDATE item_enchantment_template SET chance = 3.5 * 100 / (100 - 7.66) WHERE entry=1066;
UPDATE item_enchantment_template SET chance = 3.1 * 100 / (100 - 8.1) WHERE entry=1067;
UPDATE item_enchantment_template SET chance = 7.05 * 100 / (100 - 7.52) WHERE entry=1068;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 9.43) WHERE entry=1069;
UPDATE item_enchantment_template SET chance = 3.63 * 100 / (100 - 7.06) WHERE entry=1070;
UPDATE item_enchantment_template SET chance = 4.75 * 100 / (100 - 5.2) WHERE entry=1071;
UPDATE item_enchantment_template SET chance = 4.12 * 100 / (100 - 7.16) WHERE entry=1072;
UPDATE item_enchantment_template SET chance = 3.75 * 100 / (100 - 6.02) WHERE entry=1073;
UPDATE item_enchantment_template SET chance = 6.67 * 100 / (100 - 6.07) WHERE entry=1074;
UPDATE item_enchantment_template SET chance = 6.7 * 100 / (100 - 5.93) WHERE entry=1075;
UPDATE item_enchantment_template SET chance = 8 * 100 / (100 - 5.4) WHERE entry=1076;
UPDATE item_enchantment_template SET chance = 4.33 * 100 / (100 - 5.54) WHERE entry=1077;
UPDATE item_enchantment_template SET chance = 4.92 * 100 / (100 - 5.96) WHERE entry=1078;
UPDATE item_enchantment_template SET chance = 5.07 * 100 / (100 - 5.87) WHERE entry=1079;
UPDATE item_enchantment_template SET chance = 9 * 100 / (100 - 5.8) WHERE entry=1080;
UPDATE item_enchantment_template SET chance = 4.2 * 100 / (100 - 1.06) WHERE entry=1085;
UPDATE item_enchantment_template SET chance = 3.23 * 100 / (100 - 0.8) WHERE entry=1086;
UPDATE item_enchantment_template SET chance = 4.9 * 100 / (100 - 0.7) WHERE entry=1087;
UPDATE item_enchantment_template SET chance = 4.45 * 100 / (100 - 0.86) WHERE entry=1088;
UPDATE item_enchantment_template SET chance = 9.83 * 100 / (100 - 0.5) WHERE entry=1089;
UPDATE item_enchantment_template SET chance = 10.67 * 100 / (100 - 0.43) WHERE entry=1090;
UPDATE item_enchantment_template SET chance = 5.47 * 100 / (100 - 0.56) WHERE entry=1091;
UPDATE item_enchantment_template SET chance = 5.19 * 100 / (100 - 0.46) WHERE entry=1092;
UPDATE item_enchantment_template SET chance = 5.83 * 100 / (100 - 0.5) WHERE entry=1093;
UPDATE item_enchantment_template SET chance = 2.76 * 100 / (100 - 5.9) WHERE entry=1094;
UPDATE item_enchantment_template SET chance = 4.7 * 100 / (100 - 6.55) WHERE entry=1095;
UPDATE item_enchantment_template SET chance = 5.5 * 100 / (100 - 5.95) WHERE entry=1096;
UPDATE item_enchantment_template SET chance = 4.88 * 100 / (100 - 6.05) WHERE entry=1097;
UPDATE item_enchantment_template SET chance = 2.3 * 100 / (100 - 6.1) WHERE entry=1098;
UPDATE item_enchantment_template SET chance = 2.85 * 100 / (100 - 6.6) WHERE entry=1099;
UPDATE item_enchantment_template SET chance = 3.1 * 100 / (100 - 5.52) WHERE entry=1100;
UPDATE item_enchantment_template SET chance = 6.8 * 100 / (100 - 5.13) WHERE entry=1101;
UPDATE item_enchantment_template SET chance = 4.93 * 100 / (100 - 0.56) WHERE entry=1115;
UPDATE item_enchantment_template SET chance = 10.17 * 100 / (100 - 0.67) WHERE entry=1116;
UPDATE item_enchantment_template SET chance = 9.4 * 100 / (100 - 0.45) WHERE entry=1117;
UPDATE item_enchantment_template SET chance = 10.35 * 100 / (100 - 0.63) WHERE entry=1118;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 0.7) WHERE entry=1119;
UPDATE item_enchantment_template SET chance = 4.42 * 100 / (100 - 0.46) WHERE entry=1120;
UPDATE item_enchantment_template SET chance = 3.85 * 100 / (100 - 0.76) WHERE entry=1121;
UPDATE item_enchantment_template SET chance = 8.5 * 100 / (100 - 0.6) WHERE entry=1122;
UPDATE item_enchantment_template SET chance = 4.63 * 100 / (100 - 15.84) WHERE entry=1131;
UPDATE item_enchantment_template SET chance = 9.23 * 100 / (100 - 15.07) WHERE entry=1132;
UPDATE item_enchantment_template SET chance = 11.1 * 100 / (100 - 12.45) WHERE entry=1133;
UPDATE item_enchantment_template SET chance = 5.57 * 100 / (100 - 11.6) WHERE entry=1134;
UPDATE item_enchantment_template SET chance = 4.25 * 100 / (100 - 12.36) WHERE entry=1135;
UPDATE item_enchantment_template SET chance = 4.07 * 100 / (100 - 14.4) WHERE entry=1136;
UPDATE item_enchantment_template SET chance = 3.82 * 100 / (100 - 13.3) WHERE entry=1137;
UPDATE item_enchantment_template SET chance = 3.58 * 100 / (100 - 15.3) WHERE entry=1138;
UPDATE item_enchantment_template SET chance = 3.58 * 100 / (100 - 16.15) WHERE entry=1139;
UPDATE item_enchantment_template SET chance = 6.3 * 100 / (100 - 25.8) WHERE entry=1140;
UPDATE item_enchantment_template SET chance = 6 * 100 / (100 - 27.3) WHERE entry=1141;
UPDATE item_enchantment_template SET chance = 3.48 * 100 / (100 - 26.44) WHERE entry=1142;
UPDATE item_enchantment_template SET chance = 2.4 * 100 / (100 - 25.91) WHERE entry=1143;
UPDATE item_enchantment_template SET chance = 5.05 * 100 / (100 - 3) WHERE entry=1152;
UPDATE item_enchantment_template SET chance = 6.77 * 100 / (100 - 3.73) WHERE entry=1153;
UPDATE item_enchantment_template SET chance = 6.37 * 100 / (100 - 3.2) WHERE entry=1154;
UPDATE item_enchantment_template SET chance = 3.43 * 100 / (100 - 2.86) WHERE entry=1155;
UPDATE item_enchantment_template SET chance = 2.98 * 100 / (100 - 2.9) WHERE entry=1156;
UPDATE item_enchantment_template SET chance = 3.64 * 100 / (100 - 2.64) WHERE entry=1157;
UPDATE item_enchantment_template SET chance = 3.1 * 100 / (100 - 2.56) WHERE entry=1158;
UPDATE item_enchantment_template SET chance = 2.68 * 100 / (100 - 3.1) WHERE entry=1159;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 2.66) WHERE entry=1160;
UPDATE item_enchantment_template SET chance = 8.65 * 100 / (100 - 6.75) WHERE entry=1161;
UPDATE item_enchantment_template SET chance = 9.2 * 100 / (100 - 5.95) WHERE entry=1162;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.56) WHERE entry=1163;
UPDATE item_enchantment_template SET chance = 3.82 * 100 / (100 - 4.8) WHERE entry=1164;
UPDATE item_enchantment_template SET chance = 2.68 * 100 / (100 - 3.1) WHERE entry=1178;
UPDATE item_enchantment_template SET chance = 2.03 * 100 / (100 - 3.44) WHERE entry=1179;
UPDATE item_enchantment_template SET chance = 1.9 * 100 / (100 - 3.2) WHERE entry=1180;
UPDATE item_enchantment_template SET chance = 1.73 * 100 / (100 - 3.64) WHERE entry=1181;
UPDATE item_enchantment_template SET chance = 5.17 * 100 / (100 - 8.23) WHERE entry=1182;
UPDATE item_enchantment_template SET chance = 4.3 * 100 / (100 - 8) WHERE entry=1183;
UPDATE item_enchantment_template SET chance = 2.43 * 100 / (100 - 8) WHERE entry=1184;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 5.5) WHERE entry=1185;
UPDATE item_enchantment_template SET chance = 3.85 * 100 / (100 - 24.8) WHERE entry=1996;
UPDATE item_enchantment_template SET chance = 5.3 * 100 / (100 - 0.1) WHERE entry=1998;
UPDATE item_enchantment_template SET chance = 3.65 * 100 / (100 - 21.9) WHERE entry=2002;
UPDATE item_enchantment_template SET chance = 3.82 * 100 / (100 - 21.38) WHERE entry=2008;
UPDATE item_enchantment_template SET chance = 7.47 * 100 / (100 - 21.27) WHERE entry=2014;
UPDATE item_enchantment_template SET chance = 7.52 * 100 / (100 - 20.83) WHERE entry=2020;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=2022;
UPDATE item_enchantment_template SET chance = 3.63 * 100 / (100 - 21.83) WHERE entry=2026;
UPDATE item_enchantment_template SET chance = 3.63 * 100 / (100 - 20.04) WHERE entry=2032;
UPDATE item_enchantment_template SET chance = 3.55 * 100 / (100 - 20.88) WHERE entry=2038;
UPDATE item_enchantment_template SET chance = 3.59 * 100 / (100 - 20.6) WHERE entry=2044;
UPDATE item_enchantment_template SET chance = 6.73 * 100 / (100 - 20.7) WHERE entry=2050;
UPDATE item_enchantment_template SET chance = 7.04 * 100 / (100 - 19.8) WHERE entry=2056;
UPDATE item_enchantment_template SET chance = 6.87 * 100 / (100 - 20.14) WHERE entry=2062;
UPDATE item_enchantment_template SET chance = 9.98 * 100 / (100 - 0.1) WHERE entry=2064;
UPDATE item_enchantment_template SET chance = 3.58 * 100 / (100 - 18.52) WHERE entry=2068;
UPDATE item_enchantment_template SET chance = 3.75 * 100 / (100 - 20.52) WHERE entry=2074;
UPDATE item_enchantment_template SET chance = 3.65 * 100 / (100 - 19.83) WHERE entry=2080;
UPDATE item_enchantment_template SET chance = 3.55 * 100 / (100 - 0.3) WHERE entry=2084;
UPDATE item_enchantment_template SET chance = 7.88 * 100 / (100 - 27.1) WHERE entry=2086;
UPDATE item_enchantment_template SET chance = 7.1 * 100 / (100 - 0.2) WHERE entry=2090;
UPDATE item_enchantment_template SET chance = 7.73 * 100 / (100 - 27.46) WHERE entry=2092;
UPDATE item_enchantment_template SET chance = 6.55 * 100 / (100 - 0.4) WHERE entry=2094;
UPDATE item_enchantment_template SET chance = 6.05 * 100 / (100 - 0.2) WHERE entry=2134;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.2) WHERE entry=3255;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.3) WHERE entry=3272;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 0.1) WHERE entry=3281;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=3289;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.2) WHERE entry=3309;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.3) WHERE entry=3310;
UPDATE item_enchantment_template SET chance = 3.65 * 100 / (100 - 0.2) WHERE entry=3461;
UPDATE item_enchantment_template SET chance = 1.25 * 100 / (100 - 0.4) WHERE entry=3462;
UPDATE item_enchantment_template SET chance = 5.75 * 100 / (100 - 0.1) WHERE entry=3548;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.7) WHERE entry=5168;
UPDATE item_enchantment_template SET chance = 28.3 * 100 / (100 - 0.4) WHERE entry=5169;
UPDATE item_enchantment_template SET chance = 15.4 * 100 / (100 - 34.09) WHERE entry=5170;
UPDATE item_enchantment_template SET chance = 9.33 * 100 / (100 - 36.13) WHERE entry=5171;
UPDATE item_enchantment_template SET chance = 1.48 * 100 / (100 - 0.2) WHERE entry=5173;
UPDATE item_enchantment_template SET chance = 3.05 * 100 / (100 - 0.3) WHERE entry=5174;
UPDATE item_enchantment_template SET chance = 3.08 * 100 / (100 - 0.1) WHERE entry=5175;
UPDATE item_enchantment_template SET chance = 2.2 * 100 / (100 - 24.2) WHERE entry=5176;
UPDATE item_enchantment_template SET chance = 29.32 * 100 / (100 - 0.3) WHERE entry=5177;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 32.5) WHERE entry=5179;
UPDATE item_enchantment_template SET chance = 10.4 * 100 / (100 - 33.6) WHERE entry=5180;
UPDATE item_enchantment_template SET chance = 1.22 * 100 / (100 - 0.3) WHERE entry=5183;
UPDATE item_enchantment_template SET chance = 9.35 * 100 / (100 - 31.87) WHERE entry=5188;
UPDATE item_enchantment_template SET chance = 4.45 * 100 / (100 - 36.37) WHERE entry=5189;
UPDATE item_enchantment_template SET chance = 1.45 * 100 / (100 - 23.94) WHERE entry=5194;
UPDATE item_enchantment_template SET chance = 2.9 * 100 / (100 - 0.5) WHERE entry=5196;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 15.53) WHERE entry=5197;
UPDATE item_enchantment_template SET chance = 2.7 * 100 / (100 - 0.2) WHERE entry=5201;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 16.1) WHERE entry=5206;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 22) WHERE entry=5207;
UPDATE item_enchantment_template SET chance = 3.8 * 100 / (100 - 0.1) WHERE entry=5211;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 21.57) WHERE entry=5212;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 22.65) WHERE entry=5216;
UPDATE item_enchantment_template SET chance = 2.35 * 100 / (100 - 0.1) WHERE entry=5218;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.2) WHERE entry=5219;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 22.84) WHERE entry=5221;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 15.09) WHERE entry=5224;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.52) WHERE entry=5232;
UPDATE item_enchantment_template SET chance = 1.7 * 100 / (100 - 17.92) WHERE entry=5234;
UPDATE item_enchantment_template SET chance = 2.35 * 100 / (100 - 0.2) WHERE entry=5236;
UPDATE item_enchantment_template SET chance = 0.03 * 100 / (100 - 0.47) WHERE entry=5238;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 22.44) WHERE entry=5239;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.6) WHERE entry=5240;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.52) WHERE entry=5241;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 15.58) WHERE entry=5242;
UPDATE item_enchantment_template SET chance = 4.5 * 100 / (100 - 16.12) WHERE entry=5251;
UPDATE item_enchantment_template SET chance = 3.5 * 100 / (100 - 19.01) WHERE entry=5252;
UPDATE item_enchantment_template SET chance = 3.8 * 100 / (100 - 17.02) WHERE entry=5253;
UPDATE item_enchantment_template SET chance = 2.3 * 100 / (100 - 0.38) WHERE entry=5254;
UPDATE item_enchantment_template SET chance = 1.7 * 100 / (100 - 0.3) WHERE entry=5255;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 23.86) WHERE entry=5257;
UPDATE item_enchantment_template SET chance = 1.7 * 100 / (100 - 18.5) WHERE entry=5261;
UPDATE item_enchantment_template SET chance = 3.8 * 100 / (100 - 16.9) WHERE entry=5262;
UPDATE item_enchantment_template SET chance = 1.53 * 100 / (100 - 23.1) WHERE entry=5266;
UPDATE item_enchantment_template SET chance = 4.23 * 100 / (100 - 0.1) WHERE entry=5268;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 14.8) WHERE entry=5269;
UPDATE item_enchantment_template SET chance = 3.5 * 100 / (100 - 18.5) WHERE entry=5270;
UPDATE item_enchantment_template SET chance = 3.05 * 100 / (100 - 0.3) WHERE entry=5274;
UPDATE item_enchantment_template SET chance = 4.7 * 100 / (100 - 14.3) WHERE entry=5278;
UPDATE item_enchantment_template SET chance = 3.3 * 100 / (100 - 18.2) WHERE entry=5279;
UPDATE item_enchantment_template SET chance = 2.1 * 100 / (100 - 16.45) WHERE entry=5280;
UPDATE item_enchantment_template SET chance = 3.45 * 100 / (100 - 0.1) WHERE entry=5282;
UPDATE item_enchantment_template SET chance = 2.3 * 100 / (100 - 31.1) WHERE entry=5287;
UPDATE item_enchantment_template SET chance = 4.1 * 100 / (100 - 16.69) WHERE entry=5289;
UPDATE item_enchantment_template SET chance = 2.32 * 100 / (100 - 24.85) WHERE entry=5293;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 15.72) WHERE entry=5296;
UPDATE item_enchantment_template SET chance = 2.75 * 100 / (100 - 18.56) WHERE entry=5298;
UPDATE item_enchantment_template SET chance = 3.15 * 100 / (100 - 0.1) WHERE entry=5301;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=5303;
UPDATE item_enchantment_template SET chance = 4.8 * 100 / (100 - 20) WHERE entry=5307;
UPDATE item_enchantment_template SET chance = 3.2 * 100 / (100 - 0.1) WHERE entry=5309;
UPDATE item_enchantment_template SET chance = 2.18 * 100 / (100 - 25.82) WHERE entry=5311;
UPDATE item_enchantment_template SET chance = 2.6 * 100 / (100 - 0.2) WHERE entry=5312;
UPDATE item_enchantment_template SET chance = 3 * 100 / (100 - 0.1) WHERE entry=5313;
UPDATE item_enchantment_template SET chance = 2.55 * 100 / (100 - 17.18) WHERE entry=5315;
UPDATE item_enchantment_template SET chance = 3.55 * 100 / (100 - 0.1) WHERE entry=5317;
UPDATE item_enchantment_template SET chance = 3.02 * 100 / (100 - 0.2) WHERE entry=5319;
UPDATE item_enchantment_template SET chance = 3.7 * 100 / (100 - 13.8) WHERE entry=5324;
UPDATE item_enchantment_template SET chance = 5.7 * 100 / (100 - 20.5) WHERE entry=5850;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=5852;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.12) WHERE entry=5853;
UPDATE item_enchantment_template SET chance = 0.1 * 100 / (100 - 0.1) WHERE entry=5859;
UPDATE item_enchantment_template SET chance = 3.58 * 100 / (100 - 23.14) WHERE entry=6272;
UPDATE item_enchantment_template SET chance = 7.8 * 100 / (100 - 26.55) WHERE entry=6273;
UPDATE item_enchantment_template SET chance = 9.1 * 100 / (100 - 0.1) WHERE entry=6278;
UPDATE item_enchantment_template SET chance = 4.7 * 100 / (100 - 0.1) WHERE entry=6279;
REPLACE INTO item_enchantment_template VALUES
(8652, 341, 10), -- Pre-1.04 Green Lens (Clank)
(8652, 342, 10),
(8652, 392, 10),
(8652, 393, 10),
(8652, 798, 10),
(8652, 799, 10),
(8652, 881, 10),
(8652, 882, 10),
(8652, 1052, 10),
(8652, 1053, 10);
DELETE FROM item_enchantment_template WHERE ench IN (1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828, 1829, 1830, 1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1906, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1918, 1919, 1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 39, 40, 41, 42, 43, 44, 45, 46, 47, 52, 53, 54, 56, 57, 58, 59, 60, 63, 66, 67, 68, 69, 70, 71, 72, 73, 75, 81, 82, 83, 84, 85, 86, 87, 88, 90, 100, 101, 102, 103, 104, 105, 106, 107, 109, 120, 121, 122, 123, 124, 125, 126, 127, 129, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148) AND entry NOT IN (8652);

			
-- * FORBIDDEN SPELLS		 	

REPLACE INTO `spell_disabled` VALUE 
(24800),    -- [Food] / Restores 2148 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Strength for 15 min. 
(24801),    -- [Smoked Desert Dumplings] / Effect #1(24) Create Item: 3 sec cast | Reagents: Sandworm Meat, Soothing Spices
(25117),    -- [Minor Wizard Oil] / Effect #1(54) Enchant Item Temporary (2623): 3 sec cast | While applied to target weapon it increases spell damage by up to 8. Lasts for 30 minutes.
(25118),    -- [Minor Mana Oil] / Effect #1(54) Enchant Item Temporary (2624): 3 sec cast | While applied to target weapon it restores 4 mana to the caster every 5 seconds. Lasts for 30 minutes.
(25119),    -- [Lesser Wizard Oil] / Effect #1(54) Enchant Item Temporary (2626): 3 sec cast | While applied to target weapon it increases spell damage by up to 16. Lasts for 30 minutes.
(25120),    -- [Lesser Mana Oil} / Effect #1(54) Enchant Item Temporary (2625): 3 sec cast | While applied to target weapon it restores 8 mana to the caster every 5 seconds. Lasts for 30 minutes.
(25123),    -- [Brilliant Mana Oil] / Effect #1(54) Enchant Item Temporary (2629): 3 sec cast | While applied to target weapon it restores 12 mana to the caster every 5 seconds and increases the effect of healing spells by up to 25. Lasts for 30 minutes.
(25122),    -- [Brilliant Wizard Oil] / Effect #1(54) Enchant Item Temporary (2628): 3 sec cast | While applied to target weapon it increases spell damage by up to 36 and increases Spell Critical chance by 1% . Lasts for 30 minutes.
(25121),    -- [Wizard Oil] / Effect #1(54) Enchant Item Temporary (2627): 3 sec cast | While applied to target weapon it increases spell damage by up to 24. Lasts for 30 minutes
(25660),    -- [Food] / Restores 2550 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 25 Stamina for 15 min.
(25704),    -- [Smoked Sagefish] / Effect #1(24) Create Item: 3 sec cast | Reagents: Raw Sagefish, Mild Spices
(25722),    -- [Rumsey Rum Dark] / Effect #1(6) Apply Aura #29: Mod Stat (2): 1 sec cast | Increases Stamina by 10 for 15 min and gets you drunk to boot!
(25804),    -- [Rumsey Rum Black Label] / Effect #1(6) Apply Aura #29: Mod Stat (2): 1 sec cast| Increases Stamina by 15 for 15 min and gets you drunk to boot!
(25691),    -- [Brain Food] / Restores 0 health and 0 mana over 21 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 6 Mana every 5 seconds for 15 min.
(26276),    -- [Greater Firepower] / Effect #1(6) Apply Aura #13: Mod Damage Done (4): Instant | Increases spell fire damage by up to 40 for 30 min.
(26278),    -- [Recipe: Elixir of Greater Firepower] / Effect #1(36) Learn Spell: 100 yd range | 3 sec cast | Teaches you how to make an Elixir of Greater Firepower.
(26277),    -- [Elixir of Greater Firepower] / Effect #1(24) Create Item: 3 sec cast | Reagents: Fire Oil (3), Firebloom (3), Crystal Vial
(23214),    -- [Summon Charger] / Effect #1(6) Apply Aura #78: Mounted (14565) | 3 sec cast | Summons a Charger, which serves as a mount. Speed is increased by 100%.
(23161);    -- [Summon Dreadsteed] / Effect #1(6) Apply Aura #78: Mounted (14505) | 3 sec cast | Summons a Dreadsteed, which serves as a mount for the caster. Speed is increased by 100%.

-- * SPELLS

-- Zanza's Potent Potables
REPLACE INTO `spell_mod` (`Id`, `AttributesEx3`, `Comment`) VALUE 
(24382, 1048576, 'Spirit of Zanza - persist through death (before 1.12)'),
(24417, 1048576, 'Sheen of Zanza - persist through death (before 1.12)'),
(24383, 1048576, 'Swiftness of Zanza - persist through death (before 1.12)');

-- * FORBIDDEN GAMEOBJECTS

UPDATE `gameobject` SET `spawnFlags` =`spawnFlags` | 2 WHERE `id` IN (
181083,    -- Sothos and Jarien's Heirlooms
179674,    -- Bell of Dethmoora
179673,    -- Doomsday Candle
179672     -- Wheel of the Black March
);

-- * CLEANUP TOOLS

DELETE FROM creature_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM reference_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM disenchant_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM fishing_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM gameobject_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM item_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM mail_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM pickpocketing_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM skinning_loot_template WHERE item IN (SELECT * FROM `forbidden_items`);
DELETE FROM npc_vendor WHERE item IN (SELECT * FROM `forbidden_items`);

REPLACE INTO `forbidden_quests` (SELECT `entry` FROM `quest_template` 
    WHERE 
        `ReqItemId1` IN (SELECT * FROM `forbidden_items`) OR
        `ReqItemId2` IN (SELECT * FROM `forbidden_items`) OR
        `ReqItemId3` IN (SELECT * FROM `forbidden_items`) OR
        `ReqItemId4` IN (SELECT * FROM `forbidden_items`) OR
        `RewChoiceItemId1` IN (SELECT * FROM `forbidden_items`) OR
        `RewChoiceItemId2` IN (SELECT * FROM `forbidden_items`) OR 
        `RewChoiceItemId3` IN (SELECT * FROM `forbidden_items`) OR
        `RewChoiceItemId4` IN (SELECT * FROM `forbidden_items`) OR
        `RewChoiceItemId5` IN (SELECT * FROM `forbidden_items`) OR
        `RewChoiceItemId6` IN (SELECT * FROM `forbidden_items`) OR
        `RewItemId1` IN (SELECT * FROM `forbidden_items`) OR
        `RewItemId2` IN (SELECT * FROM `forbidden_items`) OR
        `RewItemId3` IN (SELECT * FROM `forbidden_items`) OR
        `RewItemId4` IN (SELECT * FROM `forbidden_items`));
		
UPDATE `quest_template` SET `Method` = (`Method` | 1) WHERE `entry` IN (SELECT * FROM `forbidden_quests`);

UPDATE `creature` SET `spawnFlags` = (`spawnFlags` | 2) WHERE id IN (SELECT * FROM forbidden_creatures);

UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `target_map` IN (SELECT * FROM forbidden_instances);

UPDATE `game_event` SET `disabled` = (`disabled` | 1) WHERE entry IN (SELECT * FROM forbidden_events);

-- TODO: Would be nice to have something like `DropDisable` field aka LootMode of TrinityCore to avoid any deletions from *loot_templates: A special parameter used for separating conditional loot, such as Hard Mode loot. A lootmode of 0 will effectively disable a loot entry (its roll will always fail). This column is a bitmask, so you shouldn't duplicate loot across lootmodes. The active lootmode(s) can be changed at any time by the core. This column should only be used if required, in most cases it should be left as 1. Valid lootmodes include: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 16384, 32768.
-- https://trinitycore.atlassian.net/wiki/display/tc/loot_template#loot_template-ChanceOrQuestChance

