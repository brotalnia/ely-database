-- 1.7 → 1.8 | Dragons of Nightmare

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

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
66,    -- Dragons of Nightmare Spawn
165    -- Patch 1.8
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
20130, -- Diamond Flask | LVL 50 class quest (warrior), see 1.8 retail patch notes
20295, -- Blue Dragonscale Leggings | 1.8 patch notes
20296, -- Green Dragonscale Gauntlets | 1.8 patch notes
20369, -- Azurite Fists | LVL 50 class quest (shaman), see retail 1.8 patch notes
20380, -- Dreamscale Breastplate | New CC rep reward, using emerald dragon loot
20382, -- Pattern: Dreamscale Breastplate | New CC rep reward, using emerald dragon loot
20391, -- Flimsy Male Gnome Mask | Hallow's Eve event added (see 1.8 patch notes)
20392, -- Flimsy Female Gnome Mask | Hallow's Eve event added (see 1.8 patch notes)
20406, -- Twilight Cultist Mantle | Silithus windstone revamp
20407, -- Twilight Cultist Robe | Silithus windstone revamp
20408, -- Twilight Cultist Cowl | Silithus windstone revamp
20425, -- Advisor's Gnarled Staff | 10-19 PvP bracket expansion (1.8 Patch notes)
20426, -- Advisor's Ring | 10-19 PvP bracket expansion (1.8 Patch notes)
20427, -- Battle Healer's Cloak | 10-19 PvP bracket expansion (1.8 Patch notes)
20428, -- Caretaker's Cape | 10-19 PvP bracket expansion (1.8 Patch notes)
20429, -- Legionnaire's Band | 10-19 PvP bracket expansion (1.8 Patch notes)
20430, -- Legionnaire's Sword | 10-19 PvP bracket expansion (1.8 Patch notes)
20431, -- Lorekeeper's Ring | 10-19 PvP bracket expansion (1.8 Patch notes)
20434, -- Lorekeeper's Staff | 10-19 PvP bracket expansion (1.8 Patch notes)
20437, -- Outrider's Bow | 10-19 PvP bracket expansion (1.8 Patch notes)
20438, -- Outrunner's Bow | 10-19 PvP bracket expansion (1.8 Patch notes)
20439, -- Protector's Band | 10-19 PvP bracket expansion (1.8 Patch notes)
20440, -- Protector's Sword | 10-19 PvP bracket expansion (1.8 Patch notes)
20441, -- Scout's Blade | 10-19 PvP bracket expansion (1.8 Patch notes)
20442, -- Scout's Medallion | 10-19 PvP bracket expansion (1.8 Patch notes)
20443, -- Sentinel's Blade | 10-19 PvP bracket expansion (1.8 Patch notes)
20444, -- Sentinel's Medallion | 10-19 PvP bracket expansion (1.8 Patch notes)
20451, -- Twilight Cultist Ring of Lordship | Silithus windstones
20476, -- Sandstalker Bracers | Silithus quest revamp
20477, -- Sandstalker Gauntlets | Silithus quest revamp
20478, -- Sandstalker Breastplate | Silithus quest revamp
20479, -- Spitfire Breastplate | Silithus quest revamp
20480, -- Spitfire Gauntlets | Silithus quest revamp
20481, -- Spitfire Bracers | Silithus quest revamp
20487, -- Lok'delar, Stave of the Ancient Keepers DEP | Note: Items were split in two in patch 1.8, which is their current status in game files
20488, -- Rhok'delar, Longbow of the Ancient Keepers DEP | Note: Items were split in two in patch 1.8, which is their current status in game files
20503, -- Enamored Water Spirit | LVL 50 class quest (shaman), see retail 1.8 patch notes
20504, -- Lightforged Blade | LVL 50 class quest (paladin), see retail 1.8 patch notes
20505, -- Chivalrous Signet | LVL 50 class quest (paladin), see retail 1.8 patch notes
20506, -- Pattern: Spitfire Bracers | Silithus quest revamp
20507, -- Pattern: Spitfire Gauntlets | Silithus quest revamp
20508, -- Pattern: Spitfire Breastplate | Silithus quest revamp
20509, -- Pattern: Sandstalker Bracers | Silithus quest revamp
20510, -- Pattern: Sandstalker Gauntlets | Silithus quest revamp
20511, -- Pattern: Sandstalker Breastplate | Silithus quest revamp
20512, -- Sanctified Orb | LVL 50 class quest (paladin), see retail 1.8 patch notes
20517, -- Razorsteel Shoulders | LVL 50 class quest (warrior), see 1.8 retail patch notes
20521, -- Fury Visor | LVL 50 class quest (warrior), see 1.8 retail patch notes
20530, -- Robes of Servitude | LVL 50 class quest (warlock), see 1.8 retail patch notes
20534, -- Abyss Shard | LVL 50 class quest (warlock), see 1.8 retail patch notes
20536, -- Soul Harvester | LVL 50 class quest (warlock), see 1.8 retail patch notes
20537, -- Runed Stygian Boots | Silithus revamp
20538, -- Runed Stygian Leggings | Silithus revamp
20539, -- Runed Stygian Belt | Silithus revamp
20546, -- Pattern: Runed Stygian Leggings | Silithus revamp
20547, -- Pattern: Runed Stygian Boots | Silithus revamp
20548, -- Pattern: Runed Stygian Belt | Silithus revamp
20549, -- Darkrune Gauntlets | Silithus revamp
20550, -- Darkrune Breastplate | Silithus revamp
20551, -- Darkrune Helm | Silithus revamp
20553, -- Plans: Darkrune Gauntlets | Silithus revamp
20554, -- Plans: Darkrune Breastplate | Silithus revamp
20555, -- Plans: Darkrune Helm | Silithus revamp
20556, -- Wildstaff | LVL 50 class quest (shaman), see retail 1.8 patch notes
20561, -- Flimsy Male Dwarf Mask | Hallow's Eve event added (see 1.8 patch notes)
20562, -- Flimsy Female Dwarf Mask | Hallow's Eve event added (see 1.8 patch notes)
20563, -- Flimsy Female Nightelf Mask | Hallow's Eve event added (see 1.8 patch notes)
20564, -- Flimsy Male Nightelf Mask | Hallow's Eve event added (see 1.8 patch notes)
20565, -- Flimsy Female Human Mask | Hallow's Eve event added (see 1.8 patch notes)
20566, -- Flimsy Male Human Mask | Hallow's Eve event added (see 1.8 patch notes)
20567, -- Flimsy Female Troll Mask | Hallow's Eve event added (see 1.8 patch notes)
20568, -- Flimsy Male Troll Mask | Hallow's Eve event added (see 1.8 patch notes)
20569, -- Flimsy Female Orc Mask | Hallow's Eve event added (see 1.8 patch notes)
20570, -- Flimsy Male Orc Mask | Hallow's Eve event added (see 1.8 patch notes)
20571, -- Flimsy Female Tauren Mask | Hallow's Eve event added (see 1.8 patch notes)
20572, -- Flimsy Male Tauren Mask | Hallow's Eve event added (see 1.8 patch notes)
20573, -- Flimsy Male Undead Mask | Hallow's Eve event added (see 1.8 patch notes)
20574, -- Flimsy Female Undead Mask | Hallow's Eve event added (see 1.8 patch notes)
20575, -- Black Whelp Tunic | Allakhazam comments
20576, -- Pattern: Black Whelp Tunic | Allakhazam comments
20577, -- Nightmare Blade | Emerald dragon loot
20578, -- Emerald Dragonfang | Emerald dragon loot
20579, -- Green Dragonskin Cloak | Emerald dragon loot
20580, -- Hammer of Bestial Fury | Emerald dragon loot
20581, -- Staff of Rampant Growth | Emerald dragon loot
20582, -- Trance Stone | Emerald dragon loot
20599, -- Polished Ironwood Crossbow | Emerald dragon loot
20600, -- Malfurion's Signet Ring | Emerald dragon loot
20615, -- Dragonspur Wraps | Emerald dragon loot
20616, -- Dragonbone Wristguards | Emerald dragon loot
20617, -- Ancient Corroded Leggings | Emerald dragon loot
20618, -- Gloves of Delusional Power | Emerald dragon loot
20619, -- Acid Inscribed Greaves | Emerald dragon loot
20621, -- Boots of the Endless Moor | Emerald dragon loot
20622, -- Dragonheart Necklace | Emerald dragon loot
20623, -- Circlet of Restless Dreams | Emerald dragon loot
20624, -- Ring of the Unliving | Emerald dragon loot
20625, -- Belt of the Dark Bog | Emerald dragon loot
20626, -- Black Bark Wristbands | Emerald dragon loot
20627, -- Dark Heart Pants | Emerald dragon loot
20628, -- Deviate Growth Cap | Emerald dragon loot
20629, -- Malignant Footguards | Emerald dragon loot
20630, -- Gauntlets of the Shining Light | Emerald dragon loot
20631, -- Mendicant's Slippers | Emerald dragon loot
20632, -- Mindtear Band | Emerald dragon loot
20633, -- Unnatural Leather Spaulders | Emerald dragon loot
20634, -- Boots of Fright | Emerald dragon loot
20635, -- Jade Inlaid Vestments | Emerald dragon loot
20636, -- Hibernation Crystal | Emerald dragon loot
20637, -- Acid Inscribed Pauldrons | Emerald dragon loot
20638, -- Leggings of the Demented Mind | Emerald dragon loot
20639, -- Strangely Glyphed Legplates | Emerald dragon loot
20640, -- Southsea Head Bucket | New Tanaris quests added (Allakhazam comment dates)
20641, -- Southsea Mojo Boots | New Tanaris quests added (Allakhazam comment dates)
20642, -- Antiquated Nobleman's Tunic | New quests added (Allakhazam comment dates)
20643, -- Undercity Reservist's Cap | New quests added (Allakhazam comment dates)
20645, -- Nature's Whisper | Silithus quest revamp
20646, -- Sandstrider's Mark | Silithus quest revamp
20647, -- Black Crystal Dagger | Silithus quest revamp
20648, -- Cold Forged Hammer | New AV quest reward (see 1.8 patch notes)
20649, -- Sunprism Pendant | Silithus quest revamp
20650, -- Desert Wind Gauntlets | Silithus quest revamp
20654, -- Amethyst War Staff | Silithus windstones
20657, -- Crystal Tipped Stiletto | Silithus windstones
20660, -- Stonecutting Glaive | Silithus windstones
20663, -- Deep Strike Bow | Silithus windstones
20666, -- Hardened Steel Warhammer | Silithus windstones
20669, -- Darkstone Claymore | Silithus windstones
20672, -- Sparkling Crystal Wand | Silithus windstones
20675, -- Soulrender | Silithus windstones
20682, -- Elemental Focus Band | Silithus windstones
20685, -- Wavefront Necklace | Silithus windstones
20688, -- Earthen Guard | Silithus windstones
20691, -- Windshear Cape | Silithus windstones
20693, -- Weighted Cloak | Silithus windstones (spoils bag)
20694, -- Glowing Black Orb | Silithus windstones (spoils bag)
20695, -- Abyssal War Beads | Silithus windstones (spoils bag)
20696, -- Crystal Spiked Maul | Silithus windstones (spoils bag)
20697, -- Crystalline Threaded Cape | Silithus windstones (spoils bag)
20698, -- Elemental Attuned Blade | Silithus windstones (spoils bag)
20699, -- Cenarion Reservist's Legplates | Silithus quest revamp
20700, -- Cenarion Reservist's Legplates | Silithus quest revamp
20701, -- Cenarion Reservist's Legguards | Silithus quest revamp
20702, -- Cenarion Reservist's Legguards | Silithus quest revamp
20703, -- Cenarion Reservist's Leggings | Silithus quest revamp
20704, -- Cenarion Reservist's Leggings | Silithus quest revamp
20705, -- Cenarion Reservist's Pants | Silithus quest revamp
20706, -- Cenarion Reservist's Pants | Silithus quest revamp
20707, -- Cenarion Reservist's Pants | Silithus quest revamp
20710, -- Crystal Encrusted Greaves | Silithus quest revamp
20711, -- Crystal Lined Greaves | Silithus quest revamp
20712, -- Wastewalker's Gauntlets | Silithus quest revamp
20713, -- Desertstalkers's Gauntlets | Silithus quest revamp
20714, -- Sandstorm Boots | Silithus quest revamp
20715, -- Dunestalker's Boots | Silithus quest revamp
20716, -- Sandworm Skin Gloves | Silithus quest revamp
20717, -- Desert Bloom Gloves | Silithus quest revamp
20720, -- Dark Whisper Blade | Silithus windstones (spoils bag)
20721, -- Band of the Cultist | Silithus windstones (spoils bag)
20722, -- Crystal Slugthrower | Silithus windstones (spoils bag)
20723, -- Brann's Trusty Pick | Silithus quest revamp
20724, -- Corrupted Blackwood Staff | Silithus quest revamp
21524, -- Red Winter Hat | Allakhazam comment dates
21525, -- Green Winter Hat | Allakhazam comment dates
);
 
-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);
	
-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
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
8861  -- New Year Celebrations! | New years quest added at end of 2005 (just before 1.9 released)
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

-- * ITEM STATS | Items changed: 

-- * ADDITIONAL FIXES	
