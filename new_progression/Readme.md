# Item Progression Guide

Here is how to populate the correct data for the new item progression system.

1. First we use the stats downgrade patch. This will downgrade items to their ORIGINAL versions.
https://github.com/elysium-project/database/blob/master/new_progression/original_items.sql

2. Run the migration to add a `patch` column to `item_template`.
https://github.com/brotalnia/server/blob/progression/sql/migrations/20170816025732_world.sql

3. Run the _new_items.sql_ file which assigns the patch in which items were FIRST ADDED to the game.
https://github.com/elysium-project/database/blob/master/new_progression/new_items.sql

4. Add the updated versions of items by running updated_items.sql. (this file needs the most work atm)
https://github.com/elysium-project/database/blob/master/new_progression/updated_items.sql

5. For items that were removed from loot/vendors at a later date, we use one of the 3 methods described in the pull request.
https://github.com/elysium-project/server/pull/2118

The items in `updated_items.sql` are from the 1.12 database, so those are the 1.12 versions of the items. It contains only the items which were changed in the 1.12 to 1.2 downgrade patch. The sql file will also create a new temporary table named `items_updated` to make it easier to work on the list. We must go through all the items in that table and assign the patch in which the item was updated to the state it is in the table. If there are other versions of the item between patch 1.2 and the final version, we simply duplicate the row, update the stats accordingly and assign the patch in which it was updated to that version. Once we are done, we will add the items from that table to `item_template` and we will have all versions of the items. The server core will automatically load the correct item version for the current patch.

Here are some of the sources we can use to find item changes:

Allakhazam (viewing old versions of the site using the wayback machine)
https://web.archive.org/web/20060522202752/http://wow.allakhazam.com:80/db/item.html?witem=1992
Just paste the id of the item at the end of the link and check the different dates.

WoWWiki (check the history of the page)
http://wowwiki.wikia.com/wiki/Tanglewood_Staff

The official patch notes.
https://github.com/elysium-project/database/blob/master/new_progression/Patchnotes%20%28ALPHA%20to%201.12.1%29.txt

Client data converted to sql tables.
https://github.com/elysium-project/database/blob/master/new_progression/old_versions_data.7z
For items that use spells (on equip/use effect) we can use the dbc data to find out when the item effect was changed. Simply check the spells0-9 tables and see when the spell was updated.
We can also check if the diplayid used by the item exists in older clients, but that will only tell us if the item existed and had the same displayid, not when it was updated.

__Remember that patch values start from 0 for 1.2, and go to 10 for 1.12.__
