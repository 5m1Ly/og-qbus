-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versie:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van rphub wordt geschreven
CREATE DATABASE IF NOT EXISTS `rphub` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rphub`;

-- Structuur van  tabel rphub.apartments wordt geschreven
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.apartments: ~6 rows (ongeveer)
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(1, 'apartment17013', 'apartment1', 'South Rockford Drive 7013', 'MRV95429'),
	(2, 'apartment22368', 'apartment2', 'Morningwood Blvd 2368', 'TBD28995'),
	(3, 'apartment34954', 'apartment3', 'Integrity Way 4954', 'ZOB09883'),
	(4, 'apartment5929', 'apartment5', 'Fantastic Plaza 929', 'OBX71816'),
	(5, 'apartment28721', 'apartment2', 'Morningwood Blvd 8721', 'VHS65886'),
	(6, 'apartment5470', 'apartment5', 'Fantastic Plaza 470', 'MRH23876');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Structuur van  tabel rphub.bans wordt geschreven
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `steam` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.bans: ~13 rows (ongeveer)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
INSERT INTO `bans` (`id`, `name`, `steam`, `license`, `discord`, `ip`, `reason`, `expire`) VALUES
	(1, 'fiets', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Je kunt je blijkbaar niet gedragen', 2147483647),
	(3, 'tim', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'RDM', 2147483647),
	(5, 'bartieman', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Helaas', 2147483647),
	(7, 'floes', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'FailRP', 1576410602),
	(8, 'JoZo', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'r9k', 2147483647),
	(10, 'Jakodii', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Joejoe', 2147483647),
	(11, 'Liggi', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Nice Try. ', 2147483647),
	(12, 'Duyvis', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Meerdere mensen neersteken zonder reden.', 2147483647),
	(13, 'Cola Cinema', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Bug abuse', 2147483647),
	(14, 'aspiire', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Bug abuse', 2147483647),
	(15, 'Giorgos', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Ik dacht dat we duidelijk waren gisterenavond. Ste', 2147483647),
	(16, 'Lana Drahrepus', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'RP ontwijken en OOC gaan. We verwachten hier echt ', 1576526835),
	(17, 'Twitch Edjeking', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Je blijft gedrag vertonen dat niet past bij het ni', 1576528808);
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Structuur van  tabel rphub.bills wordt geschreven
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.bills: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;

-- Structuur van  tabel rphub.gangs wordt geschreven
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `grades` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.gangs: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;

-- Structuur van  tabel rphub.gloveboxitems wordt geschreven
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.gloveboxitems: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `gloveboxitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gloveboxitems` ENABLE KEYS */;

-- Structuur van  tabel rphub.gloveboxitemsnew wordt geschreven
CREATE TABLE IF NOT EXISTS `gloveboxitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.gloveboxitemsnew: ~1 rows (ongeveer)
/*!40000 ALTER TABLE `gloveboxitemsnew` DISABLE KEYS */;
INSERT INTO `gloveboxitemsnew` (`id`, `plate`, `items`) VALUES
	(1, '6LJ521YR', '[]');
/*!40000 ALTER TABLE `gloveboxitemsnew` ENABLE KEYS */;

-- Structuur van  tabel rphub.houselocations wordt geschreven
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `coords` text NOT NULL,
  `owned` tinyint(2) NOT NULL,
  `price` int(11) NOT NULL,
  `tier` tinyint(2) NOT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.houselocations: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;

-- Structuur van  tabel rphub.house_plants wordt geschreven
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.house_plants: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;

-- Structuur van  tabel rphub.jobs wordt geschreven
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `grades` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.jobs: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Structuur van  tabel rphub.occasion_vehicles wordt geschreven
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.occasion_vehicles: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `occasion_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `occasion_vehicles` ENABLE KEYS */;

-- Structuur van  tabel rphub.permissions wordt geschreven
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.permissions: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `steam`, `license`, `permission`) VALUES
	(40, '[729] Alixd91', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'god'),
	(42, 'DRMTBer', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'god'),
	(43, 'Yarno', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'god'),
	(44, 'Sjakie_headshot', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'admin'),
	(45, 'sigillum_013', 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'god');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Structuur van  tabel rphub.phone_invoices wordt geschreven
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `citizenid` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.phone_invoices: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;

-- Structuur van  tabel rphub.phone_messages wordt geschreven
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.phone_messages: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
INSERT INTO `phone_messages` (`id`, `citizenid`, `number`, `messages`) VALUES
	(1, 'OBX71816', '0697119140', '{"7-5-2020":[{"type":"message","data":[],"sender":"MRV95429","message":"test","time":"14:14"},{"type":"message","data":[],"sender":"OBX71816","message":"yoo","time":"14:14"},{"type":"message","data":[],"sender":"MRV95429","message":"Ewa nigger","time":"14:14"},{"type":"message","data":[],"sender":"OBX71816","message":"ewaa","time":"14:14"}]}'),
	(2, 'MRV95429', '0691050889', '{"7-5-2020":[{"type":"message","data":[],"sender":"MRV95429","message":"test","time":"14:14"},{"type":"message","data":[],"sender":"OBX71816","message":"yoo","time":"14:14"},{"type":"message","data":[],"sender":"MRV95429","message":"Ewa nigger","time":"14:14"},{"type":"message","data":[],"sender":"OBX71816","message":"ewaa","time":"14:14"}]}');
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Structuur van  tabel rphub.phone_tweets wordt geschreven
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.phone_tweets: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;

-- Structuur van  tabel rphub.playerammo wordt geschreven
CREATE TABLE IF NOT EXISTS `playerammo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `ammo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.playerammo: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `playerammo` DISABLE KEYS */;
INSERT INTO `playerammo` (`id`, `citizenid`, `ammo`) VALUES
	(1, 'MRV95429', '{"AMMO_PISTOL":41,"AMMO_SMG":54}'),
	(2, 'TBD28995', '[]'),
	(3, 'ZOB09883', '{"AMMO_PISTOL":115,"AMMO_SMG":60}'),
	(4, 'OBX71816', '[]'),
	(5, 'MRH23876', '[]');
/*!40000 ALTER TABLE `playerammo` ENABLE KEYS */;

-- Structuur van  tabel rphub.playeritems wordt geschreven
CREATE TABLE IF NOT EXISTS `playeritems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.playeritems: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `playeritems` DISABLE KEYS */;
/*!40000 ALTER TABLE `playeritems` ENABLE KEYS */;

-- Structuur van  tabel rphub.players wordt geschreven
CREATE TABLE IF NOT EXISTS `players` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.players: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`#`, `citizenid`, `cid`, `steam`, `license`, `name`, `money`, `charinfo`, `job`, `position`, `metadata`, `inventory`) VALUES
	(1, 'MRV95429', 1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Yarno', '{"cash":0,"crypto":0,"bank":13480.0}', '{"birthdate":"2005-01-15","firstname":"yarno","lastname":"voeten","gender":0,"cid":"1","account":"NL02QBUS5208760454","nationality":"nl","backstory":"placeholder backstory","phone":"0697119140"}', '{"label":"Politie","onduty":true,"name":"police","payment":200}', '{"a":293.54998779297,"x":203.34474182129,"y":-785.35137939453,"z":31.553247451782}', '{"criminalrecord":{"hasRecord":true,"date":{"isdst":true,"sec":52,"min":1,"hour":16,"yday":156,"wday":5,"month":6,"year":2020,"day":4}},"injail":0,"dealerrep":0,"thirst":100,"jobrep":{"taxi":0,"tow":0,"trucker":0},"callsign":"13-03","tracker":true,"fingerprint":"BA988S62zKm6208","currentapartment":"apartment17013","isdead":false,"phone":{"settings":{"background":"bg-2","notifications":false}},"status":[],"bloodtype":"O+","armor":0,"licences":{"business":false,"driver":true},"hunger":100,"commandbinds":[],"jailitems":[],"fitbit":[],"craftingrep":0,"ishandcuffed":false,"inside":{"apartment":[]}}', '[{"info":{"gender":0,"birthdate":"2005-01-15","firstname":"yarno","nationality":"nl","lastname":"voeten","citizenid":"MRV95429"},"name":"id_card","slot":1,"type":"item","amount":1},{"info":{"type":"A1-A2-A | AM-B | C1-C-CE","birthdate":"2005-01-15","lastname":"voeten","firstname":"yarno"},"name":"driver_license","slot":2,"type":"item","amount":1},{"info":[],"name":"phone","slot":3,"type":"item","amount":1},{"info":{"citizenid":"MRV95429","id":132354,"lastname":"voeten","firstname":"yarno"},"name":"lawyerpass","slot":4,"type":"item","amount":1},{"info":{"serie":"58ooV4Ly807csKm"},"name":"weapon_pistol","slot":5,"type":"weapon","amount":1},{"info":[],"name":"pistol_ammo","slot":6,"type":"item","amount":79},{"info":[],"name":"painkillers","slot":7,"type":"item","amount":20},{"info":[],"name":"bandage","slot":8,"type":"item","amount":19},{"info":[],"name":"radio","slot":9,"type":"item","amount":19},{"info":[],"name":"lockpick","slot":10,"type":"item","amount":9},{"info":[],"name":"empty_evidence_bag","slot":11,"type":"item","amount":1},{"info":[],"name":"tunerlaptop","slot":12,"type":"item","amount":1},{"info":[],"name":"tunerlaptop","slot":13,"type":"item","amount":1},{"info":[],"name":"tunerlaptop","slot":14,"type":"item","amount":1},{"info":[],"name":"radio","slot":15,"type":"item","amount":1},{"info":[],"name":"smg_ammo","slot":16,"type":"item","amount":56},{"info":{"serie":"70Axq8Sg291mfMB"},"name":"weapon_smg","slot":17,"type":"weapon","amount":1},{"info":[],"name":"twerks_candy","slot":18,"type":"item","amount":10},{"info":[],"name":"weapon_hatchet","slot":19,"type":"weapon","amount":1}]'),
	(2, 'TBD28995', 1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'DRMTBer', '{"bank":5920,"crypto":0,"cash":100500.0}', '{"account":"NL02QBUS9928971125","gender":0,"backstory":"placeholder backstory","nationality":"Nederlands","cid":"1","lastname":"Van Rechteren","phone":"0651453992","birthdate":"1998-05-05","firstname":"Daen"}', '{"name":"police","payment":200,"label":"Politie","onduty":true}', '{"a":341.73779296875,"z":102.0778503418,"y":203.04727172852,"x":569.68853759766}', '{"thirst":92.4,"injail":0,"inside":{"apartment":[]},"tracker":false,"phone":{"settings":{"notifications":false,"background":"bg-1"}},"craftingrep":0,"callsign":"13-04","currentapartment":"apartment22368","isdead":false,"jobrep":{"trucker":0,"taxi":0,"tow":0},"hunger":91.6,"fingerprint":"lZ700x88SgO9176","fitbit":[],"criminalrecord":{"hasRecord":false},"ishandcuffed":false,"licences":{"business":false,"driver":true},"status":[],"dealerrep":0,"bloodtype":"B-","armor":0,"commandbinds":[],"jailitems":[]}', '[{"amount":1,"name":"phone","slot":1,"info":[],"type":"item"},{"amount":1,"name":"driver_license","slot":2,"info":{"firstname":"Daen","birthdate":"1998-05-05","lastname":"Van Rechteren","type":"A1-A2-A | AM-B | C1-C-CE"},"type":"item"},{"amount":1,"name":"id_card","slot":3,"info":{"lastname":"Van Rechteren","gender":0,"citizenid":"TBD28995","nationality":"Nederlands","birthdate":"1998-05-05","firstname":"Daen"},"type":"item"},{"amount":1,"name":"lockpick","slot":4,"info":[],"type":"item"},{"amount":8,"name":"bandage","slot":5,"info":[],"type":"item"},{"amount":8,"name":"painkillers","slot":6,"info":[],"type":"item"},{"amount":1,"name":"radio","slot":7,"info":[],"type":"item"}]'),
	(3, 'ZOB09883', 1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', '[729] Alixd91', '{"bank":6210,"cash":500,"crypto":0}', '{"phone":"0665980360","firstname":"Jan","account":"NL03QBUS9935284676","backstory":"placeholder backstory","cid":"1","birthdate":"2005-06-21","nationality":"nederland","gender":0,"lastname":"Steeg"}', '{"name":"police","payment":200,"onduty":true,"label":"Politie"}', '{"z":28.901805877686,"y":-893.85424804688,"x":-211.01309204102,"a":250.81408691406}', '{"fitbit":[],"ishandcuffed":false,"craftingrep":0,"commandbinds":[],"bloodtype":"AB+","jailitems":[],"phone":[],"armor":0,"dealerrep":0,"hunger":91.6,"licences":{"business":false,"driver":true},"currentapartment":"apartment34954","criminalrecord":{"hasRecord":true,"date":{"month":6,"day":3,"isdst":true,"yday":155,"year":2020,"min":27,"hour":9,"sec":49,"wday":4}},"fingerprint":"MB822Q53WvD3065","injail":0,"tracker":true,"jobrep":{"tow":0,"taxi":0,"trucker":0},"inside":{"apartment":[]},"thirst":92.4,"status":[],"callsign":"12-15","isdead":false}', '[{"amount":1,"info":{"lastname":"Steeg","type":"A1-A2-A | AM-B | C1-C-CE","firstname":"Jan","birthdate":"2005-06-21"},"type":"item","slot":1,"name":"driver_license"},{"amount":1,"info":{"serie":"15RYk2Cb310FKGS"},"type":"weapon","slot":2,"name":"weapon_stungun"},{"amount":1,"info":{"attachments":[{"component":"COMPONENT_AT_AR_FLSH","label":"Flashlight"},{"component":"COMPONENT_AT_AR_SUPP_02","label":"Supressor"},{"component":"COMPONENT_AT_AR_AFGRIP","label":"Grip"},{"component":"COMPONENT_AT_SCOPE_MACRO","label":"1x Scope"},{"component":"COMPONENT_ASSAULTRIFLE_CLIP_02","label":"Extended Clip"}],"serie":"K10SH990HJ9"},"type":"weapon","slot":3,"name":"weapon_assaultrifle"},{"amount":1,"info":{"serie":"86YIG4tO969RbNq"},"type":"weapon","slot":4,"name":"weapon_pistol_mk2"},{"amount":1,"info":{"serie":"05tdd7jF509Dzlz"},"type":"weapon","slot":5,"name":"weapon_rpg"},{"amount":1,"info":{"firstname":"Jan","birthdate":"2005-06-21","gender":0,"nationality":"nederland","citizenid":"ZOB09883","lastname":"Steeg"},"type":"item","slot":6,"name":"id_card"},{"amount":1,"info":[],"type":"item","slot":7,"name":"phone"},{"amount":3,"info":[],"type":"item","slot":8,"name":"lockpick"},{"amount":1,"info":{"serie":"31cns7tn785aZGz"},"type":"weapon","slot":9,"name":"weapon_pistol"},{"amount":1,"info":{"serie":"85DMr9ud429yIXl"},"type":"weapon","slot":10,"name":"weapon_pistol"},{"amount":1,"info":{"serie":"22wdR9fQ980WjdL"},"type":"weapon","slot":11,"name":"weapon_revolver"},{"amount":12,"info":[],"type":"item","slot":12,"name":"electronickit"},{"amount":10,"info":[],"type":"item","slot":13,"name":"gatecrack"},{"amount":1,"info":{"serie":"58HMj1wb017fzam"},"type":"weapon","slot":15,"name":"weapon_revolver"},{"amount":1,"info":{"serie":"47xAl0TS494nZJk"},"type":"weapon","slot":16,"name":"weapon_vintagepistol"},{"amount":1,"info":{"serie":"73xTn9of003kzJg"},"type":"weapon","slot":17,"name":"weapon_vintagepistol"},{"amount":1,"info":{"attachments":[{"component":"COMPONENT_AT_AR_SUPP_02","label":"Supressor"}],"serie":"K73SH882HJ5"},"type":"weapon","slot":18,"name":"weapon_pistol50"},{"amount":1,"info":[],"type":"item","slot":19,"name":"smg_ammo"},{"amount":1,"info":[],"type":"item","slot":20,"name":"tunerlaptop"}]'),
	(4, 'OBX71816', 1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Sjakie_headshot', '{"cash":500,"crypto":0,"bank":5410}', '{"birthdate":"1960-12-06","firstname":"Bill","lastname":"Gates","backstory":"placeholder backstory","cid":"1","account":"NL04INGB6321209441","nationality":"The Netherlands","phone":"0691050889","gender":0}', '{"label":"Politie","onduty":true,"name":"police","payment":200}', '{"a":359.71380615234,"x":1314.4189453125,"y":4311.9887695313,"z":40.236701965332}', '{"criminalrecord":{"hasRecord":false},"injail":0,"dealerrep":0,"thirst":88.6,"jobrep":{"taxi":0,"tow":0,"trucker":0},"commandbinds":[],"tracker":false,"fingerprint":"DF830n01AyR9533","currentapartment":"apartment5929","armor":0,"phone":[],"status":[],"bloodtype":"O-","inside":{"apartment":[]},"licences":{"driver":true,"business":false},"callsign":"NO CALLSIGN","craftingrep":0,"jailitems":[],"fitbit":[],"hunger":87.4,"ishandcuffed":false,"isdead":true}', '[{"info":[],"name":"phone","slot":1,"type":"item","amount":1},{"info":{"type":"A1-A2-A | AM-B | C1-C-CE","birthdate":"1960-12-06","lastname":"Gates","firstname":"Bill"},"name":"driver_license","slot":2,"type":"item","amount":1},{"info":{"gender":0,"citizenid":"OBX71816","firstname":"Bill","nationality":"The Netherlands","lastname":"Gates","birthdate":"1960-12-06"},"name":"id_card","slot":3,"type":"item","amount":1}]'),
	(6, 'MRH23876', 1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'sigillum_013', '{"cash":500,"crypto":0,"bank":5210}', '{"birthdate":"1997-01-24","firstname":"Reggi","lastname":"jansen","backstory":"placeholder backstory","cid":"1","account":"NL09INGB8214191436","nationality":"USA","phone":"0620648871","gender":0}', '{"label":"Politie","onduty":true,"name":"police","payment":200}', '{"y":20.723079681396,"x":-616.14599609375,"a":266.9528503418,"z":41.245624542236}', '{"criminalrecord":{"hasRecord":false},"injail":0,"dealerrep":0,"thirst":96.2,"jobrep":{"taxi":0,"tow":0,"trucker":0},"commandbinds":[],"tracker":false,"fingerprint":"YE219B44ieH0963","currentapartment":"apartment5470","armor":0,"phone":[],"status":[],"bloodtype":"AB-","inside":{"apartment":[]},"licences":{"driver":true,"business":false},"callsign":"NO CALLSIGN","craftingrep":0,"jailitems":[],"fitbit":[],"hunger":95.8,"ishandcuffed":false,"isdead":false}', '[{"info":[],"name":"phone","slot":1,"type":"item","amount":1},{"info":{"type":"A1-A2-A | AM-B | C1-C-CE","birthdate":"1997-01-24","lastname":"jansen","firstname":"Reggi"},"name":"driver_license","slot":2,"type":"item","amount":1},{"info":{"gender":0,"citizenid":"MRH23876","firstname":"Reggi","nationality":"USA","lastname":"jansen","birthdate":"1997-01-24"},"name":"id_card","slot":3,"type":"item","amount":1}]');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Structuur van  tabel rphub.playerskins wordt geschreven
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.playerskins: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(5, 'ZOB09883', '-1427838341', '{"pants":{"item":97,"texture":0,"defaultTexture":0,"defaultItem":0},"makeup":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"ageing":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"face":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"eyebrows":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"accessory":{"item":8,"texture":0,"defaultTexture":0,"defaultItem":0},"blush":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"bracelet":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"arms":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"hair":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"ear":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"bag":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"t-shirt":{"item":56,"texture":0,"defaultTexture":0,"defaultItem":1},"mask":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"decals":{"item":7,"texture":0,"defaultTexture":0,"defaultItem":0},"lipstick":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"vest":{"item":7,"texture":1,"defaultTexture":0,"defaultItem":0},"beard":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"shoes":{"item":24,"texture":0,"defaultTexture":0,"defaultItem":1},"hat":{"item":-1,"texture":-1,"defaultTexture":0,"defaultItem":-1},"glass":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"torso2":{"item":2,"texture":0,"defaultTexture":0,"defaultItem":0},"watch":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1}}', 1),
	(6, 'TBD28995', '1885233650', '{"makeup":{"item":-1,"defaultItem":-1,"texture":1,"defaultTexture":1},"pants":{"item":10,"defaultItem":0,"texture":0,"defaultTexture":0},"eyebrows":{"item":-1,"defaultItem":-1,"texture":1,"defaultTexture":1},"decals":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"bracelet":{"item":-1,"defaultItem":-1,"texture":0,"defaultTexture":0},"face":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"lipstick":{"item":-1,"defaultItem":-1,"texture":1,"defaultTexture":1},"bag":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"t-shirt":{"item":4,"defaultItem":1,"texture":0,"defaultTexture":0},"hat":{"item":-1,"defaultItem":-1,"texture":0,"defaultTexture":0},"watch":{"item":-1,"defaultItem":-1,"texture":0,"defaultTexture":0},"torso2":{"item":4,"defaultItem":0,"texture":0,"defaultTexture":0},"accessory":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"mask":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"arms":{"item":1,"defaultItem":0,"texture":0,"defaultTexture":0},"ear":{"item":-1,"defaultItem":-1,"texture":0,"defaultTexture":0},"blush":{"item":-1,"defaultItem":-1,"texture":1,"defaultTexture":1},"hair":{"item":2,"defaultItem":0,"texture":0,"defaultTexture":0},"ageing":{"item":-1,"defaultItem":-1,"texture":0,"defaultTexture":0},"glass":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"vest":{"item":0,"defaultItem":0,"texture":0,"defaultTexture":0},"beard":{"item":-1,"defaultItem":-1,"texture":1,"defaultTexture":1},"shoes":{"item":10,"defaultItem":1,"texture":0,"defaultTexture":0}}', 1),
	(9, 'MRV95429', '1885233650', '{"bracelet":{"texture":0,"item":-1,"defaultTexture":0,"defaultItem":-1},"decals":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"t-shirt":{"texture":0,"item":15,"defaultTexture":0,"defaultItem":1},"mask":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"ageing":{"texture":0,"item":-1,"defaultTexture":0,"defaultItem":-1},"hat":{"texture":0,"item":-1,"defaultTexture":0,"defaultItem":-1},"hair":{"texture":9,"item":3,"defaultTexture":0,"defaultItem":0},"bag":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"torso2":{"texture":3,"item":9,"defaultTexture":0,"defaultItem":0},"watch":{"texture":0,"item":-1,"defaultTexture":0,"defaultItem":-1},"makeup":{"texture":1,"item":-1,"defaultTexture":1,"defaultItem":-1},"blush":{"texture":1,"item":-1,"defaultTexture":1,"defaultItem":-1},"eyebrows":{"texture":1,"item":-1,"defaultTexture":1,"defaultItem":-1},"beard":{"texture":1,"item":-1,"defaultTexture":1,"defaultItem":-1},"lipstick":{"texture":1,"item":-1,"defaultTexture":1,"defaultItem":-1},"vest":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"face":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"ear":{"texture":0,"item":-1,"defaultTexture":0,"defaultItem":-1},"glass":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"pants":{"texture":2,"item":4,"defaultTexture":0,"defaultItem":0},"arms":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0},"shoes":{"texture":0,"item":36,"defaultTexture":0,"defaultItem":1},"accessory":{"texture":0,"item":0,"defaultTexture":0,"defaultItem":0}}', 1),
	(11, 'MRH23876', '1885233650', '{"lipstick":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"watch":{"defaultTexture":0,"defaultItem":-1,"item":19,"texture":1},"makeup":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1},"glass":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"bag":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"arms":{"defaultTexture":0,"defaultItem":0,"item":4,"texture":0},"torso2":{"defaultTexture":0,"defaultItem":0,"item":111,"texture":0},"t-shirt":{"defaultTexture":0,"defaultItem":1,"item":15,"texture":0},"face":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"vest":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"eyebrows":{"defaultTexture":1,"defaultItem":-1,"item":2,"texture":1},"hat":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"shoes":{"defaultTexture":0,"defaultItem":1,"item":8,"texture":0},"decals":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"hair":{"defaultTexture":0,"defaultItem":0,"item":4,"texture":0},"pants":{"defaultTexture":0,"defaultItem":0,"item":28,"texture":0},"ear":{"defaultTexture":0,"defaultItem":-1,"item":-1,"texture":0},"beard":{"defaultTexture":1,"defaultItem":-1,"item":5,"texture":1},"mask":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"bracelet":{"defaultTexture":0,"defaultItem":-1,"item":0,"texture":0},"accessory":{"defaultTexture":0,"defaultItem":0,"item":0,"texture":0},"ageing":{"defaultTexture":0,"defaultItem":-1,"item":0,"texture":0},"blush":{"defaultTexture":1,"defaultItem":-1,"item":-1,"texture":1}}', 1),
	(14, 'OBX71816', '1641152947', '{"face":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"vest":{"texture":0,"defaultItem":0,"item":7,"defaultTexture":0},"makeup":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"blush":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"hat":{"texture":-1,"defaultItem":-1,"item":-1,"defaultTexture":0},"shoes":{"texture":0,"defaultItem":1,"item":24,"defaultTexture":0},"pants":{"texture":0,"defaultItem":0,"item":97,"defaultTexture":0},"torso2":{"texture":0,"defaultItem":0,"item":2,"defaultTexture":0},"bracelet":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"decals":{"texture":0,"defaultItem":0,"item":7,"defaultTexture":0},"ear":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"glass":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"eyebrows":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"arms":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"hair":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"watch":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"accessory":{"texture":0,"defaultItem":0,"item":8,"defaultTexture":0},"t-shirt":{"texture":0,"defaultItem":1,"item":56,"defaultTexture":0},"bag":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"beard":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"mask":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"lipstick":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"ageing":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0}}', 1);
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_boats wordt geschreven
CREATE TABLE IF NOT EXISTS `player_boats` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_boats: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `player_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_boats` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_contacts wordt geschreven
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_contacts: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_houses wordt geschreven
CREATE TABLE IF NOT EXISTS `player_houses` (
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text NOT NULL,
  `stash` text NOT NULL,
  `outfit` text NOT NULL,
  `logout` text NOT NULL,
  PRIMARY KEY (`house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_houses: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_mails wordt geschreven
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_mails: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_outfits wordt geschreven
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_outfits: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
	(1, 'TBD28995', 'Appel', '1885233650', '{"makeup":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"beard":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"torso2":{"item":4,"defaultItem":0,"defaultTexture":0,"texture":0},"mask":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"shoes":{"item":10,"defaultItem":1,"defaultTexture":0,"texture":0},"bag":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ageing":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"ear":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"hair":{"item":2,"defaultItem":0,"defaultTexture":0,"texture":0},"glass":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"lipstick":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"arms":{"item":1,"defaultItem":0,"defaultTexture":0,"texture":0},"bracelet":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"accessory":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"face":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eyebrows":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"hat":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"vest":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"t-shirt":{"item":4,"defaultItem":1,"defaultTexture":0,"texture":0},"blush":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"pants":{"item":10,"defaultItem":0,"defaultTexture":0,"texture":0},"watch":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"decals":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0}}', 'outfit-1-8936'),
	(2, 'MRH23876', 'Nice', '1885233650', '{"t-shirt":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":15},"hat":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"pants":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":28},"decals":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"ageing":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":0},"eyebrows":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":2},"arms":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":4},"face":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"hair":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":4},"watch":{"texture":1,"defaultTexture":0,"defaultItem":-1,"item":19},"lipstick":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"blush":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"shoes":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":8},"ear":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"vest":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"bracelet":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":0},"accessory":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"mask":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"beard":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":5},"bag":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"makeup":{"texture":1,"defaultTexture":1,"defaultItem":-1,"item":-1},"torso2":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":111},"glass":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0}}', 'outfit-4-9317');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_vehicles wordt geschreven
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `steam` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_vehicles: ~3 rows (ongeveer)
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
INSERT INTO `player_vehicles` (`steam`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`) VALUES
	('SENSETIVE_DATA', 'MRV95429', 'vigero', '-825837129', '{}', '2MO284RR', NULL, NULL, 100, 1000, 1000, 0, 0),
	('SENSETIVE_DATA', 'MRV95429', 'bati', '-114291515', '{}', '5IR760JE', NULL, NULL, 100, 1000, 1000, 2, 0),
	('SENSETIVE_DATA', 'MRV95429', 'bati', '-114291515', '{}', '6LJ521YR', NULL, 'motelgarage', 100, 1000, 1000, 2, 0);
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;

-- Structuur van  tabel rphub.player_warns wordt geschreven
CREATE TABLE IF NOT EXISTS `player_warns` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.player_warns: ~1 rows (ongeveer)
/*!40000 ALTER TABLE `player_warns` DISABLE KEYS */;
INSERT INTO `player_warns` (`#`, `senderIdentifier`, `targetIdentifier`, `reason`, `warnId`) VALUES
	(1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'test', 'WARN-8916');
/*!40000 ALTER TABLE `player_warns` ENABLE KEYS */;

-- Structuur van  tabel rphub.queue wordt geschreven
CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel rphub.queue: ~4 rows (ongeveer)
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
INSERT INTO `queue` (`id`, `steam`, `license`, `name`, `priority`) VALUES
	(1, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 's0me1', 99),
	(2, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'swekmeister', 50),
	(3, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'Saints', 50),
	(4, 'SENSETIVE_DATA', 'SENSETIVE_DATA', 'ultimateorc', 50);
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;

-- Structuur van  tabel rphub.stashitems wordt geschreven
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.stashitems: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `stashitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `stashitems` ENABLE KEYS */;

-- Structuur van  tabel rphub.stashitemsnew wordt geschreven
CREATE TABLE IF NOT EXISTS `stashitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.stashitemsnew: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `stashitemsnew` DISABLE KEYS */;
INSERT INTO `stashitemsnew` (`id`, `stash`, `items`) VALUES
	(1, 'apartment17013', '[]'),
	(2, 'policestash_MRV95429', '[]'),
	(3, 'policeevidence', '[]'),
	(4, 'policeevidence3', '[]'),
	(5, 'policestash_OBX71816', '[]');
/*!40000 ALTER TABLE `stashitemsnew` ENABLE KEYS */;

-- Structuur van  tabel rphub.trunkitems wordt geschreven
CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.trunkitems: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `trunkitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitems` ENABLE KEYS */;

-- Structuur van  tabel rphub.trunkitemsnew wordt geschreven
CREATE TABLE IF NOT EXISTS `trunkitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.trunkitemsnew: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `trunkitemsnew` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitemsnew` ENABLE KEYS */;

-- Structuur van  tabel rphub.whitelist wordt geschreven
CREATE TABLE IF NOT EXISTS `whitelist` (
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`steam`),
  UNIQUE KEY `identifier` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel rphub.whitelist: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
