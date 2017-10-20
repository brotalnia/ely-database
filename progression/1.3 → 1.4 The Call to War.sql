-- 1.3 → 1.4 | The Call to War

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

-- * NEW EVENTS 	

REPLACE INTO new_events SELECT entry FROM game_event WHERE entry IN (
);

-- * NEW ITEMS 	

REPLACE INTO new_items SELECT entry FROM item_template WHERE entry IN (
12422, -- Imperial Plate Chest | Added April 2005 with patch
12424, -- Imperial Plate Belt | Added April 2005 with patch
12425, -- Imperial Plate Bracers | Added April 2005 with patch
12426, -- Imperial Plate Boots | Added April 2005 with patch
12427, -- Imperial Plate Helm | Added April 2005 with patch
12428, -- Imperial Plate Shoulders | Added April 2005 with patch
12429, -- Imperial Plate Leggings | Added April 2005 with patch
12584, -- Grand Marshal's Longsword | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
12618, -- Enchanted Thorium Breastplate | Added April 2005 with patch
12619, -- Enchanted Thorium Leggings | Added April 2005 with patch
12620, -- Enchanted Thorium Helm | Added April 2005 with patch
15196, -- Private's Tabard | Added with PvP Honor System (Originally patch 1.4)
15198, -- Knight's Colors | Added with PvP Honor System (Originally patch 1.4)
15199, -- Stone Guard's Herald | Added with PvP Honor System (Originally patch 1.4)
16335, -- Senior Sergeant's Insignia | Added with PvP Honor System (Originally patch 1.4)
16345, -- High Warlord's Blade | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16369, -- Knight-Lieutenant's Silk Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16391, -- Knight-Lieutenant's Silk Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16392, -- Knight-Lieutenant's Leather Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16393, -- Knight-Lieutenant's Dragonhide Footwraps | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16396, -- Knight-Lieutenant's Leather Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16397, -- Knight-Lieutenant's Dragonhide Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16401, -- Knight-Lieutenant's Chain Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16403, -- Knight-Lieutenant's Chain Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16405, -- Knight-Lieutenant's Plate Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16406, -- Knight-Lieutenant's Plate Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16409, -- Knight-Lieutenant's Lamellar Sabatons | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16410, -- Knight-Lieutenant's Lamellar Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16413, -- Knight-Captain's Silk Raiment | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16414, -- Knight-Captain's Silk Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16415, -- Lieutenant Commander's Silk Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16416, -- Lieutenant Commander's Crown | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16417, -- Knight-Captain's Leather Armor | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16418, -- Lieutenant Commander's Leather Veil | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16419, -- Knight-Captain's Leather Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16420, -- Lieutenant Commander's Leather Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16421, -- Knight-Captain's Dragonhide Tunic | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16422, -- Knight-Captain's Dragonhide Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16423, -- Lieutenant Commander's Dragonhide Epaulets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16424, -- Lieutenant Commander's Dragonhide Shroud | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16425, -- Knight-Captain's Chain Hauberk | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16426, -- Knight-Captain's Chain Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16427, -- Lieutenant Commander's Chain Pauldrons | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16428, -- Lieutenant Commander's Chain Helmet | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16429, -- Lieutenant Commander's Plate Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16430, -- Knight-Captain's Plate Chestguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16431, -- Knight-Captain's Plate Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16432, -- Lieutenant Commander's Plate Pauldrons | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16433, -- Knight-Captain's Lamellar Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16434, -- Lieutenant Commander's Lamellar Headguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16435, -- Knight-Captain's Lamellar Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16436, -- Lieutenant Commander's Lamellar Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16437, -- Marshal's Silk Footwraps | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16440, -- Marshal's Silk Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16441, -- Field Marshal's Coronet | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16442, -- Marshal's Silk Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16443, -- Field Marshal's Silk Vestments | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16444, -- Field Marshal's Silk Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16446, -- Marshal's Leather Footguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16448, -- Marshal's Dragonhide Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16449, -- Field Marshal's Dragonhide Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16450, -- Marshal's Dragonhide Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16451, -- Field Marshal's Dragonhide Helmet | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16452, -- Field Marshal's Dragonhide Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16453, -- Field Marshal's Leather Chestpiece | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16454, -- Marshal's Leather Handgrips | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16455, -- Field Marshal's Leather Mask | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16456, -- Marshal's Leather Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16457, -- Field Marshal's Leather Epaulets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16459, -- Marshal's Dragonhide Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16462, -- Marshal's Chain Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16463, -- Marshal's Chain Grips | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16465, -- Field Marshal's Chain Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16466, -- Field Marshal's Chain Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16467, -- Marshal's Chain Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16468, -- Field Marshal's Chain Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16471, -- Marshal's Lamellar Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16472, -- Marshal's Lamellar Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16473, -- Field Marshal's Lamellar Chestplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16474, -- Field Marshal's Lamellar Faceguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16475, -- Marshal's Lamellar Legplates | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16476, -- Field Marshal's Lamellar Pauldrons | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16477, -- Field Marshal's Plate Armor | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16478, -- Field Marshal's Plate Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16479, -- Marshal's Plate Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16480, -- Field Marshal's Plate Shoulderguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16483, -- Marshal's Plate Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16484, -- Marshal's Plate Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16485, -- Blood Guard's Silk Footwraps | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16487, -- Blood Guard's Silk Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16489, -- Champion's Silk Hood | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16490, -- Legionnaire's Silk Pants | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16491, -- Legionnaire's Silk Robes | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16492, -- Champion's Silk Shoulderpads | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16494, -- Blood Guard's Dragonhide Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16496, -- Blood Guard's Dragonhide Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16498, -- Blood Guard's Leather Treads | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16499, -- Blood Guard's Leather Vices | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16501, -- Champion's Dragonhide Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16502, -- Legionnaire's Dragonhide Trousers | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16503, -- Champion's Dragonhide Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16504, -- Legionnaire's Dragonhide Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16505, -- Legionnaire's Leather Hauberk | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16506, -- Champion's Leather Headguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16507, -- Champion's Leather Mantle | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16508, -- Legionnaire's Leather Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16509, -- Blood Guard's Plate Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16510, -- Blood Guard's Plate Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16513, -- Legionnaire's Plate Armor | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16514, -- Champion's Plate Headguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16515, -- Legionnaire's Plate Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16516, -- Champion's Plate Pauldrons | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16518, -- Blood Guard's Mail Walkers | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16519, -- Blood Guard's Mail Grips | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16521, -- Champion's Mail Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16522, -- Legionnaire's Mail Chestpiece | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16523, -- Legionnaire's Mail Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16524, -- Champion's Mail Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16525, -- Legionnaire's Chain Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16526, -- Champion's Chain Headguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16527, -- Legionnaire's Chain Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16528, -- Champion's Chain Pauldrons | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16530, -- Blood Guard's Chain Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16531, -- Blood Guard's Chain Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
16533, -- Warlord's Silk Cowl | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16534, -- General's Silk Trousers | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16535, -- Warlord's Silk Raiment | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16536, -- Warlord's Silk Amice | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16539, -- General's Silk Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16540, -- General's Silk Handguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16541, -- Warlord's Plate Armor | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16542, -- Warlord's Plate Headpiece | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16543, -- General's Plate Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16544, -- Warlord's Plate Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16545, -- General's Plate Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16548, -- General's Plate Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16549, -- Warlord's Dragonhide Hauberk | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16550, -- Warlord's Dragonhide Helmet | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16551, -- Warlord's Dragonhide Epaulets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16552, -- General's Dragonhide Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16554, -- General's Dragonhide Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16555, -- General's Dragonhide Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16558, -- General's Leather Treads | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16560, -- General's Leather Mitts | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16561, -- Warlord's Leather Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16562, -- Warlord's Leather Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16563, -- Warlord's Leather Breastplate | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16564, -- General's Leather Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16565, -- Warlord's Chain Chestpiece | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16566, -- Warlord's Chain Helmet | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16567, -- General's Chain Legguards | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16568, -- Warlord's Chain Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16569, -- General's Chain Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16571, -- General's Chain Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16573, -- General's Mail Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16574, -- General's Mail Gauntlets | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16577, -- Warlord's Mail Armor | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16578, -- Warlord's Mail Helm | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16579, -- General's Mail Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
16580, -- Warlord's Mail Spaulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17063, -- Band of Accuria | 1.4 Molten Core loot update
17067, -- Ancient Cornerstone Grimoire | 1.4 Molten Core loot update
17076, -- Bonereaver's Edge | Note: Proc changed and +16 stamina added in 1.10
17102, -- Cloak of the Shrouded Mists | 1.4 Molten Core loot update
17104, -- Spinal Reaper | 1.4 Molten Core loot update
17106, -- Malistar's Defender | 1.4 Molten Core loot update
17107, -- Dragon's Blood Cape | 1.4 Molten Core loot update
17182, -- Sulfuras, Hand of Ragnaros | 1.4 Molten Core loot update
17193, -- Sulfuron Hammer | 1.4 Molten Core loot update
17203, -- Sulfuron Ingot | 1.4 Molten Core loot update
17204, -- Eye of Sulfuras | 1.4 Molten Core loot update
17562, -- Knight-Lieutenant's Dreadweave Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17564, -- Knight-Lieutenant's Dreadweave Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17566, -- Lieutenant Commander's Headguard | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17567, -- Knight-Captain's Dreadweave Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17568, -- Knight-Captain's Dreadweave Robe | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17569, -- Lieutenant Commander's Dreadweave Mantle | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17570, -- Champion's Dreadweave Hood | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17571, -- Legionnaire's Dreadweave Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17572, -- Legionnaire's Dreadweave Robe | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17573, -- Champion's Dreadweave Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17576, -- Blood Guard's Dreadweave Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17577, -- Blood Guard's Dreadweave Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17578, -- Field Marshal's Coronal | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17579, -- Marshal's Dreadweave Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17580, -- Field Marshal's Dreadweave Shoulders | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17581, -- Field Marshal's Dreadweave Robe | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17583, -- Marshal's Dreadweave Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17584, -- Marshal's Dreadweave Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17586, -- General's Dreadweave Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17588, -- General's Dreadweave Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17590, -- Warlord's Dreadweave Mantle | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17591, -- Warlord's Dreadweave Hood | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17592, -- Warlord's Dreadweave Robe | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17593, -- General's Dreadweave Pants | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17594, -- Knight-Lieutenant's Satin Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17596, -- Knight-Lieutenant's Satin Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17598, -- Lieutenant Commander's Diadem | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17599, -- Knight-Captain's Satin Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17600, -- Knight-Captain's Satin Robes | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17601, -- Lieutenant Commander's Satin Amice | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17602, -- Field Marshal's Headdress | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17603, -- Marshal's Satin Pants | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17604, -- Field Marshal's Satin Mantle | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17605, -- Field Marshal's Satin Vestments | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17607, -- Marshal's Satin Sandals | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17608, -- Marshal's Satin Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17610, -- Champion's Satin Cowl | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17611, -- Legionnaire's Satin Trousers | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17612, -- Legionnaire's Satin Vestments | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17613, -- Champion's Satin Shoulderpads | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17616, -- Blood Guard's Satin Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17617, -- Blood Guard's Satin Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, changed to level 60 pvp set in 1.11
17618, -- General's Satin Boots | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17620, -- General's Satin Gloves | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17622, -- Warlord's Satin Mantle | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17623, -- Warlord's Satin Cowl | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17624, -- Warlord's Satin Robes | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
17625, -- General's Satin Leggings | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18083, -- Jumanza Grips | wowwiki and allakhazam dates
18103, -- Band of Rumination | wowwiki and allakhazam dates
18104, -- Feralsurge Girdle | wowwiki and allakhazam dates
18168, -- Force Reactive Disk | 1.4 Molten Core loot update
18202, -- Eskhandar's Left Claw | 1.4 Molten Core loot update
18203, -- Eskhandar's Right Claw | 1.4 Molten Core loot update
18204, -- Eskhandar's Pelt | 1.4 Molten Core loot update
18205, -- Eskhandar's Collar | 1.4 Molten Core loot update
18252, -- Pattern: Core Armor Kit | 1.4 Molten Core loot update
18257, -- Recipe: Major Rejuvenation Potion | 1.4 Molten Core loot update
18259, -- Formula: Enchant Weapon - Spell Power | 1.4 Molten Core loot update
18260, -- Formula: Enchant Weapon - Healing Power | 1.4 Molten Core loot update
18263, -- Flarecore Wraps | 1.4 Molten Core loot update
18264, -- Plans: Elemental Sharpening Stone | 1.4 Molten Core loot update
18265, -- Pattern: Flarecore Wraps | 1.4 Molten Core loot update
18290, -- Schematic: Biznicks 247x128 Accurascope | 1.4 Molten Core loot update
18291, -- Schematic: Force Reactive Disk | 1.4 Molten Core loot update
18292, -- Schematic: Core Marksman Rifle | 1.4 Molten Core loot update
18427, -- Sergeant's Cloak | Added with PvP Honor System (Originally patch 1.4)
18428, -- Senior Sergeant's Insignia | Added with PvP Honor System (Originally patch 1.4)
18430, -- First Sergeant's Plate Bracers | Added with PvP Honor System (Originally patch 1.4)
18432, -- First Sergeant's Mail Wristguards | Added with PvP Honor System (Originally patch 1.4)
18436, -- First Sergeant's Dragonhide Armguards | Added with PvP Honor System (Originally patch 1.4)
18437, -- First Sergeant's Silk Cuffs | Added with PvP Honor System (Originally patch 1.4)
18448, -- Sergeant Major's Chain Armguards | Added with PvP Honor System (Originally patch 1.4)
18452, -- Sergeant Major's Leather Armsplints | Added with PvP Honor System (Originally patch 1.4)
18454, -- Sergeant Major's Dragonhide Armsplints | Added with PvP Honor System (Originally patch 1.4)
18563, -- Bindings of the Windseeker | 1.4 Raid loot table update (Allakhazam dates, not patch 1.6 like crappy wowwiki says)
18564, -- Bindings of the Windseeker | 1.4 Raid loot table update (Allakhazam dates, not patch 1.6 like crappy wowwiki says)
18592, -- Plans: Sulfuron Hammer | 1.4 Raid loot table update
18602, -- Tome of Sacrifice | Added in 1.4 with doomguard summon spell (allakhazam dates)
18608, -- Benediction | 1.4 Raid loot table update
18609, -- Anathema | 1.4 Raid loot table update
18610, -- Keen Machete | Possibly added in patch 1.4 along with the rare spawn NPC (Threggil) according to Allakhazam dating
18611, -- Gnarlpine Leggings | Possibly added in patch 1.4 along with the rare spawn NPC (Urson) according to Allakhazam dating
18612, -- Bloody Chain Boots | Possibly added in patch 1.4 along with the rare spawn NPC (Fury Shelda) according to Allakhazam dating
18634, -- Gyrofreeze Ice Reflector | See 1.4 retail patch notes
18637, -- Major Recombobulator | See 1.4 retail patch notes
18638, -- Hyper-Radiant Flame Reflector | See 1.4 retail patch notes
18639, -- Ultra-Flash Shadow Reflector | See 1.4 retail patch notes
18646, -- The Eye of Divinity | 1.4 Raid loot table update
18652, -- Schematic: Gyrofreeze Ice Reflector | See 1.4 retail patch notes
18655, -- Schematic: Major Recombobulator | See 1.4 retail patch notes
18657, -- Schematic: Hyper-Radiant Flame Reflector | See 1.4 retail patch notes
18658, -- Schematic: Ultra-Flash Shadow Reflector | See 1.4 retail patch notes
18665, -- The Eye of Shadow | 1.4 Raid loot table update
18671, -- Baron Charr's Sceptre | Patch 1.4 elemental invasions (see retail patch notes)
18672, -- Elemental Ember | Patch 1.4 elemental invasions (see retail patch notes)
18673, -- Avalanchion's Stony Hide | Patch 1.4 elemental invasions (see retail patch notes)
18674, -- Hardened Stone Band | Patch 1.4 elemental invasions (see retail patch notes)
18676, -- Sash of the Windreaver | Patch 1.4 elemental invasions (see retail patch notes)
18677, -- Zephyr Cloak | Patch 1.4 elemental invasions (see retail patch notes)
18678, -- Tempestria's Frozen Necklace | Patch 1.4 elemental invasions (see retail patch notes)
18679, -- Frigid Ring | Patch 1.4 elemental invasions (see retail patch notes)
18680, -- Ancient Bone Bow | 1.4 Dungeon Loot table update (see retail patch notes)
18681, -- Burial Shawl | 1.4 Dungeon Loot table update (see retail patch notes)
18682, -- Ghoul Skin Leggings | 1.4 Dungeon loot table update (see retail patch notes)
18683, -- Hammer of the Vesper | 1.4 Dungeon Loot table update (see retail patch notes)
18686, -- Bone Golem Shoulders | 1.4 Dungeon Loot table update (see retail patch notes)
18689, -- Phantasmal Cloak | 1.4 Dungeon Loot table update (see retail patch notes)
18690, -- Wraithplate Leggings | 1.4 Dungeon Loot table update (see retail patch notes)
18691, -- Dark Advisor's Pendant | 1.4 Dungeon Loot table update (see retail patch notes)
18692, -- Death Knight Sabatons | 1.4 Dungeon Loot table update (see retail patch notes)
18693, -- Shivery Handwraps | 1.4 Dungeon loot table update (see retail patch notes)
18694, -- Shadowy Mail Greaves | 1.4 Dungeon Loot table update (see retail patch notes)
18695, -- Spellbound Tome | 1.4 Dungeon Loot table update (see retail patch notes)
18696, -- Intricately Runed Shield | 1.4 Dungeon Loot table update (see retail patch notes)
18697, -- Coldstone Slippers | 1.4 Dungeon Loot table update (see retail patch notes)
18698, -- Tattered Leather Hood | 1.4 Dungeon Loot table update (see retail patch notes)
18699, -- Icy Tomb Spaulders | 1.4 Dungeon Loot table update (see retail patch notes)
18700, -- Malefic Bracers | 1.4 Dungeon Loot table update (see retail patch notes)
18701, -- Innervating Band | 1.4 Dungeon Loot table update (see retail patch notes)
18702, -- Belt of the Ordained | 1.4 Dungeon Loot table update (see retail patch notes)
18703, -- Ancient Petrified Leaf | 1.4 Raid loot table update
18704, -- Mature Blue Dragon Sinew | 1.4 Raid loot table update
18705, -- Mature Black Dragon Sinew | 1.4 Raid loot table update
18709, -- Arena Wristguards | 1.4 Gurubashi arena event (see patch notes)
18710, -- Arena Bracers | 1.4 Gurubashi arena event (see patch notes)
18711, -- Arena Bands | 1.4 Gurubashi arena event (see patch notes)
18712, -- Arena Vambraces | 1.4 Gurubashi arena event (see patch notes)
18713, -- Rhok'delar, Longbow of the Ancient Keepers | 1.4 Raid loot table update
18715, -- Lok'delar, Stave of the Ancient Keepers | 1.4 Raid loot table update
18716, -- Ash Covered Boots | 1.4 Dungeon loot table update (see retail patch notes)
18717, -- Hammer of the Grand Crusader | 1.4 Dungeon loot table update (see retail patch notes)
18718, -- Grand Crusader's Helm | 1.4 Dungeon loot table update (see retail patch notes)
18720, -- Shroud of the Nathrezim | 1.4 Dungeon loot table update (see retail patch notes)
18721, -- Barrage Girdle | 1.4 Dungeon loot table update (see retail patch notes)
18722, -- Death Grips | 1.4 Dungeon loot table update (see retail patch notes)
18723, -- Animated Chain Necklace | 1.4 Dungeon loot table update (see retail patch notes)
18725, -- Peacemaker | 1.4 Dungeon loot table update (see retail patch notes)
18726, -- Magistrate's Cuffs | 1.4 Dungeon loot table update (see retail patch notes)
18727, -- Crimson Felt Hat | 1.4 Dungeon loot table update (see retail patch notes)
18728, -- Anastari Heirloom | 1.4 Dungeon loot table update (see retail patch notes)
18729, -- Screeching Bow | 1.4 Dungeon loot table update (see retail patch notes)
18730, -- Shadowy Laced Handwraps | 1.4 Dungeon loot table update (see retail patch notes)
18734, -- Pale Moon Cloak | 1.4 Dungeon loot table update (see retail patch notes)
18735, -- Maleki's Footwraps | 1.4 Dungeon loot table update (see retail patch notes)
18736, -- Plaguehound Leggings | 1.4 Dungeon loot table update (see retail patch notes)
18737, -- Bone Slicing Hatchet | 1.4 Dungeon loot table update (see retail patch notes)
18738, -- Carapace Spine Crossbow | 1.4 Dungeon loot table update (see retail patch notes)
18739, -- Chitinous Plate Legguards | 1.4 Dungeon loot table update (see retail patch notes)
18740, -- Thuzadin Sash | 1.4 Dungeon loot table update (see retail patch notes)
18741, -- Morlune's Bracer | 1.4 Dungeon loot table update (see retail patch notes)
18742, -- Stratholme Militia Shoulderguard | 1.4 Dungeon loot table update (see retail patch notes)
18743, -- Gracious Cape | 1.4 Dungeon loot table update (see retail patch notes)
18744, -- Plaguebat Fur Gloves | 1.4 Dungeon loot table update (see retail patch notes)
18745, -- Sacred Cloth Leggings | 1.4 Dungeon loot table update (see retail patch notes)
18754, -- Fel Hardened Bracers | 1.4 Warlock mount quest summon
18755, -- Xorothian Firestick | 1.4 Warlock mount quest summon
18756, -- Dreadguard's Protector | 1.4 Warlock mount quest summon
18757, -- Diabolic Mantle | 1.4 Warlock mount quest summon
18758, -- Specter's Blade | 1.4 Paladin mount quest summon
18759, -- Malicious Axe | 1.4 Paladin mount quest summon
18760, -- Necromantic Band | 1.4 Paladin mount quest summon
18761, -- Oblivion's Touch | 1.4 Paladin mount quest summon
18762, -- Shard of the Green Flame | 1.4 Warlock mount quest chain
18766, -- Reins of the Swift Frostsaber | 1.4 Mount model update
18767, -- Reins of the Swift Mistsaber | 1.4 Mount model update
18772, -- Swift Green Mechanostrider | 1.4 Mount model update
18773, -- Swift White Mechanostrider | 1.4 Mount model update
18774, -- Swift Yellow Mechanostrider | 1.4 Mount model update
18776, -- Swift Palomino | 1.4 Mount model update
18777, -- Swift Brown Steed | 1.4 Mount model update
18778, -- Swift White Steed | 1.4 Mount model update
18785, -- Swift White Ram | 1.4 Mount model update
18786, -- Swift Brown Ram | 1.4 Mount model update
18787, -- Swift Gray Ram | 1.4 Mount model update
18788, -- Swift Blue Raptor | 1.4 Mount model update
18789, -- Swift Olive Raptor | 1.4 Mount model update
18790, -- Swift Orange Raptor | 1.4 Mount model update
18791, -- Purple Skeletal Warhorse | 1.4 Mount model update
18793, -- Great White Kodo | 1.4 Mount model update
18794, -- Great Brown Kodo | 1.4 Mount model update
18795, -- Great Gray Kodo | 1.4 Mount model update
18796, -- Horn of the Swift Brown Wolf | 1.4 Mount model update
18797, -- Horn of the Swift Timber Wolf | 1.4 Mount model update
18798, -- Horn of the Swift Gray Wolf | 1.4 Mount model update
18902, -- Reins of the Swift Stormsaber | 1.4 Mount model update
18803, -- Finkle's Lava Dredger | 1.4 Raid loot table update
18805, -- Core Hound Tooth | 1.4 Raid loot table update
18806, -- Core Forged Greaves | 1.4 Raid loot table update
18807, -- Helm of Latent Power | 1.4 Paladin mount quest
18808, -- Gloves of the Hypnotic Flame | 1.4 Raid loot table update
18809, -- Sash of Whispered Secrets | 1.4 Raid loot table update
18810, -- Wild Growth Spaulders | 1.4 Raid loot table update
18811, -- Fireproof Cloak | 1.4 Raid loot table update
18812, -- Wristguards of True Flight | 1.4 Raid loot table update
18813, -- Ring of Binding | 1.4 Raid loot table update
18814, -- Choker of the Fire Lord | 1.4 Raid loot table update
18815, -- Essence of the Pure Flame | 1.4 Raid loot table update
18816, -- Perdition's Blade | 1.4 Raid loot table update
18817, -- Crown of Destruction | 1.4 Raid loot table update
18820, -- Talisman of Ephemeral Power | 1.4 Raid loot table update
18821, -- Quick Strike Ring | 1.4 Raid loot table update
18822, -- Obsidian Edged Blade | 1.4 Raid loot table update
18823, -- Aged Core Leather Gloves | 1.4 Raid loot table update
18824, -- Magma Tempered Boots | 1.4 Raid loot table update
18825, -- Grand Marshal's Aegis | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18826, -- High Warlord's Shield Wall | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18827, -- Grand Marshal's Handaxe | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18828, -- High Warlord's Cleaver | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18829, -- Deep Earth Spaulders | 1.4 Raid loot table update
18830, -- Grand Marshal's Sunderer | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18831, -- High Warlord's Battle Axe | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18832, -- Brutality Blade | 1.4 Raid loot table update
18833, -- Grand Marshal's Bullseye | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18834, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18835, -- High Warlord's Recurve | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18836, -- Grand Marshal's Repeater | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18837, -- High Warlord's Crossbow | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18838, -- Grand Marshal's Dirk | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18840, -- High Warlord's Razor | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18842, -- Staff of Dominance | 1.4 Raid loot table update
18843, -- Grand Marshal's Right Hand Blade | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18844, -- High Warlord's Right Claw | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18845, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18846, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18847, -- Grand Marshal's Left Hand Blade | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18848, -- High Warlord's Left Claw | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18849, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18850, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18851, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18852, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18853, -- Insignia of the Horde | Added with PvP Honor System (NOTE: Originally patch 1.4)
18854, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18855, -- Grand Marshal's Hand Cannon | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18856, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18857, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18858, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18859, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18860, -- High Warlord's Street Sweeper | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18861, -- Flamewaker Legplates | 1.4 Raid loot table update
18862, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18863, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18864, -- Insignia of the Alliance | Added with PvP Honor System (NOTE: Originally patch 1.4)
18865, -- Grand Marshal's Punisher | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18866, -- High Warlord's Bludgeon | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18867, -- Grand Marshal's Battle Hammer | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18868, -- High Warlord's Pulverizer | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18869, -- Grand Marshal's Glaive | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18870, -- Helm of the Lifegiver | 1.4 Raid loot table update
18871, -- High Warlord's Pig Sticker | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18872, -- Manastorm Leggings | 1.4 Raid loot table update
18873, -- Grand Marshal's Stave | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18874, -- High Warlord's War Staff | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18875, -- Salamander Scale Pants | 1.4 Raid loot table update
18876, -- Grand Marshal's Claymore | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18877, -- High Warlord's Greatsword | "Added with PvP Honor System (NOTE: Originally patch 1.4, stats updated in 1.11
18878, -- Sorcerous Dagger | 1.4 Raid loot table update
18879, -- Heavy Dark Iron Ring | 1.4 Raid loot table update
19024, -- Arena Grand Master | 1.4 Gurubashi arena event (see patch notes)
19160 -- Contest Winner's Tabard | May 24th 2005 PvP contest prize (http://web.archive.org/web/20080512214719/http://www.worldofwarcraft.com/contests/05-04-19-honorsystem/)
);
 
-- * NEW CREATURES

REPLACE INTO new_creatures SELECT entry FROM creature_template WHERE entry IN (
);
	
-- * NEW QUESTS	

REPLACE INTO new_quests SELECT entry FROM quest_template WHERE entry IN (
171,  -- A Warden of the Alliance | Childrens Week added (1.4 patch notes)
172,  -- Children's Week | Childrens Week added (1.4 patch notes)
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
7838  -- Arena Grandmaster | 1.4 Gurubashi arena event (see patch notes)
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

-- * ITEM STATS | Items changed: 95

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`, `OtherTeamEntry`) VALUES 
-- Marshal's Silk Footwraps | Armor: 69 | Intellect: 21 | Stamina: 21 | SpellID 1: 9342
(16437, 4, 1, 'Marshal\'s Silk Footwraps', 33009, 4, 32768, 1, 87619, 17523, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 21, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Silk Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 1798 | SpellID 2: 23037
(16440, 4, 1, 'Marshal\'s Silk Gloves', 32988, 4, 32768, 1, 59036, 11807, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1798, 1, 0, 0, -1, 0, -1, 23037, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Coronet | Armor: 81 | Stamina: 24 | Intellect: 24 | Spirit: 19 | SpellID 1: 18384
(16441, 4, 1, 'Field Marshal\'s Coronet', 32978, 4, 32768, 1, 102878, 20575, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 24, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Silk Leggings | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(16442, 4, 1, 'Marshal\'s Silk Leggings', 28715, 4, 32768, 1, 118901, 23780, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Silk Vestments | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 18384
(16443, 4, 1, 'Field Marshal\'s Silk Vestments', 32981, 4, 32768, 1, 128464, 25692, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Silk Spaulders | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(16444, 4, 1, 'Field Marshal\'s Silk Spaulders', 33004, 4, 32768, 1, 96713, 19342, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 388, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Leather Footguards | Armor: 136 | Stamina: 26 | Agility: 16 | SpellID 1: 23049
(16446, 4, 2, 'Marshal\'s Leather Footguards', 30333, 4, 32768, 1, 105206, 21041, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dragonhide Gauntlets | Armor: 123 | Strength: 18 | Agility: 17 | Stamina: 15 | SpellID 1: 23217
(16448, 4, 2, 'Marshal\'s Dragonhide Gauntlets', 30334, 4, 32768, 1, 70662, 14132, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 3, 17, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Dragonhide Spaulders | Armor: 148 | Strength: 12 | Agility: 12 | Stamina: 12 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16449, 4, 2, 'Field Marshal\'s Dragonhide Spaulders', 30328, 4, 32768, 1, 123156, 24631, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 12, 3, 12, 7, 12, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dragonhide Legguards | Armor: 173 | Strength: 16 | Agility: 16 | Stamina: 15 | Intellect: 15 | Spirit: 13 | SpellID 1: 13669 | SpellID 2: 9332
(16450, 4, 2, 'Marshal\'s Dragonhide Legguards', 30329, 4, 32768, 1, 142360, 28472, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 16, 3, 16, 7, 15, 5, 15, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Dragonhide Helmet | Armor: 160 | Stamina: 16 | Agility: 16 | Strength: 15 | Intellect: 15 | Spirit: 13 | SpellID 1: 7597 | SpellID 2: 14027
(16451, 4, 2, 'Field Marshal\'s Dragonhide Helmet', 30330, 4, 32768, 1, 124055, 24811, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 3, 16, 4, 15, 5, 15, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 14027, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Dragonhide Breastplate | Armor: 197 | Strength: 19 | Stamina: 18 | Agility: 14 | Intellect: 13 | SpellID 1: 14248 | SpellID 2: 7597
(16452, 4, 2, 'Field Marshal\'s Dragonhide Breastplate', 30327, 4, 32768, 1, 166014, 33202, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 19, 7, 18, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Leather Chestpiece | Armor: 197 | Stamina: 35 | Agility: 20 | SpellID 1: 7597
(16453, 4, 2, 'Field Marshal\'s Leather Chestpiece', 30327, 4, 32768, 1, 166621, 33324, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Leather Handgrips | Armor: 123 | Stamina: 18 | Agility: 14 | SpellID 1: 14049
(16454, 4, 2, 'Marshal\'s Leather Handgrips', 30334, 4, 32768, 1, 72222, 14444, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Leather Mask | Armor: 160 | Stamina: 35 | SpellID 1: 13669 | SpellID 2: 15464 | SpellID 3: 9336
(16455, 4, 2, 'Field Marshal\'s Leather Mask', 30330, 4, 32768, 1, 125864, 25172, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 15464, 0, 0, 0, -1, 0, -1, 9336, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Leather Leggings | Armor: 173 | Stamina: 24 | Strength: 12 | SpellID 1: 7598 | SpellID 2: 15464
(16456, 4, 2, 'Marshal\'s Leather Leggings', 30329, 4, 32768, 1, 145493, 29098, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 24, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Leather Epaulets | Armor: 148 | Stamina: 26 | Agility: 15 | SpellID 1: 9332
(16457, 4, 2, 'Field Marshal\'s Leather Epaulets', 30328, 4, 32768, 1, 126763, 25352, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 394, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dragonhide Boots | Armor: 136 | Strength: 15 | Stamina: 14 | Intellect: 11 | Spirit: 10 | Agility: 11 | SpellID 1: 9345
(16459, 4, 2, 'Marshal\'s Dragonhide Boots', 30333, 4, 32768, 1, 102463, 20492, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 15, 7, 14, 5, 11, 6, 10, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 397, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Chain Boots | Armor: 286 | Stamina: 26 | Agility: 14 | SpellID 1: 13669
(16462, 4, 3, 'Marshal\'s Chain Boots', 32095, 4, 32768, 1, 124912, 24982, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Chain Grips | Armor: 260 | Stamina: 18 | Agility: 17 | Intellect: 16 | SpellID 1: 23157
(16463, 4, 3, 'Marshal\'s Chain Grips', 32098, 4, 32768, 1, 83221, 16644, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 17, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Chain Helm | Armor: 338 | Stamina: 27 | Agility: 19 | Intellect: 17 | Spirit: 10 | SpellID 1: 9331
(16465, 4, 3, 'Field Marshal\'s Chain Helm', 32093, 4, 32768, 1, 145586, 29117, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 27, 3, 19, 5, 17, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Chain Breastplate | Armor: 416 | Stamina: 24 | Agility: 23 | SpellID 1: 14049 | SpellID 2: 7597
(16466, 4, 3, 'Field Marshal\'s Chain Breastplate', 32094, 4, 32768, 1, 194844, 38968, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 3, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 0, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Chain Legguards | Armor: 364 | Agility: 23 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 13669 | SpellID 3: 15464
(16467, 4, 3, 'Marshal\'s Chain Legguards', 32097, 4, 32768, 1, 168943, 33788, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 23, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Chain Spaulders | Armor: 312 | : 7 | : 3 | SpellID 1: 9332
(16468, 4, 3, 'Field Marshal\'s Chain Spaulders', 32092, 4, 32768, 1, 147880, 29576, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 26, 7, 15, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 395, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Lamellar Gloves | Armor: 461 | Strength: 20 | Stamina: 16 | Agility: 13 | SpellID 1: 23300
(16471, 4, 4, 'Marshal\'s Lamellar Gloves', 30321, 4, 32768, 1, 57148, 11429, 10, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 20, 7, 16, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23300, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Lamellar Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Intellect: 8 | Agility: 7
(16472, 4, 4, 'Marshal\'s Lamellar Boots', 30319, 4, 32768, 1, 86028, 17205, 8, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 5, 8, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Lamellar Chestplate | Armor: 738 | Stamina: 35 | Strength: 14 | Agility: 13 | SpellID 1: 7597
(16473, 4, 4, 'Field Marshal\'s Lamellar Chestplate', 30315, 4, 32768, 1, 133270, 26654, 5, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 14, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Lamellar Faceguard | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 11
(16474, 4, 4, 'Field Marshal\'s Lamellar Faceguard', 30316, 4, 32768, 1, 100317, 20063, 1, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Lamellar Legplates | Armor: 646 | Stamina: 19 | Strength: 15 | SpellID 1: 15464 | SpellID 2: 7598
(16475, 4, 4, 'Marshal\'s Lamellar Legplates', 30317, 4, 32768, 1, 118969, 23793, 7, 2, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 19, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Lamellar Pauldrons | Armor: 553 | Stamina: 18 | Strength: 17 | Agility: 11 | Intellect: 10 | Spirit: 10
(16476, 4, 4, 'Field Marshal\'s Lamellar Pauldrons', 30318, 4, 32768, 1, 93787, 18757, 3, 2, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 18, 4, 17, 3, 11, 5, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 402, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Plate Helm | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 15
(16478, 4, 4, 'Field Marshal\'s Plate Helm', 30316, 4, 32768, 1, 94516, 18903, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Plate Legguards | Armor: 646 | Stamina: 20 | Strength: 16 | SpellID 1: 7598 | SpellID 2: 15464
(16479, 4, 4, 'Marshal\'s Plate Legguards', 30317, 4, 32768, 1, 109282, 21856, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Plate Shoulderguards | Armor: 553 | Stamina: 26 | Strength: 15 | Agility: 11
(16480, 4, 4, 'Field Marshal\'s Plate Shoulderguards', 30318, 4, 32768, 1, 95235, 19047, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Plate Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Agility: 11
(16483, 4, 4, 'Marshal\'s Plate Boots', 30319, 4, 32768, 1, 83212, 16642, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Plate Gauntlets | Armor: 461 | Strength: 18 | Stamina: 17 | Agility: 15 | SpellID 1: 22778
(16484, 4, 4, 'Marshal\'s Plate Gauntlets', 30321, 4, 32768, 1, 55679, 11135, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 17, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 384, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Silk Cowl | Armor: 81 | Stamina: 24 | Intellect: 24 | Spirit: 19 | SpellID 1: 18384
(16533, 4, 1, 'Warlord\'s Silk Cowl', 32999, 4, 32768, 1, 102523, 20504, 1, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 5, 24, 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Silk Trousers | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(16534, 4, 1, 'General\'s Silk Trousers', 32998, 4, 32768, 1, 118504, 23700, 7, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Silk Raiment | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 18384
(16535, 4, 1, 'Warlord\'s Silk Raiment', 33085, 4, 32768, 1, 137669, 27533, 20, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Silk Amice | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(16536, 4, 1, 'Warlord\'s Silk Amice', 33089, 4, 32768, 1, 93758, 18751, 3, 128, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Silk Boots | Armor: 69 | Stamina: 21 | Intellect: 21 | SpellID 1: 9342
(16539, 4, 1, 'General\'s Silk Boots', 32996, 4, 32768, 1, 84182, 16836, 8, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Silk Handguards | Armor: 63 | Stamina: 16 | SpellID 1: 1798 | SpellID 2: 14054
(16540, 4, 1, 'General\'s Silk Handguards', 32997, 4, 32768, 1, 56325, 11265, 10, 128, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1798, 1, 0, 0, -1, 0, -1, 14054, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 387, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Plate Armor | Armor: 738 | Stamina: 35 | Strength: 13 | Agility: 13 | SpellID 1: 7597
(16541, 4, 4, 'Warlord\'s Plate Armor', 30373, 4, 32768, 1, 130894, 26178, 5, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 13, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Plate Headpiece | Armor: 599 | Stamina: 35 | Strength: 19 | Agility: 15
(16542, 4, 4, 'Warlord\'s Plate Headpiece', 30374, 4, 32768, 1, 98535, 19707, 1, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 4, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Plate Leggings | Armor: 646 | Stamina: 20 | Strength: 16 | SpellID 1: 7598 | SpellID 2: 15464
(16543, 4, 4, 'General\'s Plate Leggings', 30375, 4, 32768, 1, 113910, 22782, 7, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 20, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Plate Shoulders | Armor: 553 | Stamina: 26 | Strength: 15 | Agility: 11
(16544, 4, 4, 'Warlord\'s Plate Shoulders', 30928, 4, 32768, 1, 99253, 19850, 3, 1, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Plate Boots | Armor: 507 | Stamina: 26 | Strength: 15 | Agility: 11
(16545, 4, 4, 'General\'s Plate Boots', 30370, 4, 32768, 1, 86054, 17210, 8, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 4, 15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Plate Gauntlets | Armor: 461 | Strength: 18 | Stamina: 17 | Agility: 15 | SpellID 1: 22778
(16548, 4, 4, 'General\'s Plate Gauntlets', 30371, 4, 32768, 1, 57993, 11598, 10, 1, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 7, 17, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22778, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 6, 0, 0, 0, 383, 55, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dragonhide Hauberk | Armor: 197 | Strength: 19 | Stamina: 18 | Agility: 14 | Intellect: 13 | SpellID 1: 14248 | SpellID 2: 7597
(16549, 4, 2, 'Warlord\'s Dragonhide Hauberk', 32110, 4, 32768, 1, 168443, 33688, 5, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 4, 19, 7, 18, 3, 14, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dragonhide Helmet | Armor: 160 | Stamina: 16 | Agility: 16 | Strength: 15 | Intellect: 15 | Spirit: 13 | SpellID 1: 9346 | SpellID 2: 14027
(16550, 4, 2, 'Warlord\'s Dragonhide Helmet', 32134, 4, 32768, 1, 126788, 25357, 1, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 16, 3, 16, 4, 15, 5, 15, 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 14027, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dragonhide Epaulets | Armor: 148 | Stamina: 12 | Agility: 12 | Strength: 12 | Spirit: 11 | Intellect: 11 | SpellID 1: 9346
(16551, 4, 2, 'Warlord\'s Dragonhide Epaulets', 32129, 4, 32768, 1, 127243, 25448, 3, 1024, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 12, 3, 12, 4, 12, 6, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9346, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dragonhide Leggings | Armor: 173 | Strength: 16 | Agility: 16 | Stamina: 15 | Spirit: 15 | Intellect: 13 | SpellID 1: 13669 | SpellID 2: 9332
(16552, 4, 2, 'General\'s Dragonhide Leggings', 32108, 4, 32768, 1, 147067, 29413, 7, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 16, 3, 16, 7, 15, 6, 15, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dragonhide Boots | Armor: 136 | Strength: 15 | Stamina: 14 | Intellect: 11 | Agility: 10 | Spirit: 10 | SpellID 1: 9345
(16554, 4, 2, 'General\'s Dragonhide Boots', 32106, 4, 32768, 1, 111087, 22217, 8, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 15, 7, 14, 5, 11, 3, 10, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dragonhide Gloves | Armor: 123 | Strength: 18 | Agility: 17 | Stamina: 15 | SpellID 1: 23217
(16555, 4, 2, 'General\'s Dragonhide Gloves', 32107, 4, 32768, 1, 69095, 13819, 10, 1024, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 4, 18, 3, 17, 7, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 398, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Leather Treads | Armor: 136 | Stamina: 26 | Agility: 16 | SpellID 1: 23049
(16558, 4, 2, 'General\'s Leather Treads', 32114, 4, 32768, 1, 104823, 20964, 8, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Leather Mitts | Armor: 123 | Stamina: 18 | Agility: 14 | SpellID 1: 14049
(16560, 4, 2, 'General\'s Leather Mitts', 32113, 4, 32768, 1, 70400, 14080, 10, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Leather Helm | Armor: 160 | Stamina: 35 | SpellID 1: 13669 | SpellID 2: 7597 | SpellID 3: 9336
(16561, 4, 2, 'Warlord\'s Leather Helm', 32132, 4, 32768, 1, 122700, 24540, 1, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 9336, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Leather Spaulders | Armor: 148 | Stamina: 26 | Agility: 15 | SpellID 1: 9332
(16562, 4, 2, 'Warlord\'s Leather Spaulders', 32131, 4, 32768, 1, 123156, 24631, 3, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 26, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Leather Breastplate | Armor: 197 | Stamina: 35 | Agility: 20 | SpellID 1: 15464
(16563, 4, 2, 'Warlord\'s Leather Breastplate', 32115, 4, 32768, 1, 164799, 32959, 5, 8, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Leather Legguards | Armor: 173 | Stamina: 24 | Strength: 12 | SpellID 1: 7598 | SpellID 2: 15464
(16564, 4, 2, 'General\'s Leather Legguards', 32112, 4, 32768, 1, 142884, 28576, 7, 8, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 24, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 393, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Chain Chestpiece | Armor: 416 | Stamina: 24 | Agility: 23 | SpellID 1: 14049 | SpellID 2: 7597
(16565, 4, 3, 'Warlord\'s Chain Chestpiece', 32122, 4, 32768, 1, 199217, 39843, 5, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 24, 3, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14049, 0, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Chain Helmet | Armor: 338 | Stamina: 27 | Agility: 19 | Intellect: 17 | Spirit: 10 | SpellID 1: 9331
(16566, 4, 3, 'Warlord\'s Chain Helmet', 32135, 4, 32768, 1, 149959, 29991, 1, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 27, 3, 19, 5, 17, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Chain Legguards | Armor: 364 | Agility: 23 | Stamina: 22 | SpellID 1: 7597 | SpellID 2: 13669 | SpellID 3: 15464
(16567, 4, 3, 'General\'s Chain Legguards', 32120, 4, 32768, 1, 173333, 34666, 7, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 3, 23, 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Chain Shoulders | Armor: 312 | : 7 | : 3 | SpellID 1: 9332
(16568, 4, 3, 'Warlord\'s Chain Shoulders', 32125, 4, 32768, 1, 151709, 30341, 3, 4, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 26, 7, 15, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9332, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Chain Boots | Armor: 286 | Stamina: 26 | Agility: 14 | SpellID 1: 13669
(16569, 4, 3, 'General\'s Chain Boots', 32124, 4, 32768, 1, 131526, 26305, 8, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 26, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Chain Gloves | Armor: 260 | Stamina: 18 | Agility: 17 | Intellect: 16 | SpellID 1: 23157
(16571, 4, 3, 'General\'s Chain Gloves', 32119, 4, 32768, 1, 81655, 16331, 10, 4, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 3, 17, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23157, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 396, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Mail Boots | Armor: 286 | Stamina: 18 | Intellect: 17 | SpellID 1: 22801 | SpellID 2: 14254
(16573, 4, 3, 'General\'s Mail Boots', 32126, 4, 32768, 1, 123976, 24795, 8, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22801, 1, 0, 0, -1, 0, -1, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 70, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Mail Gauntlets | Armor: 260 | Stamina: 17 | Intellect: 15 | Strength: 11 | SpellID 1: 14248
(16574, 4, 3, 'General\'s Mail Gauntlets', 32100, 4, 32768, 1, 82591, 16518, 10, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 17, 5, 15, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14248, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Mail Armor | Armor: 416 | Stamina: 35 | Intellect: 20 | SpellID 1: 7597
(16577, 4, 3, 'Warlord\'s Mail Armor', 32103, 4, 32768, 1, 193406, 38681, 5, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 140, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Mail Helm | Armor: 338 | Stamina: 35 | Intellect: 11 | Strength: 19 | SpellID 1: 7597
(16578, 4, 3, 'Warlord\'s Mail Helm', 32133, 4, 32768, 1, 145586, 29117, 1, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 35, 5, 11, 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Mail Leggings | Armor: 364 | Stamina: 23 | Intellect: 19 | Agility: 15 | SpellID 1: 14127
(16579, 4, 3, 'General\'s Mail Leggings', 32127, 4, 32768, 1, 168313, 33662, 7, 64, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 19, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Mail Spaulders | Armor: 312 | Stamina: 18 | Intellect: 17 | Strength: 11 | Agility: 8 | SpellID 1: 9398
(16580, 4, 3, 'Warlord\'s Mail Spaulders', 32128, 4, 32768, 1, 147331, 29466, 3, 64, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 18, 5, 17, 4, 11, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9398, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 386, 85, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Coronal | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17578, 4, 1, 'Field Marshal\'s Coronal', 32979, 4, 32768, 1, 98160, 19632, 1, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dreadweave Leggings | Armor: 88 | Stamina: 23 | Intellect: 16 | SpellID 1: 14055
(17579, 4, 1, 'Marshal\'s Dreadweave Leggings', 33007, 4, 32768, 1, 113479, 22695, 7, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14055, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Dreadweave Shoulders | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(17580, 4, 1, 'Field Marshal\'s Dreadweave Shoulders', 33002, 4, 32768, 1, 98879, 19775, 3, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Dreadweave Robe | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 9345
(17581, 4, 1, 'Field Marshal\'s Dreadweave Robe', 33001, 4, 32768, 1, 132325, 26465, 20, 256, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dreadweave Boots | Armor: 69 | Stamina: 21 | Stamina: 21 | SpellID 1: 9342
(17583, 4, 1, 'Marshal\'s Dreadweave Boots', 33006, 4, 32768, 1, 86351, 17270, 8, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Dreadweave Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23046 | SpellID 2: 14798
(17584, 4, 1, 'Marshal\'s Dreadweave Gloves', 32995, 4, 32768, 1, 59280, 11856, 10, 256, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 392, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dreadweave Boots | Armor: 69 | Stamina: 21 | Intellect: 21 | SpellID 1: 9342
(17586, 4, 1, 'General\'s Dreadweave Boots', 33076, 4, 0, 1, 81034, 16206, 8, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dreadweave Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23046 | SpellID 2: 14798
(17588, 4, 1, 'General\'s Dreadweave Gloves', 33077, 4, 0, 1, 54437, 10887, 10, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23046, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dreadweave Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(17590, 4, 1, 'Warlord\'s Dreadweave Mantle', 33088, 4, 0, 1, 95255, 19051, 3, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dreadweave Hood | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17591, 4, 1, 'Warlord\'s Dreadweave Hood', 33071, 4, 0, 1, 95609, 19121, 1, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Dreadweave Robe | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 9345
(17592, 4, 1, 'Warlord\'s Dreadweave Robe', 33079, 4, 0, 1, 127965, 25593, 20, 256, 511, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Dreadweave Pants | Armor: 88 | Stamina: 23 | Intellect: 16 | SpellID 1: 14055
(17593, 4, 1, 'General\'s Dreadweave Pants', 30380, 4, 0, 1, 110961, 22192, 7, 256, 511, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14055, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 391, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Headdress | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17602, 4, 1, 'Field Marshal\'s Headdress', 32980, 4, 32768, 1, 102198, 20439, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Satin Pants | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(17603, 4, 1, 'Marshal\'s Satin Pants', 32991, 4, 32768, 1, 118130, 23626, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Satin Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(17604, 4, 1, 'Field Marshal\'s Satin Mantle', 33005, 4, 32768, 1, 102927, 20585, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Field Marshal's Satin Vestments | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 9345
(17605, 4, 1, 'Field Marshal\'s Satin Vestments', 32984, 4, 32768, 1, 137722, 27544, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Satin Sandals | Armor: 69 | Intellect: 21 | Stamina: 21 | SpellID 1: 9342
(17607, 4, 1, 'Marshal\'s Satin Sandals', 32992, 4, 32768, 1, 81332, 16266, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 5, 21, 7, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Marshal's Satin Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23043 | SpellID 2: 14798
(17608, 4, 1, 'Marshal\'s Satin Gloves', 32990, 4, 32768, 1, 54431, 10886, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 389, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Satin Boots | Armor: 69 | Stamina: 21 | Intellect: 18 | SpellID 1: 9342
(17618, 4, 1, 'General\'s Satin Boots', 33080, 4, 32768, 1, 87023, 17404, 8, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 21, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9342, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Satin Gloves | Armor: 63 | Stamina: 16 | SpellID 1: 23043 | SpellID 2: 14798
(17620, 4, 1, 'General\'s Satin Gloves', 33081, 4, 32768, 1, 58435, 11687, 10, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23043, 1, 0, 0, -1, 0, -1, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Satin Mantle | Armor: 75 | Stamina: 22 | Intellect: 17 | SpellID 1: 9345
(17622, 4, 1, 'Warlord\'s Satin Mantle', 33083, 4, 32768, 1, 102188, 20437, 3, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 22, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Satin Cowl | Armor: 81 | Stamina: 28 | Intellect: 24 | SpellID 1: 14799
(17623, 4, 1, 'Warlord\'s Satin Cowl', 33082, 4, 32768, 1, 102553, 20510, 1, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 28, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14799, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Warlord's Satin Robes | Armor: 100 | Stamina: 30 | Intellect: 25 | SpellID 1: 9345
(17624, 4, 1, 'Warlord\'s Satin Robes', 33084, 4, 32768, 1, 137223, 27444, 20, 16, -1, 74, 60, 0, 0, 0, 17, 0, 0, 0, 1, 1, 0, 7, 30, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- General's Satin Leggings | Armor: 88 | Stamina: 23 | Spirit: 19 | Intellect: 16 | SpellID 1: 14127
(17625, 4, 1, 'General\'s Satin Leggings', 26021, 4, 32768, 1, 118947, 23789, 7, 16, -1, 71, 60, 0, 0, 0, 16, 0, 0, 0, 1, 1, 0, 7, 23, 6, 19, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14127, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 390, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Longsword | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(12584, 2, 7, 'Grand Marshal\'s Longsword', 31966, 4, 32768, 1, 248182, 49636, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Blade | Stamina: 6 | SpellID 1: 7597 | SpellID 2: 9141
(16345, 2, 7, 'High Warlord\'s Blade', 31997, 4, 32768, 1, 247416, 49483, 13, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Aegis | Armor: 2468 | Stamina: 23 | Strength: 10 | SpellID 1: 13959
(18825, 4, 6, 'Grand Marshal\'s Aegis', 31733, 4, 32768, 1, 159036, 31807, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 23, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Shield Wall | Armor: 2468 | Stamina: 23 | Strength: 10 | SpellID 1: 13959
(18826, 4, 6, 'High Warlord\'s Shield Wall', 31746, 4, 32768, 1, 159587, 31917, 14, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 23, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13959, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 4, 0, 55, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
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
-- Grand Marshals Left Hand Blade | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9141
(18847, 2, 13, 'Grand Marshal\'s Left Hand Blade', 32032, 4, 32768, 1, 250218, 50043, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Left Claw | Stamina: 7 | SpellID 1: 7597 | SpellID 2: 9141
(18848, 2, 13, 'High Warlord\'s Left Claw', 31752, 4, 32768, 1, 251079, 50215, 22, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 75, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- Grand Marshals Hand Cannon | SpellID 1: 21436
(18855, 2, 3, 'Grand Marshal\'s Hand Cannon', 31758, 4, 32768, 1, 179726, 35945, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
-- High Warlords Street Sweeper | SpellID 1: 21436
(18860, 2, 3, 'High Warlord\'s Street Sweeper', 31747, 4, 32768, 1, 183012, 36602, 26, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 3, 100, 21436, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1),
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
(18877, 2, 8, 'High Warlord\'s Greatsword', 31998, 4, 32768, 1, 301699, 60339, 17, -1, -1, 78, 60, 0, 0, 0, 18, 0, 0, 0, 0, 1, 0, 7, 36, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1);

-- * ADDITIONAL FIXES	
