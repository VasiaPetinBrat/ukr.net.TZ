-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 16 2015 г., 01:34
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `music`
--

-- --------------------------------------------------------

--
-- Структура таблицы `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Michael Jackson'),
(2, 'Adriano Celentano'),
(3, 'Whitney Houston'),
(4, 'Mireille Mathieu'),
(5, 'Charles Aznavour'),
(6, 'Paul McCartney'),
(7, 'Tina Turner'),
(8, 'Alla Pugacheva'),
(9, 'Madonna'),
(10, 'Elton John'),
(11, 'Joe Cocker'),
(12, 'Stevie Wonder'),
(13, 'Aretha Franklin'),
(14, 'Ray Charles'),
(15, 'Diana Ross'),
(16, 'Steven Tyler'),
(17, 'Elvis Presley'),
(18, 'Freddie Mercury'),
(19, 'David Bowie'),
(20, 'Mick Jagger'),
(21, 'Scorpions'),
(22, 'James Brown'),
(23, 'Lionel Richie'),
(24, 'Barry White'),
(25, 'Ozzy Osbourne'),
(26, 'Louis Armstrong'),
(27, 'ABBA'),
(28, 'Frank Sinatra'),
(29, 'Chris Rea'),
(30, 'Tom Jones'),
(31, 'Luciano Pavarotti'),
(32, 'Andy Williams'),
(33, 'Joe Dassin'),
(34, 'Demis Roussos');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` varchar(28) NOT NULL,
  `title` varchar(128) NOT NULL,
  `viewCount` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1695 ;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `videoId`, `title`, `viewCount`, `artist_id`) VALUES
(1525, 'sOnqjkJTMaA', 'Michael Jackson - Thriller', 0, 1),
(1526, 'oRdxUFDoQe0', 'Michael Jackson - Beat It (Digitally Restored Version)', 0, 1),
(1527, 'QNJL6nfu__Q', 'Michael Jackson - They Don&#039;t Care About Us', 0, 1),
(1528, 'LeiFF0gvqcc', 'Michael Jackson - Remember The Time', 0, 1),
(1529, 'Zi_XLOBDo_Y', 'Michael Jackson - Billie Jean', 0, 1),
(1530, 'bu3Nmu_X6y4', 'Adriano Celentano - Io non so parlar d&#039;amore (1999) [FULL ALBUM] 320 kbps', 0, 2),
(1531, 'rlt3tp4QiBk', 'Adriano Celentano -Ma Perke', 0, 2),
(1532, 'wmmKcQ5ZsUk', 'Adriano Celentano - IL tempo Se Ne Va', 0, 2),
(1533, 'Q1VGoKBKR3I', 'adriano celentano AZZURRO', 0, 2),
(1534, 'WSJ6iVfHHJo', 'Adriano Celentano - 50 Best Hits Original', 0, 2),
(1535, '3JWTaaS7LdU', 'Whitney Houston - I Will Always Love You', 0, 3),
(1536, 'FxYw0XPEoKE', 'Whitney Houston - I Have Nothing (Official Video)', 0, 3),
(1537, 'LKaXY4IdZ40', 'Whitney Houston - When You Believe', 0, 3),
(1538, '5Pze_mdbOK8', 'Whitney Houston - I Look to You', 0, 3),
(1539, 'eH3giaIzONA', 'Whitney Houston - I Wanna Dance With Somebody', 0, 3),
(1540, 'Pv9MWY8PThg', 'The Best of Mireille Mathieu 2014 **Subtitled**', 0, 4),
(1541, '2NXrhcbpiV0', 'Mireille Mathieu -La Paloma Ade-', 0, 4),
(1542, 'RWRrcjrJLWM', 'Mireille Mathieu - Une Femme amoureuse', 0, 4),
(1543, 'ttt-eibCgzY', 'Mireille Mathieu - MIMI-DAY 2012. TOP 22  vos favorites', 0, 4),
(1544, 'zK_W5iYLdxc', 'Mireille Mathieu Noël', 0, 4),
(1545, 'HY5HYyHMTDQ', 'The Best of Charles Aznavour - Full album', 0, 5),
(1546, 'yZLRrNFZN50', 'Charles Aznavour - Concert au Palais des congrès 2004', 0, 5),
(1547, '_q9AAGPjaAU', 'Best Songs of Charles Aznavour', 0, 5),
(1548, 'A314PVRSQIM', 'Charles Aznavour La Bohème', 0, 5),
(1549, 'pCBQzZI4ZKw', 'Charles Aznavour - Avec un brin de nostalgie', 0, 5),
(1550, 'Q8rz9T3fSW8', 'PAUL McCARTNEY IN PERFORMANCE AT THE WHITE HOUSE (Complete)', 0, 6),
(1551, 'kt0g4dWxEBo', 'Rihanna And Kanye West And Paul McCartney - FourFiveSeconds', 0, 6),
(1552, '2_9QooYDYtU', 'Paul McCartney - Silly Love Songs', 0, 6),
(1553, 'Wv_X9XOm4NQ', 'Paul McCartney - No More Lonely Nights', 0, 6),
(1554, '5CfLUmVso30', 'Paul McCartney - Queenie Eye (Official Video)', 0, 6),
(1555, 'EmH4YlNdWAg', 'Tina Turner Proud Mary Live 2009', 0, 7),
(1556, 'r16UkiI5wjY', 'Happy 76th Birthday Tina Turner! You&#039;re Simply the Best!', 0, 7),
(1557, 'oGpFcHTxjZs', 'Tina Turner - What&#039;s Love Got To Do With It', 0, 7),
(1558, 'GC5E8ie2pdM', 'Tina Turner - The Best', 0, 7),
(1559, 'dT3z4oEeMPo', 'Tina Turner - What&#039;s Love Got To Do With It (One Last Time Live In Concert)', 0, 7),
(1560, 'CAGlI_2vQpg', 'Alla Pugacheva - Million Roses', 0, 8),
(1561, 'a4qUCv1mHcY', 'Alla Pugacheva &amp; Maksim Galkin - *Lightning Conductors*', 0, 8),
(1562, 'Yc2QE7yCfOs', 'Алла Пугачева на юбилее миллиардера Тельмана Исмаилова (Exclusive Resolution) HD', 0, 8),
(1563, 'qvIqNSePYBU', 'Alla Pugacheva pazavi menya saboi', 0, 8),
(1564, 'VITOIMidls4', 'Alla Pugacheva och Maxim Galkin', 0, 8),
(1565, '7hPMmzKs62w', 'Madonna - Bitch I&#039;m Madonna ft. Nicki Minaj', 0, 9),
(1566, 'GgDxv0Qg_Rg', 'Madonna - Ghosttown', 0, 9),
(1567, 'EDwb9jOVRtU', 'Madonna - Hung Up (Official Music Video)', 0, 9),
(1568, 'pz_XsYNTlN0', 'Madonna | The Immaculate Collection', 0, 9),
(1569, 'C0w0iOCT100', 'Madonna &#039;Like a Prayer&#039; [Acoustic Performance at Place de la République, Paris]', 0, 9),
(1570, 'NrLkTZrPZA4', 'Elton John - Sacrifice', 0, 10),
(1571, 'hoskDZRLOCs', 'Elton John - Tiny Dancer', 0, 10),
(1572, 'h6KYAVn8ons', 'Elton John - I Guess That&#039;s Why They Call It The Blues', 0, 10),
(1573, 'ZHwVBirqD2s', 'Elton John - I&#039;m Still Standing', 0, 10),
(1574, 'mTa8U0Wa0q8', 'Elton John - Your song', 0, 10),
(1575, 'I3TQ6qJCIXA', 'Joe Cocker Greatest Hits (Full Album) - The Best Of Joe Cocker', 0, 11),
(1576, '1Lwg0ZlPTJA', 'Joe Cocker: Fire it Up Live (Cologne, 2013)', 0, 11),
(1577, '0g8aUg7z4uI', 'Joe Cocker: Best Songs Of Joe Cocker - Greatest Hits Full Album Of Joe Cocker', 0, 11),
(1578, 'NR-H2uFCQls', 'In Memory of Joe Cocker  1944 - 2014', 0, 11),
(1579, '_Xa_1KxR-8M', 'Joe Cocker - Noubliez Jamais', 0, 11),
(1580, 'qqrvm2XDvpQ', 'Stevie Wonder Carpool Karaoke', 0, 12),
(1581, 'QwOU3bnuU0k', 'Stevie Wonder - I Just Called To Say I Love You', 0, 12),
(1582, 'WaoF9SbCzs0', 'Beyoncé, Ed Sheeran &amp; Gary Clark Jr. Tribute Stevie Wonder', 0, 12),
(1583, '0CFuCYNx-1g', 'Stevie Wonder Superstition', 0, 12),
(1584, 'oNDKCHGW70w', 'Snoop Dogg - California Roll ft. Stevie Wonder, Pharrell Williams', 0, 12),
(1585, 'AVMXOGLptLc', 'Aretha Franklin - 23 Greatest Hits Full Album | Best songs of Aretha Franklin', 0, 13),
(1586, '6FOUqQt3Kg0', 'Aretha Franklin - Respect [1967] (Original Version)', 0, 13),
(1587, 'thUQr7Q1vCY', 'The Very Best of Soul - Aretha Franklin, Sam Cooke, James Brown...', 0, 13),
(1588, 'EbT13dznkOM', 'Aretha Franklin - The Queen of Soul (Not Now Music) [Full Album]', 0, 13),
(1589, 'oNWeGngQqOI', 'Aretha Franklin - Rolling In the Deep (The Aretha Version)', 0, 13),
(1590, 'VSgC82gcTsQ', 'Ray Charles - The Best Of (By Classic Mood Experience)', 0, 14),
(1591, 'xUEbGr27UFI', 'Ray Charles - The Ultimate Collection (Not Now Music) [Full Album]', 0, 14),
(1592, 'bMIRHAc3A9c', 'Ray Charles Greatest Hits Full Album - Ray Charles&#039;s 35 Biggest Songs', 0, 14),
(1593, 'E2PglxuFtUg', 'The Best of Ray Charles (full album)', 0, 14),
(1594, 'V6RY2OY84Bg', 'Ray Charles - The Best Songs', 0, 14),
(1595, 'iGhAkRa50r8', 'Diana Ross One Woman - The Ultimate Collection  (Full Album)', 0, 15),
(1596, 'dj6ouSRmwus', 'E! True Hollywood Story - Diana Ross', 0, 15),
(1597, 'F-mjl63e0ms', 'Diana Ross - I&#039;m Coming Out', 0, 15),
(1598, '_q414SLtUrU', 'Diana Ross - Lady Sings The Blues (w Tracee Ellis Ross - Venetian Theater Las Vegas, Nov 21, 2015)', 0, 15),
(1599, 'BayF79ylUCQ', 'Julio Iglesias, Diana Ross - All Of You', 0, 15),
(1600, 'd0n40GVcj64', 'Steven Tyler - Love Is Your Name', 0, 16),
(1601, 'KRcrv8uG7Y8', 'Steven Tyler performs &quot;Amazing&quot; at Recovery Unplugged drug rehab', 0, 16),
(1602, '0GQqtiGUv4I', 'Dream On - Steven Tyler feat Slash  Howard Stern B', 0, 16),
(1603, 'HNaF4-oK_Oo', 'Aerosmith Steven Tyler sang with the street musician  Moscow 04.09.2015', 0, 16),
(1604, 'cSzGuzZAhxU', 'Steven Tyler - I don&#039;t want to miss a thing (Acoustic)', 0, 16),
(1605, 'Cv0v4RQqo6w', 'Elvis Presley - The Platinum Collection (Not Now Music) [Full Album]', 0, 17),
(1606, 'KUpfHDUAbpI', 'The Best of Elvis Presley - 1st Beautiful Elvis Playlist', 0, 17),
(1607, 'gj0Rz-uP4Mk', 'Elvis Presley - Jailhouse Rock (Music Video)', 0, 17),
(1608, 'SBmAPYkPeYU', 'Suspicious Mind - Elvis Presley', 0, 17),
(1609, 'vGJTaP6anOU', 'Elvis Presley - Can&#039;t Help Falling In Love (Audio)', 0, 17),
(1610, 'ozd9nPo_VAk', 'Freddie Mercury : QUEEN /  RAPSODIA BOHEMIA', 0, 18),
(1611, 'VjMgo7q2dcA', 'Freddie Mercury Documentary (2013)', 0, 18),
(1612, 'HTdd8QxifbY', 'Freddie Mercury - Living On My Own (1993 Remix)', 0, 18),
(1613, 'FyejB43PKkE', 'Freddie Mercury&#039;s LAST VIDEO 1991!!! RO SUB', 0, 18),
(1614, 'mLRjFWDGs1g', 'Freddie Mercury - The Great Pretender (Official Video)', 0, 18),
(1615, 'kszLwBaC4Sw', 'David Bowie - Blackstar', 0, 19),
(1616, 'KYZRfDhCHlc', 'David Bowie -Best of Bowie(2002) [FULL ALBUM] (disc 1)', 0, 19),
(1617, 'cYMCLz5PQVw', 'David Bowie - Space Oddity', 0, 19),
(1618, 'Tgcc5V9Hu3g', 'David Bowie - Heroes', 0, 19),
(1619, 'N4d7Wp9kKjA', 'David Bowie - Let&#039;s Dance', 0, 19),
(1620, 'K5Do_G4qErQ', 'Un doppiaggio capolavoro Mick Jagger in barese by Fabio  Celenza', 0, 20),
(1621, '9G4jnaznUoQ', 'David Bowie &amp; Mick Jagger - Dancing In The Street', 0, 20),
(1622, 'N35OKVjt4gA', 'THE VERY BEST OF MICK JAGGER - 2006 - Full Album', 0, 20),
(1623, 'wUk_Dqiow0A', 'Mick Jagger feat. Lenny Kravitz - God Gave Me Everything [HQ]', 0, 20),
(1624, 'o42zmYN2_-k', 'U2, Mick Jagger, Fergie - &quot;Gimmer Shelter&quot; at the Rock and Roll Hall of Fame 25th Anniversary Shows', 0, 20),
(1625, 'hLBZC7bqmkE', 'Best Of Scorpions Greatest Hits Full Album', 0, 21),
(1626, 'n4RjJKxsamQ', 'Scorpions - Wind Of Change', 0, 21),
(1627, 'RSGRedgeOg4', '[Full Album] Scorpions - Best Ballad Collection | Greatest Hits | The Very Best  Songs OF SCORPIONS', 0, 21),
(1628, 'hPcBy5LnBZo', 'Scorpions Acoustica live in lisboa 2001', 0, 21),
(1629, 'OT2bxfGC4UA', 'Scorpions - Still Loving You (Lyric Video)', 0, 21),
(1630, '9WO6R07eXAU', 'JAMES BROWN The Payback album (re-edited by Ike Dyson)', 0, 22),
(1631, 'EBLNYuKLYD0', 'James Brown - It&#039;s a Man&#039;s World, Paris 1967', 0, 22),
(1632, '04aIN3T7whg', 'JAMES BROWN Make It Funky cd set', 0, 22),
(1633, '09qbhwcpA6A', 'James Brown &amp; The Famous Flames - The Legendary TAMI Show Performance', 0, 22),
(1634, 'c5BL4RNFr58', 'James Brown - Living in America', 0, 22),
(1635, 'PDZcqBgCS74', 'Lionel Richie - Hello', 0, 23),
(1636, 'IJIl8zO0v98', 'Lionel Richie and Friends in Concert 2012', 0, 23),
(1637, 'nqAvFx3NxUM', 'Lionel Richie - All Night Long (All Night)', 0, 23),
(1638, 'bAqz0AwLRjk', 'Lionel Richie - Endless Love ft. Shania Twain', 0, 23),
(1639, 'Vd85aPZ-QAE', 'Hello - Lionel Richie', 0, 23),
(1640, 'RjiLVv3Fx6c', 'BARRY WHITE (COLLECTION) HD', 0, 24),
(1641, 'wVhJYwunc-M', 'Barry White Greatest Hits HD/HQ | The Best Of Barry White Songs', 0, 24),
(1642, 'x0I6mhZ5wMw', 'Barry White - Can&#039;t Get Enough Of Your Love Baby.', 0, 24),
(1643, 'Fcd3XuQwDQQ', 'You Are The First, My Last, My Everything (Barry White)', 0, 24),
(1644, 'IyaNUGi4l8A', 'Barry White - In Concert (Live)', 0, 24),
(1645, 'LCCiwPEdEpg', 'Ozzy Osbourne - &quot;Dreamer&quot;', 0, 25),
(1646, 'CprfjfN5PRs', 'Ozzy Osbourne - No More Tears', 0, 25),
(1647, 'K0siYUjV9UM', 'Ozzy Osbourne - &quot;Mama, I&#039;m Coming Home&quot;', 0, 25),
(1648, 'G3LvhdFEOqs', 'Ozzy Osbourne - &quot;Mr. Crowley&quot; Live 1981', 0, 25),
(1649, 'vEEQOGWubOA', 'OZZY OSBOURNE ♪ Ozzy Osbourne Greatest Hits ☞ The Best of Ozzy Osbourne ★ Playlist 2015 (HD/HQ)', 0, 25),
(1650, 'YBOoQcoPL1I', 'The Best Of Louis Armstrong (2h)', 0, 26),
(1651, 'E2VCwBzGdPM', 'What a wonderful world - LOUIS ARMSTRONG.', 0, 26),
(1652, 'uEb4HzgILUU', 'Ella Fitzgerald &amp; Louis Armstrong - Ella &amp; Louis (Full Album)', 0, 26),
(1653, 'WzgCRrkWps8', 'Louis Armstrong Greatest Hits | Louis Armstrong Best Songs | Louis Armstrong Collection', 0, 26),
(1654, 'bOH_mioL3TU', 'Louis Armstrong - When You&#039;re Smiling', 0, 26),
(1655, 'RNnAIBW32L4', 'ABBA  Gold: Greatest Hits Full Album', 0, 27),
(1656, 'xFrGuyw1V8s', 'Abba - Dancing Queen', 0, 27),
(1657, 'HLtAfSMMvNs', 'ABBA GOLD : ABBA greatest hits full album', 0, 27),
(1658, 'p4QqMKe3rwY', 'Abba - Chiquitita', 0, 27),
(1659, 'unfzfe8f9NI', 'Abba - Mamma Mia', 0, 27),
(1660, 'fb-33Nl9uMU', 'The Best of Frank Sinatra (full album)', 0, 28),
(1661, '25HQlRAP_3w', 'FRANK SINATRA - The Best of Frank Sinatra', 0, 28),
(1662, 'DuGAoOSzB1Y', 'Dean Martin &amp; Frank Sinatra - Christmas Hits (AudioSonic Music) [Full Album]', 0, 28),
(1663, '2VmXo5J6amE', 'Frank Sinatra Was Pablo Escobar&#039;s Business Partner?! Ft. Gina Darling', 0, 28),
(1664, 'LiILUT_Px84', 'Frank Sinatra - You Make Me Feel So Young (Live At Royal Festival Hall / 1962)', 0, 28),
(1665, 'abZlWqVeLzg', 'Chris Rea - The Road To Hell Full Version', 0, 29),
(1666, 'A8a6kHQN9BA', 'Chris Rea - Looking For The Summer  HD 720', 0, 29),
(1667, '0A5p5fuAlUU', 'Chris Rea - Montreux Jazz Festival 2014', 0, 29),
(1668, 'OA1V7cI28hI', 'Chris Rea -  The road to hell (long version CD) HD', 0, 29),
(1669, '26iubAguHu0', 'Chris Rea &quot;Fool If You Think Is Over&quot;', 0, 29),
(1670, '5gXEnYrPrMI', 'Tom Jones - Delilah - Incredible Live Performance - Diamond Jubilee Concert', 0, 30),
(1671, 'CQIK3Te9Coo', 'Tom Jones - Delilah (video)', 0, 30),
(1672, 'WN3ME-rgpws', 'Tom Jones - Green Green Grass Of Home (with lyrics)', 0, 30),
(1673, 'mKC6p4Nl9NM', 'Tom Jones’ Elvis Presley Bromance  - CONAN on TBS', 0, 30),
(1674, '3JWiPFT0v2c', 'Tom Jones - Tower Of Song', 0, 30),
(1675, 'jwhP4vZAh18', 'Luciano Pavarotti  The Greatest Hits', 0, 31),
(1676, 'UvinvFhx9Q8', 'Luciano Pavarotti&#039;s Greatest Hits | Best Songs Of Luciano Pavarotti | Full Album 2015', 0, 31),
(1677, 'QtlgzFKWZKE', 'Luciano Pavarotti - Nessun Dorma', 0, 31),
(1678, '5a0juQ0aeGI', 'Bryan Adams &amp; Luciano Pavarotti - &#039;O Sole Mio', 0, 31),
(1679, 'eQSNVBLTXYY', 'Luciano Pavarotti: &#039;O Sole Mio&#039;', 0, 31),
(1680, 'b6x72_3K5CA', 'Andy Williams - The Best Songs.', 0, 32),
(1681, 'bXsgDpFmUWg', 'Andy Williams - Moon River - 75 Original Recordings (Not Now Music) [Full Album]', 0, 32),
(1682, 'LcLIJKeYThc', 'Andy Williams, 20 Greatest Songs Hits with Lyrics 2of2', 0, 32),
(1683, 'iPLOPI0CV68', 'Andy Williams, 20 Greatest Songs Hits with Lyrics 1of2', 0, 32),
(1684, '73UqDX_quk0', 'Andy Williams - The Most Wonderful Time Of The Year (From The Andy Williams Show)', 0, 32),
(1685, 'jpxDtu5LFEs', 'Joe Dassin &quot;A toi&quot;  (live officiel) | Archive INA', 0, 33),
(1686, '_Fbx6pyYsX8', 'Joe Dassin - Et Si Tu N&#039;Existais Pas...', 0, 33),
(1687, 'CSh3MCOiiCs', 'Joe Dassin &quot;Salut&quot; (live officiel) | Archive INA', 0, 33),
(1688, 'tQb4eWCAq8c', 'Joe Dassin - L&#039;Été Indien', 0, 33),
(1689, 'qmqruqnj99M', 'Hélène Ségara, Joe Dassin - Et si tu n&#039;existais pas', 0, 33),
(1690, 'sFyg84T1LHY', 'Demis Roussos - Greatest Hits 1971-1980  (Full Album)', 0, 34),
(1691, 'ImrecfUQwM4', 'Demis Roussos - Grandes Exitos En Español', 0, 34),
(1692, 'MwuxrWM-KuQ', 'The Very Best of Demis Roussos', 0, 34),
(1693, 'BfdkQGQ5xpA', 'Demis Roussos - Forever and Ever', 0, 34),
(1694, 'OcY9-YEHT8w', 'Demis Roussos - Concerto Bratislava   (1991)', 0, 34);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
