-- 1.8 → 1.9 | The Gates of Ahn'Qiraj

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

UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `target_map` = 531; -- AQ40 (Temple of Ahn'Qiraj) 1.9
UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `target_map` = 509; -- AQ20 (Ruins of Ahn'Qiraj) 1.9

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
20761, -- Recipe: Transmute Elemental Fire | See 1.9 retail patch notes
21039, -- Narain's Turban | AQ Gates Questline
21040, -- Narain's Robe | AQ Gates Questline
21115, -- Defiler's Talisman | AB rep rewards (See 1.9 patch notes)
21116, -- Defiler's Talisman | AB rep rewards (See 1.9 patch notes)
21117, -- Talisman of Arathor | AB rep rewards (See 1.9 patch notes)
21118, -- Talisman of Arathor | AB rep rewards (See 1.9 patch notes)
21119, -- Talisman of Arathor | AB rep rewards (See 1.9 patch notes)
21120, -- Defiler's Talisman | AB rep rewards (See 1.9 patch notes)
21126, -- Death's Sting | AQ40 Loot
21128, -- Staff of the Qiraji Prophets | AQ40 Loot
21134, -- Dark Edge of Insanity | AQ40 Loot
21154, -- Festival Dress | Allakhazam dates for Festival of Elune
21157, -- Festive Green Dress | Allakhazam dates for Festival of Elune
21178, -- Gloves of Earthen Power | Silithus badger quest
21179, -- Band of Earthen Wrath | Silithus badger quest
21180, -- Earthstrike | Silithus badger quest
21181, -- Grace of Earth | Silithus badger quest
21182, -- Band of Earthen Might | Silithus badger quest
21183, -- Earthpower Vest | Silithus badger quest
21184, -- Deeprock Bracers | Silithus badger quest
21185, -- Earthcalm Orb | Silithus badger quest
21186, -- Rockfury Bracers | Silithus badger quest
21187, -- Earthweave Cloak | Silithus badger quest
21188, -- Fist of Cenarius | Silithus badger quest
21189, -- Might of Cenarius | Silithus badger quest
21190, -- Wrath of Cenarius | Silithus badger quest
21196, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21197, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21198, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21199, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21200, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21201, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21202, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21203, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21204, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21205, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21206, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21207, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21208, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21209, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21210, -- Signet Ring of the Bronze Dragonflight | AQ40 Loot
21242, -- Blessed Qiraji War Axe | AQ40 Loot
21244, -- Blessed Qiraji Pugio | AQ40 Loot
21268, -- Blessed Qiraji War Hammer | AQ40 Loot
21269, -- Blessed Qiraji Bulwark | AQ40 Loot
21272, -- Blessed Qiraji Musket | AQ40 Loot
21273, -- Blessed Qiraji Acolyte Staff | AQ40 Loot
21275, -- Blessed Qiraji Augur Staff | AQ40 Loot
21311, -- Earth Warder's Vest | Timbermaw Hold quest revamp
21312, -- Belt of the Den Watcher | Timbermaw Hold quest revamp
21316, -- Leggings of the Ursa | Timbermaw Hold quest revamp
21317, -- Helm of the Pathfinder | Timbermaw Hold quest revamp
21318, -- Earth Warder's Gloves | Timbermaw Hold quest revamp
21319, -- Gloves of the Pathfinder | Timbermaw Hold quest revamp
21320, -- Vest of the Den Watcher | Timbermaw Hold quest revamp
21322, -- Ursa's Embrace | Timbermaw Hold quest revamp
21326, -- Defender of the Timbermaw | Timbermaw Hold quest revamp
21329, -- Conqueror's Crown | AQ40 Loot
21330, -- Conqueror's Spaulders | AQ40 Loot
21331, -- Conqueror's Breastplate | AQ40 Loot
21332, -- Conqueror's Legguards | AQ40 Loot
21333, -- Conqueror's Greaves | AQ40 Loot
21334, -- Doomcaller's Robes | AQ40 Loot
21335, -- Doomcaller's Mantle | AQ40 Loot
21336, -- Doomcaller's Trousers | AQ40 Loot
21337, -- Doomcaller's Circlet | AQ40 Loot
21338, -- Doomcaller's Footwraps | AQ40 Loot
21343, -- Enigma Robes | AQ40 Loot
21344, -- Enigma Boots | AQ40 Loot
21345, -- Enigma Shoulderpads | AQ40 Loot
21346, -- Enigma Leggings | AQ40 Loot
21347, -- Enigma Circlet | AQ40 Loot
21348, -- Tiara of the Oracle | AQ40 Loot
21349, -- Footwraps of the Oracle | AQ40 Loot
21350, -- Mantle of the Oracle | AQ40 Loot
21351, -- Vestments of the Oracle | AQ40 Loot
21352, -- Trousers of the Oracle | AQ40 Loot
21353, -- Genesis Helm | AQ40 Loot
21354, -- Genesis Shoulderpads | AQ40 Loot
21355, -- Genesis Boots | AQ40 Loot
21356, -- Genesis Trousers | AQ40 Loot
21357, -- Genesis Vest | AQ40 Loot
21359, -- Deathdealer's Boots | AQ40 Loot
21360, -- Deathdealer's Helm | AQ40 Loot
21361, -- Deathdealer's Spaulders | AQ40 Loot
21362, -- Deathdealer's Leggings | AQ40 Loot
21364, -- Deathdealer's Vest | AQ40 Loot
21365, -- Striker's Footguards | AQ40 Loot
21366, -- Striker's Diadem | AQ40 Loot
21367, -- Striker's Pauldrons | AQ40 Loot
21368, -- Striker's Leggings | AQ40 Loot
21370, -- Striker's Hauberk | AQ40 Loot
21372, -- Stormcaller's Diadem | AQ40 Loot
21373, -- Stormcaller's Footguards | AQ40 Loot
21374, -- Stormcaller's Hauberk | AQ40 Loot
21375, -- Stormcaller's Leggings | AQ40 Loot
21376, -- Stormcaller's Pauldrons | AQ40 Loot
21387, -- Avenger's Crown | AQ40 Loot
21388, -- Avenger's Greaves | AQ40 Loot
21389, -- Avenger's Breastplate | AQ40 Loot
21390, -- Avenger's Legguards | AQ40 Loot
21391, -- Avenger's Pauldrons | AQ40 Loot
21392, -- Sickle of Unyielding Strength | AQ20 Loot
21393, -- Signet of Unyielding Strength | AQ20 Loot
21394, -- Drape of Unyielding Strength | AQ20 Loot
21395, -- Blade of Eternal Justice | AQ20 Loot
21396, -- Ring of Eternal Justice | AQ20 Loot
21397, -- Cape of Eternal Justice | AQ20 Loot
21398, -- Hammer of the Gathering Storm | AQ20 Loot
21399, -- Ring of the Gathering Storm | AQ20 Loot
21400, -- Cloak of the Gathering Storm | AQ20 Loot
21401, -- Scythe of the Unseen Path | AQ20 Loot
21402, -- Signet of the Unseen Path | AQ20 Loot
21403, -- Cloak of the Unseen Path | AQ20 Loot
21404, -- Dagger of Veiled Shadows | AQ20 Loot
21405, -- Band of Veiled Shadows | AQ20 Loot
21406, -- Cloak of Veiled Shadows | AQ20 Loot
21407, -- Mace of Unending Life | AQ20 Loot
21408, -- Band of Unending Life | AQ20 Loot
21409, -- Cloak of Unending Life | AQ20 Loot
21410, -- Gavel of Infinite Wisdom | AQ20 Loot
21411, -- Ring of Infinite Wisdom | AQ20 Loot
21412, -- Shroud of Infinite Wisdom | AQ20 Loot
21413, -- Blade of Vaulted Secrets | AQ20 Loot
21414, -- Band of Vaulted Secrets | AQ20 Loot
21415, -- Drape of Vaulted Secrets | AQ20 Loot
21416, -- Kris of Unspoken Names | AQ20 Loot
21417, -- Ring of Unspoken Names | AQ20 Loot
21418, -- Shroud of Unspoken Names | AQ20 Loot
21452, -- Staff of the Ruins | AQ20 Loot
21453, -- Mantle of the Horusath | AQ20 Loot
21454, -- Runic Stone Shoulders | AQ20 Loot
21455, -- Southwind Helm | AQ20 Loot
21456, -- Sandstorm Cloak | AQ20 Loot
21457, -- Bracers of Brutality | AQ20 Loot
21458, -- Gauntlets of New Life | AQ20 Loot
21459, -- Crossbow of Imminent Doom | AQ20 Loot
21460, -- Helm of Domination | AQ20 Loot
21461, -- Leggings of the Black Blizzard | AQ20 Loot
21462, -- Gloves of Dark Wisdom | AQ20 Loot
21463, -- Ossirian's Binding | AQ20 Loot
21464, -- Shackles of the Unscarred | AQ20 Loot
21466, -- Stinger of Ayamiss | AQ20 Loot
21467, -- Thick Silithid Chestguard | AQ20 Loot
21468, -- Mantle of Maz'Nadir | AQ20 Loot
21469, -- Gauntlets of Southwind | AQ20 Loot
21470, -- Cloak of the Savior | AQ20 Loot
21471, -- Talon of Furious Concentration | AQ20 Loot
21472, -- Dustwind Turban | AQ20 Loot
21473, -- Eye of Moam | AQ20 Loot
21474, -- Chitinous Shoulderguards | AQ20 Loot
21475, -- Legplates of the Destroyer | AQ20 Loot
21476, -- Obsidian Scaled Leggings | AQ20 Loot
21477, -- Ring of Fury | AQ20 Loot
21478, -- Bow of Taut Sinew | AQ20 Loot
21479, -- Gauntlets of the Immovable | AQ20 Loot
21480, -- Scaled Silithid Gauntlets | AQ20 Loot
21481, -- Boots of the Desert Protector | AQ20 Loot
21482, -- Boots of the Fiery Sands | AQ20 Loot
21483, -- Ring of the Desert Winds | AQ20 Loot
21484, -- Helm of Regrowth | AQ20 Loot
21485, -- Buru's Skull Fragment | AQ20 Loot
21486, -- Gloves of the Swarm | AQ20 Loot
21487, -- Slimy Scaled Gauntlets | AQ20 Loot
21488, -- Fetish of Chitinous Spikes | AQ20 Loot
21489, -- Quicksand Waders | AQ20 Loot
21490, -- Slime Kickers | AQ20 Loot
21491, -- Scaled Bracers of the Gorger | AQ20 Loot
21492, -- Manslayer of the Qiraji | AQ20 Loot
21493, -- Boots of the Vanguard | AQ20 Loot
21494, -- Southwind's Grasp | AQ20 Loot
21495, -- Legplates of the Qiraji Command | AQ20 Loot
21496, -- Bracers of Qiraji Command | AQ20 Loot
21497, -- Boots of the Qiraji General | AQ20 Loot
21498, -- Qiraji Sacrificial Dagger | AQ20 Loot
21499, -- Vestments of the Shifting Sands | AQ20 Loot
21500, -- Belt of the Inquisition | AQ20 Loot
21501, -- Toughened Silithid Hide Gloves | AQ20 Loot
21502, -- Sand Reaver Wristguards | AQ20 Loot
21503, -- Belt of the Sand Reaver | AQ20 Loot
21504, -- Charm of the Shifting Sands | AQ20 Loot
21505, -- Choker of the Shifting Sands | AQ20 Loot
21506, -- Pendant of the Shifting Sands | AQ20 Loot
21507, -- Amulet of the Shifting Sands | AQ20 Loot
21517, -- Gnomish Turban of Psychic Might | AQ Gates Questline
21520, -- Ravencrest's Legacy | AQ Gates Questline
21521, -- Runesword of the Red | AQ Gates Questline
21522, -- Shadowsong's Sorrow | AQ Gates Questline
21523, -- Fang of Korialstrasz | AQ Gates Questline
21526, -- Band of Icy Depths | AQ Gates Questline
21527, -- Darkwater Robes | AQ Gates Questline
21529, -- Amulet of Shadow Shielding | AQ Gates Questline
21530, -- Onyx Embedded Leggings | AQ Gates Questline
21531, -- Drake Tooth Necklace | AQ Gates Questline
21532, -- Drudge Boots | AQ Gates Questline
21538, -- Festive Pink Dress | Allakhazam dates for Festival of Elune
21539, -- Festive Purple Dress | Allakhazam dates for Festival of Elune
21541, -- Festive Black Pant Suit | Allakhazam dates for Festival of Elune
21542, -- Festival Suit | Allakhazam dates for Festival of Elune
21543, -- Festive Teal Pant Suit | Allakhazam dates for Festival of Elune
21544, -- Festive Blue Pant Suit | Allakhazam dates for Festival of Elune
21563, -- Don Rodrigo's Band | AV Rewards added (see 1.9 patch notes)
21565, -- Rune of Perfection | WSG Rewards added (see 1.9 patch notes)
21566, -- Rune of Perfection | WSG Rewards added (see 1.9 patch notes)
21567, -- Rune of Duty | WSG Rewards added (see 1.9 patch notes)
21568, -- Rune of Duty | WSG Rewards added (see 1.9 patch notes)
21579, -- Vanquished Tentacle of C'Thun | AQ40 Loot
21581, -- Gauntlets of Annihilation | AQ40 Loot
21582, -- Grasp of the Old God | AQ40 Loot
21583, -- Cloak of Clarity | AQ40 Loot
21585, -- Dark Storm Gauntlets | AQ40 Loot
21586, -- Belt of Never-ending Agony | AQ40 Loot
21587, -- Wristguards of Castigation | AQ40 Loot
21596, -- Ring of the Godslayer | AQ40 Loot
21597, -- Royal Scepter of Vek'lor | AQ40 Loot
21598, -- Royal Qiraji Belt | AQ40 Loot
21599, -- Vek'lor's Gloves of Devastation | AQ40 Loot
21600, -- Boots of Epiphany | AQ40 Loot
21601, -- Ring of Emperor Vek'lor | AQ40 Loot
21602, -- Qiraji Execution Bracers | AQ40 Loot
21603, -- Wand of Qiraji Nobility | AQ40 Loot
21604, -- Bracelets of Royal Redemption | AQ40 Loot
21605, -- Gloves of the Hidden Temple | AQ40 Loot
21606, -- Belt of the Fallen Emperor | AQ40 Loot
21607, -- Grasp of the Fallen Emperor | AQ40 Loot
21608, -- Amulet of Vek'nilash | AQ40 Loot
21609, -- Regenerating Belt of Vek'nilash | AQ40 Loot
21610, -- Wormscale Blocker | AQ40 Loot
21611, -- Burrower Bracers | AQ40 Loot
21615, -- Don Rigoberto's Lost Hat | AQ40 Loot
21616, -- Huhuran's Stinger | AQ40 Loot
21617, -- Wasphide Gauntlets | AQ40 Loot
21618, -- Hive Defiler Wristguards | AQ40 Loot
21619, -- Gloves of the Messiah | AQ40 Loot
21620, -- Ring of the Martyr | AQ40 Loot
21621, -- Cloak of the Golden Hive | AQ40 Loot
21622, -- Sharpened Silithid Femur | AQ40 Loot
21623, -- Gauntlets of the Righteous Champion | AQ40 Loot
21624, -- Gauntlets of Kalimdor | AQ40 Loot
21625, -- Scarab Brooch | AQ40 Loot
21626, -- Slime-coated Leggings | AQ40 Loot
21627, -- Cloak of Untold Secrets | AQ40 Loot
21635, -- Barb of the Sand Reaver | AQ40 Loot
21639, -- Pauldrons of the Unrelenting | AQ40 Loot
21645, -- Hive Tunneler's Boots | AQ40 Loot
21647, -- Fetish of the Sand Reaver | AQ40 Loot
21648, -- Recomposed Boots | AQ40 Loot
21650, -- Ancient Qiraji Ripper | AQ40 Loot
21651, -- Scaled Sand Reaver Leggings | AQ40 Loot
21652, -- Silithid Carapace Chestguard | AQ40 Loot
21663, -- Robes of the Guardian Saint | AQ40 Loot
21664, -- Barbed Choker | AQ40 Loot
21665, -- Mantle of Wicked Revenge | AQ40 Loot
21666, -- Sartura's Might | AQ40 Loot
21667, -- Legplates of Blazing Light | AQ40 Loot
21668, -- Scaled Leggings of Qiraji Fury | AQ40 Loot
21669, -- Creeping Vine Helm | AQ40 Loot
21670, -- Badge of the Swarmguard | AQ40 Loot
21671, -- Robes of the Battleguard | AQ40 Loot
21672, -- Gloves of Enforcement | AQ40 Loot
21673, -- Silithid Claw | AQ40 Loot
21674, -- Gauntlets of Steadfast Determination | AQ40 Loot
21675, -- Thick Qirajihide Belt | AQ40 Loot
21676, -- Leggings of the Festering Swarm | AQ40 Loot
21677, -- Ring of the Qiraji Fury | AQ40 Loot
21678, -- Necklace of Purity | AQ40 Loot
21679, -- Kalimdor's Revenge | AQ40 Loot
21680, -- Vest of Swift Execution | AQ40 Loot
21681, -- Ring of the Devoured | AQ40 Loot
21682, -- Bile-Covered Gauntlets | AQ40 Loot
21683, -- Mantle of the Desert Crusade | AQ40 Loot
21684, -- Mantle of the Desert's Fury | AQ40 Loot
21685, -- Petrified Scarab | AQ40 Loot
21686, -- Mantle of Phrenic Power | AQ40 Loot
21687, -- Ukko's Ring of Darkness | AQ40 Loot
21688, -- Boots of the Fallen Hero | AQ40 Loot
21689, -- Gloves of Ebru | AQ40 Loot
21690, -- Angelista's Charm | AQ40 Loot
21691, -- Ooze-ridden Gauntlets | AQ40 Loot
21692, -- Triad Girdle | AQ40 Loot
21693, -- Guise of the Devourer | AQ40 Loot
21694, -- Ternary Mantle | AQ40 Loot
21695, -- Angelista's Touch | AQ40 Loot
21696, -- Robes of the Triumvirate | AQ40 Loot
21697, -- Cape of the Trinity | AQ40 Loot
21698, -- Leggings of Immersion | AQ40 Loot
21699, -- Barrage Shoulders | AQ40 Loot
21700, -- Pendant of the Qiraji Guardian | AQ40 Loot
21701, -- Cloak of Concentrated Hatred | AQ40 Loot
21702, -- Amulet of Foul Warding | AQ40 Loot
21703, -- Hammer of Ji'zhi | AQ40 Loot
21704, -- Boots of the Redeemed Prophecy | AQ40 Loot
21705, -- Boots of the Fallen Prophet | AQ40 Loot
21706, -- Boots of the Unwavering Will | AQ40 Loot
21707, -- Ring of Swarming Thought | AQ40 Loot
21708, -- Beetle Scaled Wristguards | AQ40 Loot
21709, -- Ring of the Fallen God | AQ40 Loot
21710, -- Cloak of the Fallen God | AQ40 Loot
21712, -- Amulet of the Fallen God | AQ40 Loot
21713, -- Elune's Candle | Allakhazam dates for Festival of Elune
21715, -- Sand Polished Hammer | AQ20 Loot
21722, -- Pattern: Festival Dress | Allakhazam dates for Festival of Elune
21723, -- Pattern: Festive Red Pant Suit | Allakhazam dates for Festival of Elune
21800, -- Silithid Husked Launcher | AQ20 Loot
21801, -- Antenna of Invigoration | AQ20 Loot
21802, -- The Lost Kris of Zedd | AQ20 Loot
21803, -- Helm of the Holy Avenger | AQ20 Loot
21804, -- Coif of Elemental Fury | AQ20 Loot
21805, -- Polished Obsidian Pauldrons | AQ20 Loot
21806, -- Gavel of Qiraji Authority | AQ20 Loot
21809, -- Fury of the Forgotten Swarm | AQ20 Loot
21810, -- Treads of the Wandering Nomad | AQ20 Loot
21814, -- Breastplate of Annihilation | AQ40 Loot
21836, -- Ritssyn's Ring of Chaos | AQ40 Loot
21837, -- Anubisath Warhammer | AQ40 Loot
21838, -- Garb of Royal Ascension | AQ40 Loot
21839, -- Scepter of the False Prophet | AQ40 Loot
21856, -- Neretzek, The Blood Drinker | AQ40 Loot
21888, -- Gloves of the Immortal | AQ40 Loot
21889, -- Gloves of the Redeemed Prophecy | AQ40 Loot
21891, -- Shard of the Fallen Star | AQ40 Loot
22206, -- Bouquet of Red Roses | Allakhazam comments
22730, -- Eyestalk Waist Cord | Looted 4/25/2006, no evidence it wasn't on original C'thun loot tables
22731, -- Cloak of the Devoured | Looted 4/25/2006, no evidence it wasn't on original C'thun loot tables
22732, -- Mark of C'Thun | Looted 4/25/2006, no evidence it wasn't on original C'thun loot tables
);
 
-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);

-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
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
8883 -- Valadar Starsong | Allakhazam dates for Festival of Elune
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

-- * ITEM STATS | Items changed: 144

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES 
-- Arcanist Crown | Armor: 83 | Stamina: 16 | Intellect: 27 | Spirit: 10 | Fire Resistance: 10 | SpellID 1: 14799 | SpellID 2: 23727
(16795, 4, 1, 'Arcanist Crown', 31517, 4, 0, 1, 136797, 27359, 1, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 16, 5, 27, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Leggings | Armor: 89 | Intellect: 23 | Spirit: 10 | Stamina: 18 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 14799
(16796, 4, 1, 'Arcanist Leggings', 30582, 4, 0, 1, 169953, 33990, 7, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 10, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Mantle | Armor: 76 | Intellect: 21 | Spirit: 5 | Stamina: 10 | Shadow Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9343
(16797, 4, 1, 'Arcanist Mantle', 30586, 4, 0, 1, 127958, 25591, 3, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 5, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Robes | Armor: 102 | Intellect: 25 | Spirit: 10 | Stamina: 19 | Fire Resistance: 10 | SpellID 1: 14047
(16798, 4, 1, 'Arcanist Robes', 30581, 4, 0, 1, 171269, 34253, 20, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 10, 7, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Bindings | Armor: 44 | Intellect: 15 | Stamina: 8 | Spirit: 6 | SpellID 1: 9417 | SpellID 2: 21625
(16799, 4, 1, 'Arcanist Bindings', 30584, 4, 0, 1, 85963, 17192, 9, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 7, 8, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 21625, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Boots | Armor: 70 | Stamina: 13 | Intellect: 14 | Spirit: 11 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9416
(16800, 4, 1, 'Arcanist Boots', 30587, 4, 0, 1, 129425, 25885, 8, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 5, 14, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9416, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Gloves | Armor: 63 | Intellect: 15 | Spirit: 10 | Stamina: 14 | Fire Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9343
(16801, 4, 1, 'Arcanist Gloves', 30585, 4, 0, 1, 86612, 17322, 10, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 10, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Belt | Armor: 57 | Intellect: 20 | Spirit: 10 | Stamina: 11 | Fire Resistance: 10 | SpellID 1: 9343
(16802, 4, 1, 'Arcanist Belt', 30583, 4, 0, 1, 86941, 17388, 6, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 10, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Slippers | Armor: 70 | Intellect: 11 | Stamina: 23 | Shadow Resistance: 7 | SpellID 1: 9346
(16803, 4, 1, 'Felheart Slippers', 31975, 4, 0, 1, 130905, 26181, 8, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Bracers | Armor: 44 | Intellect: 11 | Spirit: 8 | Stamina: 18 | SpellID 1: 9342
(16804, 4, 1, 'Felheart Bracers', 31970, 4, 0, 1, 87589, 17517, 9, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 8, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Gloves | Armor: 63 | Intellect: 15 | Spirit: 8 | Stamina: 18 | Fire Resistance: 7 | SpellID 1: 18384 | SpellID 2: 9415
(16805, 4, 1, 'Felheart Gloves', 31971, 4, 0, 1, 87918, 17583, 10, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 8, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 7, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Belt | Armor: 57 | Intellect: 15 | Spirit: 8 | Stamina: 18 | Fire Resistance: 7 | SpellID 1: 14799
(16806, 4, 1, 'Felheart Belt', 31969, 4, 0, 1, 88247, 17649, 6, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 8, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 7, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Shoulder Pads | Armor: 76 | Intellect: 17 | Spirit: 7 | Stamina: 25 | Shadow Resistance: 7 | SpellID 1: 9415
(16807, 4, 1, 'Felheart Shoulder Pads', 31974, 4, 0, 1, 132864, 26572, 3, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 7, 7, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Horns | Armor: 83 | Intellect: 20 | Spirit: 10 | Stamina: 27 | Fire Resistance: 10 | SpellID 1: 14799
(16808, 4, 1, 'Felheart Horns', 31987, 4, 0, 1, 133344, 26668, 1, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 10, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Robes | Armor: 102 | Intellect: 20 | Stamina: 31 | Fire Resistance: 10 | SpellID 1: 9342 | SpellID 2: 23727
(16809, 4, 1, 'Felheart Robes', 31973, 4, 0, 1, 178450, 35690, 20, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 7, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Pants | Armor: 89 | Intellect: 19 | Spirit: 10 | Stamina: 20 | Shadow Resistance: 10 | SpellID 1: 14798
(16810, 4, 1, 'Felheart Pants', 31972, 4, 0, 1, 179108, 35821, 7, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 10, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 10, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Boots of Prophecy | Armor: 70 | Intellect: 18 | Spirit: 15 | Stamina: 17 | Shadow Resistance: 7 | SpellID 1: 9406
(16811, 4, 1, 'Boots of Prophecy', 31718, 4, 0, 1, 134811, 26962, 8, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 15, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gloves of Prophecy | Armor: 63 | Intellect: 15 | Spirit: 15 | Stamina: 10 | Fire Resistance: 7 | SpellID 1: 21626 | SpellID 2: 9406
(16812, 4, 1, 'Gloves of Prophecy', 30620, 4, 0, 1, 90203, 18040, 10, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 15, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Circlet of Prophecy | Armor: 83 | Intellect: 27 | Spirit: 20 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 9417
(16813, 4, 1, 'Circlet of Prophecy', 31371, 4, 0, 1, 139330, 27866, 1, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 20, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pants of Prophecy | Armor: 89 | Intellect: 24 | Spirit: 20 | Stamina: 18 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9408
(16814, 4, 1, 'Pants of Prophecy', 28198, 4, 0, 1, 186432, 37286, 7, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 20, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robes of Prophecy | Armor: 102 | Intellect: 27 | Spirit: 17 | Stamina: 20 | Fire Resistance: 10 | SpellID 1: 9408
(16815, 4, 1, 'Robes of Prophecy', 31490, 4, 0, 1, 169278, 33855, 20, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 17, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Mantle of Prophecy | Armor: 76 | Intellect: 23 | Spirit: 10 | Stamina: 13 | Shadow Resistance: 7 | SpellID 1: 9415
(16816, 4, 1, 'Mantle of Prophecy', 30623, 4, 0, 1, 127452, 25490, 3, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 10, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Girdle of Prophecy | Armor: 57 | Intellect: 22 | Spirit: 10 | Stamina: 10 | Fire Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9415
(16817, 4, 1, 'Girdle of Prophecy', 30621, 4, 0, 1, 85296, 17059, 6, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 22, 6, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Belt | Armor: 65 | Intellect: 20 | Spirit: 13 | Stamina: 13 | Shadow Resistance: 10 | SpellID 1: 14047
(16818, 4, 1, 'Netherwind Belt', 34046, 4, 0, 1, 139475, 27895, 6, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 13, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Vambraces of Prophecy | Armor: 44 | Intellect: 14 | Spirit: 10 | Stamina: 8 | SpellID 1: 21624 | SpellID 2: 9314
(16819, 4, 1, 'Vambraces of Prophecy', 30617, 4, 0, 1, 85945, 17189, 9, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 10, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21624, 1, 0, 0, -1, 0, -1, 9314, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Chestpiece | Armor: 200 | Agility: 29 | Stamina: 20 | Strength: 10 | Fire Resistance: 10 | SpellID 1: 7597
(16820, 4, 2, 'Nightslayer Chestpiece', 31105, 4, 0, 1, 215686, 43137, 5, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 29, 7, 20, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 10, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Cover | Armor: 163 | Agility: 20 | Stamina: 19 | Strength: 6 | Fire Resistance: 10 | SpellID 1: 7598
(16821, 4, 2, 'Nightslayer Cover', 31514, 4, 0, 1, 162381, 32476, 1, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 7, 19, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163, 0, 10, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Pants | Armor: 175 | Agility: 33 | Stamina: 15 | Strength: 10 | Shadow Resistance: 10 | SpellID 1: 7597
(16822, 4, 2, 'Nightslayer Pants', 31340, 4, 0, 1, 217330, 43466, 7, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 33, 7, 15, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Shoulder Pads | Armor: 150 | Agility: 26 | Stamina: 12 | Strength: 3 | Shadow Resistance: 7 | SpellID 1: 15464
(16823, 4, 2, 'Nightslayer Shoulder Pads', 31504, 4, 0, 1, 163597, 32719, 3, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 26, 7, 12, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 7, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Boots | Armor: 138 | Agility: 26 | Stamina: 18 | Shadow Resistance: 7
(16824, 4, 2, 'Nightslayer Boots', 31109, 4, 0, 1, 164214, 32842, 8, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 26, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Bracelets | Armor: 88 | Agility: 20 | Stamina: 15
(16825, 4, 2, 'Nightslayer Bracelets', 31106, 4, 0, 1, 109887, 21977, 9, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Gloves | Armor: 125 | Agility: 18 | Stamina: 17 | Strength: 12 | Fire Resistance: 7 | SpellID 1: 15464
(16826, 4, 2, 'Nightslayer Gloves', 31503, 4, 0, 1, 110287, 22057, 10, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 18, 7, 17, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 7, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nightslayer Belt | Armor: 113 | Agility: 17 | Stamina: 18 | Strength: 9 | Fire Resistance: 7 | SpellID 1: 7597
(16827, 4, 2, 'Nightslayer Belt', 31339, 4, 0, 1, 110698, 22139, 6, 8, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 17, 7, 18, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 0, 7, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 204, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Belt | Armor: 113 | Intellect: 22 | Spirit: 10 | Stamina: 10 | Fire Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9415
(16828, 4, 2, 'Cenarion Belt', 31722, 4, 0, 1, 111109, 22221, 6, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 22, 6, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Boots | Armor: 138 | Intellect: 13 | Spirit: 15 | Stamina: 16 | Shadow Resistance: 7 | SpellID 1: 21625 | SpellID 2: 9406
(16829, 4, 2, 'Cenarion Boots', 31724, 4, 0, 1, 171697, 34339, 8, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 15, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21625, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Bracers | Armor: 88 | Intellect: 14 | Spirit: 13 | Stamina: 13 | SpellID 1: 9396
(16830, 4, 2, 'Cenarion Bracers', 31725, 4, 0, 1, 114864, 22972, 9, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 13, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Gloves | Armor: 125 | Intellect: 18 | Spirit: 15 | Stamina: 17 | Fire Resistance: 7 | SpellID 1: 9406
(16831, 4, 2, 'Cenarion Gloves', 31726, 4, 0, 1, 115275, 23055, 10, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 15, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 7, 0, 0, 0, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Spaulders | Armor: 169 | Agility: 25 | Stamina: 17 | Strength: 6 | Fire Resistance: 10 | SpellID 1: 13669
(16832, 4, 2, 'Bloodfang Spaulders', 33653, 4, 0, 1, 282662, 56532, 3, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 25, 7, 17, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Vestments | Armor: 200 | Intellect: 24 | Spirit: 16 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 21625 | SpellID 2: 9408
(16833, 4, 2, 'Cenarion Vestments', 31797, 4, 0, 1, 232195, 46439, 20, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 16, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21625, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Helm | Armor: 163 | Intellect: 28 | Spirit: 13 | Stamina: 26 | Fire Resistance: 10 | SpellID 1: 9417
(16834, 4, 2, 'Cenarion Helm', 32790, 4, 0, 1, 174746, 34949, 1, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 28, 6, 13, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Leggings | Armor: 175 | Intellect: 19 | Spirit: 20 | Stamina: 18 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 21362 | SpellID 3: 9408
(16835, 4, 2, 'Cenarion Leggings', 31729, 4, 0, 1, 211575, 42315, 7, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 20, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Cenarion Spaulders | Armor: 150 | Intellect: 20 | Spirit: 10 | Stamina: 13 | Shadow Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9406
(16836, 4, 2, 'Cenarion Spaulders', 32016, 4, 0, 1, 159298, 31859, 3, 1024, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 10, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 205, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Boots | Armor: 290 | Intellect: 10 | Spirit: 22 | Stamina: 15 | Shadow Resistance: 7 | SpellID 1: 9406
(16837, 4, 3, 'Earthfury Boots', 31830, 4, 0, 1, 192750, 38550, 8, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 22, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Belt | Armor: 237 | Intellect: 21 | Spirit: 7 | Stamina: 12 | Fire Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9406
(16838, 4, 3, 'Earthfury Belt', 31829, 4, 0, 1, 128411, 25682, 6, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 7, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Gauntlets | Armor: 264 | Intellect: 13 | Spirit: 15 | Stamina: 14 | Fire Resistance: 7 | SpellID 1: 18384 | SpellID 2: 9415
(16839, 4, 3, 'Earthfury Gauntlets', 31834, 4, 0, 1, 128905, 25781, 10, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 15, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, 0, 7, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Bracers | Armor: 185 | Intellect: 17 | Spirit: 11 | Stamina: 10 | SpellID 1: 9396
(16840, 4, 3, 'Earthfury Bracers', 31831, 4, 0, 1, 129398, 25879, 9, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 11, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Vestments | Armor: 422 | Intellect: 27 | Spirit: 13 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9408
(16841, 4, 3, 'Earthfury Vestments', 31832, 4, 0, 1, 259783, 51956, 20, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 13, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Helmet | Armor: 343 | Intellect: 23 | Spirit: 13 | Stamina: 24 | Fire Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9408
(16842, 4, 3, 'Earthfury Helmet', 31835, 4, 0, 1, 195557, 39111, 1, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 13, 7, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Legguards | Armor: 369 | Intellect: 19 | Spirit: 21 | Stamina: 18 | Shadow Resistance: 10 | SpellID 1: 21627 | SpellID 2: 9417
(16843, 4, 3, 'Earthfury Legguards', 31836, 4, 0, 1, 261730, 52346, 7, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 21, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21627, 1, 0, 0, -1, 0, -1, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Earthfury Epaulets | Armor: 317 | Intellect: 18 | Spirit: 10 | Stamina: 17 | Shadow Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9406
(16844, 4, 3, 'Earthfury Epaulets', 31833, 4, 0, 1, 197913, 39582, 3, 64, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 10, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 317, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 207, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Breastplate | Armor: 422 | Agility: 26 | Intellect: 11 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 7597
(16845, 4, 3, 'Giantstalker\'s Breastplate', 32022, 4, 0, 1, 270742, 54148, 5, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 26, 5, 11, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 10, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Helmet | Armor: 343 | Agility: 23 | Intellect: 15 | Spirit: 8 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 7597
(16846, 4, 3, 'Giantstalker\'s Helmet', 32028, 4, 0, 1, 203796, 40759, 1, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 5, 15, 6, 8, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, 0, 10, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Leggings | Armor: 369 | Agility: 32 | Intellect: 6 | Spirit: 8 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 7597
(16847, 4, 3, 'Giantstalker\'s Leggings', 32029, 4, 0, 1, 272715, 54543, 7, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 32, 5, 6, 6, 8, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Epaulets | Armor: 317 | Agility: 24 | Intellect: 5 | Spirit: 9 | Stamina: 14 | Shadow Resistance: 7 | SpellID 1: 15464
(16848, 4, 3, 'Giantstalker\'s Epaulets', 32030, 4, 0, 1, 206188, 41237, 3, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 24, 5, 5, 6, 9, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 317, 0, 0, 0, 0, 7, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Boots | Armor: 290 | Agility: 28 | Spirit: 6 | Stamina: 14 | Shadow Resistance: 7
(16849, 4, 3, 'Giantstalker\'s Boots', 32040, 4, 0, 1, 206912, 41382, 8, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 28, 6, 6, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Bracers | Armor: 185 | Agility: 20 | Intellect: 6 | Spirit: 5 | Stamina: 11
(16850, 4, 3, 'Giantstalker\'s Bracers', 32021, 4, 0, 1, 137824, 27564, 9, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 6, 6, 5, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Belt | Armor: 237 | Agility: 18 | Intellect: 9 | Spirit: 4 | Stamina: 16 | Fire Resistance: 7 | SpellID 1: 7597
(16851, 4, 3, 'Giantstalker\'s Belt', 32019, 4, 0, 1, 138317, 27663, 6, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 18, 5, 9, 6, 4, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 7, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Giantstalkers Gloves | Armor: 264 | Agility: 18 | Stamina: 12 | Fire Resistance: 7 | SpellID 1: 15465
(16852, 4, 3, 'Giantstalker\'s Gloves', 32024, 4, 0, 1, 138810, 27762, 10, 4, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 18, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264, 0, 7, 0, 0, 0, 0, 0, 0, 0, 15465, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 206, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Chestguard | Armor: 749 | Intellect: 21 | Spirit: 13 | Stamina: 26 | Strength: 8 | Fire Resistance: 10 | SpellID 1: 9408
(16853, 4, 4, 'Lawbringer Chestguard', 31505, 4, 0, 1, 185721, 37144, 5, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 13, 7, 26, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Helm | Armor: 608 | Intellect: 24 | Spirit: 10 | Stamina: 20 | Strength: 9 | Fire Resistance: 10 | SpellID 1: 21619 | SpellID 2: 9408
(16854, 4, 4, 'Lawbringer Helm', 31506, 4, 0, 1, 139784, 27956, 1, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 10, 7, 20, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21619, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Legplates | Armor: 655 | Intellect: 18 | Spirit: 18 | Stamina: 24 | Strength: 7 | Shadow Resistance: 10 | SpellID 1: 21625 | SpellID 2: 9408
(16855, 4, 4, 'Lawbringer Legplates', 31352, 4, 0, 1, 169242, 33848, 7, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 18, 7, 24, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 655, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21625, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Spaulders | Armor: 562 | Intellect: 15 | Spirit: 8 | Stamina: 22 | Strength: 10 | Shadow Resistance: 7 | SpellID 1: 9406
(16856, 4, 4, 'Lawbringer Spaulders', 31510, 4, 0, 1, 127425, 25485, 3, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 8, 7, 22, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 562, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Bracers | Armor: 328 | Intellect: 8 | Spirit: 11 | Stamina: 11 | Strength: 10 | SpellID 1: 21618
(16857, 4, 4, 'Lawbringer Bracers', 31509, 4, 0, 1, 85270, 17054, 9, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 11, 7, 11, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Belt | Armor: 421 | Intellect: 20 | Spirit: 8 | Stamina: 15 | Strength: 13 | Fire Resistance: 7 | SpellID 1: 9406
(16858, 4, 4, 'Lawbringer Belt', 31353, 4, 0, 1, 85599, 17119, 6, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 8, 7, 15, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 421, 0, 7, 0, 0, 0, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Boots | Armor: 515 | Intellect: 13 | Spirit: 10 | Stamina: 20 | Strength: 7 | Shadow Resistance: 7 | SpellID 1: 21624 | SpellID 2: 9406
(16859, 4, 4, 'Lawbringer Boots', 31354, 4, 0, 1, 128891, 25778, 8, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 10, 7, 20, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21624, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Lawbringer Gauntlets | Armor: 468 | Intellect: 15 | Spirit: 14 | Stamina: 15 | Strength: 10 | Fire Resistance: 7 | SpellID 1: 9406
(16860, 4, 4, 'Lawbringer Gauntlets', 31507, 4, 0, 1, 86247, 17249, 10, 2, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 14, 7, 15, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 7, 0, 0, 0, 0, 0, 0, 0, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 208, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracers of Might | Armor: 328 | Stamina: 23 | Strength: 11
(16861, 4, 4, 'Bracers of Might', 31020, 4, 0, 1, 88932, 17786, 9, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sabatons of Might | Armor: 515 | Stamina: 26 | Strength: 15 | Shadow Resistance: 7 | SpellID 1: 13383
(16862, 4, 4, 'Sabatons of Might', 31025, 4, 0, 1, 133891, 26778, 8, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 26, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 7, 0, 0, 0, 0, 13383, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Might | Armor: 468 | Stamina: 17 | Strength: 22 | Fire Resistance: 7 | SpellID 1: 15464 | SpellID 2: 13383
(16863, 4, 4, 'Gauntlets of Might', 31022, 4, 0, 1, 89589, 17917, 10, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 17, 4, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 7, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 13383, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Might | Armor: 421 | Stamina: 15 | Strength: 21 | Fire Resistance: 7 | SpellID 1: 13669 | SpellID 2: 13383
(16864, 4, 4, 'Belt of Might', 31019, 4, 0, 1, 89909, 17981, 6, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 15, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 421, 0, 7, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 13383, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Might | Armor: 749 | Stamina: 28 | Strength: 20 | Fire Resistance: 10 | SpellID 1: 13676 | SpellID 2: 13385
(16865, 4, 4, 'Breastplate of Might', 31021, 4, 0, 1, 180477, 36095, 5, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 28, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13676, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Might | Armor: 608 | Stamina: 35 | Strength: 15 | Fire Resistance: 10 | SpellID 1: 13669 | SpellID 2: 13385
(16866, 4, 4, 'Helm of Might', 31260, 4, 0, 1, 135851, 27170, 1, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 35, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Might | Armor: 655 | Stamina: 23 | Strength: 24 | Shadow Resistance: 10 | SpellID 1: 13665 | SpellID 2: 13385
(16867, 4, 4, 'Legplates of Might', 31023, 4, 0, 1, 181792, 36358, 7, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 655, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Might | Armor: 562 | Stamina: 22 | Strength: 15 | Shadow Resistance: 7 | SpellID 1: 13675 | SpellID 2: 13383
(16868, 4, 4, 'Pauldrons of Might', 31024, 4, 0, 1, 136824, 27364, 3, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 22, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 562, 0, 0, 0, 0, 7, 0, 0, 0, 0, 13675, 1, 0, 0, -1, 0, -1, 13383, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Chestguard | Armor: 225 | Intellect: 25 | Spirit: 17 | Stamina: 20 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18384 | SpellID 2: 18032
(16897, 4, 2, 'Stormrage Chestguard', 30536, 4, 0, 1, 356759, 71351, 5, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 17, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18032, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Boots | Armor: 154 | Intellect: 17 | Spirit: 11 | Stamina: 15 | Fire Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9315
(16898, 4, 2, 'Stormrage Boots', 30542, 4, 0, 1, 268546, 53709, 8, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 11, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Handguards | Armor: 140 | Intellect: 19 | Spirit: 15 | Stamina: 13 | Shadow Resistance: 10 | SpellID 1: 18032
(16899, 4, 2, 'Stormrage Handguards', 34016, 4, 0, 1, 179700, 35940, 10, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 15, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18032, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Cover | Armor: 183 | Intellect: 31 | Spirit: 12 | Stamina: 20 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9316
(16900, 4, 2, 'Stormrage Cover', 33655, 4, 0, 1, 270555, 54111, 1, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 12, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 10, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Legguards | Armor: 197 | Intellect: 26 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18034 | SpellID 2: 18379
(16901, 4, 2, 'Stormrage Legguards', 30540, 4, 0, 1, 362079, 72415, 7, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18034, 1, 0, 0, -1, 0, -1, 18379, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Pauldrons | Armor: 169 | Intellect: 21 | Spirit: 10 | Stamina: 14 | Fire Resistance: 10 | SpellID 1: 9316 | SpellID 2: 21618
(16902, 4, 2, 'Stormrage Pauldrons', 30546, 4, 0, 1, 272537, 54507, 3, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 10, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9316, 1, 0, 0, -1, 0, -1, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Belt | Armor: 126 | Intellect: 23 | Spirit: 10 | Stamina: 12 | Shadow Resistance: 10 | SpellID 1: 9315 | SpellID 2: 21618
(16903, 4, 2, 'Stormrage Belt', 30541, 4, 0, 1, 182361, 36472, 6, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Bracers | Armor: 98 | Intellect: 15 | Spirit: 12 | Stamina: 11 | SpellID 1: 9318
(16904, 4, 2, 'Stormrage Bracers', 30548, 4, 0, 1, 183030, 36606, 9, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 12, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Chestpiece | Armor: 225 | Agility: 26 | Stamina: 17 | Strength: 12 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 7597 | SpellID 2: 15465
(16905, 4, 2, 'Bloodfang Chestpiece', 33650, 4, 0, 1, 367400, 73480, 5, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 26, 7, 17, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 10, 10, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 15465, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Boots | Armor: 154 | Agility: 25 | Stamina: 17 | Strength: 6 | Fire Resistance: 10 | SpellID 1: 13669
(16906, 4, 2, 'Bloodfang Boots', 31111, 4, 0, 1, 276527, 55305, 8, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 25, 7, 17, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Gloves | Armor: 140 | Agility: 20 | Stamina: 20 | Strength: 19 | Shadow Resistance: 10 | SpellID 1: 7219
(16907, 4, 2, 'Bloodfang Gloves', 33651, 4, 0, 1, 185021, 37004, 10, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 7, 20, 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7219, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Hood | Armor: 183 | Agility: 27 | Stamina: 25 | Strength: 19 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 7597
(16908, 4, 2, 'Bloodfang Hood', 33743, 4, 0, 1, 278536, 55707, 1, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 27, 7, 25, 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 10, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Pants | Armor: 197 | Agility: 37 | Stamina: 17 | Strength: 11 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 7597
(16909, 4, 2, 'Bloodfang Pants', 31115, 4, 0, 1, 346046, 69209, 7, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 37, 7, 17, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 10, 0, 0, 0, 10, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Belt | Armor: 126 | Agility: 20 | Stamina: 15 | Strength: 13 | Shadow Resistance: 10 | SpellID 1: 7597
(16910, 4, 2, 'Bloodfang Belt', 31110, 4, 0, 1, 173692, 34738, 6, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 7, 15, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bloodfang Bracers | Armor: 98 | Agility: 23 | Stamina: 13 | SpellID 1: 15464
(16911, 4, 2, 'Bloodfang Bracers', 31127, 4, 0, 1, 174362, 34872, 9, 8, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 213, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Boots | Armor: 80 | Intellect: 16 | Spirit: 10 | Stamina: 13 | Fire Resistance: 10 | SpellID 1: 14054
(16912, 4, 1, 'Netherwind Boots', 34044, 4, 0, 1, 210038, 42007, 8, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 10, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14054, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Gloves | Armor: 72 | Intellect: 16 | Spirit: 6 | Stamina: 16 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 14799
(16913, 4, 1, 'Netherwind Gloves', 34041, 4, 0, 1, 140546, 28109, 10, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 6, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Crown | Armor: 94 | Intellect: 26 | Spirit: 7 | Stamina: 17 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 21619 | SpellID 2: 17367
(16914, 4, 1, 'Netherwind Crown', 34218, 4, 0, 1, 211623, 42324, 1, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 7, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 10, 10, 0, 0, 0, 0, 21619, 1, 0, 0, -1, 0, -1, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Pants | Armor: 101 | Intellect: 27 | Spirit: 5 | Stamina: 16 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 14798 | SpellID 2: 18384
(16915, 4, 1, 'Netherwind Pants', 34039, 4, 0, 1, 283236, 56647, 7, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 5, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 10, 0, 0, 0, 10, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Robes | Armor: 116 | Intellect: 26 | Spirit: 8 | Stamina: 16 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18384 | SpellID 2: 17367
(16916, 4, 1, 'Netherwind Robes', 34038, 4, 0, 1, 284307, 56861, 20, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 8, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Mantle | Armor: 87 | Intellect: 13 | Spirit: 12 | Stamina: 16 | Fire Resistance: 10 | SpellID 1: 21619 | SpellID 2: 14248
(16917, 4, 1, 'Netherwind Mantle', 34254, 4, 0, 1, 214012, 42802, 3, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 12, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21619, 1, 0, 0, -1, 0, -1, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Bindings | Armor: 51 | Intellect: 15 | Spirit: 8 | Stamina: 9 | SpellID 1: 14254 | SpellID 2: 21362
(16918, 4, 1, 'Netherwind Bindings', 34045, 4, 0, 1, 143210, 28642, 9, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 8, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Boots of Transcendence | Armor: 80 | Intellect: 17 | Spirit: 17 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 18029
(16919, 4, 1, 'Boots of Transcendence', 34055, 4, 0, 1, 215619, 43123, 8, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 17, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18029, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Handguards of Transcendence | Armor: 72 | Intellect: 20 | Spirit: 13 | Stamina: 12 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9316
(16920, 4, 1, 'Handguards of Transcendence', 34051, 4, 0, 1, 144281, 28856, 10, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 13, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Halo of Transcendence | Armor: 94 | Intellect: 27 | Spirit: 22 | Stamina: 17 | Fire Resistance: 10 | Frost Resistance: 10 | SpellID 1: 18034
(16921, 4, 1, 'Halo of Transcendence', 34233, 4, 0, 1, 217204, 43440, 1, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 22, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 10, 0, 10, 0, 0, 0, 0, 0, 18034, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Leggings of Transcendence | Armor: 101 | Intellect: 21 | Spirit: 21 | Stamina: 16 | Shadow Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18033 | SpellID 2: 21364
(16922, 4, 1, 'Leggings of Transcendence', 34049, 4, 0, 1, 290677, 58135, 7, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 21, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 10, 10, 0, 0, 0, 18033, 1, 0, 0, -1, 0, -1, 21364, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robes of Transcendence | Armor: 116 | Intellect: 27 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18037
(16923, 4, 1, 'Robes of Transcendence', 34047, 4, 0, 1, 291748, 58349, 20, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18037, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Transcendence | Armor: 87 | Intellect: 25 | Spirit: 13 | Stamina: 12 | Fire Resistance: 10 | SpellID 1: 9315
(16924, 4, 1, 'Pauldrons of Transcendence', 34048, 4, 0, 1, 219593, 43918, 3, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 13, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Transcendence | Armor: 65 | Intellect: 26 | Spirit: 9 | Stamina: 14 | Shadow Resistance: 10 | SpellID 1: 9315
(16925, 4, 1, 'Belt of Transcendence', 34053, 4, 0, 1, 150767, 30153, 6, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 9, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bindings of Transcendence | Armor: 51 | Intellect: 13 | Spirit: 16 | Stamina: 9 | SpellID 1: 9318
(16926, 4, 1, 'Bindings of Transcendence', 34052, 4, 0, 1, 151303, 30260, 9, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 16, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Boots | Armor: 80 | Intellect: 17 | Spirit: 6 | Stamina: 20 | Fire Resistance: 10 | SpellID 1: 14047
(16927, 4, 1, 'Nemesis Boots', 34015, 4, 0, 1, 227758, 45551, 8, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 6, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Gloves | Armor: 72 | Intellect: 15 | Stamina: 17 | Shadow Resistance: 10 | SpellID 1: 21347 | SpellID 2: 9344 | SpellID 3: 18384
(16928, 4, 1, 'Nemesis Gloves', 34013, 4, 0, 1, 137868, 27573, 10, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 0, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21347, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Skullcap | Armor: 94 | Intellect: 16 | Spirit: 6 | Stamina: 26 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 21347 | SpellID 2: 17367
(16929, 4, 1, 'Nemesis Skullcap', 34369, 4, 0, 1, 207606, 41521, 1, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 6, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 10, 10, 0, 0, 0, 0, 21347, 1, 0, 0, -1, 0, -1, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Leggings | Armor: 101 | Intellect: 16 | Spirit: 4 | Stamina: 23 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18055
(16930, 4, 1, 'Nemesis Leggings', 29857, 4, 0, 1, 277879, 55575, 7, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 4, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18055, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Robes | Armor: 116 | Intellect: 16 | Spirit: 8 | Stamina: 26 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18384 | SpellID 2: 17367
(16931, 4, 1, 'Nemesis Robes', 34014, 4, 0, 1, 278950, 55790, 20, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 8, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Spaulders | Armor: 87 | Intellect: 13 | Spirit: 6 | Stamina: 20 | Fire Resistance: 10 | SpellID 1: 21347 | SpellID 2: 14047
(16932, 4, 1, 'Nemesis Spaulders', 34022, 4, 0, 1, 209994, 41998, 3, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 6, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21347, 1, 0, 0, -1, 0, -1, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Belt | Armor: 65 | Intellect: 8 | Spirit: 6 | Stamina: 18 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 15715
(16933, 4, 1, 'Nemesis Belt', 34011, 4, 0, 1, 140532, 28106, 6, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 6, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Bracers | Armor: 51 | Intellect: 11 | Spirit: 6 | Stamina: 21 | SpellID 1: 9344
(16934, 4, 1, 'Nemesis Bracers', 34012, 4, 0, 1, 141067, 28213, 9, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 6, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Bracers | Armor: 211 | Agility: 23 | Intellect: 6 | Spirit: 6 | Stamina: 13
(16935, 4, 3, 'Dragonstalker\'s Bracers', 33666, 4, 0, 1, 212405, 42481, 9, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 5, 6, 6, 6, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Belt | Armor: 271 | Agility: 20 | Intellect: 13 | Spirit: 11 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 7597
(16936, 4, 3, 'Dragonstalker\'s Belt', 33665, 4, 0, 1, 213187, 42637, 6, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 13, 6, 11, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 271, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Spaulders | Armor: 362 | Agility: 23 | Intellect: 13 | Spirit: 6 | Stamina: 15 | Fire Resistance: 10 | SpellID 1: 15464
(16937, 4, 3, 'Dragonstalker\'s Spaulders', 34091, 4, 0, 1, 322412, 64482, 3, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 23, 5, 13, 6, 6, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 10, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Legguards | Armor: 422 | Agility: 31 | Intellect: 15 | Spirit: 8 | Stamina: 16 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 15464 | SpellID 2: 7597
(16938, 4, 3, 'Dragonstalker\'s Legguards', 33672, 4, 0, 1, 429588, 85917, 7, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 31, 5, 15, 6, 8, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 10, 0, 0, 0, 10, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Helm | Armor: 392 | Agility: 27 | Intellect: 16 | Spirit: 8 | Stamina: 26 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 7597
(16939, 4, 3, 'Dragonstalker\'s Helm', 34367, 4, 0, 1, 323363, 64672, 1, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 27, 5, 16, 6, 8, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 10, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Gauntlets | Armor: 301 | Agility: 20 | Intellect: 13 | Spirit: 6 | Stamina: 17 | Shadow Resistance: 10 | SpellID 1: 7597
(16940, 4, 3, 'Dragonstalker\'s Gauntlets', 33668, 4, 0, 1, 216379, 43275, 10, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 13, 6, 6, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 10, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Greaves | Armor: 332 | Agility: 30 | Intellect: 6 | Spirit: 6 | Stamina: 15 | Fire Resistance: 10
(16941, 4, 3, 'Dragonstalker\'s Greaves', 34269, 4, 0, 1, 335892, 67178, 8, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 30, 5, 6, 6, 6, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Dragonstalkers Breastplate | Armor: 482 | Agility: 34 | Intellect: 14 | Spirit: 6 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 7597
(16942, 4, 3, 'Dragonstalker\'s Breastplate', 33667, 4, 0, 1, 447482, 89496, 5, 4, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 34, 5, 14, 6, 6, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 10, 10, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 215, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracers of Ten Storms | Armor: 211 | Intellect: 16 | Spirit: 9 | Stamina: 13 | SpellID 1: 18379
(16943, 4, 3, 'Bracers of Ten Storms', 34079, 4, 0, 1, 224522, 44904, 9, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 9, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18379, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Ten Storms | Armor: 271 | Intellect: 18 | Spirit: 11 | Stamina: 13 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9315
(16944, 4, 3, 'Belt of Ten Storms', 34078, 4, 0, 1, 225326, 45065, 6, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 11, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 271, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Epaulets of Ten Storms | Armor: 362 | Intellect: 17 | Spirit: 8 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 18384
(16945, 4, 3, 'Epaulets of Ten Storms', 34255, 4, 0, 1, 340702, 68140, 3, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 8, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Ten Storms | Armor: 422 | Intellect: 18 | Spirit: 20 | Stamina: 16 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18384 | SpellID 2: 13881
(16946, 4, 3, 'Legplates of Ten Storms', 34084, 4, 0, 1, 453866, 90773, 7, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 20, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 13881, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helmet of Ten Storms | Armor: 392 | Intellect: 24 | Spirit: 12 | Stamina: 20 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9415 | SpellID 3: 9406
(16947, 4, 3, 'Helmet of Ten Storms', 34217, 4, 0, 1, 341572, 68314, 1, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 12, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 10, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 9406, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Ten Storms | Armor: 301 | Intellect: 17 | Spirit: 13 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9398 | SpellID 3: 7681
(16948, 4, 3, 'Gauntlets of Ten Storms', 34082, 4, 0, 1, 206780, 41356, 10, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 13, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9398, 1, 0, 0, -1, 0, -1, 7681, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Greaves of Ten Storms | Armor: 332 | Intellect: 16 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 14799
(16949, 4, 3, 'Greaves of Ten Storms', 34083, 4, 0, 1, 312760, 62552, 8, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Ten Storms | Armor: 482 | Intellect: 31 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 14047
(16950, 4, 3, 'Breastplate of Ten Storms', 34081, 4, 0, 1, 416775, 83355, 5, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 10, 10, 0, 0, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Bindings | Armor: 375 | Intellect: 9 | Spirit: 8 | Stamina: 21 | Strength: 9 | SpellID 1: 9397
(16951, 4, 4, 'Judgement Bindings', 33634, 4, 0, 1, 139446, 27889, 9, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 9, 6, 8, 7, 21, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Belt | Armor: 482 | Intellect: 20 | Spirit: 6 | Stamina: 14 | Strength: 8 | Shadow Resistance: 10 | SpellID 1: 14047
(16952, 4, 4, 'Judgement Belt', 33633, 4, 0, 1, 139982, 27996, 6, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 6, 7, 14, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 10, 0, 0, 0, 0, 14047, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Spaulders | Armor: 642 | Intellect: 14 | Spirit: 6 | Stamina: 20 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 21363 | SpellID 2: 9342
(16953, 4, 4, 'Judgement Spaulders', 34258, 4, 0, 1, 210776, 42155, 3, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 6, 7, 20, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21363, 1, 0, 0, -1, 0, -1, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Legplates | Armor: 749 | Intellect: 27 | Spirit: 5 | Stamina: 26 | Strength: 10 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 14799 | SpellID 2: 21362
(16954, 4, 4, 'Judgement Legplates', 33637, 4, 0, 1, 282077, 56415, 7, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 5, 7, 26, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 10, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 21362, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Crown | Armor: 696 | Intellect: 23 | Spirit: 6 | Stamina: 18 | Strength: 17 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 17367
(16955, 4, 4, 'Judgement Crown', 34216, 4, 0, 1, 212361, 42472, 1, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 6, 7, 18, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 0, 0, 0, 10, 10, 0, 0, 0, 0, 17367, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Gauntlets | Armor: 535 | Intellect: 20 | Spirit: 6 | Stamina: 15 | Strength: 6 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9344
(16956, 4, 4, 'Judgement Gauntlets', 33636, 4, 0, 1, 142110, 28422, 10, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 6, 7, 15, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Sabatons | Armor: 589 | Intellect: 14 | Spirit: 8 | Stamina: 20 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 9346
(16957, 4, 4, 'Judgement Sabatons', 33639, 4, 0, 1, 219723, 43944, 8, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 8, 7, 20, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Breastplate | Armor: 857 | Intellect: 21 | Spirit: 5 | Stamina: 21 | Strength: 16 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 21363 | SpellID 2: 15715
(16958, 4, 4, 'Judgement Breastplate', 33635, 4, 0, 1, 294007, 58801, 5, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 5, 7, 21, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 10, 10, 0, 0, 0, 0, 0, 0, 21363, 1, 0, 0, -1, 0, -1, 15715, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracelets of Wrath | Armor: 375 | Stamina: 27 | Strength: 13
(16959, 4, 4, 'Bracelets of Wrath', 33982, 4, 0, 1, 147539, 29507, 9, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Waistband of Wrath | Armor: 482 | Stamina: 20 | Strength: 20 | Shadow Resistance: 10 | SpellID 1: 13676 | SpellID 2: 13385
(16960, 4, 4, 'Waistband of Wrath', 33990, 4, 0, 1, 148074, 29614, 6, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13676, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Wrath | Armor: 642 | Stamina: 27 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 23516 | SpellID 2: 13385
(16961, 4, 4, 'Pauldrons of Wrath', 34253, 4, 0, 1, 222915, 44583, 3, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 10, 0, 0, 0, 0, 0, 0, 0, 23516, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Wrath | Armor: 749 | Stamina: 27 | Strength: 19 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 13670 | SpellID 2: 18185
(16962, 4, 4, 'Legplates of Wrath', 33986, 4, 0, 1, 298263, 59652, 7, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 10, 0, 0, 0, 13670, 1, 0, 0, -1, 0, -1, 18185, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Wrath | Armor: 696 | Stamina: 40 | Strength: 17 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 18185
(16963, 4, 4, 'Helm of Wrath', 34215, 4, 0, 1, 224501, 44900, 1, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 40, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 0, 0, 0, 10, 10, 0, 0, 0, 0, 18185, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Wrath | Armor: 535 | Stamina: 20 | Strength: 15 | Shadow Resistance: 10 | SpellID 1: 13665 | SpellID 2: 13385
(16964, 4, 4, 'Gauntlets of Wrath', 33984, 4, 0, 1, 150203, 30040, 10, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sabatons of Wrath | Armor: 589 | Stamina: 30 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 23515 | SpellID 2: 13385
(16965, 4, 4, 'Sabatons of Wrath', 33989, 4, 0, 1, 226108, 45221, 8, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 30, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 10, 0, 0, 0, 0, 0, 0, 0, 23515, 1, 0, 0, -1, 0, -1, 13385, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Wrath | Armor: 857 | Stamina: 40 | Strength: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18185
(16966, 4, 4, 'Breastplate of Wrath', 33983, 4, 0, 1, 302519, 60503, 5, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 40, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18185, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1);

-- * ADDITIONAL FIXES	
