# Elysium Project — Progressive DB
Elysium's database repository for World of Waracraft (1.12), compatible with the [Elysium server core](https://github.com/elysium-project/server) (based on Mangos). This repository includes the full 1.12 database and  **progression patches** for 1.2 → 1.12, which, when applied, can simulate WoW as if it was at this state.

## Instructions
There is now a new progression patcher for the database, which should be used from patch 1.7 onwards, for Elysium PvP, and we need more contributors and knowledgeable people to finish the research.

We no longer need to move patches backwards from Patch 1.12 to Patch 1.2, or keep moving them around.

To enable your Database to the progression Database, firstly you will need to get the full Database from the folder **[full_db](https://github.com/elysium-project/database/tree/master/full_db)** on the repository and apply the initial downgrade patch [1.12 → 1.2 Mysteries of Maraudon](./progression/! 1.12 → 1.2 Mysteries of Maraudon.sql). Once the server requires a new patch, it can be done in stages using the information in the new file, for example:
1. 1.2 → 1.3 Ruins of the Dire Maul
2. 1.3 → 1.5 The Call to War, Battlegrounds
3. etc ... until you get to 1.12 again.

We have made it really easy to edit. The initial downgrade patch will allow you to just delete items, creatures, and encounters and anything that is not required to be in the patch. This also works for adding things in too.

Afterwards, all new pathes will only be moving the Database forward, restoring all the disabled data including items, quests, creatures and raids. Or anything you you'd like. At the start of this new Database, we are making a full backup of the 1.12 tables, which we will use to import data via the restoration tool of each patch.

You can add new items and quests which were added in each patch by simply filling the catergories in on the new database which include: 
* *NEW ITEMS*
* *NEW QUESTS*
* *NEW EVENTS*
* *NEW CREATURES*

All related information (loot tables, quest relations) will be restored automatically. Be aware that if you need to change an item's stats, you need do it in the *ADDITIONAL FIXES* section, so it will overwrite the imported 1.12 data.

Before you add a new item, quest, creature, event etc. make sure that it's been disabled in the initial downgrading patch. If not, the item is still available in game and you don't need to add it. 

Please note that queries regarding the restoration tool and clean up tools are extreamly slow. Please feel free to modify it. 

Keep your backup table up to date by applying migrations from the *[updates](https://github.com/elysium-project/database/tree/master/updates)* and [migrations](https://github.com/elysium-project/server/tree/development/sql/migrations) from the server repository. 

It is now extreamly easy for people to contribute now, and this will save us a lot of time in the long run.

## Tools
* [Item Template Editor (ITE)](https://github.com/elysium-project/database/tree/master/tools/item_template_editor): GUI to update items in the database. Generates SQL statements.
* [Item Template Commentator](https://github.com/elysium-project/database/tree/master/tools/item_template_commentator): Adds a comment, listing name and stats, above each altered item_template in a SQL file.
* [Commentator](https://github.com/elysium-project/database/tree/master/tools/Commentator): Converts all SQL comments to markdown. 

## License
This project is licensed under the GNU GPL 3.0 License - see the [LICENSE](./LICENSE) file for details!

## Links
* [Website](https://www.elysium-project.org)
