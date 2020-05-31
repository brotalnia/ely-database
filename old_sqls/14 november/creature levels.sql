SELECT t1.entry, t1.name, t2.name, t1.level_min, t1.level_max, t2.MinLevel, t2.MaxLevel, (SELECT MinLevel FROM test.dbc_creaturedifficulty WHERE CreatureID=t1.entry LIMIT 1) as 'db2_min', (SELECT MaxLevel FROM test.dbc_creaturedifficulty WHERE CreatureID=t1.entry LIMIT 1) as 'db2_max', (SELECT MIN(`level`) FROM test.real_mob_health WHERE entry=t1.entry) as 'real_min', (SELECT MAX(`level`) FROM test.real_mob_health WHERE entry=t1.entry) as 'real_max', (SELECT MIN(`level`) FROM test.other_mob_health WHERE entry=t1.entry) as 'other_min', (SELECT MAX(`level`) FROM test.other_mob_health WHERE entry=t1.entry) as 'other_max'  
FROM test.creature_template10 t1
LEFT JOIN cmangosnew2.creature_template t2 ON t2.entry = t1.entry
WHERE t1.level_min != t2.MinLevel
ORDER BY entry

SELECT entry, name, level_min, level_max, (SELECT MIN(`level`) FROM test.real_mob_health WHERE entry=t1.entry) as 'real_min', (SELECT MAX(`level`) FROM test.real_mob_health WHERE entry=t1.entry) as 'real_max', (SELECT MIN(`level`) FROM test.other_mob_health WHERE entry=t1.entry) as 'other_min', (SELECT MAX(`level`) FROM test.other_mob_health WHERE entry=t1.entry) as 'other_max' , (SELECT MinLevel FROM cmangosnew2.creature_template WHERE entry=t1.entry) as 'cmangos_min',(SELECT MaxLevel FROM cmangosnew2.creature_template WHERE entry=t1.entry) as 'cmangos_max', (SELECT MinLevel FROM tdb.creature_template WHERE entry=t1.entry) as 'tdb_min',(SELECT MaxLevel FROM tdb.creature_template WHERE entry=t1.entry) as 'tdb_max' 
FROM test.creature_template10 t1
WHERE level_min != (SELECT MIN(`level`) FROM test.real_mob_health WHERE entry=t1.entry) && level_min != (SELECT MIN(`level`) FROM test.other_mob_health WHERE entry=t1.entry)

SELECT entry, name, level_min, level_max, (SELECT MIN(`level`) FROM test.combined_mob_health WHERE entry=t1.entry) as 'real_min', (SELECT MAX(`level`) FROM test.combined_mob_health WHERE entry=t1.entry) as 'real_max', (SELECT MinLevel FROM cmangosnew2.creature_template WHERE entry=t1.entry) as 'cmangos_min',(SELECT MaxLevel FROM cmangosnew2.creature_template WHERE entry=t1.entry) as 'cmangos_max', (SELECT MinLevel FROM tdb.creature_template WHERE entry=t1.entry) as 'tdb_min',(SELECT MaxLevel FROM tdb.creature_template WHERE entry=t1.entry) as 'tdb_max' 
FROM test.creature_template10 t1
WHERE (level_max != (SELECT MAX(`level`) FROM test.combined_mob_health WHERE entry=t1.entry)

-- other
-- Defias Miner (Addon, Beastiary)
UPDATE `creature_template` SET `level_min`=17, `level_max`=18 WHERE `entry`=598;
-- Moonstalker Runt (Addon)
UPDATE `creature_template` SET `level_min`=10, `level_max`=17 WHERE `entry`=2070;
-- Silithid Swarm (Addon)
UPDATE `creature_template` SET `level_min`=21, `level_max`=22 WHERE `entry`=4196;
-- Deviate Viper (Addon)
UPDATE `creature_template` SET `level_min`=19, `level_max`=20 WHERE `entry`=5755;
-- Lupine Horror (Addon)
UPDATE `creature_template` SET `level_min`=24, `level_max`=25 WHERE `entry`=3863;

-- tdb
UPDATE `creature_template` SET `level_min`=29, `level_max`=29 WHERE `entry`=499;
UPDATE `creature_template` SET `level_min`=5, `level_max`=5 WHERE `entry`=883;
UPDATE `creature_template` SET `level_min`=34, `level_max`=35 WHERE `entry`=938;
UPDATE `creature_template` SET `level_min`=35, `level_max`=36 WHERE `entry`=1096;
UPDATE `creature_template` SET `level_min`=40, `level_max`=41 WHERE `entry`=1561;
UPDATE `creature_template` SET `level_min`=40, `level_max`=41 WHERE `entry`=1562;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=1787;
UPDATE `creature_template` SET `level_min`=5, `level_max`=5 WHERE `entry`=2442;
UPDATE `creature_template` SET `level_min`=43, `level_max`=43 WHERE `entry`=2547;
UPDATE `creature_template` SET `level_min`=36, `level_max`=37 WHERE `entry`=2667;
UPDATE `creature_template` SET `level_min`=39, `level_max`=40 WHERE `entry`=2729;
UPDATE `creature_template` SET `level_min`=35, `level_max`=37 WHERE `entry`=2906;
UPDATE `creature_template` SET `level_min`=23, `level_max`=24 WHERE `entry`=3844;
UPDATE `creature_template` SET `level_min`=37, `level_max`=38 WHERE `entry`=4655;
UPDATE `creature_template` SET `level_min`=47, `level_max`=48 WHERE `entry`=5474;
UPDATE `creature_template` SET `level_min`=42, `level_max`=43 WHERE `entry`=5617;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=7443;
UPDATE `creature_template` SET `level_min`=42, `level_max`=43 WHERE `entry`=7997;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=9164;
UPDATE `creature_template` SET `level_min`=52, `level_max`=54 WHERE `entry`=9167;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=9200;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=9258;
UPDATE `creature_template` SET `level_min`=15, `level_max`=18 WHERE `entry`=9457;
UPDATE `creature_template` SET `level_min`=53, `level_max`=54 WHERE `entry`=9879;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=10388;
UPDATE `creature_template` SET `level_min`=60, `level_max`=61 WHERE `entry`=10400;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=10697;
UPDATE `creature_template` SET `level_min`=53, `level_max`=54 WHERE `entry`=11290;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=11291;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=12250;
UPDATE `creature_template` SET `level_min`=11, `level_max`=12 WHERE `entry`=1202;
UPDATE `creature_template` SET `level_min`=6, `level_max`=7 WHERE `entry`=2956;
UPDATE `creature_template` SET `level_min`=28, `level_max`=38 WHERE `entry`=2992;
UPDATE `creature_template` SET `level_min`=37, `level_max`=38 WHERE `entry`=4677;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=9695;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=10183;
UPDATE `creature_template` SET `level_min`=56, `level_max`=57 WHERE `entry`=10217;
UPDATE `creature_template` SET `level_min`=60, `level_max`=61 WHERE `entry`=10389;



-- db2
/*
385, 3862, 4787, 9458, 9556
*/
UPDATE `creature_template` SET `level_min`=5, `level_max`=5 WHERE `entry`=385;
UPDATE `creature_template` SET `level_min`=5, `level_max`=5 WHERE `entry`=385;
UPDATE `creature_template` SET `level_min`=18, `level_max`=19 WHERE `entry`=3862;
UPDATE `creature_template` SET `level_min`=20, `level_max`=20 WHERE `entry`=4787;
UPDATE `creature_template` SET `level_min`=15, `level_max`=18 WHERE `entry`=9458;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=9556;


-- vmangos
/*
397, 1184, 2276, 3843, 3853, 3855, 3859, 4850, 4860, 5652, 6585, 7017, 7272, 7796, 9237, 
*/

-- cmangos
/*
126, 442, 469, 534, 599, 636, 647, 657, 1253, 1492, 1729, 1795, 1827, 1853, 2058, 2064, 2386, 2753, 2755, 3297, 3530, 3533, 3570, 3619, 3628, 3640, 3672, 3877, 4417, 
4418, 4783, 4784, 4786, 4852, 5055, 5364, 5366, 5430, 6206, 6867, 7091, 7208, 7428, 7603, 7788, 8149, 8447, 8889, 8894, 8903, 8904, 8933, 9017, 9032, 11043, 
9196, 9198, 9543, 9701, 10043, 10119, 10177, 10374, 10381, 10383, 10385, 10407, 10414, 10416, 10431, 10436, 10439, 10440, 10464, 10504, 10506, 10516, 
10641, 10656, 10737, 10741, 10762, 10808, 10812, 10813, 10856, 10857, 10997, 11034, 11035, 11038, 11099, 11194, 12265, 818, 1850, 2745, 14428, 3989, 6219, 6239, 7843, 
*/
UPDATE `creature_template` SET `level_min`=12, `level_max`=13 WHERE `entry`=126;
UPDATE `creature_template` SET `level_min`=15, `level_max`=16 WHERE `entry`=442;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=469;
UPDATE `creature_template` SET `level_min`=34, `level_max`=34 WHERE `entry`=534;
UPDATE `creature_template` SET `level_min`=18, `level_max`=18 WHERE `entry`=599;
UPDATE `creature_template` SET `level_min`=19, `level_max`=20 WHERE `entry`=636;
UPDATE `creature_template` SET `level_min`=20, `level_max`=20 WHERE `entry`=647;
UPDATE `creature_template` SET `level_min`=19, `level_max`=20 WHERE `entry`=657;
UPDATE `creature_template` SET `level_min`=47, `level_max`=47 WHERE `entry`=818;
UPDATE `creature_template` SET `level_min`=15, `level_max`=15 WHERE `entry`=1253;
UPDATE `creature_template` SET `level_min`=47, `level_max`=47 WHERE `entry`=1492;
UPDATE `creature_template` SET `level_min`=17, `level_max`=18 WHERE `entry`=1729;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=1795;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=1827;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=1850;
UPDATE `creature_template` SET `level_min`=61, `level_max`=61 WHERE `entry`=1853;
UPDATE `creature_template` SET `level_min`=18, `level_max`=18 WHERE `entry`=2058;
UPDATE `creature_template` SET `level_min`=13, `level_max`=13 WHERE `entry`=2064;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=2386;
UPDATE `creature_template` SET `level_min`=42, `level_max`=42 WHERE `entry`=2745;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=2753;
UPDATE `creature_template` SET `level_min`=44, `level_max`=44 WHERE `entry`=2755;
UPDATE `creature_template` SET `level_min`=25, `level_max`=30 WHERE `entry`=3297;
UPDATE `creature_template` SET `level_min`=14, `level_max`=15 WHERE `entry`=3530;
UPDATE `creature_template` SET `level_min`=14, `level_max`=15 WHERE `entry`=3533;
UPDATE `creature_template` SET `level_min`=7, `level_max`=7 WHERE `entry`=3570;
UPDATE `creature_template` SET `level_min`=19, `level_max`=20 WHERE `entry`=3619;
UPDATE `creature_template` SET `level_min`=5, `level_max`=5 WHERE `entry`=3628;
UPDATE `creature_template` SET `level_min`=17, `level_max`=18 WHERE `entry`=3640;
UPDATE `creature_template` SET `level_min`=20, `level_max`=20 WHERE `entry`=3672;
UPDATE `creature_template` SET `level_min`=21, `level_max`=22 WHERE `entry`=3877;
UPDATE `creature_template` SET `level_min`=18, `level_max`=19 WHERE `entry`=3989;
UPDATE `creature_template` SET `level_min`=18, `level_max`=19 WHERE `entry`=4417;
UPDATE `creature_template` SET `level_min`=18, `level_max`=19 WHERE `entry`=4418;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=4783;
UPDATE `creature_template` SET `level_min`=23, `level_max`=23 WHERE `entry`=4784;
UPDATE `creature_template` SET `level_min`=22, `level_max`=22 WHERE `entry`=4786;
UPDATE `creature_template` SET `level_min`=37, `level_max`=38 WHERE `entry`=4852;
UPDATE `creature_template` SET `level_min`=19, `level_max`=20 WHERE `entry`=5055;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=5364;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=5366;
UPDATE `creature_template` SET `level_min`=47, `level_max`=49 WHERE `entry`=5430;
UPDATE `creature_template` SET `level_min`=25, `level_max`=27 WHERE `entry`=6206;
UPDATE `creature_template` SET `level_min`=28, `level_max`=29 WHERE `entry`=6219;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=6239;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=6867;
UPDATE `creature_template` SET `level_min`=43, `level_max`=44 WHERE `entry`=7091;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=7208;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=7428;
UPDATE `creature_template` SET `level_min`=28, `level_max`=29 WHERE `entry`=7603;
UPDATE `creature_template` SET `level_min`=44, `level_max`=45 WHERE `entry`=7788;
UPDATE `creature_template` SET `level_min`=24, `level_max`=25 WHERE `entry`=7843;
UPDATE `creature_template` SET `level_min`=48, `level_max`=48 WHERE `entry`=8149;
UPDATE `creature_template` SET `level_min`=48, `level_max`=48 WHERE `entry`=8447;
UPDATE `creature_template` SET `level_min`=48, `level_max`=49 WHERE `entry`=8889;
UPDATE `creature_template` SET `level_min`=52, `level_max`=53 WHERE `entry`=8894;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=8903;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=8904;
UPDATE `creature_template` SET `level_min`=50, `level_max`=52 WHERE `entry`=8933;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=9017;
UPDATE `creature_template` SET `level_min`=53, `level_max`=53 WHERE `entry`=9032;
UPDATE `creature_template` SET `level_min`=59, `level_max`=59 WHERE `entry`=9196;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=9198;
UPDATE `creature_template` SET `level_min`=53, `level_max`=53 WHERE `entry`=9543;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=9701;
UPDATE `creature_template` SET `level_min`=48, `level_max`=52 WHERE `entry`=10043;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10119;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=10177;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=10374;
UPDATE `creature_template` SET `level_min`=56, `level_max`=57 WHERE `entry`=10381;
UPDATE `creature_template` SET `level_min`=55, `level_max`=56 WHERE `entry`=10383;
UPDATE `creature_template` SET `level_min`=56, `level_max`=57 WHERE `entry`=10385;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=10407;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=10414;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=10416;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=10431;
UPDATE `creature_template` SET `level_min`=59, `level_max`=59 WHERE `entry`=10436;
UPDATE `creature_template` SET `level_min`=61, `level_max`=61 WHERE `entry`=10439;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10440;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=10464;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10504;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10506;
UPDATE `creature_template` SET `level_min`=57, `level_max`=57 WHERE `entry`=10516;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=10641;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=10656;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10737;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10741;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10762;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=10808;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10812;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=10813;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=10856;
UPDATE `creature_template` SET `level_min`=58, `level_max`=58 WHERE `entry`=10857;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=10997;
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=11034;
UPDATE `creature_template` SET `level_min`=57, `level_max`=57 WHERE `entry`=11035;
UPDATE `creature_template` SET `level_min`=52, `level_max`=52 WHERE `entry`=11038;
UPDATE `creature_template` SET `level_min`=58, `level_max`=60 WHERE `entry`=11043;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=11099;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=11194;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=12265;
UPDATE `creature_template` SET `level_min`=7, `level_max`=7 WHERE `entry`=14428;


/*
cmangos

*/

/*
tdb
300, 494, 495, 827, 978, 1436, 1461, 1753, 1954, 2174, 2470, 2512, 2603, 2636, 3392, 4132, 4386, 4680, 5045, 5272, 5276, 5400, 5454, 5999, 
6000, 6013, 6184, 6187, 6188, 6378, 7051, 7053, 7292, 8118, 8397, 8535, 8717, 9522, 9605, 9777, 10919, 10948, 10949, 10996, 11196, 11288, 
11289, 11681, 11739, 11937, 14388, 14393, 14484, 14485, 449, 517, 813, 979, 1434, 1836, 2160, 2232, 2623, 2742, 3283, 3286, 3383, 3384, 
4002, 5646, 5990, 6195, 7455, 7461, 7462, 7463, 8532, 8546, 8913, 9397, 9776, 11880, 11881, 11883, 15213, 16043, 11727
*/
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=300;
UPDATE `creature_template` SET `level_min`=16, `level_max`=17 WHERE `entry`=449;
UPDATE `creature_template` SET `level_min`=37, `level_max`=37 WHERE `entry`=494;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=495;
UPDATE `creature_template` SET `level_min`=17, `level_max`=18 WHERE `entry`=517;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=813;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=827;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=978;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=979;
UPDATE `creature_template` SET `level_min`=38, `level_max`=42 WHERE `entry`=1434;
UPDATE `creature_template` SET `level_min`=37, `level_max`=37 WHERE `entry`=1436;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=1461;
UPDATE `creature_template` SET `level_min`=10, `level_max`=10 WHERE `entry`=1753;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=1836;
UPDATE `creature_template` SET `level_min`=16, `level_max`=17 WHERE `entry`=1954;
UPDATE `creature_template` SET `level_min`=20, `level_max`=21 WHERE `entry`=2160;
UPDATE `creature_template` SET `level_min`=14, `level_max`=16 WHERE `entry`=2174;
UPDATE `creature_template` SET `level_min`=12, `level_max`=14 WHERE `entry`=2232;
UPDATE `creature_template` SET `level_min`=37, `level_max`=37 WHERE `entry`=2470;
UPDATE `creature_template` SET `level_min`=30, `level_max`=30 WHERE `entry`=2512;
UPDATE `creature_template` SET `level_min`=36, `level_max`=36 WHERE `entry`=2603;
UPDATE `creature_template` SET `level_min`=32, `level_max`=33 WHERE `entry`=2623;
UPDATE `creature_template` SET `level_min`=38, `level_max`=39 WHERE `entry`=2636;
UPDATE `creature_template` SET `level_min`=38, `level_max`=39 WHERE `entry`=2742;
UPDATE `creature_template` SET `level_min`=16, `level_max`=17 WHERE `entry`=3283;
UPDATE `creature_template` SET `level_min`=17, `level_max`=18 WHERE `entry`=3286;
UPDATE `creature_template` SET `level_min`=14, `level_max`=15 WHERE `entry`=3383;
UPDATE `creature_template` SET `level_min`=14, `level_max`=15 WHERE `entry`=3384;
UPDATE `creature_template` SET `level_min`=24, `level_max`=24 WHERE `entry`=3392;
UPDATE `creature_template` SET `level_min`=22, `level_max`=23 WHERE `entry`=4002;
UPDATE `creature_template` SET `level_min`=36, `level_max`=36 WHERE `entry`=4132;
UPDATE `creature_template` SET `level_min`=36, `level_max`=37 WHERE `entry`=4386;
UPDATE `creature_template` SET `level_min`=38, `level_max`=39 WHERE `entry`=4680;
UPDATE `creature_template` SET `level_min`=36, `level_max`=36 WHERE `entry`=5045;
UPDATE `creature_template` SET `level_min`=44, `level_max`=45 WHERE `entry`=5272;
UPDATE `creature_template` SET `level_min`=47, `level_max`=50 WHERE `entry`=5276;
UPDATE `creature_template` SET `level_min`=48, `level_max`=48 WHERE `entry`=5400;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=5454;
UPDATE `creature_template` SET `level_min`=42, `level_max`=44 WHERE `entry`=5646;
UPDATE `creature_template` SET `level_min`=47, `level_max`=48 WHERE `entry`=5990;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=5999;
UPDATE `creature_template` SET `level_min`=49, `level_max`=51 WHERE `entry`=6000;
UPDATE `creature_template` SET `level_min`=35, `level_max`=37 WHERE `entry`=6013;
UPDATE `creature_template` SET `level_min`=46, `level_max`=47 WHERE `entry`=6184;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=6187;
UPDATE `creature_template` SET `level_min`=50, `level_max`=51 WHERE `entry`=6188;
UPDATE `creature_template` SET `level_min`=51, `level_max`=52 WHERE `entry`=6195;
UPDATE `creature_template` SET `level_min`=50, `level_max`=52 WHERE `entry`=6378;
UPDATE `creature_template` SET `level_min`=23, `level_max`=23 WHERE `entry`=7051;
UPDATE `creature_template` SET `level_min`=23, `level_max`=23 WHERE `entry`=7053;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=7292;
UPDATE `creature_template` SET `level_min`=54, `level_max`=56 WHERE `entry`=7455;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=7461;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=7462;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=7463;
UPDATE `creature_template` SET `level_min`=28, `level_max`=30 WHERE `entry`=8118;
UPDATE `creature_template` SET `level_min`=44, `level_max`=44 WHERE `entry`=8397;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=8532;
UPDATE `creature_template` SET `level_min`=56, `level_max`=58 WHERE `entry`=8535;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=8546;
UPDATE `creature_template` SET `level_min`=61, `level_max`=61 WHERE `entry`=8717;
UPDATE `creature_template` SET `level_min`=51, `level_max`=52 WHERE `entry`=8913;
UPDATE `creature_template` SET `level_min`=47, `level_max`=49 WHERE `entry`=9397;
UPDATE `creature_template` SET `level_min`=54, `level_max`=55 WHERE `entry`=9522;
UPDATE `creature_template` SET `level_min`=59, `level_max`=59 WHERE `entry`=9605;
UPDATE `creature_template` SET `level_min`=51, `level_max`=53 WHERE `entry`=9776;
UPDATE `creature_template` SET `level_min`=51, `level_max`=53 WHERE `entry`=9777;
UPDATE `creature_template` SET `level_min`=52, `level_max`=58 WHERE `entry`=10919;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=10948;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=10949;
UPDATE `creature_template` SET `level_min`=58, `level_max`=60 WHERE `entry`=10996;
UPDATE `creature_template` SET `level_min`=52, `level_max`=58 WHERE `entry`=11196;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=11288;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=11289;
UPDATE `creature_template` SET `level_min`=27, `level_max`=28 WHERE `entry`=11681;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=11727;
UPDATE `creature_template` SET `level_min`=57, `level_max`=58 WHERE `entry`=11739;
UPDATE `creature_template` SET `level_min`=58, `level_max`=59 WHERE `entry`=11880;
UPDATE `creature_template` SET `level_min`=59, `level_max`=60 WHERE `entry`=11881;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=11883;
UPDATE `creature_template` SET `level_min`=38, `level_max`=38 WHERE `entry`=11937;
UPDATE `creature_template` SET `level_min`=50, `level_max`=52 WHERE `entry`=14388;
UPDATE `creature_template` SET `level_min`=37, `level_max`=42 WHERE `entry`=14393;
UPDATE `creature_template` SET `level_min`=51, `level_max`=52 WHERE `entry`=14484;
UPDATE `creature_template` SET `level_min`=52, `level_max`=53 WHERE `entry`=14485;
UPDATE `creature_template` SET `level_min`=60, `level_max`=61 WHERE `entry`=15213;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=16043;

/*
addon, wowhead
*/
UPDATE `creature_template` SET `level_min`=27, `level_max`=28 WHERE `entry`=1057;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=2405;
UPDATE `creature_template` SET `level_min`=25, `level_max`=25 WHERE `entry`=5797;
UPDATE `creature_template` SET `level_min`=30, `level_max`=31 WHERE `entry`=6230;
UPDATE `creature_template` SET `level_min`=49, `level_max`=50 WHERE `entry`=8440;
UPDATE `creature_template` SET `level_min`=57, `level_max`=57 WHERE `entry`=9039;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=10038;
UPDATE `creature_template` SET `level_min`=27, `level_max`=28 WHERE `entry`=11684;
UPDATE `creature_template` SET `level_min`=42, `level_max`=44 WHERE `entry`=11792;
UPDATE `creature_template` SET `level_min`=55, `level_max`=55 WHERE `entry`=12426;
UPDATE `creature_template` SET `level_min`=14, `level_max`=15 WHERE `entry`=2540;
UPDATE `creature_template` SET `level_min`=4, `level_max`=5 WHERE `entry`=5766;
UPDATE `creature_template` SET `level_min`=51, `level_max`=54 WHERE `entry`=8897;
UPDATE `creature_template` SET `level_min`=47, `level_max`=49 WHERE `entry`=12206;
UPDATE `creature_template` SET `level_min`=43, `level_max`=45 WHERE `entry`=13142;
UPDATE `creature_template` SET `level_min`=21, `level_max`=21 WHERE `entry`=7170;
-- UPDATE `creature_template` SET `level_min`=XXXXX, `level_max`=YYYYY WHERE `entry`=ZZZZZ;

-- Events list for Dark Iron Raider
DELETE FROM `creature_ai_events` WHERE `creature_id`=2149;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (214901, 2149, 0, 4, 0, 100, 0, 0, 0, 0, 0, 214901, 0, 0, 'Dark Iron Raider - Random Say on Aggro (Could be more Says but not 100% Sure)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (214902, 2149, 0, 2, 0, 100, 0, 1, 15, 0, 0, 214902, 0, 0, 'Dark Iron Raider - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=214902;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (214902, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Raider - Flee');




-- tirisfal
https://classic.wowhead.com/npc=10856/argent-quartermaster-hasana#comments

-- western plaguelands
https://classic.wowhead.com/npc=10857/argent-quartermaster-lightspark#comments
https://classic.wowhead.com/npc=11194/argent-defender#comments

-- eastern plaguelands
https://classic.wowhead.com/npc=11063/carlin-redpath#comments
https://classic.wowhead.com/npc=11034/lord-maxwell-tyrosus#comments
https://classic.wowhead.com/npc=11035/betina-bigglezink#comments
https://classic.wowhead.com/npc=11038/caretaker-alen#comments
https://classic.wowhead.com/npc=11099/argent-guard#comments

-- darnassus
https://classic.wowhead.com/npc=4783/dawnwatcher-selgorm#comments
https://classic.wowhead.com/npc=4784/argent-guard-manados#comments
https://classic.wowhead.com/npc=4786/dawnwatcher-shaedlass#starts

-- stormwind
https://classic.wowhead.com/npc=3628/steven-lohan#screenshots
https://classic.wowhead.com/npc=7208/noarm#comments

-- wetlands
https://classicdb.ch/?npc=1140#comments

-- westfall
https://classicdb.ch/?npc=126

-- stv
https://classicdb.ch/?npc=469
https://classicdb.ch/?npc=818#comments
https://classicdb.ch/?npc=1492#comments

-- duskwood
https://classicdb.ch/?npc=534#comments

-- dun morogh
https://classicdb.ch/?npc=1253#comments

-- darkshore
https://classicdb.ch/?npc=2070#comments

-- southshore
https://classicdb.ch/?npc=2386

-- badlands
https://classicdb.ch/?npc=2745#comments

-- durotar
https://classic.wowhead.com/npc=3297/senjin-watcher#comments

-- silverpine
https://classic.wowhead.com/npc=3530/pyrewood-tailor#comments
https://classic.wowhead.com/npc=3533/moonrage-leatherworker#comments

-- barrens
https://classicdb.ch/?npc=4196#comments
