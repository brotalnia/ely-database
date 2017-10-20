-- 1.5 → 1.6 | Assault on Blackwing Lair

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

UPDATE `areatrigger_teleport` SET `required_level` = 60 WHERE `target_map` = 469; -- Blackwing Lair 1.6

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
19019, -- Thunderfury, Blessed Blade of the Windseeker | Quest not completable before 1.6
19043, -- Heavy Timbermaw Belt | Timbermaw rewards added (see retail patch notes)
19044, -- Might of the Timbermaw | Timbermaw rewards added (see retail patch notes)
19047, -- Wisdom of the Timbermaw | Timbermaw rewards added (see retail patch notes)
19048, -- Heavy Timbermaw Boots | Timbermaw rewards added (see retail patch notes)
19049, -- Timbermaw Brawlers | Timbermaw rewards added (see retail patch notes)
19050, -- Mantle of the Timbermaw | Timbermaw rewards added (see retail patch notes)
19051, -- Girdle of the Dawn | Argent dawn patterns added (see 1.6 retail patch notes)
19052, -- Dawn Treaders | Argent dawn patterns added (see 1.6 retail patch notes)
19056, -- Argent Boots | Argent dawn patterns added (see 1.6 retail patch notes)
19057, -- Gloves of the Dawn | Argent dawn patterns added (see 1.6 retail patch notes)
19058, -- Golden Mantle of the Dawn | Argent dawn patterns added (see 1.6 retail patch notes)
19059, -- Argent Shoulders | Argent dawn patterns added (see 1.6 retail patch notes)
19148, -- Dark Iron Helm | See retail 1.6 patch notes
19149, -- Lava Belt | See retail 1.6 patch notes
19156, -- Flarecore Robe | See retail 1.6 patch notes
19157, -- Chromatic Gauntlets | New patterns available in 1.6
19162, -- Corehound Belt | See retail 1.6 patch notes
19163, -- Molten Belt | See retail 1.6 patch notes
19164, -- Dark Iron Gauntlets | 1.6 Retail Patch Notes
19165, -- Flarecore Leggings | 1.6 Retail Patch Notes
19166, -- Black Amnesty | 1.6 Retail Patch Notes
19167, -- Blackfury | 1.6 Retail Patch Notes
19168, -- Blackguard | 1.6 Retail Patch Notes
19169, -- Nightfall | 1.6 Retail Patch Notes
19170, -- Ebon Hand | 1.6 Retail Patch Notes
19202, -- Plans: Heavy Timbermaw Belt | 1.6 Retail Patch Notes
19203, -- Plans: Girdle of the Dawn | 1.6 Retail Patch Notes
19204, -- Plans: Heavy Timbermaw Boots | 1.6 Retail Patch Notes
19205, -- Plans: Gloves of the Dawn | 1.6 Retail Patch Notes
19206, -- Plans: Dark Iron Helm | 1.6 Retail Patch Notes
19207, -- Plans: Dark Iron Gauntlets | 1.6 Retail Patch Notes
19208, -- Plans: Black Amnesty | 1.6 Retail Patch Notes
19209, -- Plans: Blackfury | 1.6 Retail Patch Notes
19210, -- Plans: Ebon Hand | 1.6 Retail Patch Notes
19211, -- Plans: Blackguard | 1.6 Retail Patch Notes
19212, -- Plans: Nightfall | 1.6 Retail Patch Notes
19215, -- Pattern: Wisdom of the Timbermaw | 1.6 Retail Patch Notes
19216, -- Pattern: Argent Boots | 1.6 Retail Patch Notes
19217, -- Pattern: Argent Shoulders | 1.6 Retail Patch Notes
19218, -- Pattern: Mantle of the Timbermaw | 1.6 Retail Patch Notes
19219, -- Pattern: Flarecore Robe | 1.6 Retail Patch Notes
19220, -- Pattern: Flarecore Leggings | 1.6 Retail Patch Notes
19287, -- Darkmoon Card: Heroism | 1.6 Retail Patch Notes (Darkmoon Faire)
19288, -- Darkmoon Card: Blue Dragon | 1.6 Retail Patch Notes (Darkmoon Faire)
19289, -- Darkmoon Card: Maelstrom | 1.6 Retail Patch Notes (Darkmoon Faire)
19290, -- Darkmoon Card: Twisting Nether | 1.6 Retail Patch Notes (Darkmoon Faire)
19292, -- Last Month's Mutton | 1.6 Retail Patch Notes (Darkmoon Faire)
19293, -- Last Year's Mutton | 1.6 Retail Patch Notes (Darkmoon Faire)
19295, -- Darkmoon Flower | 1.6 Retail Patch Notes (Darkmoon Faire)
19302, -- Darkmoon Ring | 1.6 Retail Patch Notes (Darkmoon Faire)
19303, -- Darkmoon Necklace | 1.6 Retail Patch Notes (Darkmoon Faire)
19326, -- Pattern: Might of the Timbermaw | 1.6 Retail Patch Notes
19327, -- Pattern: Timbermaw Brawlers | 1.6 Retail Patch Notes
19328, -- Pattern: Dawn Treaders | 1.6 Retail Patch Notes
19329, -- Pattern: Golden Mantle of the Dawn | 1.6 Retail Patch Notes
19330, -- Pattern: Lava Belt | 1.6 Retail Patch Notes
19331, -- Pattern: Chromatic Gauntlets | 1.6 Retail Patch Notes
19332, -- Pattern: Corehound Belt | 1.6 Retail Patch Notes
19333, -- Pattern: Molten Belt | 1.6 Retail Patch Notes
19334, -- The Untamed Blade | BWL Loot
19335, -- Spineshatter | BWL Loot
19336, -- Arcane Infused Gem | BWL Loot
19337, -- The Black Book | BWL Loot
19339, -- Mind Quickening Gem | BWL Loot
19340, -- Rune of Metamorphosis | BWL Loot
19341, -- Lifegiving Gem | BWL Loot
19342, -- Venomous Totem | BWL Loot
19343, -- Scrolls of Blinding Light | BWL Loot
19344, -- Natural Alignment Crystal | BWL Loot
19345, -- Aegis of Preservation | BWL Loot
19346, -- Dragonfang Blade | BWL Loot
19347, -- Claw of Chromaggus | BWL Loot
19348, -- Red Dragonscale Protector | BWL Loot
19349, -- Elementium Reinforced Bulwark | BWL Loot
19350, -- Heartstriker | BWL Loot
19351, -- Maladath, Runed Blade of the Black Flight | BWL Loot
19352, -- Chromatically Tempered Sword | BWL Loot
19353, -- Drake Talon Cleaver | BWL Loot
19354, -- Draconic Avenger | BWL Loot
19355, -- Shadow Wing Focus Staff | BWL Loot
19356, -- Staff of the Shadow Flame | BWL Loot
19357, -- Herald of Woe | BWL Loot
19358, -- Draconic Maul | BWL Loot
19360, -- Lok'amir il Romathis | BWL Loot
19361, -- Ashjre'thul, Crossbow of Smiting | BWL Loot
19362, -- Doom's Edge | BWL Loot
19363, -- Crul'shorukh, Edge of Chaos | BWL Loot
19364, -- Ashkandi, Greatsword of the Brotherhood | BWL Loot
19365, -- Claw of the Black Drake | BWL Loot
19366, -- Master Dragonslayer's Orb | BWL Loot
19367, -- Dragon's Touch | BWL Loot
19368, -- Dragonbreath Hand Cannon | BWL Loot
19369, -- Gloves of Rapid Evolution | BWL Loot
19370, -- Mantle of the Blackwing Cabal | BWL Loot
19371, -- Pendant of the Fallen Dragon | BWL Loot
19372, -- Helm of Endless Rage | BWL Loot
19373, -- Black Brood Pauldrons | BWL Loot
19374, -- Bracers of Arcane Accuracy | BWL Loot
19375, -- Mish'undare, Circlet of the Mind Flayer | BWL Loot
19376, -- Archimtiros' Ring of Reckoning | BWL Loot
19377, -- Prestor's Talisman of Connivery | BWL Loot
19378, -- Cloak of the Brood Lord | BWL Loot
19379, -- Neltharion's Tear | BWL Loot
19380, -- Therazane's Link | BWL Loot
19381, -- Boots of the Shadow Flame | BWL Loot
19382, -- Pure Elementium Band | BWL Loot
19383, -- Master Dragonslayer's Medallion | BWL Loot
19384, -- Master Dragonslayer's Ring | BWL Loot
19385, -- Empowered Leggings | BWL Loot
19386, -- Elementium Threaded Cloak | BWL Loot
19387, -- Chromatic Boots | BWL Loot
19388, -- Angelista's Grasp | BWL Loot
19389, -- Taut Dragonhide Shoulderpads | BWL Loot
19390, -- Taut Dragonhide Gloves | BWL Loot
19391, -- Shimmering Geta | BWL Loot
19392, -- Girdle of the Fallen Crusader | BWL Loot
19393, -- Primalist's Linked Waistguard | BWL Loot
19394, -- Drake Talon Pauldrons | BWL Loot
19395, -- Rejuvenating Gem | BWL Loot
19396, -- Taut Dragonhide Belt | BWL Loot
19397, -- Ring of Blackrock | BWL Loot
19398, -- Cloak of Firemaw | BWL Loot
19399, -- Black Ash Robe | BWL Loot
19400, -- Firemaw's Clutch | BWL Loot
19401, -- Primalist's Linked Legguards | BWL Loot
19402, -- Legguards of the Fallen Crusader | BWL Loot
19403, -- Band of Forced Concentration | BWL Loot
19405, -- Malfurion's Blessed Bulwark | BWL Loot
19406, -- Drake Fang Talisman | BWL Loot
19407, -- Ebony Flame Gloves | BWL Loot
19426, -- Orb of the Darkmoon | Darkmoon Faire (Patch 1.6)
19430, -- Shroud of Pure Thought | BWL Loot
19431, -- Styleen's Impeding Scarab | BWL Loot
19432, -- Circle of Applied Force | BWL Loot
19433, -- Emberweave Leggings | BWL Loot
19434, -- Band of Dark Dominion | BWL Loot
19435, -- Essence Gatherer | BWL Loot
19436, -- Cloak of Draconic Might | BWL Loot
19437, -- Boots of Pure Thought | BWL Loot
19438, -- Ringo's Blizzard Boots | BWL Loot
19439, -- Interlaced Shadow Jerkin | BWL Loot
19442, -- Formula: Powerful Anti-Venom | 1.6 patch notes (new patterns added)
19444, -- Formula: Enchant Weapon - Strength | 1.6 patch notes (new patterns added)
19445, -- Formula: Enchant Weapon - Agility | 1.6 patch notes (new patterns added)
19446, -- Formula: Enchant Bracer - Mana Regeneration | 1.6 patch notes (new patterns added)
19447, -- Formula: Enchant Bracer - Healing | 1.6 patch notes (new patterns added)
19448, -- Formula: Enchant Weapon - Mighty Spirit | 1.6 patch notes (new patterns added)
19449, -- Formula: Enchant Weapon - Mighty Intellect | 1.6 patch notes (new patterns added)
19491, -- Amulet of the Darkmoon | 1.6 patch notes (darkmoon faire)
19505, -- Warsong Battle Tabard | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19506, -- Silverwing Battle Tabard | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19507, -- Inquisitor's Shawl | New loot added to Fairbanks (Allakhazam & inference dating)
19508, -- Branded Leather Bracers | New loot added to Fairbanks (Allakhazam & inference dating)
19509, -- Dusty Mail Boots | New loot added to Fairbanks (Allakhazam & inference dating)
19510, -- Legionnaire's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19511, -- Legionnaire's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19512, -- Legionnaire's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19513, -- Legionnaire's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19514, -- Protector's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19515, -- Protector's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19516, -- Protector's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19517, -- Protector's Band | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19518, -- Advisor's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19519, -- Advisor's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19520, -- Advisor's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19521, -- Advisor's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19522, -- Lorekeeper's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19523, -- Lorekeeper's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19524, -- Lorekeeper's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19525, -- Lorekeeper's Ring | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19526, -- Battle Healer's Cloak | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19527, -- Battle Healer's Cloak | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19528, -- Battle Healer's Cloak | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19529, -- Battle Healer's Cloak | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19530, -- Caretaker's Cape | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19531, -- Caretaker's Cape | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19532, -- Caretaker's Cape | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19533, -- Caretaker's Cape | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19534, -- Scout's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19535, -- Scout's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19536, -- Scout's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19537, -- Scout's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19538, -- Sentinel's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19539, -- Sentinel's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19540, -- Sentinel's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19541, -- Sentinel's Medallion | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19542, -- Scout's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19543, -- Scout's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19544, -- Scout's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19545, -- Scout's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19546, -- Sentinel's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19547, -- Sentinel's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19548, -- Sentinel's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19549, -- Sentinel's Blade | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19550, -- Legionnaire's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19551, -- Legionnaire's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19552, -- Legionnaire's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19553, -- Legionnaire's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19554, -- Protector's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19555, -- Protector's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19556, -- Protector's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19557, -- Protector's Sword | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19558, -- Outrider's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19559, -- Outrider's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19560, -- Outrider's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19561, -- Outrider's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19562, -- Outrunner's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19563, -- Outrunner's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19564, -- Outrunner's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19565, -- Outrunner's Bow | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19566, -- Advisor's Gnarled Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19567, -- Advisor's Gnarled Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19568, -- Advisor's Gnarled Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19569, -- Advisor's Gnarled Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19570, -- Lorekeeper's Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19571, -- Lorekeeper's Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19572, -- Lorekeeper's Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19573, -- Lorekeeper's Staff | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19578, -- Berserker Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19580, -- Berserker Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19581, -- Berserker Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19582, -- Windtalker's Wristguards | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19583, -- Windtalker's Wristguards | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19584, -- Windtalker's Wristguards | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19587, -- Forest Stalker's Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19589, -- Forest Stalker's Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19590, -- Forest Stalker's Bracers | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19595, -- Dryad's Wrist Bindings | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19596, -- Dryad's Wrist Bindings | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
19597 -- Dryad's Wrist Bindings | WSG rep reward (originally patch 1.6...WSG released patch 1.5)
);

-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);

-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
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
8223  -- More Glowing Scorpid Blood | Darkmoon Faire (Patch 1.6)
);

-- * NEW SPELLS	

DELETE FROM spell_disabled WHERE entry IN ();
			
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
 
-- * ITEM STATS | Items changed: 30

-- Grand Marshals Longsword | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(12584, 2, 7, 'Grand Marshal\'s Longsword', 31966, 4, 32768, 1, 248182, 49636, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Blade | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(16345, 2, 7, 'High Warlord\'s Blade', 31997, 4, 32768, 1, 247416, 49483, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Aegis | Armor: 2929 | Stamina: 23 | Strength: 10 | SpellID 1: 13959
(18825, 4, 6, 'Grand Marshal\'s Aegis', 31733, 4, 32768, 1, 159036, 31807, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 23, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Shield Wall | Armor: 2929 | Stamina: 23 | Strength: 10 | SpellID 1: 13959
(18826, 4, 6, 'High Warlord\'s Shield Wall', 31746, 4, 32768, 1, 159587, 31917, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 23, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Handaxe | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18827, 2, 0, 'Grand Marshal\'s Handaxe', 31956, 4, 32768, 1, 250241, 50048, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Cleaver | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18828, 2, 0, 'High Warlord\'s Cleaver', 31957, 4, 32768, 1, 251127, 50225, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Sunderer | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18830, 2, 1, 'Grand Marshal\'s Sunderer', 31302, 4, 32768, 1, 286137, 57227, 17, -1, -1, 78, 60, 0, 0, 197, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Battle Axe | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18831, 2, 1, 'High Warlord\'s Battle Axe', 31958, 4, 32768, 1, 287244, 57448, 17, -1, -1, 78, 60, 0, 0, 197, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Bullseye | Stamina: 7 | SpellID 1: 21440
(18833, 2, 2, 'Grand Marshal\'s Bullseye', 31759, 4, 32768, 1, 173657, 34731, 15, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 2, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Recurve | Stamina: 7 | SpellID 1: 21440
(18835, 2, 2, 'High Warlord\'s Recurve', 31748, 4, 32768, 1, 174986, 34997, 15, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 2, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Repeater | Stamina: 7 | SpellID 1: 21440
(18836, 2, 18, 'Grand Marshal\'s Repeater', 31757, 4, 32768, 1, 175650, 35130, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 2, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Crossbow | Stamina: 7 | SpellID 1: 21440
(18837, 2, 18, 'High Warlord\'s Crossbow', 31749, 4, 32768, 1, 176297, 35259, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 2, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Dirk | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18838, 2, 15, 'Grand Marshal\'s Dirk', 31379, 4, 32768, 1, 242293, 48458, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Razor | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18840, 2, 15, 'High Warlord\'s Razor', 31381, 4, 32768, 1, 244064, 48812, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Right Hand Blade | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18843, 2, 13, 'Grand Marshal\'s Right Hand Blade', 32033, 4, 32768, 1, 246698, 49339, 21, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Right Claw | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18844, 2, 13, 'High Warlord\'s Right Claw', 31754, 4, 32768, 1, 247584, 49516, 21, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Left Hand Blade | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18847, 2, 13, 'Grand Marshal\'s Left Hand Blade', 32032, 4, 32768, 1, 250218, 50043, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Left Claw | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18848, 2, 13, 'High Warlord\'s Left Claw', 31752, 4, 32768, 1, 251079, 50215, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Hand Cannon | Stamina: 7 | SpellID 1: 21440
(18855, 2, 3, 'Grand Marshal\'s Hand Cannon', 31758, 4, 32768, 1, 179726, 35945, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Street Sweeper | Stamina: 7 | SpellID 1: 21440
(18860, 2, 3, 'High Warlord\'s Street Sweeper', 31747, 4, 32768, 1, 183012, 36602, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21440, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Punisher | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18865, 2, 4, 'Grand Marshal\'s Punisher', 31955, 4, 32768, 1, 248422, 49684, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Bludgeon | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9335
(18866, 2, 4, 'High Warlord\'s Bludgeon', 31751, 4, 32768, 1, 249308, 49861, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Battle Hammer | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18867, 2, 5, 'Grand Marshal\'s Battle Hammer', 31954, 4, 32768, 1, 312712, 62542, 17, -1, -1, 78, 60, 0, 0, 199, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Pulverizer | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18868, 2, 5, 'High Warlord\'s Pulverizer', 31750, 4, 32768, 1, 313819, 62763, 17, -1, -1, 78, 60, 0, 0, 199, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Glaive | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18869, 2, 6, 'Grand Marshal\'s Glaive', 31761, 4, 32768, 1, 284969, 56993, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Pig Sticker | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18871, 2, 6, 'High Warlord\'s Pig Sticker', 31766, 4, 32768, 1, 295085, 59017, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Stave | Stamina: 41 | Intellect: 23 | Spirit: 17 | SpellID 1: 23929
(18873, 2, 10, 'Grand Marshal\'s Stave', 31764, 4, 32768, 1, 297299, 59459, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 5, 23, 6, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 23929, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords War Staff | Stamina: 41 | Intellect: 23 | Spirit: 17 | SpellID 1: 23929
(18874, 2, 10, 'High Warlord\'s War Staff', 31765, 4, 32768, 1, 298407, 59681, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 5, 23, 6, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 23929, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Claymore | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18876, 2, 8, 'Grand Marshal\'s Claymore', 31996, 4, 32768, 1, 300592, 60118, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Greatsword | Stamina: 41 | Strength: 26 | SpellID 1: 7597
(18877, 2, 8, 'High Warlord\'s Greatsword', 31998, 4, 32768, 1, 301699, 60339, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 41, 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);


-- * ADDITIONAL FIXES		

