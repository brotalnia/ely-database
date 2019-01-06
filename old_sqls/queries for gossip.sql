SELECT *
FROM mangos.npc_text
WHERE ID = 3976

SELECT *
FROM mangos.npc_gossip
WHERE npc_guid=30655

SELECT *
FROM mangos0.creature
WHERE id=8140

SELECT entry, gossip_menu_id
FROM mangos.creature_template
WHERE entry=8140

SELECT entry, GossipMenuId
FROM mangos0.creature_template
WHERE entry=8140

SELECT *
FROM mangos0.gossip_menu
WHERE entry=4663

SELECT *
FROM mangos0.conditions
WHERE condition_entry=14 || condition_entry=134

SELECT *
FROM mangos0.gossip_menu_option
WHERE menu_id=4662

SELECT t1.entry, t1.GossipMenuId
FROM mangos0.creature_template t1
LEFT JOIN mangos.creature_template t2 ON t2.entry = t1.entry
WHERE (NOT t1.`GossipMenuId`=0) AND t2.`gossip_menu_id`=0 AND (NOT t1.`GossipMenuId` IN (SELECT t1.entry
																												FROM mangos0.gossip_menu t1
																												LEFT JOIN mangos.npc_gossip t2 ON t2.textid = t1.text_id
																												WHERE NOT t2.textid IS NULL))
																												
SELECT *
FROM mangos.gameobject
WHERE id=178526

SELECT *
FROM mangos.creature_template
WHERE trainer_class=2

SELECT *
FROM mangos.gossip_menu
WHERE (NOT (entry IN (SELECT gossip_menu_id
						FROM mangos.creature_template
						WHERE gossip_menu_id>0))) && (NOT (entry IN (SELECT entry
																					FROM mangos0.gossip_menu)))
																					
SELECT
    id, delay, command, COUNT(*)
FROM
    mangos.quest_end_scripts
GROUP BY
    id, delay, command
HAVING 
    COUNT(*) > 1
	
SELECT *
FROM trinity.broadcast_text
WHERE FemaleText LIKE "%get started%"

SELECT *
FROM trinity.locales_broadcast_text
WHERE ID=4730

SELECT *
FROM cmangos.creature_ai_scripts
WHERE event_type=22

UPDATE
    arc_world.items T1, wobdb.items T2
SET
    T1.Unique = T2.Unique
WHERE
    T1.entry = T2.entry
	
	
SELECT * 
FROM creature_template t1
WHERE patch=(
    SELECT max(patch) FROM creature_template t2 WHERE t1.Entry=t2.Entry && patch < SERVER_PATCH
    )
	
WHERE patch=(SELECT max(patch) FROM creature_template t2 WHERE t1.Entry=t2.Entry && patch < SERVER_PATCH)

ALTER TABLE `creature_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `entry`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `patch`);
	
ALTER TABLE `item_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `entry`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `patch`);
	
SELECT guid, (SELECT name FROM mangos.gameobject_template WHERE entry IN (SELECT id FROM mangos.gameobject WHERE guid=t1.guid)), (SELECT id FROM mangos.gameobject WHERE guid=t1.guid)
FROM mangos.game_event_gameobject t1
WHERE event=18

-- movementtype spawns
SELECT * FROM (
   SELECT guid, MovementType
   FROM mangos.creature AS emp
   GROUP BY id
   HAVING Count(*)=1
) AS grp, (SELECT guid, MovementType FROM cmangos.creature GROUP BY id HAVING Count(*)=1) as grp2
WHERE grp.guid=grp2.guid && NOT grp.MovementType = grp2.MovementType


SELECT entry as 'EventId', description AS 'Name', CONCAT('Patch 1.', CAST(patch_min+2 as CHAR(50))) as Min_Patch , CONCAT('Patch 1.', CAST(patch_max+2 as CHAR(50))) as Max_Patch
FROM mangos.game_event
ORDER BY entry

SET @idd:=-105;
SELECT id, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment
FROM mangos.creature_ai_scripts
WHERE ((action1_type = 1) && (@idd IN (action1_param1, action1_param2, action1_param3))) || ((action2_type = 1) && (@idd IN (action2_param1, action2_param2, action2_param3))) || ((action3_type = 1) && (@idd IN (action3_param1, action3_param2, action3_param3)))
