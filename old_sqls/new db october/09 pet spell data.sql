-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.53 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4998
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table mangos.pet_spell_data
CREATE TABLE IF NOT EXISTS `pet_spell_data` (
  `entry` int(10) unsigned NOT NULL,
  `build` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_id1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_id2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_id3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_id4` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mangos.pet_spell_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_spell_data` DISABLE KEYS */;
INSERT INTO `pet_spell_data` (`entry`, `build`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES
	(5525, 4695, 24450, 0, 0, 0),
	(5786, 0, 1742, 0, 0, 0),
	(5787, 0, 1756, 0, 0, 0),
	(5787, 4375, 1756, 23148, 0, 0),
	(5788, 0, 1756, 0, 0, 0),
	(5789, 0, 16697, 0, 0, 0),
	(5789, 4695, 16697, 24579, 0, 0),
	(5790, 0, 1754, 0, 0, 0),
	(5790, 4375, 1754, 23145, 0, 0),
	(5791, 0, 1755, 0, 0, 0),
	(5791, 4375, 1755, 23145, 0, 0),
	(5791, 4695, 1755, 23145, 24577, 0),
	(5792, 0, 1755, 0, 0, 0),
	(5792, 4375, 1755, 23147, 0, 0),
	(5793, 0, 1756, 0, 0, 0),
	(5793, 4375, 1756, 23148, 0, 0),
	(5793, 4695, 1756, 23148, 24578, 0),
	(5794, 0, 1754, 0, 0, 0),
	(5794, 4375, 1754, 23145, 0, 0),
	(5795, 0, 16827, 0, 0, 0),
	(5796, 0, 16827, 0, 0, 0),
	(5797, 0, 16828, 0, 0, 0),
	(5798, 0, 16828, 0, 0, 0),
	(5799, 0, 16828, 0, 0, 0),
	(5800, 0, 17253, 0, 0, 0),
	(5801, 0, 16829, 0, 0, 0),
	(5802, 0, 16829, 0, 0, 0),
	(5803, 0, 16829, 0, 0, 0),
	(5804, 0, 16829, 0, 0, 0),
	(5805, 0, 16830, 0, 0, 0),
	(5806, 0, 16832, 0, 0, 0),
	(5807, 0, 3010, 0, 0, 0),
	(5808, 0, 3010, 0, 0, 0),
	(5809, 0, 3010, 0, 0, 0),
	(5810, 0, 3010, 0, 0, 0),
	(5811, 0, 3009, 0, 0, 0),
	(5812, 0, 16828, 0, 0, 0),
	(5813, 0, 16832, 0, 0, 0),
	(5814, 0, 16828, 0, 0, 0),
	(5815, 0, 16829, 0, 0, 0),
	(5816, 0, 1742, 0, 0, 0),
	(5817, 0, 1742, 0, 0, 0),
	(5818, 0, 1742, 0, 0, 0),
	(5819, 0, 1742, 0, 0, 0),
	(5820, 0, 1742, 0, 0, 0),
	(5821, 0, 1742, 0, 0, 0),
	(5822, 0, 1753, 0, 0, 0),
	(5823, 0, 1753, 0, 0, 0),
	(5824, 0, 1753, 0, 0, 0),
	(5825, 0, 1753, 0, 0, 0),
	(5826, 0, 1754, 0, 0, 0),
	(5827, 0, 1754, 0, 0, 0),
	(5828, 0, 1754, 0, 0, 0),
	(5829, 0, 1754, 0, 0, 0),
	(5830, 0, 1754, 0, 0, 0),
	(5831, 0, 1755, 0, 0, 0),
	(5831, 4695, 1755, 24450, 0, 0),
	(5832, 0, 1755, 0, 0, 0),
	(5833, 0, 1756, 0, 0, 0),
	(5833, 4695, 1756, 24453, 0, 0),
	(5834, 0, 16697, 0, 0, 0),
	(5835, 0, 16827, 0, 0, 0),
	(5836, 0, 16828, 0, 0, 0),
	(5837, 0, 16828, 0, 0, 0),
	(5838, 0, 16828, 0, 0, 0),
	(5839, 0, 16828, 0, 0, 0),
	(5840, 0, 16829, 0, 0, 0),
	(5841, 0, 16829, 0, 0, 0),
	(5842, 0, 16829, 0, 0, 0),
	(5843, 0, 16829, 0, 0, 0),
	(5844, 0, 16830, 0, 0, 0),
	(5845, 0, 16832, 0, 0, 0),
	(5846, 0, 16832, 0, 0, 0),
	(5847, 0, 17255, 0, 0, 0),
	(5848, 0, 17256, 0, 0, 0),
	(5849, 0, 17257, 0, 0, 0),
	(5851, 0, 16831, 0, 0, 0),
	(5852, 0, 17258, 0, 0, 0),
	(5853, 0, 17258, 0, 0, 0),
	(5854, 0, 17259, 0, 0, 0),
	(5855, 0, 17259, 0, 0, 0),
	(5856, 0, 17256, 0, 0, 0),
	(5857, 0, 17260, 0, 0, 0),
	(5858, 0, 17259, 0, 0, 0),
	(5859, 0, 16827, 0, 0, 0),
	(5860, 0, 16828, 0, 0, 0),
	(5861, 0, 3010, 0, 0, 0),
	(5861, 4375, 3010, 23148, 0, 0),
	(5862, 0, 3010, 0, 0, 0),
	(5862, 4375, 3010, 23148, 0, 0),
	(5863, 0, 3009, 0, 0, 0),
	(5863, 4375, 3009, 23148, 0, 0),
	(5863, 4695, 3009, 23148, 24579, 0),
	(5864, 0, 16827, 0, 0, 0),
	(5865, 0, 16828, 0, 0, 0),
	(5865, 4695, 16828, 24640, 0, 0),
	(5866, 0, 16830, 0, 0, 0),
	(5866, 4695, 16830, 24583, 0, 0),
	(5867, 0, 16830, 0, 0, 0),
	(5867, 4695, 16830, 24583, 0, 0),
	(5868, 0, 16831, 19493, 0, 0),
	(5868, 5086, 16831, 24583, 0, 0),
	(5869, 0, 16832, 0, 0, 0),
	(5869, 4695, 16832, 24586, 0, 0),
	(5870, 0, 16832, 0, 0, 0),
	(5870, 4695, 16832, 24586, 0, 0),
	(5871, 0, 3010, 0, 0, 0),
	(5871, 4695, 3010, 24586, 0, 0),
	(5872, 0, 3010, 0, 0, 0),
	(5872, 4695, 3010, 24586, 0, 0),
	(5873, 0, 16831, 0, 0, 0),
	(5874, 0, 3010, 0, 0, 0),
	(5874, 4695, 3010, 24586, 0, 0),
	(5875, 0, 16827, 0, 0, 0),
	(5876, 0, 16828, 0, 0, 0),
	(5876, 4695, 16828, 24640, 0, 0),
	(5877, 0, 16831, 0, 0, 0),
	(5877, 4695, 16831, 24583, 0, 0),
	(5878, 0, 3010, 0, 0, 0),
	(5878, 4695, 3010, 24586, 0, 0),
	(5879, 0, 17253, 0, 0, 0),
	(5880, 0, 17253, 0, 0, 0),
	(5881, 0, 17253, 0, 0, 0),
	(5882, 0, 17253, 0, 0, 0),
	(5883, 0, 17255, 0, 0, 0),
	(5884, 0, 17255, 0, 0, 0),
	(5885, 0, 17255, 0, 0, 0),
	(5886, 0, 17255, 0, 0, 0),
	(5887, 0, 17255, 0, 0, 0),
	(5888, 0, 17255, 0, 0, 0),
	(5889, 0, 17256, 0, 0, 0),
	(5890, 0, 17256, 0, 0, 0),
	(5891, 0, 17256, 0, 0, 0),
	(5892, 0, 17256, 0, 0, 0),
	(5893, 0, 17256, 0, 0, 0),
	(5894, 0, 17256, 0, 0, 0),
	(5895, 0, 17257, 0, 0, 0),
	(5896, 0, 17257, 0, 0, 0),
	(5897, 0, 17257, 0, 0, 0),
	(5898, 0, 17258, 0, 0, 0),
	(5899, 0, 17258, 0, 0, 0),
	(5900, 0, 17258, 0, 0, 0),
	(5901, 0, 17258, 0, 0, 0),
	(5902, 0, 17258, 0, 0, 0),
	(5903, 0, 17259, 0, 0, 0),
	(5904, 0, 17259, 0, 0, 0),
	(5905, 0, 17259, 0, 0, 0),
	(5906, 0, 17260, 0, 0, 0),
	(5907, 0, 17260, 0, 0, 0),
	(5908, 0, 17255, 0, 0, 0),
	(5909, 0, 17256, 0, 0, 0),
	(5910, 0, 17257, 0, 0, 0),
	(5911, 0, 17257, 0, 0, 0),
	(5912, 0, 17260, 0, 0, 0),
	(5913, 0, 17253, 0, 0, 0),
	(5914, 0, 17255, 0, 0, 0),
	(5915, 0, 1742, 0, 0, 0),
	(5916, 0, 1742, 0, 0, 0),
	(5917, 0, 1742, 0, 0, 0),
	(5918, 0, 1753, 0, 0, 0),
	(5919, 0, 1753, 0, 0, 0),
	(5921, 0, 1742, 0, 0, 0),
	(5922, 0, 1755, 0, 0, 0),
	(5922, 4375, 1755, 23099, 0, 0),
	(5923, 0, 17255, 0, 0, 0),
	(5924, 0, 17257, 0, 0, 0),
	(5924, 5086, 17257, 26064, 0, 0),
	(5925, 0, 17258, 0, 0, 0),
	(5926, 0, 17258, 0, 0, 0),
	(5927, 0, 17259, 0, 0, 0),
	(5928, 0, 17260, 0, 0, 0),
	(5929, 0, 17256, 0, 0, 0),
	(5929, 5086, 17256, 26064, 0, 0),
	(5930, 0, 17257, 0, 0, 0),
	(5930, 5086, 17257, 26064, 0, 0),
	(5931, 0, 17260, 0, 0, 0),
	(5931, 5086, 17260, 26064, 0, 0),
	(5932, 0, 17257, 0, 0, 0),
	(5932, 5086, 17257, 26064, 0, 0),
	(5933, 0, 17260, 0, 0, 0),
	(5933, 5086, 17260, 26064, 0, 0),
	(5934, 0, 17256, 0, 0, 0),
	(5934, 5086, 17256, 26064, 0, 0),
	(5935, 0, 17253, 0, 0, 0),
	(5936, 0, 17253, 0, 0, 0),
	(5937, 0, 17253, 0, 0, 0),
	(5938, 0, 17253, 0, 0, 0),
	(5939, 0, 17253, 0, 0, 0),
	(5940, 0, 17253, 0, 0, 0),
	(5941, 0, 17255, 0, 0, 0),
	(5942, 0, 17255, 0, 0, 0),
	(5942, 4695, 17255, 24604, 0, 0),
	(5943, 0, 17255, 0, 0, 0),
	(5944, 0, 17255, 0, 0, 0),
	(5945, 0, 17255, 0, 0, 0),
	(5945, 4695, 17255, 24604, 0, 0),
	(5946, 0, 17255, 0, 0, 0),
	(5946, 4695, 17255, 24604, 0, 0),
	(5947, 0, 17256, 0, 0, 0),
	(5948, 0, 17256, 0, 0, 0),
	(5949, 0, 17257, 0, 0, 0),
	(5950, 0, 17257, 0, 0, 0),
	(5950, 4695, 17257, 24605, 0, 0),
	(5951, 0, 17257, 0, 0, 0),
	(5951, 4695, 17257, 24605, 0, 0),
	(5952, 0, 17258, 0, 0, 0),
	(5952, 4375, 17258, 23099, 0, 0),
	(5953, 0, 17259, 0, 0, 0),
	(5953, 4375, 17259, 23109, 0, 0),
	(5953, 4695, 17259, 23109, 24603, 0),
	(5954, 0, 17259, 0, 0, 0),
	(5954, 4695, 17259, 24603, 0, 0),
	(5955, 0, 17260, 0, 0, 0),
	(5956, 0, 17260, 0, 0, 0),
	(5957, 0, 17259, 0, 0, 0),
	(5958, 0, 17260, 0, 0, 0),
	(5958, 4375, 17260, 23110, 0, 0),
	(5959, 0, 17255, 0, 0, 0),
	(5960, 0, 17256, 0, 0, 0),
	(5961, 0, 17259, 0, 0, 0),
	(5962, 0, 17259, 0, 0, 0),
	(5962, 4375, 17259, 23109, 0, 0),
	(5963, 0, 17259, 0, 0, 0),
	(5963, 4695, 17259, 24603, 0, 0),
	(7344, 0, 17261, 0, 0, 0),
	(7344, 4375, 17261, 23110, 0, 0),
	(7344, 4695, 17261, 23110, 24597, 0),
	(8261, 4375, 23109, 0, 0, 0),
	(8261, 5086, 26201, 0, 0, 0),
	(8262, 4375, 23110, 0, 0, 0),
	(8262, 5086, 23110, 26201, 0, 0),
	(8263, 4375, 23099, 0, 0, 0),
	(8264, 4375, 23099, 0, 0, 0),
	(8265, 4375, 23099, 0, 0, 0),
	(8266, 4375, 23109, 0, 0, 0),
	(8266, 4695, 23109, 24452, 0, 0),
	(8267, 4375, 23109, 0, 0, 0),
	(8267, 4695, 23109, 24452, 0, 0),
	(8268, 4375, 23110, 0, 0, 0),
	(8270, 4375, 23110, 0, 0, 0),
	(8270, 4695, 23110, 24453, 0, 0),
	(8271, 4375, 23110, 0, 0, 0),
	(8272, 4375, 23110, 0, 0, 0),
	(8272, 4695, 23110, 24453, 0, 0),
	(8274, 4375, 23110, 0, 0, 0),
	(8275, 4375, 23099, 0, 0, 0),
	(8276, 4375, 23110, 0, 0, 0),
	(8278, 4375, 23099, 0, 0, 0),
	(8279, 4375, 23109, 0, 0, 0),
	(8280, 4375, 23099, 0, 0, 0),
	(8281, 4375, 23099, 0, 0, 0),
	(8282, 4375, 23099, 0, 0, 0),
	(8283, 4375, 23109, 0, 0, 0),
	(8284, 4375, 23109, 0, 0, 0),
	(8285, 4375, 23109, 0, 0, 0),
	(8286, 4375, 23110, 0, 0, 0),
	(8287, 4375, 23099, 0, 0, 0),
	(8288, 4375, 23109, 0, 0, 0),
	(8289, 4375, 23110, 0, 0, 0),
	(8292, 4375, 23099, 0, 0, 0),
	(8293, 4375, 23099, 0, 0, 0),
	(8294, 4375, 23099, 0, 0, 0),
	(8294, 4695, 23099, 24605, 0, 0),
	(8295, 4375, 23109, 0, 0, 0),
	(8296, 4375, 23109, 0, 0, 0),
	(8297, 4375, 23110, 0, 0, 0),
	(8298, 4375, 23110, 0, 0, 0),
	(8299, 4375, 23099, 0, 0, 0),
	(8300, 4375, 23145, 0, 0, 0),
	(8301, 4375, 23148, 0, 0, 0),
	(8302, 4375, 23148, 0, 0, 0),
	(8303, 4375, 23145, 0, 0, 0),
	(8304, 4375, 23145, 0, 0, 0),
	(8305, 4375, 23145, 0, 0, 0),
	(8306, 4375, 23145, 0, 0, 0),
	(8307, 4375, 23147, 0, 0, 0),
	(8308, 4375, 23147, 0, 0, 0),
	(8309, 4375, 23147, 0, 0, 0),
	(8310, 4375, 23147, 0, 0, 0),
	(8311, 4375, 23148, 0, 0, 0),
	(8311, 4695, 23148, 24578, 0, 0),
	(8312, 4375, 23148, 0, 0, 0),
	(8313, 4375, 23148, 0, 0, 0),
	(8314, 4375, 23148, 0, 0, 0),
	(8315, 4375, 23147, 0, 0, 0),
	(8315, 4695, 23147, 24578, 0, 0),
	(8316, 4375, 23148, 0, 0, 0),
	(8317, 4375, 23145, 0, 0, 0),
	(8318, 4375, 23145, 0, 0, 0),
	(8318, 4878, 23145, 25010, 0, 0),
	(8319, 4375, 23145, 0, 0, 0),
	(8319, 4878, 23145, 25010, 0, 0),
	(8320, 4375, 23147, 0, 0, 0),
	(8320, 4878, 23147, 25010, 0, 0),
	(8321, 4375, 23147, 0, 0, 0),
	(8321, 4878, 23147, 25010, 0, 0),
	(8322, 4375, 23147, 0, 0, 0),
	(8322, 4878, 23147, 25011, 0, 0),
	(8323, 4375, 23148, 0, 0, 0),
	(8323, 4878, 23148, 25011, 0, 0),
	(8832, 4695, 24587, 0, 0, 0),
	(8833, 4695, 24587, 0, 0, 0),
	(8834, 4695, 24423, 0, 0, 0),
	(8836, 4695, 24577, 0, 0, 0),
	(8837, 4695, 24577, 0, 0, 0),
	(8841, 4695, 24597, 0, 0, 0),
	(8847, 4695, 24603, 0, 0, 0),
	(8848, 4695, 24640, 0, 0, 0),
	(8849, 4695, 24640, 0, 0, 0),
	(8850, 4695, 24640, 0, 0, 0),
	(8851, 4695, 24583, 0, 0, 0),
	(8852, 4695, 24583, 0, 0, 0),
	(8853, 4695, 24583, 0, 0, 0),
	(8854, 4695, 24586, 0, 0, 0),
	(8855, 4695, 24586, 0, 0, 0),
	(8856, 4695, 24586, 0, 0, 0),
	(8857, 4695, 24586, 0, 0, 0),
	(8858, 4695, 24586, 0, 0, 0),
	(8859, 4695, 24586, 0, 0, 0),
	(8860, 4695, 24586, 0, 0, 0),
	(8861, 4695, 24587, 0, 0, 0),
	(8864, 4695, 24605, 0, 0, 0),
	(8865, 4695, 24605, 0, 0, 0),
	(8866, 4695, 24604, 0, 0, 0),
	(8880, 4695, 24450, 0, 0, 0),
	(8881, 4695, 24450, 0, 0, 0),
	(8887, 4375, 23109, 16832, 0, 0),
	(8898, 4878, 25008, 0, 0, 0),
	(8899, 4878, 25008, 0, 0, 0),
	(8900, 4878, 25008, 0, 0, 0),
	(8901, 4878, 25008, 0, 0, 0),
	(8902, 4878, 25008, 0, 0, 0),
	(8903, 4878, 25008, 0, 0, 0),
	(8904, 4878, 25008, 0, 0, 0),
	(8905, 4878, 25009, 0, 0, 0),
	(8906, 4878, 25009, 0, 0, 0),
	(8907, 4878, 25009, 0, 0, 0),
	(8908, 4878, 25009, 0, 0, 0),
	(8909, 4878, 25011, 0, 0, 0),
	(8910, 4878, 25011, 0, 0, 0),
	(9001, 5086, 25012, 0, 0, 0),
	(9050, 5086, 26188, 0, 0, 0),
	(9051, 5086, 17260, 0, 0, 0),
	(9053, 5086, 26188, 0, 0, 0),
	(9054, 5086, 26187, 0, 0, 0),
	(9055, 5086, 26187, 0, 0, 0),
	(9057, 5086, 26090, 0, 0, 0),
	(9059, 5086, 26090, 0, 0, 0),
	(9062, 5086, 26064, 0, 0, 0),
	(9063, 5086, 26178, 0, 0, 0),
	(9065, 5086, 7371, 0, 0, 0),
	(9066, 5086, 7371, 0, 0, 0),
	(9067, 5086, 7371, 0, 0, 0),
	(9068, 5086, 7371, 0, 0, 0),
	(9069, 5086, 7371, 0, 0, 0),
	(9070, 5086, 7371, 0, 0, 0),
	(9071, 5086, 7371, 0, 0, 0),
	(9072, 5086, 7371, 0, 0, 0),
	(9073, 5086, 7371, 0, 0, 0),
	(9074, 5086, 7371, 0, 0, 0),
	(9075, 5086, 7371, 0, 0, 0),
	(9076, 5086, 7371, 0, 0, 0),
	(9077, 5086, 7371, 0, 0, 0),
	(9078, 5086, 7371, 0, 0, 0),
	(9079, 5086, 7371, 0, 0, 0),
	(9080, 5086, 7371, 0, 0, 0),
	(9081, 5086, 7371, 0, 0, 0),
	(9082, 5086, 7371, 0, 0, 0),
	(9083, 5086, 7371, 0, 0, 0),
	(9084, 5086, 26177, 0, 0, 0),
	(9085, 5086, 26177, 0, 0, 0),
	(9086, 5086, 26177, 0, 0, 0),
	(9087, 5086, 26177, 0, 0, 0),
	(9088, 5086, 26177, 0, 0, 0),
	(9089, 5086, 26178, 0, 0, 0),
	(9090, 5086, 26178, 0, 0, 0),
	(9091, 5086, 26178, 0, 0, 0),
	(9161, 5302, 27685, 0, 0, 0),
	(9477, 5464, 16829, 0, 0, 0);
/*!40000 ALTER TABLE `pet_spell_data` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;