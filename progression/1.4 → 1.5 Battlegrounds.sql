-- 1.4 → 1.5 | Battlegrounds

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

UPDATE `battleground_template` SET `MinLvl` = 51, `MaxLvl` = 60 WHERE `id` = 1; -- Alterac Valley (Patch 1.5)
UPDATE `battleground_template` SET `MinLvl` = 10, `MaxLvl` = 60 WHERE `id` = 1; -- Warsong Gulch (Patch 1.5)

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
17690, -- Frostwolf Insignia Rank 1 | AV Rewards
17691, -- Stormpike Insignia Rank 1 | AV Rewards
17900, -- Stormpike Insignia Rank 2 | AV Rewards
17901, -- Stormpike Insignia Rank 3 | AV Rewards
17902, -- Stormpike Insignia Rank 4 | AV Rewards
17903, -- Stormpike Insignia Rank 5 | AV Rewards
17904, -- Stormpike Insignia Rank 6 | AV Rewards
17905, -- Frostwolf Insignia Rank 2 | AV Rewards
17906, -- Frostwolf Insignia Rank 3 | AV Rewards
17907, -- Frostwolf Insignia Rank 4 | AV Rewards
17908, -- Frostwolf Insignia Rank 5 | AV Rewards
17909, -- Frostwolf Insignia Rank 6 | AV Rewards
19029, -- Horn of the Frostwolf Howler | AV Rep reward
18945, -- Dark Iron Residue | Thorium Brotherhood quests added with 1.5 (see retail patch notes)
18948, -- Barbaric Bracers | See 1.5 retail patch notes
18949, -- Pattern: Barbaric Bracers | See 1.5 retail patch notes
18957, -- Brushwood Blade | Quest reward from 2561 changed from 9602 (2h) to 18957 (1h) sword to reflect night elf starting proficiencies
18970, -- Ring of Critical Testing 2 | Test item, not in game
18984, -- Dimensional Ripper - Everlook | See 1.5 retail patch notes
18986, -- Ultrasafe Transporter: Gadgetzan | See 1.5 retail patch notes
19022, -- Nat Pagle's Extreme Angler FC-5000 | Quests added to Revantusk Village (See retail patch notes)
19028, -- Elegant Dress | Replaces easter dress
19031, -- Frostwolf Battle Tabard | AV Rep Rewards
19032, -- Stormpike Battle Tabard | AV Rep Rewards
19037, -- Emerald Peak Spaulders | Quests added to Feralas (1.5 patch notes)
19038, -- Ring of Subtlety | Quests added to Feralas (1.5 patch notes)
19039, -- Zorbin's Water Resistant Hat | Quests added to Feralas (1.5 patch notes)
19040, -- Zorbin's Mega-Slicer | Quests added to Feralas (1.5 patch notes)
19041, -- Pratt's Handcrafted Tunic | "Quest ""Improved Quality"" added in 1.5 (allakhazam dating and inference from item/quest ID)"
19042, -- Jangdor's Handcrafted Tunic | "Quest ""Improved Quality"" added in 1.5 (allakhazam dating and inference from item/quest ID)"
19083, -- Frostwolf Legionnaire's Cloak | AV Rep Rewards
19084, -- Stormpike Soldier's Cloak | AV Rep Rewards
19085, -- Frostwolf Advisor's Cloak | AV Rep Rewards
19086, -- Stormpike Sage's Cloak | AV Rep Rewards
19087, -- Frostwolf Plate Belt | AV Rep Rewards
19088, -- Frostwolf Mail Belt | AV Rep Rewards
19089, -- Frostwolf Leather Belt | AV Rep Rewards
19090, -- Frostwolf Cloth Belt | AV Rep Rewards
19091, -- Stormpike Plate Girdle | AV Rep Rewards
19092, -- Stormpike Mail Girdle | AV Rep Rewards
19093, -- Stormpike Leather Girdle | AV Rep Rewards
19094, -- Stormpike Cloth Girdle | AV Rep Rewards
19095, -- Frostwolf Legionnaire's Pendant | AV Rep Rewards
19096, -- Frostwolf Advisor's Pendant | AV Rep Rewards
19097, -- Stormpike Soldier's Pendant | AV Rep Rewards
19098, -- Stormpike Sage's Pendant | AV Rep Rewards
19099, -- Glacial Blade | AV Rep rewards
19100, -- Electrified Dagger | AV Rep Rewards
19101, -- Whiteout Staff | AV Rep rewards
19102, -- Crackling Staff | AV Rep Rewards
19103, -- Frostbite | AV Rep rewards
19104, -- Stormstrike Hammer | AV Rep rewards
19105, -- Frost Runed Headdress | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19106, -- Ice Barbed Spear | AV Quest Rewards
19107, -- Bloodseeker | AV Quest Rewards
19108, -- Wand of Biting Cold | AV Quest Rewards
19109, -- Deep Rooted Ring | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19110, -- Cold Forged Blade | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19111, -- Winteraxe Epaulets | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19112, -- Frozen Steel Vambraces | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19113, -- Yeti Hide Bracers | Note: Blizzard removed this in patch 1.6 with the AV overhaul (we have AV in pre-nerf state though)
19114, -- Highland Bow | Quests added to Revantusk Village (See retail patch notes)
19115, -- Flask of Forest Mojo | Quests added to Revantusk Village (See retail patch notes)
19116, -- Greenleaf Handwraps | Quests added to Revantusk Village (See retail patch notes)
19117, -- Laquered Wooden Plate Legplates | Quests added to Revantusk Village (See retail patch notes)
19118, -- Nature's Breath | Quests added to Revantusk Village (See retail patch notes)
19119, -- Owlbeast Hide Gloves | Quests added to Revantusk Village (See retail patch notes)
19120, -- Rune of the Guard Captain | Quests added to Revantusk Village (See retail patch notes)
19121, -- Deep Woodlands Cloak | Quests added to Revantusk Village (See retail patch notes)
19123, -- Everwarm Handwraps | Quests added to Thorium Point (See retail patch notes)
19124, -- Slagplate Leggings | Quests added to Thorium Point (See retail patch notes)
19125, -- Seared Mail Girdle | Quests added to Thorium Point (See retail patch notes)
19126, -- Slagplate Gauntlets | Quests added to Thorium Point (See retail patch notes)
19127, -- Charred Leather Tunic | Quests added to Thorium Point (See retail patch notes)
19128, -- Seared Mail Vest | Quests added to Thorium Point (See retail patch notes)
19130, -- Cold Snap | New loot added to Azuregos (1.5 retail patch notes)
19131, -- Snowblind Shoes | New loot added to Azuregos (1.5 retail patch notes)
19132, -- Crystal Adorned Crown | New loot added to Azuregos (1.5 retail patch notes)
19133, -- Fel Infused Leggings | New loot added to Kazzak (1.5 retail patch notes)
19134, -- Flayed Doomguard Belt | New loot added to Kazzak (1.5 retail patch notes)
19135, -- Blacklight Bracer | New loot added to Kazzak (1.5 retail patch notes)
19136, -- Mana Igniting Cord | New loot added to Molten Core bosses (1.5 retail patch notes)
19137, -- Onslaught Girdle | New loot added to Molten Core bosses (1.5 retail patch notes)
19138, -- Band of Sulfuras | New loot added to Molten Core bosses (1.5 retail patch notes)
19139, -- Fireguard Shoulders | New loot added to Molten Core bosses (1.5 retail patch notes)
19140, -- Cauterizing Band | New loot added to Molten Core bosses (1.5 retail patch notes)
19141, -- Luffa | Quests added to Thorium Point (See retail patch notes)
19142, -- Fire Runed Grimoire | New loot added to Molten Core bosses (1.5 retail patch notes)
19143, -- Flameguard Gauntlets | New loot added to Molten Core bosses (1.5 retail patch notes)
19144, -- Sabatons of the Flamewalker | New loot added to Molten Core bosses (1.5 retail patch notes)
19145, -- Robe of Volatile Power | New loot added to Molten Core bosses (1.5 retail patch notes)
19146, -- Wristguards of Stability | New loot added to Molten Core bosses (1.5 retail patch notes)
19147, -- Ring of Spell Power | New loot added to Molten Core bosses (1.5 retail patch notes)
19159, -- Woven Ivy Necklace | Quests added to Revantusk Village (See retail patch notes)
19308, -- Tome of Arcane Domination | AV Rep Rewards
19309, -- Tome of Shadow Force | AV Rep Rewards
19310, -- Tome of the Ice Lord | AV Rep Rewards
19311, -- Tome of Fiery Arcana | AV Rep Rewards
19312, -- Lei of the Lifegiver | AV Rep Rewards
19315, -- Therazane's Touch | AV Rep Rewards
19321, -- The Immovable Object | AV Rep Rewards
19323, -- The Unstoppable Force | AV Rep Rewards
19324, -- The Lobotomizer | AV Rep Rewards
19325 -- Don Julio's Band | AV Rep Rewards
);
 
-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);
	
-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
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
7876  -- Quell the Silverwing Usurpers | Deprecated WSG quest for Silverwing/Warsong talismans
);

-- * NEW SPELLS	

DELETE FROM spell_disabled WHERE entry IN (
);
			
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
-- Arcanist Crown | Armor: 83 | Stamina: 14 | Intellect: 35 | Spirit: 8 | Fire Resistance: 10 | SpellID 1: 9344
(16795, 4, 1, 'Arcanist Crown', 31517, 4, 0, 1, 136797, 27359, 1, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 14, 5, 35, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Leggings | Armor: 89 | Intellect: 24 | Spirit: 13 | Stamina: 23 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9404
(16796, 4, 1, 'Arcanist Leggings', 30582, 4, 0, 1, 169953, 33990, 7, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 13, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9404, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Mantle | Armor: 76 | Intellect: 24 | Spirit: 5 | Stamina: 10 | Shadow Resistance: 7 | SpellID 1: 21618 | SpellID 2: 9402
(16797, 4, 1, 'Arcanist Mantle', 30586, 4, 0, 1, 127958, 25591, 3, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 5, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 7, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 9402, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Robes | Armor: 102 | Intellect: 33 | Spirit: 14 | Stamina: 19 | Fire Resistance: 10 | SpellID 1: 9345
(16798, 4, 1, 'Arcanist Robes', 30581, 4, 0, 1, 171269, 34253, 20, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 33, 6, 14, 7, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Bindings | Armor: 44 | Intellect: 20 | Stamina: 6 | Spirit: 8 | Fire Resistance: 7 | Frost Resistance: 4 | Arcane Resistance: 4 | SpellID 1: 9396 | SpellID 2: 21624
(16799, 4, 1, 'Arcanist Bindings', 30584, 4, 0, 1, 85963, 17192, 9, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 7, 6, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 7, 0, 4, 0, 4, 0, 0, 0, 9396, 1, 0, 0, -1, 0, -1, 21624, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Boots | Armor: 70 | Stamina: 13 | Intellect: 15 | Spirit: 14 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9402
(16800, 4, 1, 'Arcanist Boots', 30587, 4, 0, 1, 129425, 25885, 8, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 5, 15, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9402, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Gloves | Armor: 63 | Intellect: 18 | Spirit: 10 | Stamina: 17 | Fire Resistance: 7 | SpellID 1: 21618
(16801, 4, 1, 'Arcanist Gloves', 30585, 4, 0, 1, 86612, 17322, 10, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 10, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21618, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Arcanist Belt | Armor: 57 | Intellect: 26 | Spirit: 10 | Stamina: 10 | Fire Resistance: 7 | SpellID 1: 9415
(16802, 4, 1, 'Arcanist Belt', 30583, 4, 0, 1, 86941, 17388, 6, 128, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 7, 0, 0, 0, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 201, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Slippers | Armor: 70 | Intellect: 10 | Spirit: 8 | Stamina: 27 | Shadow Resistance: 7 | SpellID 1: 9412
(16803, 4, 1, 'Felheart Slippers', 31975, 4, 0, 1, 130905, 26181, 8, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 6, 8, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9412, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Bracers | Armor: 44 | Intellect: 11 | Spirit: 8 | Stamina: 18 | SpellID 1: 21346 | SpellID 2: 7708
(16804, 4, 1, 'Felheart Bracers', 31970, 4, 0, 1, 87589, 17517, 9, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 11, 6, 8, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21346, 1, 0, 0, -1, 0, -1, 7708, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Gloves | Armor: 63 | Intellect: 15 | Spirit: 8 | Stamina: 18 | Fire Resistance: 7 | SpellID 1: 18384 | SpellID 2: 9415
(16805, 4, 1, 'Felheart Gloves', 31971, 4, 0, 1, 87918, 17583, 10, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 8, 7, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 7, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Belt | Armor: 57 | Intellect: 14 | Spirit: 13 | Stamina: 14 | Fire Resistance: 7 | SpellID 1: 21348 | SpellID 2: 9412
(16806, 4, 1, 'Felheart Belt', 31969, 4, 0, 1, 88247, 17649, 6, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 14, 6, 13, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 7, 0, 0, 0, 0, 0, 0, 0, 21348, 1, 0, 0, -1, 0, -1, 9412, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Shoulder Pads | Armor: 76 | Intellect: 17 | Spirit: 7 | Stamina: 25 | Shadow Resistance: 7 | SpellID 1: 9415
(16807, 4, 1, 'Felheart Shoulder Pads', 31974, 4, 0, 1, 132864, 26572, 3, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 7, 7, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 7, 0, 0, 0, 0, 9415, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Horns | Armor: 83 | Intellect: 20 | Spirit: 12 | Stamina: 27 | Fire Resistance: 10 | SpellID 1: 21595 | SpellID 2: 9414
(16808, 4, 1, 'Felheart Horns', 31987, 4, 0, 1, 133344, 26668, 1, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 12, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21595, 1, 0, 0, -1, 0, -1, 9414, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Robes | Armor: 102 | Intellect: 20 | Spirit: 10 | Stamina: 31 | Fire Resistance: 10 | SpellID 1: 9417
(16809, 4, 1, 'Felheart Robes', 31973, 4, 0, 1, 178450, 35690, 20, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 10, 7, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Felheart Pants | Armor: 89 | Intellect: 19 | Spirit: 19 | Stamina: 20 | Shadow Resistance: 10 | SpellID 1: 21601 | SpellID 2: 9417
(16810, 4, 1, 'Felheart Pants', 31972, 4, 0, 1, 179108, 35821, 7, 256, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 19, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21601, 1, 0, 0, -1, 0, -1, 9417, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 203, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
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
-- Netherwind Belt | Armor: 65 | Intellect: 25 | Spirit: 13 | Stamina: 12 | Shadow Resistance: 10 | SpellID 1: 9343
(16818, 4, 1, 'Netherwind Belt', 34046, 4, 0, 1, 139475, 27895, 6, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 13, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Vambraces of Prophecy | Armor: 44 | Stamina: 8 | Intellect: 12 | Spirit: 7 | SpellID 1: 21624 | SpellID 2: 9407
(16819, 4, 1, 'Vambraces of Prophecy', 30617, 4, 0, 1, 85945, 17189, 9, 16, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 8, 5, 12, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21624, 1, 0, 0, -1, 0, -1, 9407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 202, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
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
-- Breastplate of Might | Armor: 749 | Stamina: 28 | Strength: 20 | Fire Resistance: 10 | SpellID 1: 13676 | SpellID 2: 13386
(16865, 4, 4, 'Breastplate of Might', 31021, 4, 0, 1, 180477, 36095, 5, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 28, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13676, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Might | Armor: 608 | Stamina: 35 | Strength: 15 | Fire Resistance: 10 | SpellID 1: 13669 | SpellID 2: 13386
(16866, 4, 4, 'Helm of Might', 31260, 4, 0, 1, 135851, 27170, 1, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 35, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 608, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Might | Armor: 655 | Stamina: 23 | Strength: 24 | Shadow Resistance: 10 | SpellID 1: 13665 | SpellID 2: 13386
(16867, 4, 4, 'Legplates of Might', 31023, 4, 0, 1, 181792, 36358, 7, 1, -1, 66, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 4, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 655, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 209, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
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
-- Stormrage Legguards | Armor: 197 | Intellect: 26 | Spirit: 23 | Stamina: 17 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18034
(16901, 4, 2, 'Stormrage Legguards', 30540, 4, 0, 1, 362079, 72415, 7, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 23, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18034, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 90, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Pauldrons | Armor: 169 | Intellect: 23 | Spirit: 12 | Stamina: 15 | Fire Resistance: 10 | SpellID 1: 9316
(16902, 4, 2, 'Stormrage Pauldrons', 30546, 4, 0, 1, 272537, 54507, 3, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 12, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Stormrage Belt | Armor: 126 | Intellect: 25 | Spirit: 12 | Stamina: 13 | Shadow Resistance: 10 | SpellID 1: 9315
(16903, 4, 2, 'Stormrage Belt', 30541, 4, 0, 1, 182361, 36472, 6, 1024, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 12, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 214, 40, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
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
-- Netherwind Boots | Armor: 80 | Intellect: 20 | Spirit: 16 | Stamina: 13 | Fire Resistance: 10 | SpellID 1: 14254
(16912, 4, 1, 'Netherwind Boots', 34044, 4, 0, 1, 210038, 42007, 8, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 16, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Gloves | Armor: 72 | Intellect: 17 | Spirit: 14 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9344
(16913, 4, 1, 'Netherwind Gloves', 34041, 4, 0, 1, 140546, 28109, 10, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 14, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Crown | Armor: 94 | Intellect: 32 | Spirit: 12 | Stamina: 14 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 18049
(16914, 4, 1, 'Netherwind Crown', 34218, 4, 0, 1, 211623, 42324, 1, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 32, 6, 12, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 10, 10, 0, 0, 0, 0, 18049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Pants | Armor: 101 | Intellect: 27 | Spirit: 17 | Stamina: 16 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 14798
(16915, 4, 1, 'Netherwind Pants', 34039, 4, 0, 1, 283236, 56647, 7, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 17, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 10, 0, 0, 0, 10, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Robes | Armor: 116 | Intellect: 33 | Spirit: 10 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18384 | SpellID 2: 14254
(16916, 4, 1, 'Netherwind Robes', 34038, 4, 0, 1, 284307, 56861, 20, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 33, 6, 10, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Mantle | Armor: 87 | Intellect: 18 | Spirit: 13 | Stamina: 16 | Fire Resistance: 10 | SpellID 1: 21619 | SpellID 2: 9343
(16917, 4, 1, 'Netherwind Mantle', 34254, 4, 0, 1, 214012, 42802, 3, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 13, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21619, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Netherwind Bindings | Armor: 51 | Intellect: 19 | Spirit: 9 | Stamina: 9 | SpellID 1: 9416
(16918, 4, 1, 'Netherwind Bindings', 34045, 4, 0, 1, 143210, 28642, 9, 128, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 19, 6, 9, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9416, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 210, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Boots of Transcendence | Armor: 80 | Intellect: 17 | Spirit: 17 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 18029
(16919, 4, 1, 'Boots of Transcendence', 34055, 4, 0, 1, 215619, 43123, 8, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 17, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 18029, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Handguards of Transcendence | Armor: 72 | Intellect: 20 | Spirit: 13 | Stamina: 12 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9316
(16920, 4, 1, 'Handguards of Transcendence', 34051, 4, 0, 1, 144281, 28856, 10, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 13, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Halo of Transcendence | Armor: 94 | Intellect: 27 | Spirit: 22 | Stamina: 17 | Fire Resistance: 10 | Frost Resistance: 10 | SpellID 1: 18034
(16921, 4, 1, 'Halo of Transcendence', 34233, 4, 0, 1, 217204, 43440, 1, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 22, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 10, 0, 10, 0, 0, 0, 0, 0, 18034, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Leggings of Transcendence | Armor: 101 | Intellect: 21 | Spirit: 21 | Stamina: 16 | Shadow Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18033
(16922, 4, 1, 'Leggings of Transcendence', 34049, 4, 0, 1, 290677, 58135, 7, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 21, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 10, 10, 0, 0, 0, 18033, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Robes of Transcendence | Armor: 116 | Intellect: 27 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18037
(16923, 4, 1, 'Robes of Transcendence', 34047, 4, 0, 1, 291748, 58349, 20, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18037, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Transcendence | Armor: 87 | Intellect: 25 | Spirit: 13 | Stamina: 12 | Fire Resistance: 5 | Nature Resistance: 3 | SpellID 1: 9315
(16924, 4, 1, 'Pauldrons of Transcendence', 34048, 4, 0, 1, 219593, 43918, 3, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 25, 6, 13, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 5, 3, 0, 0, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Belt of Transcendence | Armor: 65 | Intellect: 26 | Spirit: 9 | Stamina: 14 | Shadow Resistance: 10 | SpellID 1: 9315
(16925, 4, 1, 'Belt of Transcendence', 34053, 4, 0, 1, 150767, 30153, 6, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 26, 6, 9, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9315, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bindings of Transcendence | Armor: 51 | Intellect: 13 | Spirit: 16 | Stamina: 9 | SpellID 1: 9318
(16926, 4, 1, 'Bindings of Transcendence', 34052, 4, 0, 1, 151303, 30260, 9, 16, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 16, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9318, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 211, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Boots | Armor: 80 | Intellect: 13 | Spirit: 10 | Stamina: 25 | Fire Resistance: 10 | SpellID 1: 9346
(16927, 4, 1, 'Nemesis Boots', 34015, 4, 0, 1, 227758, 45551, 8, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 10, 7, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Gloves | Armor: 72 | Intellect: 16 | Spirit: 7 | Stamina: 17 | Shadow Resistance: 10 | SpellID 1: 20885 | SpellID 2: 9343
(16928, 4, 1, 'Nemesis Gloves', 34013, 4, 0, 1, 137868, 27573, 10, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 7, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 10, 0, 0, 0, 0, 20885, 1, 0, 0, -1, 0, -1, 9343, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Skullcap | Armor: 94 | Intellect: 18 | Spirit: 13 | Stamina: 27 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 21599 | SpellID 2: 14799
(16929, 4, 1, 'Nemesis Skullcap', 34369, 4, 0, 1, 207606, 41521, 1, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 13, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 10, 10, 0, 0, 0, 0, 21599, 1, 0, 0, -1, 0, -1, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Leggings | Armor: 101 | Intellect: 17 | Spirit: 16 | Stamina: 27 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 14798
(16930, 4, 1, 'Nemesis Leggings', 29857, 4, 0, 1, 277879, 55575, 7, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 16, 7, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 10, 0, 0, 0, 10, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Robes | Armor: 116 | Intellect: 17 | Spirit: 6 | Stamina: 30 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18384 | SpellID 2: 14254
(16931, 4, 1, 'Nemesis Robes', 34014, 4, 0, 1, 278950, 55790, 20, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 6, 7, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Spaulders | Armor: 87 | Intellect: 13 | Spirit: 10 | Stamina: 20 | Fire Resistance: 10 | SpellID 1: 21598 | SpellID 2: 9346
(16932, 4, 1, 'Nemesis Spaulders', 34022, 4, 0, 1, 209994, 41998, 3, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 10, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21598, 1, 0, 0, -1, 0, -1, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 60, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Belt | Armor: 65 | Intellect: 17 | Spirit: 13 | Stamina: 17 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 9342
(16933, 4, 1, 'Nemesis Belt', 34011, 4, 0, 1, 140532, 28106, 6, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 13, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Nemesis Bracers | Armor: 51 | Intellect: 13 | Spirit: 9 | Stamina: 21 | SpellID 1: 9397
(16934, 4, 1, 'Nemesis Bracers', 34012, 4, 0, 1, 141067, 28213, 9, 256, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 9, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9397, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 212, 35, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
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
-- Epaulets of Ten Storms | Armor: 362 | Intellect: 17 | Spirit: 8 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 9317
(16945, 4, 3, 'Epaulets of Ten Storms', 34255, 4, 0, 1, 340702, 68140, 3, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 8, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9317, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Ten Storms | Armor: 422 | Intellect: 18 | Spirit: 20 | Stamina: 16 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18384 | SpellID 2: 13881
(16946, 4, 3, 'Legplates of Ten Storms', 34084, 4, 0, 1, 453866, 90773, 7, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 18, 6, 20, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 13881, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 105, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helmet of Ten Storms | Armor: 392 | Intellect: 24 | Spirit: 12 | Stamina: 20 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 18384 | SpellID 2: 18029
(16947, 4, 3, 'Helmet of Ten Storms', 34217, 4, 0, 1, 341572, 68314, 1, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 24, 6, 12, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 10, 10, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 18029, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 85, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Ten Storms | Armor: 301 | Intellect: 17 | Spirit: 13 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9317
(16948, 4, 3, 'Gauntlets of Ten Storms', 34082, 4, 0, 1, 206780, 41356, 10, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 13, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9317, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 50, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Greaves of Ten Storms | Armor: 332 | Intellect: 16 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | SpellID 1: 14799
(16949, 4, 3, 'Greaves of Ten Storms', 34083, 4, 0, 1, 312760, 62552, 8, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 16, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, 0, 10, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 70, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Ten Storms | Armor: 482 | Intellect: 31 | Spirit: 16 | Stamina: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 17371
(16950, 4, 3, 'Breastplate of Ten Storms', 34081, 4, 0, 1, 416775, 83355, 5, 64, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 31, 6, 16, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 10, 10, 0, 0, 0, 0, 0, 0, 17371, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 216, 140, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Bindings | Armor: 375 | Intellect: 13 | Spirit: 9 | Stamina: 23
(16951, 4, 4, 'Judgement Bindings', 33634, 4, 0, 1, 139446, 27889, 9, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 13, 6, 9, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Belt | Armor: 482 | Intellect: 23 | Spirit: 8 | Stamina: 15 | Shadow Resistance: 10 | SpellID 1: 18029
(16952, 4, 4, 'Judgement Belt', 33633, 4, 0, 1, 139982, 27996, 6, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 23, 6, 8, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 10, 0, 0, 0, 0, 18029, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Spaulders | Armor: 642 | Intellect: 17 | Spirit: 8 | Stamina: 20 | Fire Resistance: 10 | SpellID 1: 21363 | SpellID 2: 9408
(16953, 4, 4, 'Judgement Spaulders', 34258, 4, 0, 1, 210776, 42155, 3, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 17, 6, 8, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 10, 0, 0, 0, 0, 0, 0, 0, 21363, 1, 0, 0, -1, 0, -1, 9408, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Legplates | Armor: 749 | Intellect: 27 | Spirit: 17 | Stamina: 26 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 18029
(16954, 4, 4, 'Judgement Legplates', 33637, 4, 0, 1, 282077, 56415, 7, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 27, 6, 17, 7, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 10, 0, 0, 0, 18029, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Crown | Armor: 696 | Intellect: 29 | Spirit: 17 | Stamina: 21 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 18033
(16955, 4, 4, 'Judgement Crown', 34216, 4, 0, 1, 212361, 42472, 1, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 29, 6, 17, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 0, 0, 0, 10, 10, 0, 0, 0, 0, 18033, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Gauntlets | Armor: 535 | Intellect: 20 | Spirit: 10 | Stamina: 17 | Shadow Resistance: 10 | SpellID 1: 21626 | SpellID 2: 9314
(16956, 4, 4, 'Judgement Gauntlets', 33636, 4, 0, 1, 142110, 28422, 10, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 6, 10, 7, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 0, 0, 0, 0, 10, 0, 0, 0, 0, 21626, 1, 0, 0, -1, 0, -1, 9314, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Sabatons | Armor: 589 | Intellect: 15 | Spirit: 12 | Stamina: 23 | Fire Resistance: 10 | SpellID 1: 9316
(16957, 4, 4, 'Judgement Sabatons', 33639, 4, 0, 1, 219723, 43944, 8, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 15, 6, 12, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 10, 0, 0, 0, 0, 0, 0, 0, 9316, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Judgement Breastplate | Armor: 857 | Intellect: 21 | Spirit: 12 | Stamina: 23 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 18379 | SpellID 2: 18030
(16958, 4, 4, 'Judgement Breastplate', 33635, 4, 0, 1, 294007, 58801, 5, 2, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 21, 6, 12, 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 10, 10, 0, 0, 0, 0, 0, 0, 18379, 1, 0, 0, -1, 0, -1, 18030, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 217, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Bracelets of Wrath | Armor: 375 | Stamina: 27 | Strength: 13
(16959, 4, 4, 'Bracelets of Wrath', 33982, 4, 0, 1, 147539, 29507, 9, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Waistband of Wrath | Armor: 482 | Stamina: 20 | Strength: 20 | Shadow Resistance: 10 | SpellID 1: 13676 | SpellID 2: 13386
(16960, 4, 4, 'Waistband of Wrath', 33990, 4, 0, 1, 148074, 29614, 6, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13676, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Pauldrons of Wrath | Armor: 642 | Stamina: 27 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 23516 | SpellID 2: 13386
(16961, 4, 4, 'Pauldrons of Wrath', 34253, 4, 0, 1, 222915, 44583, 3, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 10, 0, 0, 0, 0, 0, 0, 0, 23516, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Legplates of Wrath | Armor: 749 | Stamina: 27 | Strength: 19 | Fire Resistance: 10 | Arcane Resistance: 10 | SpellID 1: 13670 | SpellID 2: 21407
(16962, 4, 4, 'Legplates of Wrath', 33986, 4, 0, 1, 298263, 59652, 7, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 27, 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749, 0, 10, 0, 0, 0, 10, 0, 0, 0, 13670, 1, 0, 0, -1, 0, -1, 21407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 120, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Helm of Wrath | Armor: 696 | Stamina: 40 | Strength: 17 | Frost Resistance: 10 | Shadow Resistance: 10 | SpellID 1: 21407
(16963, 4, 4, 'Helm of Wrath', 34215, 4, 0, 1, 224501, 44900, 1, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 40, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 0, 0, 0, 10, 10, 0, 0, 0, 0, 21407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 100, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Gauntlets of Wrath | Armor: 535 | Stamina: 20 | Strength: 15 | Shadow Resistance: 10 | SpellID 1: 13665 | SpellID 2: 13386
(16964, 4, 4, 'Gauntlets of Wrath', 33984, 4, 0, 1, 150203, 30040, 10, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 20, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535, 0, 0, 0, 0, 10, 0, 0, 0, 0, 13665, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 55, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Sabatons of Wrath | Armor: 589 | Stamina: 30 | Strength: 13 | Fire Resistance: 10 | SpellID 1: 23515 | SpellID 2: 13386
(16965, 4, 4, 'Sabatons of Wrath', 33989, 4, 0, 1, 226108, 45221, 8, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 30, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589, 0, 10, 0, 0, 0, 0, 0, 0, 0, 23515, 1, 0, 0, -1, 0, -1, 13386, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 75, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1),
-- Breastplate of Wrath | Armor: 857 | Stamina: 40 | Strength: 17 | Fire Resistance: 10 | Nature Resistance: 10 | SpellID 1: 21407
(16966, 4, 4, 'Breastplate of Wrath', 33983, 4, 0, 1, 302519, 60503, 5, 1, -1, 76, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 40, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 0, 10, 10, 0, 0, 0, 0, 0, 0, 21407, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 218, 165, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 1);

-- * ADDITIONAL FIXES	
