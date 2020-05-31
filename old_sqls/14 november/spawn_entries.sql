ALTER TABLE `creature`
	CHANGE COLUMN `id` `id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Template Id' AFTER `guid`,
	ADD COLUMN `id2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Template Id' AFTER `id`,
	ADD COLUMN `id3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Template Id' AFTER `id2`,
	ADD COLUMN `id4` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Template Id' AFTER `id3`;

UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=27440;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=27448;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=27447;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=39855;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=39854;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=27446;
UPDATE `creature` SET `id` = 4293, `id2` = 4306 WHERE `guid`=39857;
UPDATE `creature` SET `id` = 15753, `id2` = 15817 WHERE `guid`=112100;
UPDATE `creature` SET `id` = 15753, `id2` = 15817 WHERE `guid`=112200;
UPDATE `creature` SET `id` = 15753, `id2` = 15817 WHERE `guid`=112300;
UPDATE `creature` SET `id` = 15753, `id2` = 15817 WHERE `guid`=112940;
UPDATE `creature` SET `id` = 15753, `id2` = 15817 WHERE `guid`=112960;
UPDATE `creature` SET `id` = 15750, `id2` = 15816 WHERE `guid`=112500;
UPDATE `creature` SET `id` = 15747, `id2` = 15815 WHERE `guid`=112600;
UPDATE `creature` SET `id` = 15806, `id2` = 15814 WHERE `guid`=112700;
UPDATE `creature` SET `id` = 15812, `id2` = 15813 WHERE `guid`=112800;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=23741;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=23743;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=23744;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=23745;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=24172;
UPDATE `creature` SET `id` = 6498, `id2` = 6499, `id3` = 6500 WHERE `guid`=95009;
UPDATE `creature` SET `id` = 122, `id2` = 450 WHERE `guid`=89768;
UPDATE `creature` SET `id` = 122, `id2` = 450 WHERE `guid`=54601;
UPDATE `creature` SET `id` = 7855, `id2` = 7856, `id3` = 7858 WHERE `guid`=105997;
UPDATE `creature` SET `id` = 7855, `id2` = 7856, `id3` = 7858 WHERE `guid`=106000;
UPDATE `creature` SET `id` = 7855, `id2` = 7856 WHERE `guid`=106002;
UPDATE `creature` SET `id` = 7855, `id2` = 7856 WHERE `guid`=106003;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106009;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106010;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106011;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106012;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106013;
UPDATE `creature` SET `id` = 5424, `id2` = 5426, `id3` = 5429 WHERE `guid`=106014;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53793;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53795;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53797;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53799;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53801;
UPDATE `creature` SET `id` = 10408, `id2` = 10409 WHERE `guid`=53803;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73263;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31441;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31728;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=33994;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31320;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=33898;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=34100;
UPDATE `creature` SET `id` = 4376, `id2` = 4378 WHERE `guid`=33899;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=33889;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=33914;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=33920;
UPDATE `creature` SET `id` = 4376, `id2` = 4378 WHERE `guid`=34000;
UPDATE `creature` SET `id` = 4376, `id2` = 4378 WHERE `guid`=73334;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=34006;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=34005;
UPDATE `creature` SET `id` = 4377, `id2` = 4379 WHERE `guid`=31366;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=31378;
UPDATE `creature` SET `id` = 4377, `id2` = 4378 WHERE `guid`=31371;
UPDATE `creature` SET `id` = 4376, `id2` = 4378 WHERE `guid`=34004;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=31380;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=31368;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=30995;
UPDATE `creature` SET `id` = 4376, `id2` = 4377 WHERE `guid`=30993;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=31355;
UPDATE `creature` SET `id` = 4378, `id2` = 4379 WHERE `guid`=31375;
UPDATE `creature` SET `id` = 4377, `id2` = 4379 WHERE `guid`=31370;
UPDATE `creature` SET `id` = 4376, `id2` = 4379 WHERE `guid`=31357;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30609;
UPDATE `creature` SET `id` = 4351, `id2` = 4414 WHERE `guid`=30466;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73386;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73619;
UPDATE `creature` SET `id` = 4351, `id2` = 4352 WHERE `guid`=33779;
UPDATE `creature` SET `id` = 4351, `id2` = 4352 WHERE `guid`=31702;
UPDATE `creature` SET `id` = 4351, `id2` = 4352 WHERE `guid`=30446;
UPDATE `creature` SET `id` = 4351, `id2` = 4352 WHERE `guid`=30706;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=25318;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=30799;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=30999;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=31003;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73439;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31018;
UPDATE `creature` SET `id` = 4359, `id2` = 4362 WHERE `guid`=31695;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=31399;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=73471;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73467;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73529;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73533;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=39314;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=31224;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=30924;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=39311;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=39313;
UPDATE `creature` SET `id` = 4401, `id2` = 4402 WHERE `guid`=31559;
UPDATE `creature` SET `id` = 4398, `id2` = 4402 WHERE `guid`=73580;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=30820;
UPDATE `creature` SET `id` = 4388, `id2` = 4401 WHERE `guid`=73594;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=30844;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=31674;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30573;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=31184;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73627;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=31570;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30501;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73650;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73665;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73704;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=37048;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=73713;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=37029;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=30885;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=73720;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73726;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=37049;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=31129;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73737;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31420;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=33683;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31655;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31093;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31245;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31312;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30612;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31310;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31309;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=31244;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31306;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=31438;
UPDATE `creature` SET `id` = 4411, `id2` = 4414 WHERE `guid`=31692;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73771;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=25171;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=73769;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=30947;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=73773;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31693;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31696;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=30464;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=33690;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=18619;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31445;
UPDATE `creature` SET `id` = 4411, `id2` = 4414 WHERE `guid`=33849;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30739;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33768;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=33770;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33776;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73790;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33781;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30990;
UPDATE `creature` SET `id` = 4391, `id2` = 4412 WHERE `guid`=31097;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31469;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30989;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30991;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33784;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=30722;
UPDATE `creature` SET `id` = 4391, `id2` = 4412 WHERE `guid`=30862;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31106;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31104;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=73865;
UPDATE `creature` SET `id` = 4355, `id2` = 4412 WHERE `guid`=73869;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=73868;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=73862;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=73863;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=73860;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31025;
UPDATE `creature` SET `id` = 4385, `id2` = 4387 WHERE `guid`=73846;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30563;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=33826;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=31254;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=30842;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=31251;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=30841;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=31252;
UPDATE `creature` SET `id` = 4391, `id2` = 4412, `id3` = 4414 WHERE `guid`=31659;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30720;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=73792;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=31099;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=31102;
UPDATE `creature` SET `id` = 4355, `id2` = 4391 WHERE `guid`=31013;
UPDATE `creature` SET `id` = 4385, `id2` = 4387 WHERE `guid`=73821;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=31253;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30597;
UPDATE `creature` SET `id` = 4391, `id2` = 4412, `id3` = 4414 WHERE `guid`=31256;
UPDATE `creature` SET `id` = 4355, `id2` = 4391 WHERE `guid`=30782;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=33876;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=31145;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30740;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31109;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31451;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31447;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31448;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31663;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30719;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31100;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31101;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30807;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31249;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74120;
UPDATE `creature` SET `id` = 4355, `id2` = 4412 WHERE `guid`=74116;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=74115;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74118;
UPDATE `creature` SET `id` = 4355, `id2` = 4391 WHERE `guid`=74123;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=73838;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33864;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=73870;
UPDATE `creature` SET `id` = 4412, `id2` = 4414 WHERE `guid`=73978;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=73883;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73884;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=73885;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73882;
UPDATE `creature` SET `id` = 4391, `id2` = 4412 WHERE `guid`=73880;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73879;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=73877;
UPDATE `creature` SET `id` = 4355, `id2` = 4412 WHERE `guid`=73839;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=73864;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=33877;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33783;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=74126;
UPDATE `creature` SET `id` = 4391, `id2` = 4412 WHERE `guid`=73840;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30996;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30561;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=31098;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31468;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74003;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=30867;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73861;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30992;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73976;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31175;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=30988;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31172;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73971;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31085;
UPDATE `creature` SET `id` = 4355, `id2` = 4391 WHERE `guid`=74031;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74015;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=30928;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74023;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31301;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74025;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31300;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30977;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74059;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74062;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31591;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31588;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=31029;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74026;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74029;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74024;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74056;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74058;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74057;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73945;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73943;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73948;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73889;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=33911;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73957;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31455;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73950;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73954;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31030;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31026;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73946;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73947;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=31291;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73927;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73925;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73930;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73919;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73912;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74090;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73913;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=73911;
UPDATE `creature` SET `id` = 4355, `id2` = 4412, `id3` = 4414 WHERE `guid`=74093;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=73902;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=73901;
UPDATE `creature` SET `id` = 4355, `id2` = 4391 WHERE `guid`=73894;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=74098;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=74299;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=31217;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=74296;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74297;
UPDATE `creature` SET `id` = 4385, `id2` = 4387 WHERE `guid`=74091;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73904;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73899;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73905;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74092;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=74102;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74101;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74103;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74104;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74301;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73871;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73873;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73875;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73887;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73888;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=73890;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73891;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73898;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73895;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73903;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73893;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73896;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74087;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73920;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73897;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73907;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73909;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73941;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73908;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73928;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73915;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73918;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73934;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73922;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73914;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73916;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73921;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73923;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73910;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30530;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74070;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73924;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73929;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73933;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73937;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73938;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73939;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30555;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31095;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73955;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31456;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=73962;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31031;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=73965;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31001;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73974;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74034;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74037;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74013;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74007;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74004;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74010;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74012;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412, `id4` = 4414 WHERE `guid`=73979;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73983;
UPDATE `creature` SET `id` = 4411, `id2` = 4412 WHERE `guid`=31096;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=30809;
UPDATE `creature` SET `id` = 4411, `id2` = 4414 WHERE `guid`=74435;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74433;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74011;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74002;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74045;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31661;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30805;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74042;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73991;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74826;
UPDATE `creature` SET `id` = 4411, `id2` = 4414 WHERE `guid`=74828;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31432;
UPDATE `creature` SET `id` = 4411, `id2` = 4414 WHERE `guid`=74047;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74054;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73994;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74001;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74008;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74005;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74046;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74020;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74022;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73996;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73999;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73997;
UPDATE `creature` SET `id` = 4355, `id2` = 4411, `id3` = 4414 WHERE `guid`=74000;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=74014;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74016;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74060;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74036;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=74048;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74050;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=73282;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74053;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74443;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74447;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=74448;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=31476;
UPDATE `creature` SET `id` = 4355, `id2` = 4414 WHERE `guid`=74055;
UPDATE `creature` SET `id` = 4392, `id2` = 4393 WHERE `guid`=74069;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=31037;
UPDATE `creature` SET `id` = 4403, `id2` = 4405 WHERE `guid`=31068;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=74081;
UPDATE `creature` SET `id` = 4403, `id2` = 4405 WHERE `guid`=31350;
UPDATE `creature` SET `id` = 4401, `id2` = 4404 WHERE `guid`=31352;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31024;
UPDATE `creature` SET `id` = 4401, `id2` = 4405 WHERE `guid`=31064;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=30942;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=31194;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=31034;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31070;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=31035;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30939;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74294;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=74096;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74100;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74107;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74305;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74298;
UPDATE `creature` SET `id` = 4391, `id2` = 4414 WHERE `guid`=74095;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74303;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74295;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74099;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4414 WHERE `guid`=74108;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74109;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74113;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74114;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74112;
UPDATE `creature` SET `id` = 4355, `id2` = 4412 WHERE `guid`=74106;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74418;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74326;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74416;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74111;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74121;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74174;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74162;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74414;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74161;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74166;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74410;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74131;
UPDATE `creature` SET `id` = 4355, `id2` = 4391, `id3` = 4412 WHERE `guid`=74134;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=73811;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74319;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31111;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74125;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31103;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=31105;
UPDATE `creature` SET `id` = 4343, `id2` = 4344 WHERE `guid`=74136;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=33856;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=33862;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=31237;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=31236;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=31235;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=33869;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74147;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74144;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74140;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74142;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=33852;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74156;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74160;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74167;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74157;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74164;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74427;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74424;
UPDATE `creature` SET `id` = 4356, `id2` = 4357 WHERE `guid`=74419;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30748;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74169;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74179;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74176;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30519;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74177;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74197;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74178;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74175;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74180;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74183;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74196;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74182;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74181;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74386;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74388;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74184;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74204;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74189;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30541;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74190;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74976;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74205;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74979;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74981;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74983;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74985;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74987;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74989;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74991;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74207;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31114;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31113;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31221;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74222;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74225;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74223;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74224;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74221;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31202;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=31160;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30596;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30888;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=34010;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31369;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74307;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=33928;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74417;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=74323;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74201;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74200;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31628;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31627;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31606;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31521;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31542;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31523;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31522;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31525;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31625;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31619;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31620;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31618;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31608;
UPDATE `creature` SET `id` = 4328, `id2` = 4331 WHERE `guid`=31621;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74335;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=31346;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31497;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31472;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74352;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31353;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74353;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31360;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31466;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31611;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31610;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31532;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=31228;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=31384;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31393;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31396;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31402;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74246;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74239;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74241;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74240;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74237;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74236;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74234;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74233;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74235;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74232;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74227;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74229;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74226;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31397;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=30912;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74255;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=22635;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=74263;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31188;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31187;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=23034;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74358;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31463;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31465;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31387;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31385;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=31390;
UPDATE `creature` SET `id` = 4328, `id2` = 4334 WHERE `guid`=74347;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31729;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=33773;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75036;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75039;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=34016;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31485;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=34018;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=31321;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74312;
UPDATE `creature` SET `id` = 4329, `id2` = 4331 WHERE `guid`=33685;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74316;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75047;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74212;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30902;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74252;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30587;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31191;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31186;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=31193;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74278;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74304;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30583;
UPDATE `creature` SET `id` = 4404, `id2` = 4405 WHERE `guid`=30940;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30594;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30615;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30544;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74287;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74327;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74369;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30540;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30576;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75012;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75057;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75059;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=75061;
UPDATE `creature` SET `id` = 4323, `id2` = 4324 WHERE `guid`=74399;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=31201;
UPDATE `creature` SET `id` = 4401, `id2` = 4404 WHERE `guid`=30792;
UPDATE `creature` SET `id` = 4398, `id2` = 4401 WHERE `guid`=30839;
UPDATE `creature` SET `id` = 4403, `id2` = 4404 WHERE `guid`=8451;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=30826;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=30691;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=30825;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=30823;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=30936;
UPDATE `creature` SET `id` = 4359, `id2` = 4362 WHERE `guid`=30737;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=30932;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=30617;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31414;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31411;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31722;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31707;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73208;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73212;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31298;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73219;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31295;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73222;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73224;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=73226;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73229;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73230;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=30766;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31444;
UPDATE `creature` SET `id` = 4376, `id2` = 4378 WHERE `guid`=34002;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73389;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31094;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=31002;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73465;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73477;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73480;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73481;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=73472;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=73474;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73475;
UPDATE `creature` SET `id` = 4362, `id2` = 4363 WHERE `guid`=73476;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73478;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=73479;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73484;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73485;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73486;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73487;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73490;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73493;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73494;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73495;
UPDATE `creature` SET `id` = 4362, `id2` = 4363 WHERE `guid`=73497;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73499;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73501;
UPDATE `creature` SET `id` = 4362, `id2` = 4363 WHERE `guid`=73502;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=73511;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73503;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73504;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=73505;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=73506;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=73507;
UPDATE `creature` SET `id` = 4360, `id2` = 4363 WHERE `guid`=73509;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=73510;
UPDATE `creature` SET `id` = 4360, `id2` = 4361 WHERE `guid`=73498;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73512;
UPDATE `creature` SET `id` = 4361, `id2` = 4363 WHERE `guid`=73513;
UPDATE `creature` SET `id` = 4361, `id2` = 4362 WHERE `guid`=73515;
UPDATE `creature` SET `id` = 4360, `id2` = 4362 WHERE `guid`=73519;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73520;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73521;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73524;
UPDATE `creature` SET `id` = 4396, `id2` = 4397 WHERE `guid`=73525;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73527;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=30496;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=25279;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73534;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73535;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=30789;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=31569;
UPDATE `creature` SET `id` = 4388, `id2` = 4398 WHERE `guid`=73601;
UPDATE `creature` SET `id` = 4388, `id2` = 4402 WHERE `guid`=73597;
UPDATE `creature` SET `id` = 4388, `id2` = 4398 WHERE `guid`=74444;
UPDATE `creature` SET `id` = 4401, `id2` = 4402 WHERE `guid`=73604;
UPDATE `creature` SET `id` = 4401, `id2` = 4402 WHERE `guid`=73605;
UPDATE `creature` SET `id` = 4388, `id2` = 4398 WHERE `guid`=73613;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73611;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73612;
UPDATE `creature` SET `id` = 4355, `id2` = 4411 WHERE `guid`=73614;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=73261;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73618;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31042;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73629;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73630;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73632;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73633;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73634;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73635;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73638;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73639;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73641;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73642;
UPDATE `creature` SET `id` = 4411, `id2` = 4413 WHERE `guid`=73643;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30593;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73652;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73658;
UPDATE `creature` SET `id` = 4382, `id2` = 4386 WHERE `guid`=73660;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73661;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=33765;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73672;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73673;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73676;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73195;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73201;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73682;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73679;
UPDATE `creature` SET `id` = 4358, `id2` = 4359 WHERE `guid`=73200;
UPDATE `creature` SET `id` = 4351, `id2` = 4352 WHERE `guid`=30943;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=31152;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=37035;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=30472;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73729;
UPDATE `creature` SET `id` = 4341, `id2` = 4342 WHERE `guid`=73733;
UPDATE `creature` SET `id` = 1420, `id2` = 2914 WHERE `guid`=29277;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73741;
UPDATE `creature` SET `id` = 4351, `id2` = 4413 WHERE `guid`=73744;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73743;
UPDATE `creature` SET `id` = 4351, `id2` = 4411 WHERE `guid`=73746;
UPDATE `creature` SET `id` = 4342, `id2` = 4343 WHERE `guid`=31422;
DELETE FROM `pool_template` WHERE `entry` IN (1602, 1603, 1604, 1605, 1606, 1607, 1608, 3100, 3101, 3102, 3104, 3105, 3106, 3107, 3108, 3109, 5000, 5001, 5002, 5003, 5055, 5056, 23004, 23005, 25612, 25613, 25614, 25615, 25616, 25617, 25618, 25619, 25620, 25621, 32973, 32974, 32975, 32976, 32977, 32978, 42911, 42912, 42913, 42914, 42915, 42916, 42917, 42918, 42919, 42920, 42921, 42922, 42923, 42924, 42925, 42926, 42927, 42928, 42929, 42930, 42931, 42932, 42933, 42934, 42935, 42936, 42937, 42938, 42940, 42942, 42943, 42944, 42945, 42946, 42947, 42948, 42949, 42950, 42951, 42952, 42953, 42954, 42955, 42956, 42957, 42958, 42959, 42960, 42961, 42962, 42963, 42964, 42965, 42966, 42967, 42968, 42969, 42970, 42971, 42972, 42973, 42974, 42975, 42976, 42977, 42978, 42979, 42980, 42981, 42982, 42983, 42984, 42985, 42986, 42987, 42988, 42989, 42990, 42991, 42992, 42993, 42994, 42995, 42996, 42997, 42998, 42999, 43000, 43001, 43002, 43003, 43004, 43005, 43006, 43007, 43008, 43009, 43010, 43011, 43012, 43013, 43014, 43015, 43016, 43017, 43018, 43019, 43020, 43021, 43022, 43023, 43024, 43025, 43026, 43027, 43028, 43030, 43031, 43032, 43033, 43034, 43035, 43036, 43037, 43038, 43039, 43040, 43041, 43042, 43043, 43044, 43045, 43046, 43047, 43048, 43049, 43050, 43051, 43052, 43053, 43054, 43055, 43056, 43057, 43058, 43059, 43060, 43061, 43062, 43063, 43064, 43065, 43066, 43067, 43068, 43069, 43070, 43071, 43072, 43073, 43074, 43075, 43076, 43077, 43078, 43079, 43080, 43081, 43082, 43083, 43084, 43085, 43086, 43087, 43088, 43089, 43090, 43093, 43094, 43095, 43096, 43097, 43098, 43099, 43100, 43101, 43102, 43103, 43104, 43105, 43106, 43107, 43108, 43109, 43110, 43111, 43112, 43113, 43114, 43115, 43116, 43117, 43118, 43119, 43120, 43121, 43122, 43123, 43124, 43125, 43126, 43127, 43128, 43129, 43130, 43131, 43132, 43133, 43134, 43135, 43136, 43137, 43138, 43139, 43140, 43141, 43142, 43143, 43144, 43145, 43146, 43147, 43148, 43149, 43150, 43151, 43152, 43153, 43154, 43155, 43156, 43158, 43159, 43160, 43161, 43162, 43163, 43164, 43165, 43166, 43167, 43168, 43169, 43170, 43171, 43172, 43173, 43174, 43175, 43176, 43177, 43178, 43179, 43180, 43181, 43183, 43184, 43185, 43186, 43187, 43188, 43189, 43190, 43191, 43192, 43193, 43194, 43195, 43196, 43197, 43198, 43199, 43200, 43201, 43202, 43203, 43204, 43205, 43206, 43207, 43208, 43209, 43210, 43211, 43212, 43213, 43215, 43216, 43217, 43218, 43219, 43220, 43221, 43222, 43223, 43224, 43225, 43226, 43227, 43228, 43229, 43230, 43231, 43232, 43233, 43234, 43235, 43236, 43237, 43238, 43239, 43240, 43241, 43242, 43243, 43244, 43245, 43246, 43247, 43248, 43249, 43250, 43251, 43252, 43253, 43254, 43255, 43256, 43257, 43258, 43259, 43260, 43261, 43262, 43263, 43264, 43265, 43266, 43267, 43268, 43269, 43270, 43271, 43272, 43273, 43274, 43275, 43276, 43277, 43278, 43279, 43280, 43281, 43282, 43283, 43284, 43285, 43286, 43287, 43288, 43289, 43290, 43291, 43292, 43293, 43294, 43295, 43296, 43297, 43298, 43299, 43300, 43301, 43302, 43303, 43304, 43305, 43306, 43307, 43308, 43309, 43310, 43311, 43312, 43313, 43314, 43315, 43316, 43317, 43318, 43319, 43320, 43321, 43322, 43323, 43325, 43326, 43327, 43328, 43329, 43330, 43331, 43332, 43333, 43334, 43335, 43336, 43337, 43338, 43339, 43340, 43341, 43342, 43343, 43344, 43345, 43346, 43347, 43348, 43349, 43350, 43351, 43352, 43353, 43354, 43355, 43356, 43357, 43358, 43359, 43360, 43361, 43362, 43363, 43364, 43365, 43366, 43367, 43368, 43369, 43370, 43371, 43372, 43373, 43374, 43375, 43376, 43377, 43378, 43379, 43380, 43381, 43382, 43383, 43384, 43385, 43386, 43387, 43388, 43389, 43390, 43391, 43392, 43393, 43394, 43395, 43396, 43397, 43398, 43399, 43401, 43402, 43403, 43405, 43406, 43407, 43408, 43409, 43410, 43411, 43412, 43413, 43414, 43415, 43416, 43417, 43418, 43419, 43420, 43421, 43422, 43423, 43424, 43425, 43426, 43427, 43428, 43429, 43430, 43431, 43432, 43433, 43434, 43435, 43436, 43437, 43438, 43439, 43440, 43441, 43442, 43443, 43444, 43445, 43446, 43447, 43448, 43449, 43450, 43451, 43452, 43453, 43454, 43455, 43456, 43457, 43458, 43459, 43460, 43461, 43462, 43463, 43464, 43465, 43466, 43467, 43468, 43469, 43470, 43471, 43472, 43473, 43474, 43475, 43476, 43477, 43478, 43479, 43480, 43481, 43482, 43483, 43485, 43486, 43487, 43488, 43489, 43490, 43491, 43492, 43493, 43494, 43495, 43496, 43497, 43498, 43499, 43500, 43501, 43502, 43503, 43504, 43505, 43506, 43507, 43508, 43509, 43510, 43511, 43512, 43513, 43514, 43515, 43516, 43518, 43519, 43520, 43521, 43522, 43523, 43524, 43525, 43526, 43527, 43528, 43529, 43530, 43531, 43532, 43533, 43534, 43535, 43536, 43537, 43538, 43539, 43540, 43541, 43542, 43543, 43544, 43545, 43546, 43547, 43548, 43549, 43550, 43551, 43552, 43553, 43554, 43555, 43556, 43557, 43558, 43559, 43560, 43561, 43562, 43563, 43564, 43565, 43566, 43567, 43568, 43569, 43570, 43571, 43572, 43573, 43574, 43575, 43576, 43577, 43578, 43579, 43580, 43581, 43582, 43583, 43584, 43585, 43586, 43587, 43588, 43589, 43590, 43591, 43592, 43593, 43594, 43595, 43596, 43597, 43598, 43599, 43600, 43601, 43602, 43603, 43604, 43605, 43606, 43607, 43608, 43609, 43610, 43611);
DELETE FROM `creature` WHERE `guid` IN (24173, 24174, 53794, 53796, 53798, 53800, 53802, 53804, 54602, 60106, 60107, 60108, 60109, 60110, 60111, 60112, 73149, 73151, 73152, 73161, 73164, 73165, 73174, 73179, 73184, 73185, 73186, 73188, 73218, 73221, 73223, 73233, 73265, 73270, 73272, 73275, 73277, 73280, 73287, 73306, 73324, 73326, 73327, 73330, 73333, 73335, 73336, 73337, 73338, 73339, 73340, 73341, 73343, 73344, 73345, 73348, 73351, 73352, 73357, 73358, 73359, 73366, 73373, 73406, 73413, 73420, 73423, 73426, 73430, 73436, 73437, 73438, 73440, 73444, 73448, 73455, 73528, 73537, 73538, 73539, 73541, 73542, 73543, 73568, 73581, 73590, 73616, 73621, 73622, 73624, 73625, 73644, 73648, 73649, 73662, 73678, 73681, 73684, 73691, 73697, 73706, 73709, 73715, 73717, 73719, 73723, 73735, 73736, 73739, 73749, 73750, 73751, 73752, 73753, 73754, 73756, 73758, 73759, 73761, 73767, 73768, 73770, 73772, 73775, 73776, 73777, 73779, 73780, 73787, 73788, 73789, 73795, 73813, 73814, 73815, 73818, 73819, 73823, 73825, 73826, 73829, 73832, 73834, 73835, 73836, 73837, 73843, 73844, 73848, 73849, 73851, 73852, 73853, 73855, 73856, 73857, 73858, 73867, 73872, 73876, 73878, 73917, 73940, 73942, 73944, 73953, 73958, 73959, 73960, 73961, 73964, 73967, 73968, 73969, 73970, 73972, 73973, 73975, 73982, 73984, 73986, 73989, 73990, 73992, 73995, 73998, 74018, 74019, 74028, 74030, 74032, 74039, 74040, 74073, 74074, 74075, 74077, 74078, 74079, 74080, 74082, 74083, 74089, 74097, 74110, 74122, 74124, 74128, 74130, 74132, 74133, 74135, 74141, 74146, 74148, 74149, 74150, 74155, 74165, 74170, 74185, 74192, 74215, 74218, 74219, 74260, 74262, 74264, 74265, 74266, 74267, 74268, 74270, 74283, 74285, 74288, 74289, 74291, 74300, 74302, 74306, 74309, 74310, 74314, 74318, 74334, 74342, 74348, 74359, 74360, 74361, 74364, 74365, 74367, 74375, 74377, 74378, 74412, 74415, 74421, 74423, 74425, 74426, 74429, 74432, 74438, 74440, 74445, 74470, 74472, 74529, 74545, 74546, 74547, 74548, 74549, 74550, 74551, 74552, 74553, 74554, 74555, 74556, 74557, 74558, 74559, 74560, 74561, 74562, 74563, 74564, 74565, 74566, 74567, 74568, 74569, 74570, 74572, 74573, 74574, 74575, 74576, 74577, 74578, 74579, 74580, 74581, 74582, 74583, 74584, 74585, 74586, 74587, 74588, 74589, 74590, 74591, 74592, 74593, 74594, 74595, 74596, 74597, 74598, 74599, 74600, 74601, 74602, 74603, 74604, 74605, 74606, 74607, 74608, 74609, 74610, 74611, 74612, 74613, 74614, 74615, 74616, 74617, 74618, 74619, 74620, 74621, 74622, 74623, 74624, 74625, 74626, 74627, 74628, 74629, 74630, 74631, 74632, 74633, 74634, 74635, 74636, 74637, 74639, 74642, 74643, 74644, 74645, 74646, 74647, 74649, 74650, 74651, 74652, 74653, 74654, 74655, 74656, 74657, 74658, 74659, 74660, 74661, 74662, 74663, 74664, 74665, 74666, 74667, 74668, 74669, 74670, 74671, 74672, 74673, 74674, 74675, 74676, 74677, 74678, 74679, 74680, 74681, 74682, 74683, 74684, 74685, 74686, 74687, 74688, 74689, 74690, 74691, 74692, 74693, 74694, 74695, 74696, 74697, 74698, 74699, 74700, 74701, 74703, 74704, 74705, 74706, 74707, 74708, 74709, 74710, 74711, 74712, 74713, 74714, 74715, 74716, 74717, 74718, 74719, 74720, 74721, 74722, 74723, 74724, 74726, 74727, 74728, 74729, 74730, 74731, 74732, 74733, 74734, 74735, 74736, 74737, 74738, 74739, 74740, 74741, 74742, 74743, 74744, 74745, 74746, 74747, 74748, 74749, 74750, 74751, 74752, 74753, 74755, 74756, 74757, 74758, 74759, 74760, 74761, 74762, 74763, 74764, 74765, 74766, 74767, 74768, 74769, 74770, 74771, 74772, 74773, 74774, 74775, 74776, 74777, 74778, 74779, 74780, 74781, 74782, 74783, 74784, 74785, 74786, 74787, 74788, 74789, 74790, 74791, 74792, 74793, 74794, 74795, 74796, 74797, 74798, 74799, 74800, 74801, 74802, 74803, 74804, 74805, 74806, 74807, 74808, 74809, 74810, 74811, 74812, 74814, 74815, 74816, 74817, 74818, 74819, 74820, 74821, 74822, 74823, 74824, 74825, 74827, 74829, 74830, 74831, 74832, 74833, 74834, 74835, 74836, 74837, 74838, 74839, 74840, 74841, 74842, 74843, 74844, 74845, 74846, 74847, 74848, 74849, 74850, 74851, 74852, 74853, 74854, 74855, 74856, 74857, 74858, 74859, 74860, 74861, 74862, 74863, 74864, 74865, 74866, 74867, 74868, 74869, 74870, 74871, 74872, 74873, 74874, 74875, 74876, 74877, 74878, 74879, 74880, 74881, 74882, 74883, 74884, 74885, 74886, 74887, 74888, 74889, 74890, 74891, 74893, 74894, 74895, 74896, 74897, 74898, 74899, 74900, 74901, 74902, 74903, 74904, 74905, 74906, 74907, 74908, 74909, 74910, 74911, 74912, 74913, 74914, 74915, 74916, 74917, 74918, 74919, 74920, 74921, 74922, 74923, 74924, 74925, 74926, 74928, 74929, 74930, 74931, 74932, 74933, 74934, 74935, 74936, 74937, 74938, 74939, 74940, 74941, 74942, 74943, 74944, 74945, 74946, 74948, 74949, 74950, 74951, 74952, 74953, 74954, 74955, 74956, 74957, 74958, 74959, 74960, 74961, 74962, 74963, 74964, 74965, 74966, 74967, 74968, 74969, 74970, 74971, 74972, 74973, 74974, 74975, 74977, 74978, 74980, 74982, 74984, 74986, 74988, 74990, 74992, 74993, 74994, 74995, 74996, 74997, 74998, 74999, 75000, 75001, 75002, 75003, 75004, 75005, 75006, 75007, 75013, 75014, 75015, 75016, 75017, 75018, 75019, 75020, 75021, 75022, 75023, 75024, 75025, 75026, 75027, 75028, 75029, 75030, 75031, 75032, 75033, 75034, 75035, 75037, 75038, 75040, 75043, 75044, 75045, 75046, 75048, 75049, 75050, 75051, 75052, 75053, 75054, 75055, 75056, 75058, 75060, 75062, 75063, 90698, 95000, 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95010, 95011, 106015, 106016, 106017, 106018, 106019, 106020, 106021, 106022, 106023, 106024, 106025, 106026, 106027, 106028, 106029, 106030, 106031, 106032, 112101, 112201, 112301, 112501, 112601, 112701, 112801, 112941, 112961, 2530569, 2530570, 2530571, 2530572, 2530573, 2530574, 2530575, 2530576, 2530577, 2530578, 2530579, 2530580, 2530581, 2530582, 2530583, 2530584);
DELETE FROM `creature_addon` WHERE `guid` IN (24173, 24174, 53794, 53796, 53798, 53800, 53802, 53804, 54602, 60106, 60107, 60108, 60109, 60110, 60111, 60112, 73149, 73151, 73152, 73161, 73164, 73165, 73174, 73179, 73184, 73185, 73186, 73188, 73218, 73221, 73223, 73233, 73265, 73270, 73272, 73275, 73277, 73280, 73287, 73306, 73324, 73326, 73327, 73330, 73333, 73335, 73336, 73337, 73338, 73339, 73340, 73341, 73343, 73344, 73345, 73348, 73351, 73352, 73357, 73358, 73359, 73366, 73373, 73406, 73413, 73420, 73423, 73426, 73430, 73436, 73437, 73438, 73440, 73444, 73448, 73455, 73528, 73537, 73538, 73539, 73541, 73542, 73543, 73568, 73581, 73590, 73616, 73621, 73622, 73624, 73625, 73644, 73648, 73649, 73662, 73678, 73681, 73684, 73691, 73697, 73706, 73709, 73715, 73717, 73719, 73723, 73735, 73736, 73739, 73749, 73750, 73751, 73752, 73753, 73754, 73756, 73758, 73759, 73761, 73767, 73768, 73770, 73772, 73775, 73776, 73777, 73779, 73780, 73787, 73788, 73789, 73795, 73813, 73814, 73815, 73818, 73819, 73823, 73825, 73826, 73829, 73832, 73834, 73835, 73836, 73837, 73843, 73844, 73848, 73849, 73851, 73852, 73853, 73855, 73856, 73857, 73858, 73867, 73872, 73876, 73878, 73917, 73940, 73942, 73944, 73953, 73958, 73959, 73960, 73961, 73964, 73967, 73968, 73969, 73970, 73972, 73973, 73975, 73982, 73984, 73986, 73989, 73990, 73992, 73995, 73998, 74018, 74019, 74028, 74030, 74032, 74039, 74040, 74073, 74074, 74075, 74077, 74078, 74079, 74080, 74082, 74083, 74089, 74097, 74110, 74122, 74124, 74128, 74130, 74132, 74133, 74135, 74141, 74146, 74148, 74149, 74150, 74155, 74165, 74170, 74185, 74192, 74215, 74218, 74219, 74260, 74262, 74264, 74265, 74266, 74267, 74268, 74270, 74283, 74285, 74288, 74289, 74291, 74300, 74302, 74306, 74309, 74310, 74314, 74318, 74334, 74342, 74348, 74359, 74360, 74361, 74364, 74365, 74367, 74375, 74377, 74378, 74412, 74415, 74421, 74423, 74425, 74426, 74429, 74432, 74438, 74440, 74445, 74470, 74472, 74529, 74545, 74546, 74547, 74548, 74549, 74550, 74551, 74552, 74553, 74554, 74555, 74556, 74557, 74558, 74559, 74560, 74561, 74562, 74563, 74564, 74565, 74566, 74567, 74568, 74569, 74570, 74572, 74573, 74574, 74575, 74576, 74577, 74578, 74579, 74580, 74581, 74582, 74583, 74584, 74585, 74586, 74587, 74588, 74589, 74590, 74591, 74592, 74593, 74594, 74595, 74596, 74597, 74598, 74599, 74600, 74601, 74602, 74603, 74604, 74605, 74606, 74607, 74608, 74609, 74610, 74611, 74612, 74613, 74614, 74615, 74616, 74617, 74618, 74619, 74620, 74621, 74622, 74623, 74624, 74625, 74626, 74627, 74628, 74629, 74630, 74631, 74632, 74633, 74634, 74635, 74636, 74637, 74639, 74642, 74643, 74644, 74645, 74646, 74647, 74649, 74650, 74651, 74652, 74653, 74654, 74655, 74656, 74657, 74658, 74659, 74660, 74661, 74662, 74663, 74664, 74665, 74666, 74667, 74668, 74669, 74670, 74671, 74672, 74673, 74674, 74675, 74676, 74677, 74678, 74679, 74680, 74681, 74682, 74683, 74684, 74685, 74686, 74687, 74688, 74689, 74690, 74691, 74692, 74693, 74694, 74695, 74696, 74697, 74698, 74699, 74700, 74701, 74703, 74704, 74705, 74706, 74707, 74708, 74709, 74710, 74711, 74712, 74713, 74714, 74715, 74716, 74717, 74718, 74719, 74720, 74721, 74722, 74723, 74724, 74726, 74727, 74728, 74729, 74730, 74731, 74732, 74733, 74734, 74735, 74736, 74737, 74738, 74739, 74740, 74741, 74742, 74743, 74744, 74745, 74746, 74747, 74748, 74749, 74750, 74751, 74752, 74753, 74755, 74756, 74757, 74758, 74759, 74760, 74761, 74762, 74763, 74764, 74765, 74766, 74767, 74768, 74769, 74770, 74771, 74772, 74773, 74774, 74775, 74776, 74777, 74778, 74779, 74780, 74781, 74782, 74783, 74784, 74785, 74786, 74787, 74788, 74789, 74790, 74791, 74792, 74793, 74794, 74795, 74796, 74797, 74798, 74799, 74800, 74801, 74802, 74803, 74804, 74805, 74806, 74807, 74808, 74809, 74810, 74811, 74812, 74814, 74815, 74816, 74817, 74818, 74819, 74820, 74821, 74822, 74823, 74824, 74825, 74827, 74829, 74830, 74831, 74832, 74833, 74834, 74835, 74836, 74837, 74838, 74839, 74840, 74841, 74842, 74843, 74844, 74845, 74846, 74847, 74848, 74849, 74850, 74851, 74852, 74853, 74854, 74855, 74856, 74857, 74858, 74859, 74860, 74861, 74862, 74863, 74864, 74865, 74866, 74867, 74868, 74869, 74870, 74871, 74872, 74873, 74874, 74875, 74876, 74877, 74878, 74879, 74880, 74881, 74882, 74883, 74884, 74885, 74886, 74887, 74888, 74889, 74890, 74891, 74893, 74894, 74895, 74896, 74897, 74898, 74899, 74900, 74901, 74902, 74903, 74904, 74905, 74906, 74907, 74908, 74909, 74910, 74911, 74912, 74913, 74914, 74915, 74916, 74917, 74918, 74919, 74920, 74921, 74922, 74923, 74924, 74925, 74926, 74928, 74929, 74930, 74931, 74932, 74933, 74934, 74935, 74936, 74937, 74938, 74939, 74940, 74941, 74942, 74943, 74944, 74945, 74946, 74948, 74949, 74950, 74951, 74952, 74953, 74954, 74955, 74956, 74957, 74958, 74959, 74960, 74961, 74962, 74963, 74964, 74965, 74966, 74967, 74968, 74969, 74970, 74971, 74972, 74973, 74974, 74975, 74977, 74978, 74980, 74982, 74984, 74986, 74988, 74990, 74992, 74993, 74994, 74995, 74996, 74997, 74998, 74999, 75000, 75001, 75002, 75003, 75004, 75005, 75006, 75007, 75013, 75014, 75015, 75016, 75017, 75018, 75019, 75020, 75021, 75022, 75023, 75024, 75025, 75026, 75027, 75028, 75029, 75030, 75031, 75032, 75033, 75034, 75035, 75037, 75038, 75040, 75043, 75044, 75045, 75046, 75048, 75049, 75050, 75051, 75052, 75053, 75054, 75055, 75056, 75058, 75060, 75062, 75063, 90698, 95000, 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95010, 95011, 106015, 106016, 106017, 106018, 106019, 106020, 106021, 106022, 106023, 106024, 106025, 106026, 106027, 106028, 106029, 106030, 106031, 106032, 112101, 112201, 112301, 112501, 112601, 112701, 112801, 112941, 112961, 2530569, 2530570, 2530571, 2530572, 2530573, 2530574, 2530575, 2530576, 2530577, 2530578, 2530579, 2530580, 2530581, 2530582, 2530583, 2530584);
DELETE FROM `creature_movement` WHERE `id` IN (24173, 24174, 53794, 53796, 53798, 53800, 53802, 53804, 54602, 60106, 60107, 60108, 60109, 60110, 60111, 60112, 73149, 73151, 73152, 73161, 73164, 73165, 73174, 73179, 73184, 73185, 73186, 73188, 73218, 73221, 73223, 73233, 73265, 73270, 73272, 73275, 73277, 73280, 73287, 73306, 73324, 73326, 73327, 73330, 73333, 73335, 73336, 73337, 73338, 73339, 73340, 73341, 73343, 73344, 73345, 73348, 73351, 73352, 73357, 73358, 73359, 73366, 73373, 73406, 73413, 73420, 73423, 73426, 73430, 73436, 73437, 73438, 73440, 73444, 73448, 73455, 73528, 73537, 73538, 73539, 73541, 73542, 73543, 73568, 73581, 73590, 73616, 73621, 73622, 73624, 73625, 73644, 73648, 73649, 73662, 73678, 73681, 73684, 73691, 73697, 73706, 73709, 73715, 73717, 73719, 73723, 73735, 73736, 73739, 73749, 73750, 73751, 73752, 73753, 73754, 73756, 73758, 73759, 73761, 73767, 73768, 73770, 73772, 73775, 73776, 73777, 73779, 73780, 73787, 73788, 73789, 73795, 73813, 73814, 73815, 73818, 73819, 73823, 73825, 73826, 73829, 73832, 73834, 73835, 73836, 73837, 73843, 73844, 73848, 73849, 73851, 73852, 73853, 73855, 73856, 73857, 73858, 73867, 73872, 73876, 73878, 73917, 73940, 73942, 73944, 73953, 73958, 73959, 73960, 73961, 73964, 73967, 73968, 73969, 73970, 73972, 73973, 73975, 73982, 73984, 73986, 73989, 73990, 73992, 73995, 73998, 74018, 74019, 74028, 74030, 74032, 74039, 74040, 74073, 74074, 74075, 74077, 74078, 74079, 74080, 74082, 74083, 74089, 74097, 74110, 74122, 74124, 74128, 74130, 74132, 74133, 74135, 74141, 74146, 74148, 74149, 74150, 74155, 74165, 74170, 74185, 74192, 74215, 74218, 74219, 74260, 74262, 74264, 74265, 74266, 74267, 74268, 74270, 74283, 74285, 74288, 74289, 74291, 74300, 74302, 74306, 74309, 74310, 74314, 74318, 74334, 74342, 74348, 74359, 74360, 74361, 74364, 74365, 74367, 74375, 74377, 74378, 74412, 74415, 74421, 74423, 74425, 74426, 74429, 74432, 74438, 74440, 74445, 74470, 74472, 74529, 74545, 74546, 74547, 74548, 74549, 74550, 74551, 74552, 74553, 74554, 74555, 74556, 74557, 74558, 74559, 74560, 74561, 74562, 74563, 74564, 74565, 74566, 74567, 74568, 74569, 74570, 74572, 74573, 74574, 74575, 74576, 74577, 74578, 74579, 74580, 74581, 74582, 74583, 74584, 74585, 74586, 74587, 74588, 74589, 74590, 74591, 74592, 74593, 74594, 74595, 74596, 74597, 74598, 74599, 74600, 74601, 74602, 74603, 74604, 74605, 74606, 74607, 74608, 74609, 74610, 74611, 74612, 74613, 74614, 74615, 74616, 74617, 74618, 74619, 74620, 74621, 74622, 74623, 74624, 74625, 74626, 74627, 74628, 74629, 74630, 74631, 74632, 74633, 74634, 74635, 74636, 74637, 74639, 74642, 74643, 74644, 74645, 74646, 74647, 74649, 74650, 74651, 74652, 74653, 74654, 74655, 74656, 74657, 74658, 74659, 74660, 74661, 74662, 74663, 74664, 74665, 74666, 74667, 74668, 74669, 74670, 74671, 74672, 74673, 74674, 74675, 74676, 74677, 74678, 74679, 74680, 74681, 74682, 74683, 74684, 74685, 74686, 74687, 74688, 74689, 74690, 74691, 74692, 74693, 74694, 74695, 74696, 74697, 74698, 74699, 74700, 74701, 74703, 74704, 74705, 74706, 74707, 74708, 74709, 74710, 74711, 74712, 74713, 74714, 74715, 74716, 74717, 74718, 74719, 74720, 74721, 74722, 74723, 74724, 74726, 74727, 74728, 74729, 74730, 74731, 74732, 74733, 74734, 74735, 74736, 74737, 74738, 74739, 74740, 74741, 74742, 74743, 74744, 74745, 74746, 74747, 74748, 74749, 74750, 74751, 74752, 74753, 74755, 74756, 74757, 74758, 74759, 74760, 74761, 74762, 74763, 74764, 74765, 74766, 74767, 74768, 74769, 74770, 74771, 74772, 74773, 74774, 74775, 74776, 74777, 74778, 74779, 74780, 74781, 74782, 74783, 74784, 74785, 74786, 74787, 74788, 74789, 74790, 74791, 74792, 74793, 74794, 74795, 74796, 74797, 74798, 74799, 74800, 74801, 74802, 74803, 74804, 74805, 74806, 74807, 74808, 74809, 74810, 74811, 74812, 74814, 74815, 74816, 74817, 74818, 74819, 74820, 74821, 74822, 74823, 74824, 74825, 74827, 74829, 74830, 74831, 74832, 74833, 74834, 74835, 74836, 74837, 74838, 74839, 74840, 74841, 74842, 74843, 74844, 74845, 74846, 74847, 74848, 74849, 74850, 74851, 74852, 74853, 74854, 74855, 74856, 74857, 74858, 74859, 74860, 74861, 74862, 74863, 74864, 74865, 74866, 74867, 74868, 74869, 74870, 74871, 74872, 74873, 74874, 74875, 74876, 74877, 74878, 74879, 74880, 74881, 74882, 74883, 74884, 74885, 74886, 74887, 74888, 74889, 74890, 74891, 74893, 74894, 74895, 74896, 74897, 74898, 74899, 74900, 74901, 74902, 74903, 74904, 74905, 74906, 74907, 74908, 74909, 74910, 74911, 74912, 74913, 74914, 74915, 74916, 74917, 74918, 74919, 74920, 74921, 74922, 74923, 74924, 74925, 74926, 74928, 74929, 74930, 74931, 74932, 74933, 74934, 74935, 74936, 74937, 74938, 74939, 74940, 74941, 74942, 74943, 74944, 74945, 74946, 74948, 74949, 74950, 74951, 74952, 74953, 74954, 74955, 74956, 74957, 74958, 74959, 74960, 74961, 74962, 74963, 74964, 74965, 74966, 74967, 74968, 74969, 74970, 74971, 74972, 74973, 74974, 74975, 74977, 74978, 74980, 74982, 74984, 74986, 74988, 74990, 74992, 74993, 74994, 74995, 74996, 74997, 74998, 74999, 75000, 75001, 75002, 75003, 75004, 75005, 75006, 75007, 75013, 75014, 75015, 75016, 75017, 75018, 75019, 75020, 75021, 75022, 75023, 75024, 75025, 75026, 75027, 75028, 75029, 75030, 75031, 75032, 75033, 75034, 75035, 75037, 75038, 75040, 75043, 75044, 75045, 75046, 75048, 75049, 75050, 75051, 75052, 75053, 75054, 75055, 75056, 75058, 75060, 75062, 75063, 90698, 95000, 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95010, 95011, 106015, 106016, 106017, 106018, 106019, 106020, 106021, 106022, 106023, 106024, 106025, 106026, 106027, 106028, 106029, 106030, 106031, 106032, 112101, 112201, 112301, 112501, 112601, 112701, 112801, 112941, 112961, 2530569, 2530570, 2530571, 2530572, 2530573, 2530574, 2530575, 2530576, 2530577, 2530578, 2530579, 2530580, 2530581, 2530582, 2530583, 2530584);
DELETE FROM `pool_creature` WHERE `guid` IN (24173, 24174, 53794, 53796, 53798, 53800, 53802, 53804, 54602, 60106, 60107, 60108, 60109, 60110, 60111, 60112, 73149, 73151, 73152, 73161, 73164, 73165, 73174, 73179, 73184, 73185, 73186, 73188, 73218, 73221, 73223, 73233, 73265, 73270, 73272, 73275, 73277, 73280, 73287, 73306, 73324, 73326, 73327, 73330, 73333, 73335, 73336, 73337, 73338, 73339, 73340, 73341, 73343, 73344, 73345, 73348, 73351, 73352, 73357, 73358, 73359, 73366, 73373, 73406, 73413, 73420, 73423, 73426, 73430, 73436, 73437, 73438, 73440, 73444, 73448, 73455, 73528, 73537, 73538, 73539, 73541, 73542, 73543, 73568, 73581, 73590, 73616, 73621, 73622, 73624, 73625, 73644, 73648, 73649, 73662, 73678, 73681, 73684, 73691, 73697, 73706, 73709, 73715, 73717, 73719, 73723, 73735, 73736, 73739, 73749, 73750, 73751, 73752, 73753, 73754, 73756, 73758, 73759, 73761, 73767, 73768, 73770, 73772, 73775, 73776, 73777, 73779, 73780, 73787, 73788, 73789, 73795, 73813, 73814, 73815, 73818, 73819, 73823, 73825, 73826, 73829, 73832, 73834, 73835, 73836, 73837, 73843, 73844, 73848, 73849, 73851, 73852, 73853, 73855, 73856, 73857, 73858, 73867, 73872, 73876, 73878, 73917, 73940, 73942, 73944, 73953, 73958, 73959, 73960, 73961, 73964, 73967, 73968, 73969, 73970, 73972, 73973, 73975, 73982, 73984, 73986, 73989, 73990, 73992, 73995, 73998, 74018, 74019, 74028, 74030, 74032, 74039, 74040, 74073, 74074, 74075, 74077, 74078, 74079, 74080, 74082, 74083, 74089, 74097, 74110, 74122, 74124, 74128, 74130, 74132, 74133, 74135, 74141, 74146, 74148, 74149, 74150, 74155, 74165, 74170, 74185, 74192, 74215, 74218, 74219, 74260, 74262, 74264, 74265, 74266, 74267, 74268, 74270, 74283, 74285, 74288, 74289, 74291, 74300, 74302, 74306, 74309, 74310, 74314, 74318, 74334, 74342, 74348, 74359, 74360, 74361, 74364, 74365, 74367, 74375, 74377, 74378, 74412, 74415, 74421, 74423, 74425, 74426, 74429, 74432, 74438, 74440, 74445, 74470, 74472, 74529, 74545, 74546, 74547, 74548, 74549, 74550, 74551, 74552, 74553, 74554, 74555, 74556, 74557, 74558, 74559, 74560, 74561, 74562, 74563, 74564, 74565, 74566, 74567, 74568, 74569, 74570, 74572, 74573, 74574, 74575, 74576, 74577, 74578, 74579, 74580, 74581, 74582, 74583, 74584, 74585, 74586, 74587, 74588, 74589, 74590, 74591, 74592, 74593, 74594, 74595, 74596, 74597, 74598, 74599, 74600, 74601, 74602, 74603, 74604, 74605, 74606, 74607, 74608, 74609, 74610, 74611, 74612, 74613, 74614, 74615, 74616, 74617, 74618, 74619, 74620, 74621, 74622, 74623, 74624, 74625, 74626, 74627, 74628, 74629, 74630, 74631, 74632, 74633, 74634, 74635, 74636, 74637, 74639, 74642, 74643, 74644, 74645, 74646, 74647, 74649, 74650, 74651, 74652, 74653, 74654, 74655, 74656, 74657, 74658, 74659, 74660, 74661, 74662, 74663, 74664, 74665, 74666, 74667, 74668, 74669, 74670, 74671, 74672, 74673, 74674, 74675, 74676, 74677, 74678, 74679, 74680, 74681, 74682, 74683, 74684, 74685, 74686, 74687, 74688, 74689, 74690, 74691, 74692, 74693, 74694, 74695, 74696, 74697, 74698, 74699, 74700, 74701, 74703, 74704, 74705, 74706, 74707, 74708, 74709, 74710, 74711, 74712, 74713, 74714, 74715, 74716, 74717, 74718, 74719, 74720, 74721, 74722, 74723, 74724, 74726, 74727, 74728, 74729, 74730, 74731, 74732, 74733, 74734, 74735, 74736, 74737, 74738, 74739, 74740, 74741, 74742, 74743, 74744, 74745, 74746, 74747, 74748, 74749, 74750, 74751, 74752, 74753, 74755, 74756, 74757, 74758, 74759, 74760, 74761, 74762, 74763, 74764, 74765, 74766, 74767, 74768, 74769, 74770, 74771, 74772, 74773, 74774, 74775, 74776, 74777, 74778, 74779, 74780, 74781, 74782, 74783, 74784, 74785, 74786, 74787, 74788, 74789, 74790, 74791, 74792, 74793, 74794, 74795, 74796, 74797, 74798, 74799, 74800, 74801, 74802, 74803, 74804, 74805, 74806, 74807, 74808, 74809, 74810, 74811, 74812, 74814, 74815, 74816, 74817, 74818, 74819, 74820, 74821, 74822, 74823, 74824, 74825, 74827, 74829, 74830, 74831, 74832, 74833, 74834, 74835, 74836, 74837, 74838, 74839, 74840, 74841, 74842, 74843, 74844, 74845, 74846, 74847, 74848, 74849, 74850, 74851, 74852, 74853, 74854, 74855, 74856, 74857, 74858, 74859, 74860, 74861, 74862, 74863, 74864, 74865, 74866, 74867, 74868, 74869, 74870, 74871, 74872, 74873, 74874, 74875, 74876, 74877, 74878, 74879, 74880, 74881, 74882, 74883, 74884, 74885, 74886, 74887, 74888, 74889, 74890, 74891, 74893, 74894, 74895, 74896, 74897, 74898, 74899, 74900, 74901, 74902, 74903, 74904, 74905, 74906, 74907, 74908, 74909, 74910, 74911, 74912, 74913, 74914, 74915, 74916, 74917, 74918, 74919, 74920, 74921, 74922, 74923, 74924, 74925, 74926, 74928, 74929, 74930, 74931, 74932, 74933, 74934, 74935, 74936, 74937, 74938, 74939, 74940, 74941, 74942, 74943, 74944, 74945, 74946, 74948, 74949, 74950, 74951, 74952, 74953, 74954, 74955, 74956, 74957, 74958, 74959, 74960, 74961, 74962, 74963, 74964, 74965, 74966, 74967, 74968, 74969, 74970, 74971, 74972, 74973, 74974, 74975, 74977, 74978, 74980, 74982, 74984, 74986, 74988, 74990, 74992, 74993, 74994, 74995, 74996, 74997, 74998, 74999, 75000, 75001, 75002, 75003, 75004, 75005, 75006, 75007, 75013, 75014, 75015, 75016, 75017, 75018, 75019, 75020, 75021, 75022, 75023, 75024, 75025, 75026, 75027, 75028, 75029, 75030, 75031, 75032, 75033, 75034, 75035, 75037, 75038, 75040, 75043, 75044, 75045, 75046, 75048, 75049, 75050, 75051, 75052, 75053, 75054, 75055, 75056, 75058, 75060, 75062, 75063, 90698, 95000, 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95010, 95011, 106015, 106016, 106017, 106018, 106019, 106020, 106021, 106022, 106023, 106024, 106025, 106026, 106027, 106028, 106029, 106030, 106031, 106032, 112101, 112201, 112301, 112501, 112601, 112701, 112801, 112941, 112961, 2530569, 2530570, 2530571, 2530572, 2530573, 2530574, 2530575, 2530576, 2530577, 2530578, 2530579, 2530580, 2530581, 2530582, 2530583, 2530584);
DELETE FROM `creature_addon` WHERE `guid` IN (8451, 18619, 22635, 23034, 23741, 23743, 23744, 23745, 24172, 25171, 25279, 25318, 27440, 27446, 27447, 27448, 29277, 30446, 30464, 30466, 30472, 30496, 30501, 30519, 30530, 30540, 30541, 30544, 30555, 30561, 30563, 30573, 30576, 30583, 30587, 30593, 30594, 30596, 30597, 30609, 30612, 30615, 30617, 30691, 30706, 30719, 30720, 30722, 30737, 30739, 30740, 30748, 30766, 30782, 30789, 30792, 30799, 30805, 30807, 30809, 30820, 30823, 30825, 30826, 30839, 30841, 30842, 30844, 30862, 30867, 30885, 30888, 30902, 30912, 30924, 30928, 30932, 30936, 30939, 30940, 30942, 30943, 30947, 30977, 30988, 30989, 30990, 30991, 30992, 30993, 30995, 30996, 30999, 31001, 31002, 31003, 31013, 31018, 31024, 31025, 31026, 31029, 31030, 31031, 31034, 31035, 31037, 31042, 31064, 31068, 31070, 31085, 31093, 31094, 31095, 31096, 31097, 31098, 31099, 31100, 31101, 31102, 31103, 31104, 31105, 31106, 31109, 31111, 31113, 31114, 31129, 31145, 31152, 31160, 31172, 31175, 31184, 31186, 31187, 31188, 31191, 31193, 31194, 31201, 31202, 31217, 31221, 31224, 31228, 31235, 31236, 31237, 31244, 31245, 31249, 31251, 31252, 31253, 31254, 31256, 31291, 31295, 31298, 31300, 31301, 31306, 31309, 31310, 31312, 31320, 31321, 31346, 31350, 31352, 31353, 31355, 31357, 31360, 31366, 31368, 31369, 31370, 31371, 31375, 31378, 31380, 31384, 31385, 31387, 31390, 31393, 31396, 31397, 31399, 31402, 31411, 31414, 31420, 31422, 31432, 31438, 31441, 31444, 31445, 31447, 31448, 31451, 31455, 31456, 31463, 31465, 31466, 31468, 31469, 31472, 31476, 31485, 31497, 31521, 31522, 31523, 31525, 31532, 31542, 31559, 31569, 31570, 31588, 31591, 31606, 31608, 31610, 31611, 31618, 31619, 31620, 31621, 31625, 31627, 31628, 31655, 31659, 31661, 31663, 31674, 31692, 31693, 31695, 31696, 31702, 31707, 31722, 31728, 31729, 33683, 33685, 33690, 33765, 33768, 33770, 33773, 33776, 33779, 33781, 33783, 33784, 33826, 33849, 33852, 33856, 33862, 33864, 33869, 33876, 33877, 33889, 33898, 33899, 33911, 33914, 33920, 33928, 33994, 34000, 34002, 34004, 34005, 34006, 34010, 34016, 34018, 34100, 37029, 37035, 37048, 37049, 39311, 39313, 39314, 39854, 39855, 39857, 53793, 53795, 53797, 53799, 53801, 53803, 54601, 73195, 73200, 73201, 73208, 73212, 73219, 73222, 73224, 73226, 73229, 73230, 73261, 73263, 73282, 73334, 73386, 73389, 73439, 73465, 73467, 73471, 73472, 73474, 73475, 73476, 73477, 73478, 73479, 73480, 73481, 73484, 73485, 73486, 73487, 73490, 73493, 73494, 73495, 73497, 73498, 73499, 73501, 73502, 73503, 73504, 73505, 73506, 73507, 73509, 73510, 73511, 73512, 73513, 73515, 73519, 73520, 73521, 73524, 73525, 73527, 73529, 73533, 73534, 73535, 73580, 73594, 73597, 73601, 73604, 73605, 73611, 73612, 73613, 73614, 73618, 73619, 73627, 73629, 73630, 73632, 73633, 73634, 73635, 73638, 73639, 73641, 73642, 73643, 73650, 73652, 73658, 73660, 73661, 73665, 73672, 73673, 73676, 73679, 73682, 73704, 73713, 73720, 73726, 73729, 73733, 73737, 73741, 73743, 73744, 73746, 73769, 73771, 73773, 73790, 73792, 73811, 73821, 73838, 73839, 73840, 73846, 73860, 73861, 73862, 73863, 73864, 73865, 73868, 73869, 73870, 73871, 73873, 73875, 73877, 73879, 73880, 73882, 73883, 73884, 73885, 73887, 73888, 73889, 73890, 73891, 73893, 73894, 73895, 73896, 73897, 73898, 73899, 73901, 73902, 73903, 73904, 73905, 73907, 73908, 73909, 73910, 73911, 73912, 73913, 73914, 73915, 73916, 73918, 73919, 73920, 73921, 73922, 73923, 73924, 73925, 73927, 73928, 73929, 73930, 73933, 73934, 73937, 73938, 73939, 73941, 73943, 73945, 73946, 73947, 73948, 73950, 73954, 73955, 73957, 73962, 73965, 73971, 73974, 73976, 73978, 73979, 73983, 73991, 73994, 73996, 73997, 73999, 74000, 74001, 74002, 74003, 74004, 74005, 74007, 74008, 74010, 74011, 74012, 74013, 74014, 74015, 74016, 74020, 74022, 74023, 74024, 74025, 74026, 74029, 74031, 74034, 74036, 74037, 74042, 74045, 74046, 74047, 74048, 74050, 74053, 74054, 74055, 74056, 74057, 74058, 74059, 74060, 74062, 74069, 74070, 74081, 74087, 74090, 74091, 74092, 74093, 74095, 74096, 74098, 74099, 74100, 74101, 74102, 74103, 74104, 74106, 74107, 74108, 74109, 74111, 74112, 74113, 74114, 74115, 74116, 74118, 74120, 74121, 74123, 74125, 74126, 74131, 74134, 74136, 74140, 74142, 74144, 74147, 74156, 74157, 74160, 74161, 74162, 74164, 74166, 74167, 74169, 74174, 74175, 74176, 74177, 74178, 74179, 74180, 74181, 74182, 74183, 74184, 74189, 74190, 74196, 74197, 74200, 74201, 74204, 74205, 74207, 74212, 74221, 74222, 74223, 74224, 74225, 74226, 74227, 74229, 74232, 74233, 74234, 74235, 74236, 74237, 74239, 74240, 74241, 74246, 74252, 74255, 74263, 74278, 74287, 74294, 74295, 74296, 74297, 74298, 74299, 74301, 74303, 74304, 74305, 74307, 74312, 74316, 74319, 74323, 74326, 74327, 74335, 74347, 74352, 74353, 74358, 74369, 74386, 74388, 74399, 74410, 74414, 74416, 74417, 74418, 74419, 74424, 74427, 74433, 74435, 74443, 74444, 74447, 74448, 74826, 74828, 74976, 74979, 74981, 74983, 74985, 74987, 74989, 74991, 75012, 75036, 75039, 75047, 75057, 75059, 75061, 89768, 95009, 105997, 106000, 106002, 106003, 106009, 106010, 106011, 106012, 106013, 106014, 112100, 112200, 112300, 112500, 112600, 112700, 112800, 112940, 112960);
DELETE FROM `pool_creature` WHERE `guid` IN (8451, 18619, 22635, 23034, 23741, 23743, 23744, 23745, 24172, 25171, 25279, 25318, 27440, 27446, 27447, 27448, 29277, 30446, 30464, 30466, 30472, 30496, 30501, 30519, 30530, 30540, 30541, 30544, 30555, 30561, 30563, 30573, 30576, 30583, 30587, 30593, 30594, 30596, 30597, 30609, 30612, 30615, 30617, 30691, 30706, 30719, 30720, 30722, 30737, 30739, 30740, 30748, 30766, 30782, 30789, 30792, 30799, 30805, 30807, 30809, 30820, 30823, 30825, 30826, 30839, 30841, 30842, 30844, 30862, 30867, 30885, 30888, 30902, 30912, 30924, 30928, 30932, 30936, 30939, 30940, 30942, 30943, 30947, 30977, 30988, 30989, 30990, 30991, 30992, 30993, 30995, 30996, 30999, 31001, 31002, 31003, 31013, 31018, 31024, 31025, 31026, 31029, 31030, 31031, 31034, 31035, 31037, 31042, 31064, 31068, 31070, 31085, 31093, 31094, 31095, 31096, 31097, 31098, 31099, 31100, 31101, 31102, 31103, 31104, 31105, 31106, 31109, 31111, 31113, 31114, 31129, 31145, 31152, 31160, 31172, 31175, 31184, 31186, 31187, 31188, 31191, 31193, 31194, 31201, 31202, 31217, 31221, 31224, 31228, 31235, 31236, 31237, 31244, 31245, 31249, 31251, 31252, 31253, 31254, 31256, 31291, 31295, 31298, 31300, 31301, 31306, 31309, 31310, 31312, 31320, 31321, 31346, 31350, 31352, 31353, 31355, 31357, 31360, 31366, 31368, 31369, 31370, 31371, 31375, 31378, 31380, 31384, 31385, 31387, 31390, 31393, 31396, 31397, 31399, 31402, 31411, 31414, 31420, 31422, 31432, 31438, 31441, 31444, 31445, 31447, 31448, 31451, 31455, 31456, 31463, 31465, 31466, 31468, 31469, 31472, 31476, 31485, 31497, 31521, 31522, 31523, 31525, 31532, 31542, 31559, 31569, 31570, 31588, 31591, 31606, 31608, 31610, 31611, 31618, 31619, 31620, 31621, 31625, 31627, 31628, 31655, 31659, 31661, 31663, 31674, 31692, 31693, 31695, 31696, 31702, 31707, 31722, 31728, 31729, 33683, 33685, 33690, 33765, 33768, 33770, 33773, 33776, 33779, 33781, 33783, 33784, 33826, 33849, 33852, 33856, 33862, 33864, 33869, 33876, 33877, 33889, 33898, 33899, 33911, 33914, 33920, 33928, 33994, 34000, 34002, 34004, 34005, 34006, 34010, 34016, 34018, 34100, 37029, 37035, 37048, 37049, 39311, 39313, 39314, 39854, 39855, 39857, 53793, 53795, 53797, 53799, 53801, 53803, 54601, 73195, 73200, 73201, 73208, 73212, 73219, 73222, 73224, 73226, 73229, 73230, 73261, 73263, 73282, 73334, 73386, 73389, 73439, 73465, 73467, 73471, 73472, 73474, 73475, 73476, 73477, 73478, 73479, 73480, 73481, 73484, 73485, 73486, 73487, 73490, 73493, 73494, 73495, 73497, 73498, 73499, 73501, 73502, 73503, 73504, 73505, 73506, 73507, 73509, 73510, 73511, 73512, 73513, 73515, 73519, 73520, 73521, 73524, 73525, 73527, 73529, 73533, 73534, 73535, 73580, 73594, 73597, 73601, 73604, 73605, 73611, 73612, 73613, 73614, 73618, 73619, 73627, 73629, 73630, 73632, 73633, 73634, 73635, 73638, 73639, 73641, 73642, 73643, 73650, 73652, 73658, 73660, 73661, 73665, 73672, 73673, 73676, 73679, 73682, 73704, 73713, 73720, 73726, 73729, 73733, 73737, 73741, 73743, 73744, 73746, 73769, 73771, 73773, 73790, 73792, 73811, 73821, 73838, 73839, 73840, 73846, 73860, 73861, 73862, 73863, 73864, 73865, 73868, 73869, 73870, 73871, 73873, 73875, 73877, 73879, 73880, 73882, 73883, 73884, 73885, 73887, 73888, 73889, 73890, 73891, 73893, 73894, 73895, 73896, 73897, 73898, 73899, 73901, 73902, 73903, 73904, 73905, 73907, 73908, 73909, 73910, 73911, 73912, 73913, 73914, 73915, 73916, 73918, 73919, 73920, 73921, 73922, 73923, 73924, 73925, 73927, 73928, 73929, 73930, 73933, 73934, 73937, 73938, 73939, 73941, 73943, 73945, 73946, 73947, 73948, 73950, 73954, 73955, 73957, 73962, 73965, 73971, 73974, 73976, 73978, 73979, 73983, 73991, 73994, 73996, 73997, 73999, 74000, 74001, 74002, 74003, 74004, 74005, 74007, 74008, 74010, 74011, 74012, 74013, 74014, 74015, 74016, 74020, 74022, 74023, 74024, 74025, 74026, 74029, 74031, 74034, 74036, 74037, 74042, 74045, 74046, 74047, 74048, 74050, 74053, 74054, 74055, 74056, 74057, 74058, 74059, 74060, 74062, 74069, 74070, 74081, 74087, 74090, 74091, 74092, 74093, 74095, 74096, 74098, 74099, 74100, 74101, 74102, 74103, 74104, 74106, 74107, 74108, 74109, 74111, 74112, 74113, 74114, 74115, 74116, 74118, 74120, 74121, 74123, 74125, 74126, 74131, 74134, 74136, 74140, 74142, 74144, 74147, 74156, 74157, 74160, 74161, 74162, 74164, 74166, 74167, 74169, 74174, 74175, 74176, 74177, 74178, 74179, 74180, 74181, 74182, 74183, 74184, 74189, 74190, 74196, 74197, 74200, 74201, 74204, 74205, 74207, 74212, 74221, 74222, 74223, 74224, 74225, 74226, 74227, 74229, 74232, 74233, 74234, 74235, 74236, 74237, 74239, 74240, 74241, 74246, 74252, 74255, 74263, 74278, 74287, 74294, 74295, 74296, 74297, 74298, 74299, 74301, 74303, 74304, 74305, 74307, 74312, 74316, 74319, 74323, 74326, 74327, 74335, 74347, 74352, 74353, 74358, 74369, 74386, 74388, 74399, 74410, 74414, 74416, 74417, 74418, 74419, 74424, 74427, 74433, 74435, 74443, 74444, 74447, 74448, 74826, 74828, 74976, 74979, 74981, 74983, 74985, 74987, 74989, 74991, 75012, 75036, 75039, 75047, 75057, 75059, 75061, 89768, 95009, 105997, 106000, 106002, 106003, 106009, 106010, 106011, 106012, 106013, 106014, 112100, 112200, 112300, 112500, 112600, 112700, 112800, 112940, 112960);
UPDATE `creature` SET `curmana`=100 WHERE `guid` IN (8451, 22635, 25318, 27440, 27446, 27447, 27448, 30691, 30823, 30844, 30942, 30993, 31024, 31070, 31096, 31129, 31184, 31187, 31188, 31191, 31193, 31291, 31321, 31352, 31366, 31369, 31370, 31371, 31521, 31522, 31525, 31606, 31627, 31729, 33685, 33690, 33849, 34018, 37049, 39854, 39855, 39857, 54601, 73219, 73224, 73386, 73467, 73475, 73480, 73487, 73501, 73502, 73509, 73511, 73513, 73533, 73618, 73633, 73634, 73642, 73643, 73743, 73790, 73811, 73887, 73888, 73893, 73895, 73896, 73898, 73904, 73905, 73913, 73914, 73919, 73924, 73925, 73927, 73930, 73934, 73941, 73945, 73946, 73947, 73950, 73955, 73983, 74000, 74003, 74004, 74007, 74010, 74011, 74013, 74023, 74024, 74025, 74029, 74047, 74054, 74056, 74058, 74059, 74081, 74087, 74090, 74111, 74121, 74303, 74305, 74416, 74433, 74435, 74448, 74826, 74828, 89768, 106009, 106010, 106011);

-- Add patrolling Theramore Guards.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (2530569, 4979, 0, 0, 0, 1, 0, 0, -3815.12, -4457.45, 12.6943, 1.51038, 360, 360, 0, 0, 100, 0, 0, 2, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (2530570, 4979, 0, 0, 0, 1, 0, 0, -3812.29, -4457.69, 12.7017, 1.51038, 360, 360, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (2530571, 4979, 0, 0, 0, 1, 0, 0, -3811.48, -4441.44, 12.7737, 1.56143, 360, 360, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (2530572, 4979, 0, 0, 0, 1, 0, 0, -3815.16, -4441.36, 12.7486, 1.57321, 360, 360, 0, 1, 100, 0, 0, 2, 0, 0, 0, 10);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2530569, 2530570, 3.5, 4.50248, 3);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2530569, 2530569, 0, 4.50248, 3);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2530572, 2530571, 3.5, 4.50248, 3);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2530572, 2530572, 0, 4.50248, 3);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(2530569, 1, -3815.12, -4457.45, 12.6943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 2, -3814.83, -4441.11, 12.7771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 3, -3815.15, -4427.66, 12.763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 4, -3809.01, -4409.73, 12.669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 5, -3802.21, -4400.65, 11.5244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 6, -3794.93, -4395.24, 10.6712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 7, -3781.06, -4391.76, 10.6061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 8, -3769.9, -4388.29, 10.7627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 9, -3764.39, -4386.69, 10.8774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 10, -3746.19, -4376.68, 10.6401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 11, -3735.81, -4371.1, 10.6122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 12, -3723.93, -4364.82, 10.6106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 13, -3720.11, -4363.64, 10.6105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 14, -3715.5, -4362.44, 10.6105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 15, -3704.25, -4365.37, 10.6189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 16, -3694.47, -4372.87, 10.6123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 17, -3686.47, -4378.63, 10.6547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 18, -3681.36, -4383.64, 10.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 19, -3674.37, -4391.72, 10.5979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 20, -3671.98, -4396, 10.6167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 21, -3670.13, -4405.68, 10.6124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 22, -3669.59, -4422.79, 11.1054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 23, -3669.83, -4434.42, 11.287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 24, -3671.6, -4453.29, 11.3563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 25, -3673.25, -4463.39, 11.2932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 26, -3678.93, -4472.78, 11.4281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 27, -3687.8, -4481.52, 11.7807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 28, -3694.9, -4486.88, 11.9902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 29, -3707.11, -4493.58, 12.3282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 30, -3723.84, -4500.61, 12.6368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 31, -3744.45, -4506.32, 12.7283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 32, -3756.41, -4509.51, 12.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 33, -3770.51, -4512.61, 12.1972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 34, -3788.17, -4513.91, 11.6785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 35, -3795.74, -4513.85, 11.5425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 36, -3809.2, -4524.98, 9.30651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 37, -3819.26, -4534.51, 9.21871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 38, -3828.68, -4544.44, 9.21871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 39, -3830.22, -4548.31, 9.16624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 40, -3830.09, -4556.53, 8.94808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 41, -3831.86, -4560.59, 8.7139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 42, -3836.37, -4563.43, 8.55354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 43, -3842.58, -4563.52, 8.40634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 44, -3849.64, -4560.64, 8.34026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 45, -3853.45, -4553.78, 8.43196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 46, -3851.46, -4545.34, 8.71554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 47, -3844.97, -4541.38, 9.13023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 48, -3837.46, -4542.53, 9.21078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 49, -3833.36, -4540.53, 9.21938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 50, -3827.1, -4534.17, 9.21938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 51, -3818.33, -4525.04, 9.21798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 52, -3810.17, -4516.84, 10.1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 53, -3803.93, -4510.45, 11.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 54, -3799.82, -4506.8, 11.5427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 55, -3803.91, -4496.69, 11.5571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 56, -3808.44, -4487.01, 12.1497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 57, -3813.08, -4476.4, 12.6551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 58, -3814.6, -4469.21, 12.7007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530569, 59, -3814.92, -4461.76, 12.6977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(2530572, 1, -3815.12, -4457.45, 12.6943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 2, -3814.83, -4441.11, 12.7771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 3, -3815.15, -4427.66, 12.763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 4, -3809.01, -4409.73, 12.669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 5, -3802.21, -4400.65, 11.5244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 6, -3794.93, -4395.24, 10.6712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 7, -3781.06, -4391.76, 10.6061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 8, -3769.9, -4388.29, 10.7627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 9, -3764.39, -4386.69, 10.8774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 10, -3746.19, -4376.68, 10.6401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 11, -3735.81, -4371.1, 10.6122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 12, -3723.93, -4364.82, 10.6106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 13, -3720.11, -4363.64, 10.6105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 14, -3715.5, -4362.44, 10.6105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 15, -3704.25, -4365.37, 10.6189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 16, -3694.47, -4372.87, 10.6123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 17, -3686.47, -4378.63, 10.6547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 18, -3681.36, -4383.64, 10.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 19, -3674.37, -4391.72, 10.5979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 20, -3671.98, -4396, 10.6167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 21, -3670.13, -4405.68, 10.6124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 22, -3669.59, -4422.79, 11.1054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 23, -3669.83, -4434.42, 11.287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 24, -3671.6, -4453.29, 11.3563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 25, -3673.25, -4463.39, 11.2932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 26, -3678.93, -4472.78, 11.4281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 27, -3687.8, -4481.52, 11.7807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 28, -3694.9, -4486.88, 11.9902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 29, -3707.11, -4493.58, 12.3282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 30, -3723.84, -4500.61, 12.6368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 31, -3744.45, -4506.32, 12.7283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 32, -3756.41, -4509.51, 12.5543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 33, -3770.51, -4512.61, 12.1972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 34, -3788.17, -4513.91, 11.6785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 35, -3795.74, -4513.85, 11.5425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 36, -3809.2, -4524.98, 9.30651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 37, -3819.26, -4534.51, 9.21871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 38, -3828.68, -4544.44, 9.21871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 39, -3830.22, -4548.31, 9.16624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 40, -3830.09, -4556.53, 8.94808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 41, -3831.86, -4560.59, 8.7139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 42, -3836.37, -4563.43, 8.55354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 43, -3842.58, -4563.52, 8.40634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 44, -3849.64, -4560.64, 8.34026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 45, -3853.45, -4553.78, 8.43196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 46, -3851.46, -4545.34, 8.71554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 47, -3844.97, -4541.38, 9.13023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 48, -3837.46, -4542.53, 9.21078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 49, -3833.36, -4540.53, 9.21938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 50, -3827.1, -4534.17, 9.21938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 51, -3818.33, -4525.04, 9.21798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 52, -3810.17, -4516.84, 10.1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 53, -3803.93, -4510.45, 11.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 54, -3799.82, -4506.8, 11.5427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 55, -3803.91, -4496.69, 11.5571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 56, -3808.44, -4487.01, 12.1497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 57, -3813.08, -4476.4, 12.6551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 58, -3814.6, -4469.21, 12.7007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2530572, 59, -3814.92, -4461.76, 12.6977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Events list for Theramore Combat Dummy
DELETE FROM `creature_ai_events` WHERE `creature_id`=4952;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495201, 4952, 0, 11, 0, 100, 0, 0, 0, 0, 0, 495201, 0, 0, 'Theramore Combat Dummy - Set Unkillable on Respawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495202, 4952, 0, 30, 0, 100, 0, 0, 0, 0, 0, 495201, 0, 0, 'Theramore Combat Dummy - Set Unkillable on Leave Combat');
DELETE FROM `creature_ai_scripts` WHERE `id`=495201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495201, 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Combat Dummy - Set Unkillable');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=4952;

-- Events list for Theramore Practicing Guard
DELETE FROM `creature_ai_events` WHERE `creature_id`=4951;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495101, 4951, 0, 2, 0, 100, 0, 15, 0, 0, 0, 495101, 0, 0, 'Theramore Practicing Guard - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495102, 4951, 6567, 1, 4, 100, 1, 1000, 1000, 1000, 1000, 495102, 0, 0, 'Theramore Practicing Guard - Attack Combat Dummy on OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495103, 4951, 0, 0, 1, 100, 0, 120000, 120000, 0, 0, 495103, 0, 0, 'Theramore Practicing Guard - Stop Attacking after 2 minutes');
DELETE FROM `creature_ai_scripts` WHERE `id`=495102;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495102, 0, 26, 0, 0, 0, 0, 4952, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Attack Combat Dummy');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495102, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Set Phase to 1');
DELETE FROM `creature_ai_scripts` WHERE `id`=495103;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 0, 39, 495103, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Start Script');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 0, 44, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Set Phase to 2');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Combat Stop');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 0, 73, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Combat Dummy - Combat Stop');
DELETE FROM `event_scripts` WHERE `id`=495103;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 2, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Sit Down');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 30, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Stand Up');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495103, 32, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Practicing Guard - Set Phase to 0');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (6567, 20, 4952, 5, 0, 0, 2);
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=4951;

-- Waypoints for Guard Lasiter.
DELETE FROM `creature_movement` WHERE `id`=30458;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(30458, 1, -3772.62, -4533.36, 11.5873, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25, 0, 0),
(30458, 2, -3772.62, -4533.36, 11.5873, 2000, 0, 0, 1790, 1791, 1792, 0, 0, 0, 0, 5.25, 0, 0),
(30458, 3, -3770.08, -4531.74, 11.5426, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30458, 4, -3770.08, -4531.74, 11.5426, 18000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25, 0, 0),
(30458, 5, -3770.08, -4531.74, 11.5426, 2000, 0, 0, 1789, 1791, 1792, 0, 0, 0, 0, 5.25, 0, 0),
(30458, 6, -3772.62, -4533.36, 11.5873, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Spot should do random movement.
UPDATE `creature` SET `spawndist`=1, `MovementType`=1 WHERE `guid`=30652;

-- Waypoints for Privateer Groy.
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=7896;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(2616, 1, -3896.16, -4588.84, 9.22015, 480000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89208, 0, 0),
(2616, 2, -3896.16, -4588.84, 9.22015, 0, 0, 261602, 0, 0, 0, 0, 0, 0, 0, 3.89208, 0, 0),
(2616, 3, -3877.52, -4581.24, 9.15066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 4, -3867.44, -4574.61, 8.24416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 5, -3861.71, -4569.2, 7.88555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 6, -3854.78, -4555.84, 8.35153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 7, -3850.18, -4546.64, 8.7103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 8, -3843.44, -4530.2, 9.65426, 630000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6, 0, 0),
(2616, 9, -3843.44, -4530.2, 9.65426, 0, 0, 261609, 0, 0, 0, 0, 0, 0, 0, 4.6, 0, 0),
(2616, 10, -3850.18, -4546.64, 8.7103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 11, -3854.78, -4555.84, 8.35153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 12, -3861.71, -4569.2, 7.88555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 13, -3867.44, -4574.61, 8.24416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(2616, 14, -3877.52, -4581.24, 9.15066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);
DELETE FROM `creature_movement_scripts` WHERE `id`=261602;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (261602, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 737, 738, 739, 0, 0, 0, 0, 0, 0, 'Privateer Groy - Yell Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=261609;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (261609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 737, 738, 739, 0, 0, 0, 0, 0, 0, 'Privateer Groy - Yell Text');

-- These Theramore Guards should have random movement.
UPDATE `creature` SET `spawndist`=8, `MovementType`=1 WHERE `guid`=30525;
UPDATE `creature` SET `position_x`=-3864.39, `position_y`=-4570.106, `position_z`=7.81, `spawndist`=5, `MovementType`=1 WHERE `guid`=30656;
UPDATE `creature` SET `position_x`=-3832.713, `position_y`=-4569.31, `position_z`=8.64, `spawndist`=5, `MovementType`=1 WHERE `guid`=30487;
UPDATE `creature` SET `position_x`=-3683.09, `position_y`=-4391.55, `position_z`=10.6123, `orientation`=0.666157 WHERE `guid`=150018;

-- Wrong spawns.
DELETE FROM `creature` WHERE `guid` IN (30637, 8486, 30522, 30638, 8487, 25147, 30644, 30643, 30639);
DELETE FROM `creature_addon` WHERE `guid` IN (30637, 8486, 30522, 30638, 8487, 25147, 30644, 30643, 30639);
DELETE FROM `creature_movement` WHERE `id` IN (30637, 8486, 30522, 30638, 8487, 25147, 30644, 30643, 30639);

-- Gossip menu for Decedra Willham.
UPDATE `creature_template` SET `gossip_menu_id`=4357 WHERE `entry`=12716;
INSERT INTO `gossip_menu` VALUES (4357, 5579, 0);

-- Gossip menu for Baldruc.
UPDATE `creature_template` SET `gossip_menu_id`=6944, `npc_flags`=9 WHERE `entry`=4321;

-- Add missing Theramore Lieutenant.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (2530574, 4947, 0, 0, 0, 1, 0, 4947, -3819.47, -4502.38, 11.4069, 0.049492, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

-- Gossip menu for Timothy Worthington.
UPDATE `creature_template` SET `gossip_menu_id`=4355 WHERE `entry`=11052;
INSERT INTO `gossip_menu` VALUES (4355, 5571, 0);

-- Correct coordinates for Chicken.
UPDATE `creature` SET `position_x`=-3821.785, `position_y`=-4386.38, `position_z`=11.5, `spawndist`=12, `MovementType`=1 WHERE `guid`=33908;
UPDATE `creature` SET `position_x`=-3788.65, `position_y`=-4343.15, `position_z`=13, `spawndist`=10, `MovementType`=1 WHERE `guid`=30886;

-- Delete wrong items from Uma Bartulm.
DELETE FROM `npc_vendor` WHERE `entry`=4899 && `item`=1710;
DELETE FROM `npc_vendor` WHERE `entry`=4899 && `item`=3827;
DELETE FROM `npc_vendor` WHERE `entry`=4899 && `item`=6217;

-- Gossip menu for Alchemist Narett.
UPDATE `creature_template` SET `gossip_menu_id`=4122 WHERE `entry`=4900;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4454, 7, 171, 150, 0, 0, 0);
INSERT INTO `gossip_menu` VALUES (4122, 5049, 0);
INSERT INTO `gossip_menu` VALUES (4122, 5050, 4454);

-- Brant Jasperbloom should not have the gossip flag.
UPDATE `creature_template` SET `npc_flags`=18 WHERE `entry`=4898;

-- Correct waypoints for Theramore Guards at entrance.
DELETE FROM `creature_movement` WHERE `id`=30634;
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (30633, 30634, 2.2, 1.57, 3);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (30633, 30633, 0, 1.57, 3);
UPDATE `creature` SET `position_x`=-3632.6, `position_y`=-4349.78, `position_z`=6.23993, `orientation`=0.710781, `spawndist`=0, `MovementType`=0 WHERE `guid`=30634;
DELETE FROM `creature_movement` WHERE `id`=30633;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `wander_distance`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(30633, 1, -3629.74, -4350.74, 6.07444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 2, -3625.27, -4346.66, 7.41274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 3, -3615.14, -4338.04, 9.09229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 4, -3605.1, -4329.83, 9.35807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 5, -3597.76, -4323.73, 8.23622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 6, -3590.05, -4317.35, 6.50544, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 7, -3597.66, -4323.66, 8.21746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 8, -3607, -4331.22, 9.39326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 9, -3618.46, -4340.77, 8.66189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 10, -3630.57, -4350.6, 6.02683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 11, -3641.08, -4358.23, 8.23087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 12, -3649.69, -4365.45, 9.30783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 13, -3661.37, -4374.82, 9.3562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 14, -3669.16, -4380.84, 9.52321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 15, -3672.77, -4383.54, 9.93784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 16, -3676.67, -4385.52, 10.367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 17, -3684.88, -4389.08, 10.613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 18, -3691.28, -4391.12, 11.5975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 19, -3697.47, -4392.11, 13.7802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 20, -3701.65, -4392.21, 15.3721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 21, -3706.59, -4393.27, 17.1351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 22, -3710.8, -4396.69, 18.8129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 23, -3713.35, -4400.5, 20.547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 24, -3715.88, -4405.43, 22.5667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 25, -3718.29, -4409.51, 24.0483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 26, -3720.23, -4411.67, 24.9374, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 27, -3718.29, -4409.51, 24.0483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 28, -3715.88, -4405.43, 22.5672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 29, -3713.35, -4400.5, 20.547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 30, -3710.8, -4396.69, 18.814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 31, -3706.59, -4393.27, 17.1349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 32, -3701.65, -4392.21, 15.3723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 33, -3697.47, -4392.11, 13.7804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 34, -3691.28, -4391.12, 11.597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 35, -3685.43, -4389.17, 10.6291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 36, -3681.22, -4387.65, 10.5599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 37, -3675.12, -4384.75, 10.1936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 38, -3665.29, -4378.04, 9.35568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 39, -3659.9, -4373.78, 9.3558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 40, -3654.9, -4369.74, 9.3558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 41, -3648.41, -4364.34, 9.31729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 42, -3645.05, -4361.36, 8.92897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 43, -3639.69, -4357.41, 7.96369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(30633, 44, -3633.75, -4353.22, 6.78305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- Gossip menu for Smiling Jim.
UPDATE `creature_template` SET `gossip_menu_id`=541, `ai_name`='EventAI' WHERE `entry`=4895;
INSERT INTO `gossip_menu` VALUES (541, 1058, 0);

-- Fix emotes for Smiling Jim texts.
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=1632;
UPDATE `broadcast_text` SET `EmoteId0`=11 WHERE `ID`=1633;
UPDATE `broadcast_text` SET `EmoteId0`=1 WHERE `ID`=1634;
UPDATE `broadcast_text` SET `EmoteId0`=25 WHERE `ID`=1635;

-- Events list for Smiling Jim.
DELETE FROM `creature_ai_events` WHERE `creature_id`=4895;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (489501, 4895, 0, 2, 0, 100, 0, 15, 0, 0, 0, 489501, 0, 0, 'Smiling Jim - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (489502, 4895, 0, 1, 0, 100, 1, 240000, 300000, 240000, 300000, 489502, 0, 0, 'Smiling Jim - Say Text OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=489502;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (489502, 0, 39, 489502, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Smiling Jim - Start Script');
DELETE FROM `event_scripts` WHERE `id`=489502;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (489502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1632, 0, 0, 0, 0, 0, 0, 0, 0, 'Smiling Jim - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (489502, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1633, 0, 0, 0, 0, 0, 0, 0, 0, 'Smiling Jim - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (489502, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 'Smiling Jim - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (489502, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1635, 0, 0, 0, 0, 0, 0, 0, 0, 'Smiling Jim - Say Text');

-- Sara Pierce should have random movement.
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `guid`=8462;

-- Dahne Pierce should have random movement.
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `guid`=8463;

-- Events list for Spot
DELETE FROM `creature_ai_events` WHERE `creature_id`=4950;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495001, 4950, 0, 1, 2, 100, 1, 180000, 360000, 180000, 360000, 495001, 0, 0, 'Spot - Fall Asleep OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (495002, 4950, 0, 1, 1, 100, 1, 60000, 120000, 60000, 120000, 495002, 0, 0, 'Spot - Wake Up OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=495001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495001, 0, 28, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot - Sleep');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495001, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot - Set Phase to 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495001, 0, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot - Move Idle');
DELETE FROM `creature_ai_scripts` WHERE `id`=495002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495002, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot - Stand Up');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495002, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot - Set Phase to 0');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495002, 0, 20, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Spot - Move Random');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=4950;

/*
  Guard Dueling Event Scripts Below
*/

-- Conditions to check who won duel.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4403, 36, 4403, 0, 0, 0, 0); -- Edward
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4404, 36, 4404, 0, 0, 0, 0); -- Jarad
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4405, 36, 4405, 0, 0, 0, 0); -- Kahil
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4406, 36, 4406, 0, 0, 0, 0); -- Lana
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4407, 36, 4407, 0, 0, 0, 0); -- Narrisha
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4408, 36, 4408, 0, 0, 0, 0); -- Tark

-- Events list for Guard Edward
DELETE FROM `creature_ai_events` WHERE `creature_id`=4922;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492201, 4922, 0, 31, 0, 100, 1, 4400, 1, 0, 0, 492201, 0, 0, 'Guard Edward - Attack Guard Jarad on Event Received');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492202, 4922, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 492202, 0, 0, 'Guard Edward - End Fight on 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492203, 4922, 0, 2, 0, 100, 0, 15, 0, 0, 0, 492203, 0, 0, 'Guard Edward - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492204, 4922, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 492204, 492205, 0, 'Guard Edward - Cast Battle Stance or Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=492201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492201, 0, 26, 0, 0, 0, 0, 4923, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Attack Guard Jarad');
DELETE FROM `creature_ai_scripts` WHERE `id`=492202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492202, 0, 62, 4400, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492202, 0, 61, 4404, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Start Jarad Win Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=492204;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492204, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Cast Battle Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=492205;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492205, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Cast Defensive Stance');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (49220, 'Dustwallow Marsh - Guard Edward', 11976, 60, 1, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Guard Jarad
DELETE FROM `creature_ai_events` WHERE `creature_id`=4923;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492301, 4923, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 492301, 492304, 0, 'Guard Jarad - Cast Battle Stance or Defensive Stance');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492302, 4923, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 492302, 0, 0, 'Guard Jarad - End Fight at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492303, 4923, 0, 2, 0, 100, 0, 15, 0, 0, 0, 492303, 0, 0, 'Guard Jarad - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=492301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492301, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Cast Battle Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=492302;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492302, 0, 62, 4400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492302, 0, 61, 4403, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Start Edward Win Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=492304;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492304, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Cast Defensive Stance');
DELETE FROM `creature_spells` WHERE `entry`=49230;
UPDATE `creature_template` SET `spell_list_id`=0 WHERE `entry`=4923;

-- Events list for Guard Kahil
DELETE FROM `creature_ai_events` WHERE `creature_id`=5091;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509101, 5091, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 509101, 0, 0, 'Guard Kahil - End Fight at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509102, 5091, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 509102, 509104, 0, 'Guard Kahil - Cast Battle Stance or Defensive Stance');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509103, 5091, 0, 2, 0, 100, 0, 15, 0, 0, 0, 509103, 0, 0, 'Guard Kahil - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=509101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509101, 0, 62, 4401, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509101, 0, 61, 4406, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Start Lana Win Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=509102;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509102, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509104;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509104, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Battle Stance');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50910, 'Dustwallow Marsh - Guard Kahil', 11976, 60, 1, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Guard Lana
DELETE FROM `creature_ai_events` WHERE `creature_id`=5092;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509201, 5092, 0, 31, 0, 100, 1, 4401, 1, 0, 0, 509201, 0, 0, 'Guard Lana - Attack Guard Kahil on Event Received');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509202, 5092, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 509202, 0, 0, 'Guard Lana - End Fight at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509203, 5092, 0, 2, 0, 100, 0, 15, 0, 0, 0, 509203, 0, 0, 'Guard Lana - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509204, 5092, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 509204, 509205, 0, 'Guard Lana - Cast Battle Stance or Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509201, 0, 26, 0, 0, 0, 0, 5091, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Attack Guard Kahil');
DELETE FROM `creature_ai_scripts` WHERE `id`=509202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509202, 0, 62, 4401, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509202, 0, 61, 4405, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Start Kahil Win Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=509204;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509204, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Cast Battle Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509205;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509205, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Cast Defensive Stance');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50920, 'Dustwallow Marsh - Guard Lana', 17207, 100, 0, 0, 0, 0, 3, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Guard Narrisha
DELETE FROM `creature_ai_events` WHERE `creature_id`=5093;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509301, 5093, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 509301, 509304, 0, 'Guard Narrisha - Cast Battle Stance or Defensive Stance');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509302, 5093, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 509302, 0, 0, 'Guard Narrisha - End Fight at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509303, 5093, 0, 2, 0, 100, 0, 15, 0, 0, 0, 509303, 0, 0, 'Guard Narrisha - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=509301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509301, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509304;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509304, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Battle Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509302;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509302, 0, 62, 4402, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509302, 0, 61, 4408, 30, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Start Tark Win Event');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50930, 'Dustwallow Marsh - Guard Narrisha', 11976, 60, 1, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Guard Tark
DELETE FROM `creature_ai_events` WHERE `creature_id`=5094;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509401, 5094, 0, 31, 0, 100, 1, 4402, 1, 0, 0, 509401, 0, 0, 'Guard Tark - Attack Guard Narrisha on Event Received');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509402, 5094, 0, 2, 1, 100, 1, 30, 1, 60000, 60000, 509402, 0, 0, 'Guard Tark - End Fight at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509403, 5094, 0, 2, 0, 100, 0, 15, 0, 0, 0, 509403, 0, 0, 'Guard Tark - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (509404, 5094, 0, 0, 0, 100, 3, 1000, 3000, 30000, 180000, 509404, 509405, 0, 'Guard Narrisha - Cast Battle Stance or Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509401, 0, 26, 0, 0, 0, 0, 5093, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Attack Guard Narrisha');
DELETE FROM `creature_ai_scripts` WHERE `id`=509402;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509402, 0, 62, 4402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - End Map Event');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509402, 0, 61, 4407, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Start Narrisha Win Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=509404;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509404, 0, 15, 7164, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Defensive Stance');
DELETE FROM `creature_ai_scripts` WHERE `id`=509405;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (509405, 0, 15, 7165, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Cast Battle Stance');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50940, 'Dustwallow Marsh - Guard Tark', 11976, 60, 1, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Combat Master Criton
DELETE FROM `creature_ai_events` WHERE `creature_id`=4924;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492401, 4924, 0, 2, 0, 100, 0, 15, 0, 0, 0, 492401, 0, 0, 'Combat Master Criton - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (492402, 4924, 0, 1, 0, 100, 1, 60000, 60000, 900000, 900000, 492402, 0, 0, 'Combat Master Criton - Start Dueling Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=492402;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 0, 0, 0, 0, 0, 0, 5093, 30, 8, 0, 1771, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 0, 39, 492402, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Start Script');

-- Round 1 Jared vs Edward Begin
DELETE FROM `event_scripts` WHERE `id`=492402;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 0, 61, 4400, 120, 0, 0, 0, 0, 0, 8, 0, 44400, 0, 44400, 0, 0, 0, 0, 0, 'Start Edward vs Jarad Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 1, 63, 4400, 0, 0, 0, 4922, 30, 8, 2, 0, 44403, 0, 44403, 0, 0, 0, 0, 0, 'Guard Edward - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 1, 63, 4400, 0, 0, 0, 4923, 30, 8, 2, 0, 44402, 0, 44402, 0, 0, 0, 0, 0, 'Guard Jarad - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 1, 63, 4400, 0, 0, 0, 5199, 30, 8, 2, 0, 44404, 0, 44404, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 1, 63, 4400, 0, 0, 0, 5200, 30, 8, 2, 0, 44405, 0, 44405, 0, 0, 0, 0, 0, 'Medic Helaina - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 2, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1775, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Andrews - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 2, 3, 0, 0, 2, 2, 4923, 30, 8, 2, 0, 0, 0, 0, -3652.811, -4515.007, 9.498757, 1.53, 0, 'Guard Jarad - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 2, 34, 0, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, -3652.811, -4515.007, 9.498757, 0.7871988, 0, 'Guard Jarad - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 2, 44, 1, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 3, 34, 0, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, -3644.488, -4506.659, 9.498757, 3.928499, 0, 'Guard Edward - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 3, 44, 1, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 3, 3, 0, 0, 2, 2, 4922, 30, 8, 2, 0, 0, 0, 0, -3644.488, -4506.659, 9.498757, 4.502949, 0, 'Guard Edward - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 3, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1776, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Thomas - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 6, 35, 1, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0.7871988, 0, 'Guard Jarad - Set Facing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 7, 35, 1, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 3.928499, 0, 'Guard Edward - Set Facing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 8, 0, 0, 0, 0, 0, 4923, 30, 8, 2, 1778, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 8, 1, 66, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 9, 1, 66, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 9, 0, 0, 0, 0, 0, 4922, 30, 8, 2, 1777, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 22, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Emote Point');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1641, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 22, 22, 1622, 2, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Set Faction to Red');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 22, 22, 1621, 2, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward -Set Faction to Blue');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (492402, 23, 66, 4400, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send Fight Begin Event');

-- Round 1 Jared vs Edward End
-- Round 2 Kahil vs Lana Begin
DELETE FROM `event_scripts` WHERE `id`=44400;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1636, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1795, 0, 0, 0, 0, 0, 0, 0, 4403, 'Combat Master Szigeti - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1794, 0, 0, 0, 0, 0, 0, 0, 4404, 'Combat Master Szigeti - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 1, 25, 0, 0, 0, 5090, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Szigeti - Emote Point');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 1, 4, 0, 0, 0, 5091, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4403, 'Guard Kahil - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 1, 4, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4403, 'Guard Narrisha - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 1, 4, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4404, 'Guard Tark - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 0, 1, 4, 0, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4404, 'Guard Lana - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 10, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1766, 0, 0, 0, 0, 0, 0, 0, 4403, 'Captain Andrews - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 10, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1760, 0, 0, 0, 0, 0, 0, 0, 4404, 'Captain Thomas - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 11, 61, 4401, 120, 0, 0, 0, 0, 0, 8, 0, 44401, 0, 44401, 0, 0, 0, 0, 0, 'Combat Master Criton - Start Kahil vs Lana Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 12, 63, 4401, 0, 0, 0, 5091, 30, 8, 2, 0, 44407, 0, 44407, 0, 0, 0, 0, 0, 'Guard Kahil - Add To Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 12, 63, 4401, 0, 0, 0, 5092, 30, 8, 2, 0, 44406, 0, 44406, 0, 0, 0, 0, 0, 'Guard Lana - Add To Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 12, 63, 4401, 0, 0, 0, 5199, 30, 8, 2, 0, 44411, 0, 44411, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 12, 63, 4401, 0, 0, 0, 5200, 30, 8, 2, 0, 44410, 0, 44410, 0, 0, 0, 0, 0, 'Medic Helaina - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 21, 3, 0, 0, 2, 2, 5091, 30, 8, 2, 0, 0, 0, 0, -3644.451, -4506.66, 9.498757, 3.928484, 0, 'Guard Kahil - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 21, 34, 0, 0, 0, 0, 5091, 30, 8, 2, 0, 0, 0, 0, -3644.451, -4506.66, 9.498757, 3.928484, 0, 'Guard Kahil - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 21, 44, 1, 0, 0, 0, 5091, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 23, 3, 0, 0, 2, 2, 5092, 30, 8, 2, 0, 0, 0, 0, -3652.83, -4515.062, 9.498757, 0.7868186, 0, 'Guard Lana - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 23, 34, 0, 0, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, -3652.83, -4515.062, 9.498757, 0.7868186, 0, 'Guard Lana - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 23, 44, 1, 0, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 26, 1, 66, 0, 0, 0, 5091, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 26, 0, 0, 0, 0, 0, 5091, 30, 8, 2, 1777, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 29, 1, 66, 0, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 29, 0, 0, 0, 0, 0, 5092, 30, 8, 2, 1778, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 39, 22, 1622, 2, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Set Faction to Red');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 39, 22, 1621, 2, 0, 0, 5091, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Set Faction to Blue');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1641, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44400, 40, 66, 4401, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Send Fight Begin Event');

-- Round 2 Kahil vs Lana End
-- Round 3 Narrisha vs Tark Begin
DELETE FROM `event_scripts` WHERE `id`=44401;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1636, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1795, 0, 0, 0, 0, 0, 0, 0, 4405, 'Combat Master Szigeti - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1794, 0, 0, 0, 0, 0, 0, 0, 4406, 'Combat Master Szigeti - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 1, 25, 0, 0, 0, 5090, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Szigeti - Emote Point');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 1, 4, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4405, 'Guard Edward - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 1, 4, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4405, 'Guard Narrisha - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 1, 4, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4406, 'Guard Tark - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 0, 1, 4, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4406, 'Guard Jarad - Emote Cheer');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 10, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1767, 0, 0, 0, 0, 0, 0, 0, 4405, 'Captain Andrews - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 10, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1762, 0, 0, 0, 0, 0, 0, 0, 4406, 'Captain Thomas - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 11, 61, 4402, 120, 0, 0, 0, 0, 0, 8, 0, 44414, 0, 44414, 0, 0, 0, 0, 0, 'Combat Master Criton - Start Narrisha vs Tark Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 12, 63, 4402, 0, 0, 0, 5093, 30, 8, 2, 0, 44409, 0, 44409, 0, 0, 0, 0, 0, 'Guard Narrisha - Add To Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 12, 63, 4402, 0, 0, 0, 5094, 30, 8, 2, 0, 44408, 0, 44408, 0, 0, 0, 0, 0, 'Guard Tark - Add To Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 12, 63, 4402, 0, 0, 0, 5199, 30, 8, 2, 0, 44413, 0, 44413, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 12, 63, 4402, 0, 0, 0, 5200, 30, 8, 2, 0, 44412, 0, 44412, 0, 0, 0, 0, 0, 'Medic Helaina - Add to Scripted Map Event');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 21, 3, 0, 0, 2, 2, 5093, 30, 8, 2, 0, 0, 0, 0, -3644.451, -4506.66, 9.498757, 3.930513, 0, 'Guard Narrisha - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 21, 34, 0, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, -3644.451, -4506.66, 9.498757, 3.930513, 0, 'Guard Narrisha - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 21, 44, 1, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 23, 3, 0, 0, 2, 2, 5094, 30, 8, 2, 0, 0, 0, 0, -3652.83, -4515.062, 9.498757, 2.1, 0, 'Guard Tark - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 23, 34, 0, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, -3652.83, -4515.062, 9.498757, 0.7868186, 0, 'Guard Tark - Set Home Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 23, 44, 1, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Set Phase to 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 26, 1, 66, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 26, 35, 1, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0.7868186, 0, 'Guard Tark - Set Facing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 26, 0, 0, 0, 0, 0, 5093, 30, 8, 2, 1777, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 29, 1, 66, 0, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 29, 0, 0, 0, 0, 0, 5094, 30, 8, 2, 1778, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 39, 22, 1622, 2, 0, 0, 5094, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Set Faction to Red');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 39, 22, 1621, 2, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Set Faction to Blue');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1641, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44401, 40, 66, 4402, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Send Fight Begin Event');

-- Round 3 Narrisha vs Tark End
DELETE FROM `event_scripts` WHERE `id`=44414;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1636, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Criton - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 1, 4, 0, 0, 0, 4923, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4408, 'Guard Jarad - Emote Cheer (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 1, 4, 0, 0, 0, 5092, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4408, 'Guard Lana - Emote Cheer (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 1, 4, 0, 0, 0, 5093, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4407, 'Guard Kahil - Emote Cheer (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 1, 4, 0, 0, 0, 4922, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4407, 'Guard Edward - Emote Cheer (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 1, 25, 0, 0, 0, 5090, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Combat Master Szigeti - Emote Point');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1794, 0, 0, 0, 0, 0, 0, 0, 4408, 'Combat Master Szigeti - Say Text (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 0, 0, 0, 0, 0, 0, 5090, 30, 8, 2, 1795, 0, 0, 0, 0, 0, 0, 0, 4407, 'Combat Master Szigeti - Say Text (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 10, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1768, 0, 0, 0, 0, 0, 0, 0, 4407, 'Captain Andrews - Say Text (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 10, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1763, 0, 0, 0, 0, 0, 0, 0, 4408, 'Captain Thomas - Say Text (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1773, 0, 0, 0, 0, 0, 0, 0, 4408, 'Combat Master Criton - Say Text (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1774, 0, 0, 0, 0, 0, 0, 0, 4407, 'Combat Master Criton - Say Text (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 18, 3, 0, 0, 2, 0, 5096, 30, 8, 2, 0, 0, 0, 0, -3646.21, -4503.163, 9.498757, 1.53589, 0, 'Captain Thomas - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 18, 35, 1, 0, 0, 0, 5095, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 5.759586, 0, 'Captain Andrews - Set Facing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 20, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1769, 0, 0, 0, 0, 0, 0, 0, 4408, 'Captain Andrews - Say Text (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 20, 0, 0, 0, 0, 0, 5095, 30, 8, 2, 1770, 0, 0, 0, 0, 0, 0, 0, 4407, 'Captain Andrews - Say Text (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 22, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1765, 0, 0, 0, 0, 0, 0, 0, 4408, 'Captain Thomas - Say Text (Red Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 22, 0, 0, 0, 0, 0, 5096, 30, 8, 2, 1764, 0, 0, 0, 0, 0, 0, 0, 4407, 'Captain Thomas - Say Text (Blue Win)');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 25, 35, 1, 0, 0, 0, 5095, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0.994838, 0, 'Captain Andrews - Set Facing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44414, 25, 20, 6, 0, 0, 0, 5096, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Thomas - Move Home');

-- Guard Jarad End Script.
DELETE FROM `event_scripts` WHERE `id`=44402;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Jarad - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3653.16, -4520.27, 9.49876, 1.36136, 0, 'Guard Jarad - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44402, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3653.16, -4520.27, 9.49876, 1.36136, 0, 'Guard Jarad - Set Home Position');

-- Guard Edward End Script.
DELETE FROM `event_scripts` WHERE `id`=44403;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Edward - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3644.61, -4500.68, 9.49876, 4.50295, 0, 'Guard Edward - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44403, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3644.61, -4500.68, 9.49876, 4.50295, 0, 'Guard Edward - Set Home Position');

-- Guard Lana End Script.
DELETE FROM `event_scripts` WHERE `id`=44406;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Lana - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3651.524, -4520.244, 9.498757, 1.413717, 0, 'Guard Lana - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44406, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3651.524, -4520.244, 9.498757, 1.413717, 0, 'Guard Lana - Set Home Position');

-- Guard Kahil End Script.
DELETE FROM `event_scripts` WHERE `id`=44407;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Kahil - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3646.152, -4500.667, 9.498757, 4.642576, 0, 'Guard Kahil - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44407, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3646.152, -4500.667, 9.498757, 4.642576, 0, 'Guard Kahil - Set Home Position');

-- Guard Tark End Script.
DELETE FROM `event_scripts` WHERE `id`=44408;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Tark - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3649.813, -4520.187, 9.498757, 1.623156, 0, 'Guard Tark - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44408, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3649.813, -4520.187, 9.498757, 1.623156, 0, 'Guard Tark - Set Home Position');

-- Guard Narrisha End Script.
DELETE FROM `event_scripts` WHERE `id`=44409;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Enter Evade Mode');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Set Phase to 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Set Sheath Unarmed');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 3, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guard Narrisha - Emote Salute');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 6, 3, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, -3647.815, -4500.805, 9.498757, 4.764749, 0, 'Guard Narrisha - Move to Spawn Position');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44409, 6, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3647.815, -4500.805, 9.498757, 4.764749, 0, 'Guard Narrisha - Set Home Position');

-- Scripts for Medics.
DELETE FROM `event_scripts` WHERE `id`=44405;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44405, 0, 15, 7162, 4, 0, 0, 4923, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Helaina - Cast First Aid on Guard Jarad');
DELETE FROM `event_scripts` WHERE `id`=44404;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44404, 0, 15, 7162, 4, 0, 0, 4922, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Cast First Aid on Guard Edward');
DELETE FROM `event_scripts` WHERE `id`=44410;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44410, 0, 15, 7162, 4, 0, 0, 5092, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Helaina - Cast First Aid on Guard Lana');
DELETE FROM `event_scripts` WHERE `id`=44411;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44411, 0, 15, 7162, 4, 0, 0, 5091, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Cast First Aid on Guard Kahil');
DELETE FROM `event_scripts` WHERE `id`=44412;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44412, 0, 15, 7162, 4, 0, 0, 5094, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Helaina - Cast First Aid on Guard Tark');
DELETE FROM `event_scripts` WHERE `id`=44413;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (44413, 0, 15, 7162, 4, 0, 0, 5093, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Medic Tamberlyn - Cast First Aid on Guard Narrisha');

