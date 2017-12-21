-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 21 dec 2017 om 10:29
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

CREATE TABLE `gamecategory` (
  `categoryID` int(5) NOT NULL,
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`categoryID`, `categoryName`) VALUES
(1, 'playstation'),
(2, 'xbox'),
(3, 'PC');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(11) NOT NULL,
  `gameTitle` varchar(100) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` varchar(10) NOT NULL,
  `gameImage` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `addtocart` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `gameImage`, `category_id`, `addtocart`) VALUES
(1, 'Fortnite', 'Attack, Defend and build your way out together out of the storm! fight against zombies and other creatures to defend your fort! Fortnite also has a Battle Royale gamemode, where you can teamup or fight all by yourself against a massive amount of other players to be the last person alive!\r\n', '59.95', 'fortnite.jpg', 1, ''),
(2, 'World of Warcraft', 'As with other MMORPGs, players control a character avatar within a game world in third- or first-person view, exploring the landscape, fighting various monsters, completing quests, and interacting with non-player characters (NPCs) or other players. Also similar to other MMORPGs, World of Warcraft requires the player to pay for a subscription by using a credit or debit card, using prepaid Blizzard game cards or using a WoW Token purchased in-game. Players without a subscription may use a trial account that lets the player character reach up to level 20 but has many features locked.', '49.95', 'wow.jpg', 1, ''),
(3, 'Halo 5', 'Halo 5: Guardians is a first-person shooter, with players experiencing most gameplay through the eyes of a playable character. The camera switches to a third-person view for some cinematics and gameplay sequences!', '59.95', 'halo5.jpg', 2, ''),
(4, 'GTA V', 'The game is played from either a third-person or first-person perspective and its world is navigated on foot or by vehicle. Players control the three lead protagonists throughout single-player and switch between them both during and outside missions. The story is centred on the heist sequences, and many missions involve shooting and driving gameplay.', '9.95', 'gta5.png', 3, ''),
(5, 'overwatch', 'In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world. This organization, known as Overwatch, ended the crisis and helped maintain peace for a generation, inspiring an era of exploration, innovation, and discovery. After many years, Overwatch\'s influence waned and it was eventually disbanded. Now in the wake of its dismantling, conflict is rising once again. Overwatch may be gone... but the world still needs heroes!', '69.95', 'overwatch.jpg', 1, ''),
(6, 'Rainbow Six Siege', 'Tom Clancy\'s Rainbow Six Siege is a first-person shooter game, in which players control an operator from the Rainbow team. Different operators have different nationalities, weapons, and gadgets.[1] The game features an asymmetrical structure whereby the teams are not always balanced in their ability choices.', '19.95', 'rainbow.jpg', 3, ''),
(7, 'Realm of the Mad God', 'Realm of the Mad God is a massively co-op action RPG that drops you into the thick of the fight in a world overwhelmed by monsters. The game features online co-op gameplay in a huge “live world”, thousands of enemies, real-time action combat, leveling, loot, equipment and magic. There are no downloads, installs or patches required. Load the game page, register, pick a class, and go!', '4.95', 'madgod.jpg', 1, ''),
(8, 'Battlefield 1', 'Similar to its predecessors, Battlefield 1 is a first-person shooter game that emphasizes teamwork. It is set in the period of World War I, and is inspired by historical events. Players can make use of World War I weapons, including bolt-action rifles, automatic and semi-automatic rifles, artillery, flamethrowers, and mustard gas to combat opponents!', '119.95', 'bf1.jpg', 3, ''),
(9, 'Black ops 3', 'Call of Duty: Black Ops III deploys players into a dark, twisted future where a new breed of Black Ops soldiers emerges and the lines are blurred between our own humanity and the technology we created to stay ahead, in a world where cutting-edge military robotics define warfare. With three unique game modes: Campaign, Multiplayer, and Zombies, providing fans with the deepest and most ambitious Call of Duty ever!', '59.95', 'blackops3.jpg', 3, ''),
(10, 'Rocket League', 'Rocket League is soccer and driving combined. For those who enjoy high-octane reckless driving and the world\'s most popular sport, Rocket League is for you. This cross-genre arena battler is the latest craze on Steam, PS4 and Xbox One. Fun for all players and abilities, the game offers both a casual and competitive atmosphere, as well as a ton of laughs!', '19.95', 'rocketleague.jpg', 1, ''),
(11, 'Titanfall 2', 'Similar to its predecessor, Titanfall 2 is a first-person shooter game in which players can control both a pilot and their Titans – mecha-style exoskeletons. The pilot has an arsenal of abilities which enhance their efficiency during combat. These abilities include cloaking, zip-lining, and parkour – such as double-jumping and wall-running – with the aid of a jump kit.', '69.95', 'titanfall2.jpg', 3, ''),
(12, 'Sims 4', 'The Sims 4 is the fourth installment in The Sims franchise. Like the previous games in the series, The Sims 4 focuses on creating and controlling a neighborhood of virtual people, called \"Sims\". The Sims 4 boasts an overhauled and intuitive Create a Sim, updated building tools, and deeper, more complex Sims through the addition of emotions and new traits!', '24.95', 'sims4.jpg', 1, ''),
(13, 'Fallout 4', 'Fallout 4 is an action role-playing game set in an open world environment, gameplay is similar to that of Fallout 3 and Fallout: New Vegas, the two previous primary iterations in the series. Returning features include a camera that can switch between a first-person and third-person perspective. Fallout 4 introduces features including a layered armor system, base-building, a dynamic dialogue system featuring 111,000 lines of dialogue,[1] an in-depth crafting system which implements every lootable object in the game, and much more', '14.95', 'fallout4.jpg', 2, ''),
(14, 'Skyrim', 'The Elder Scrolls V: Skyrim is an action role-playing game, playable from either a first or third-person perspective. The player may freely roam over the land of Skyrim, which is an open world environment consisting of wilderness expanses, dungeons, cities, towns, fortresses and villages.[1] Players may navigate the game world more quickly by riding horses, or by utilizing a fast-travel system which allows them to warp to previously discovered locations!', '39.95', 'skyrim.png', 2, ''),
(15, 'Minecraft', 'Minecraft is a three-dimensional sandbox game that has no specific goals for the player to accomplish, allowing players a large amount of freedom in choosing how to play the game.[14] However, there is an achievement system.[15] Gameplay is in the first-person perspective by default, and players have the option to play in third-person.[16] The game world is composed of rough 3D objects—mainly cubes and fluids—representing various materials, such as dirt, stone, ores, tree trunks, water and lava. The core gameplay revolves around breaking and placing these objects. These blocks are arranged in a 3D grid, while players can move freely around the world. Players can \"mine\" blocks and then place them elsewhere, which allows for constructions to be built.', '24.95', 'minecraft.jpg', 2, ''),
(16, 'Player Unknown Battlegrounds', 'Battlegrounds is a player versus player (PvP) action game in which up to one hundred players fight in a battle royale, a type of large-scale last man standing deathmatch where players fight to remain the last alive. Players can choose to enter the match solo, or with a small team of up to four people. In either case, the last person or team left alive wins the match!', '29.95', 'pubg.png', 2, ''),
(17, 'Payday 2', 'The game consists of a variety of \'heists\' that a player can opt to either carry out by themselves, with the AI, or as part of a multiplayer game. There are heists such as bank robberies, drug trafficking runs, rigging an election, or stealing smuggled nuclear warheads. Some of the heists put a large emphasis on stealth, often leading to bonus experience points and money on completion.', '9.95', 'payday2.jpg', 2, ''),
(18, 'The Witcher 3', 'The Witcher 3: Wild Hunt is an action role-playing game with a third-person perspective. Players control Geralt of Rivia, a monster hunter known as a Witcher.[1] Geralt walks, runs, rolls and dodges, and (for the first time in the series) jumps, climbs and swims.[2][3] He has a variety of weapons, including bombs, a crossbow and two swords (one steel and one silver).', '59.95', 'witcher3.jpg', 3, '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `categoryID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
