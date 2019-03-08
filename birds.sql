-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Mar 2019, 09:47
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `birds`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `birds`
--

CREATE TABLE `birds` (
  `ID` int(11) NOT NULL,
  `speciesPL` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `speciesLAC` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `speciesENG` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `birds`
--

INSERT INTO `birds` (`ID`, `speciesPL`, `speciesLAC`, `speciesENG`) VALUES
(1, 'sterniczka jamajska', 'Oxyura jamaicensis', 'eng'),
(2, 'sterniczka', 'Oxyura leucocephala', 'eng'),
(3, 'łabędź niemy', 'Cygnus olor', 'eng'),
(4, 'łabędź czarnodzioby', 'Cygnus columbianus', 'eng'),
(5, 'łabędź krzykliwy', 'Cygnus cygnus', 'eng'),
(6, 'bernikla obrożna', 'Branta bernicla', 'eng'),
(7, 'bernikla białolica', 'Branta leucopsis', 'eng'),
(8, 'bernikla rdzawoszyja', 'Branta ruficollis', 'eng'),
(9, 'bernikla kanadyjska', 'Branta canadensis', 'eng'),
(10, 'gęgawa', 'Anser anser', 'eng'),
(11, 'gęś zbożowa', 'Anser fabalis', 'eng'),
(12, 'gęś tundrowa', 'Anser serrirostris', 'eng'),
(13, 'gęś krótkodzioba', 'Anser brachyrhynchus', 'eng'),
(14, 'gęś białoczelna', 'Anser albifrons', 'eng'),
(15, 'gęś mała', 'Anser erythropus', 'eng'),
(16, 'lodówka', 'Clangula hyemalis', 'eng'),
(17, 'turkan', 'Somateria spectabilis', 'eng'),
(18, 'edredon', 'Somateria mollissima', 'eng'),
(19, 'birginiak', 'Polysticta stelleri', 'eng'),
(20, 'uhla', 'Melanitta fusca', 'eng'),
(21, 'uhla garbonosa', 'Melanitta deglandi', 'eng'),
(22, 'markaczka', 'Melanitta nigra', 'eng'),
(23, 'markaczka amerykańska', 'Melanitta americana', 'eng'),
(24, 'gągoł', 'Bucephala clangula', 'eng'),
(25, 'bielaczek', 'Mergellus albellus', 'eng'),
(26, 'nurogęś', 'Mergus merganser', 'eng'),
(27, 'szlachar', 'Mergus serrator', 'eng'),
(28, 'kamieniuszka', 'Histrionicus histrionicus', 'eng'),
(29, 'gęsiówka egipska', 'Alopochen aegyptiaca', 'eng'),
(30, 'ohar', 'Tadorna tadorna', 'eng'),
(31, 'kazarka rdzawa', 'Tadorna ferruginea', 'eng'),
(32, 'hełmiatka', 'Netta rufina', 'eng'),
(33, 'głowienka', 'Aythya ferina', 'eng'),
(34, 'podgorzałka', 'Aythya nyroca', 'eng'),
(35, 'czerniczka', 'Aythya collaris', 'eng'),
(36, 'czernica', 'Aythya fuligula', 'eng'),
(37, 'ogorzałka', 'Aythya marila', 'eng'),
(38, 'ogorzałka mała', 'Aythya affinis', 'eng'),
(39, 'cyranka', 'Spatula querquedula', 'eng'),
(40, 'płaskonos', 'Spatula clypeata', 'eng'),
(41, 'cyranka modroskrzydła', 'Spatula discors', 'eng'),
(42, 'krakwa', 'Mareca strepera', 'eng'),
(43, 'świstun', 'Mareca penelope', 'eng'),
(44, 'świstun amerykański', 'Mareca americana', 'eng'),
(45, 'krzyżówka', 'Anas platyrhynchos', 'eng'),
(46, 'rożeniec', 'Anas acuta', 'eng'),
(47, 'cyraneczka', 'Anas crecca', 'eng'),
(48, 'cyraneczka karolińska', 'Anas carolinensis', 'eng'),
(49, 'mandarynka', 'Aix galericulata', 'eng'),
(50, 'przepiórka', 'Coturnix coturnix', 'eng'),
(51, 'bażant', 'Phasianus colchicus', 'eng'),
(52, 'kuropatwa', 'Perdix perdix', 'eng'),
(53, 'jarząbek', 'Tetrastes bonasia', 'eng'),
(54, 'pardwa mszarna', 'Lagopus lagopus', 'eng'),
(55, 'głuszec', 'Tetrao urogallus', 'eng'),
(56, 'cietrzew', 'Lyrurus tetrix', 'eng'),
(57, 'flaming różowy', 'Phoenicopterus roseus', 'eng'),
(58, 'perkoz grubodzioby', 'Podilymbus podiceps', 'eng'),
(59, 'perkozek', 'Tachybaptus ruficollis', 'eng'),
(60, 'perkoz rdzawoszyi', 'Podiceps grisegena', 'eng'),
(61, 'perkoz dwuczuby', 'Podiceps cristatus', 'eng'),
(62, 'perkoz rogaty', 'Podiceps auritus', 'eng'),
(63, 'zausznik', 'Podiceps nigricollis', 'eng'),
(64, 'gołąb miejski', 'Columba livia forma urbana', 'eng'),
(65, 'siniak', 'Columba oenas', 'eng'),
(66, 'grzywacz', 'Columba palumbus', 'eng'),
(67, 'turkawka', 'Streptopelia turtur', 'eng'),
(68, 'turkawka wschodnia', 'Streptopelia orientalis', 'eng'),
(69, 'sierpówka', 'Streptopelia decaocto', 'eng'),
(70, 'pustynnik', 'Syrrhaptes paradoxus', 'eng'),
(71, 'lelek', 'Caprimulgus europaeus', 'eng'),
(72, 'jerzyk alpejski', 'Tachymarptis melba', 'eng'),
(73, 'jerzyk blady', 'Apus pallidus', 'eng'),
(74, 'jerzyk', 'Apus apus', 'eng'),
(75, 'kukułka', 'Cuculus canorus', 'eng'),
(76, 'wodnik', 'Rallus aquaticus', 'eng'),
(77, 'derkacz', 'Crex crex', 'eng'),
(78, 'kropiatka', 'Porzana porzana', 'eng'),
(79, 'zielonka', 'Zapornia parva', 'eng'),
(80, 'karliczka', 'Zapornia pusilla', 'eng'),
(81, 'kokoszka', 'Gallinula chloropus', 'eng'),
(82, 'łyska', 'Fulica atra', 'eng'),
(83, 'żuraw stepowy', 'Grus virgo', 'eng'),
(84, 'żuraw', 'Grus grus', 'eng'),
(85, 'strepet', 'Tetrax tetrax', 'eng'),
(86, 'drop', 'Otis tarda', 'eng'),
(87, 'hubara arabska', 'Chlamydotis macqueenii', 'eng'),
(88, 'kulon', 'Burhinus oedicnemus', 'eng'),
(89, 'ostrygojad', 'Haematopus ostralegus', 'eng'),
(90, 'szczudłak', 'Himantopus himantopus', 'eng'),
(91, 'szablodziób', 'Recurvirostra avosetta', 'eng'),
(92, 'siewnica', 'Pluvialis squatarola', 'eng'),
(93, 'siewka złota', 'Pluvialis apricaria', 'eng'),
(94, 'siewka złotawa', 'Pluvialis fulva', 'eng'),
(95, 'siewka szara', 'Pluvialis dominica', 'eng'),
(96, 'mornel', 'Charadrius morinellus', 'eng'),
(97, 'sieweczka obrożna', 'Charadrius hiaticula', 'eng'),
(98, 'sieweczka rzeczna', 'Charadrius dubius', 'eng'),
(99, 'sieweczka morska', 'Charadrius alexandrinus', 'eng'),
(100, 'sieweczka mongolska', 'Charadrius mongolus', 'eng'),
(101, 'sieweczka pustynna', 'Charadrius leschenaultii', 'eng'),
(102, 'sieweczka długonoga', 'Charadrius asiaticus', 'eng'),
(103, 'czajka', 'Vanellus vanellus', 'eng'),
(104, 'czajka towarzyska', 'Vanellus gregarius', 'eng'),
(105, 'czajka stepowa', 'Vanellus leucurus', 'eng'),
(106, 'kulik mniejszy', 'Numenius phaeopus', 'eng'),
(107, 'kulik cienkodzioby', 'Numenius tenuirostris', 'eng'),
(108, 'kulik wielki', 'Numenius arquata', 'eng'),
(109, 'szlamnik', 'Limosa lapponica', 'eng'),
(110, 'rycyk', 'Limosa limosa', 'eng'),
(111, 'kamusznik', 'Arenaria interpres', 'eng'),
(112, 'biegus wielki', 'Calidris tenuirostris', 'eng'),
(113, 'biegus rdzawy', 'Calidris canutus', 'eng'),
(114, 'batalion', 'Calidris pugnax', 'eng'),
(115, 'biegus płaskodzioby', 'Calidris falcinellus', 'eng'),
(116, 'biegus krzywodzioby', 'Calidris ferruginea', 'eng'),
(117, 'biegus mały', 'Calidris temminckii', 'eng'),
(118, 'piaskowiec', 'Calidris alba', 'eng'),
(119, 'biegus zmienny', 'Calidris alpina', 'eng'),
(120, 'biegus morski', 'Calidris maritima', 'eng'),
(121, 'biegus długoskrzydły', 'Calidris bairdii', 'eng'),
(122, 'biegus malutki', 'Calidris minuta', 'eng'),
(123, 'biegus karłowaty', 'Calidris minutilla', 'eng'),
(124, 'biegus białorzytny', 'Calidris fuscicollis', 'eng'),
(125, 'biegus płowy', 'Calidris subruficollis', 'eng'),
(126, 'biegus arktyczny', 'Calidris melanotos', 'eng'),
(127, 'biegus tundrowy', 'Calidris pusilla', 'eng'),
(128, 'szlamiec długodzioby', 'Limnodromus scolopaceus', 'eng'),
(129, 'słonka', 'Scolopax rusticola', 'eng'),
(130, 'dubelt', 'Gallinago media', 'eng'),
(131, 'kszyk', 'Gallinago gallinago', 'eng'),
(132, 'bekasik', 'Lymnocryptes minimus', 'eng'),
(133, 'terekia', 'Xenus cinereus', 'eng'),
(134, 'brodziec piskliwy', 'Actitis hypoleucos', 'eng'),
(135, 'brodziec plamisty', 'Actitis macularius', 'eng'),
(136, 'samotnik', 'Tringa ochropus', 'eng'),
(137, 'brodziec żółtonogi', 'Tringa flavipes', 'eng'),
(138, 'brodziec śniady', 'Tringa erythropus', 'eng'),
(139, 'kwokacz', 'Tringa nebularia', 'eng'),
(140, 'brodziec piegowaty', 'Tringa melanoleuca', 'eng'),
(141, 'krwawodziób', 'Tringa totanus', 'eng'),
(142, 'łęczak', 'Tringa glareola', 'eng'),
(143, 'brodziec pławny', 'Tringa stagnatilis', 'eng'),
(144, 'płatkonóg szydłodzioby', 'Phalaropus lobatus', 'eng'),
(145, 'płatkonóg płaskodzioby', 'Phalaropus fulicarius', 'eng'),
(146, 'żwirowiec łąkowy', 'Glareola pratincola', 'eng'),
(147, 'żwirowiec stepowy', 'Glareola nordmanni', 'eng'),
(148, 'maskonur', 'Fratercula arctica', 'eng'),
(149, 'nurnik', 'Cepphus grylle', 'eng'),
(150, 'alka', 'Alca torda', 'eng'),
(151, 'alczyk', 'Alle alle', 'eng'),
(152, 'nurzyk polarny', 'Uria lomvia', 'eng'),
(153, 'nurzyk', 'Uria aalge', 'eng'),
(154, 'wydrzyk długosterny', 'Stercorarius longicaudus', 'eng'),
(155, 'wydrzyk ostrosterny', 'Stercorarius parasiticus', 'eng'),
(156, 'wydrzyk tęposterny', 'Stercorarius pomarinus', 'eng'),
(157, 'wydrzyk wielki', 'Stercorarius skua', 'eng'),
(158, 'mewa modrodzioba', 'Pagophila eburnea', 'eng'),
(159, 'mewa obrożna', 'Xema sabini', 'eng'),
(160, 'mewa trójpalczasta', 'Rissa tridactyla', 'eng'),
(161, 'mewa cienkodzioba', 'Chroicocephalus genei', 'eng'),
(162, 'śmieszka', 'Chroicocephalus ridibundus', 'eng'),
(163, 'mewa mała', 'Hydrocoloeus minutus', 'eng'),
(164, 'mewa różowa', 'Rhodostethia rosea', 'eng'),
(165, 'mewa karaibska', 'Leucophaeus atricilla', 'eng'),
(166, 'mewa czarnogłowa', 'Ichthyaetus melanocephalus', 'eng'),
(167, 'orlica', 'Ichthyaetus ichthyaetus', 'eng'),
(168, 'mewa siwa', 'Larus canus', 'eng'),
(169, 'mewa delawarska', 'Larus delawarensis', 'eng'),
(170, 'mewa żółtonoga', 'Larus fuscus', 'eng'),
(171, 'mewa srebrzysta', 'Larus argentatus', 'eng'),
(172, 'mewa popielata', 'Larus smithsonianus', 'eng'),
(173, 'mewa romańska', 'Larus michahellis', 'eng'),
(174, 'mewa białogłowa', 'Larus cachinnans', 'eng'),
(175, 'mewa blada', 'Larus hyperboreus', 'eng'),
(176, 'mewa polarna', 'Larus glaucoides', 'eng'),
(177, 'mewa ochocka', 'Larus schistisagus', 'eng'),
(178, 'mewa siodłata', 'Larus marinus', 'eng'),
(179, 'rybitwa krótkodzioba', 'Gelochelidon nilotica', 'eng'),
(180, 'rybitwa wielkodzioba', 'Hydroprogne caspia', 'eng'),
(181, 'rybitwa czubata', 'Thalasseus sandvicensis', 'eng'),
(182, 'rybitwa różowa', 'Sterna dougallii', 'eng'),
(183, 'rybitwa rzeczna', 'Sterna hirundo', 'eng'),
(184, 'rybitwa popielata', 'Sterna paradisaea', 'eng'),
(185, 'rybitwa białoczelna', 'Sternula albifrons', 'eng'),
(186, 'rybitwa białowąsa', 'Chlidonias hybrida', 'eng'),
(187, 'rybitwa czarna', 'Chlidonias niger', 'eng'),
(188, 'rybitwa białoskrzydła', 'Chlidonias leucopterus', 'eng'),
(189, 'nur rdzawoszyi', 'Gavia stellata', 'eng'),
(190, 'nur czarnoszyi', 'Gavia arctica', 'eng'),
(191, 'lodowiec', 'Gavia immer', 'eng'),
(192, 'nur białodzioby', 'Gavia adamsii', 'eng'),
(193, 'oceannik żółtopłetwy', 'Oceanites oceanicus', 'eng'),
(194, 'nawałnik burzowy', 'Hydrobates pelagicus', 'eng'),
(195, 'nawałnik duży', 'Hydrobates leucorhous', 'eng'),
(196, 'fulmar', 'Fulmarus glacialis', 'eng'),
(197, 'burzyk żółtodzioby', 'Calonectris diomedea', 'eng'),
(198, 'burzyk szary', 'Ardenna grisea', 'eng'),
(199, 'burzyk północny', 'Puffinus puffinus', 'eng'),
(200, 'burzyk balearski', 'Puffinus mauretanicus', 'eng'),
(201, 'bocian czarny', 'Ciconia nigra', 'eng'),
(202, 'bocian biały', 'Ciconia ciconia', 'eng'),
(203, 'pelikan różowy', 'Pelecanus onocrotalus', 'eng'),
(204, 'pelikan kędzierzawy', 'Pelecanus crispus', 'eng'),
(205, 'bąk', 'Botaurus stellaris', 'eng'),
(206, 'bączek', 'Ixobrychus minutus', 'eng'),
(207, 'ślepowron', 'Nycticorax nycticorax', 'eng'),
(208, 'czapla modronosa', 'Ardeola ralloides', 'eng'),
(209, 'czapla złotawa', 'Bubulcus ibis', 'eng'),
(210, 'czapla siwa', 'Ardea cinerea', 'eng'),
(211, 'czapla purpurowa', 'Ardea purpurea', 'eng'),
(212, 'czapla biała', 'Ardea alba', 'eng'),
(213, 'czapla nadobna', 'Egretta garzetta', 'eng'),
(214, 'warzęcha', 'Platalea leucorodia', 'eng'),
(215, 'ibis kasztanowaty', 'Plegadis falcinellus', 'eng'),
(216, 'głuptak', 'Morus bassanus', 'eng'),
(217, 'kormoran mały', 'Microcarbo pygmeus', 'eng'),
(218, 'kormoran czubaty', 'Phalacrocorax aristotelis', 'eng'),
(219, 'kormoran', 'Phalacrocorax carbo', 'eng'),
(220, 'rybołów', 'Pandion haliaetus', 'eng'),
(221, 'kaniuk', 'Elanus caeruleus', 'eng'),
(222, 'trzmielojad', 'Pernis apivorus', 'eng'),
(223, 'orłosęp', 'Gypaetus barbatus', 'eng'),
(224, 'ścierwnik', 'Neophron percnopterus', 'eng'),
(225, 'gadożer', 'Circaetus gallicus', 'eng'),
(226, 'sęp płowy', 'Gyps fulvus', 'eng'),
(227, 'sęp kasztanowaty', 'Aegypius monachus', 'eng'),
(228, 'orlik krzykliwy', 'Clanga pomarina', 'eng'),
(229, 'orlik grubodzioby', 'Clanga clanga', 'eng'),
(230, 'orzeł stepowy', 'Aquila nipalensis', 'eng'),
(231, 'orzeł cesarski', 'Aquila heliaca', 'eng'),
(232, 'orzeł przedni', 'Aquila chrysaetos', 'eng'),
(233, 'orzełek', 'Hieraaetus pennatus', 'eng'),
(234, 'błotniak stawowy', 'Circus aeruginosus', 'eng'),
(235, 'błotniak zbożowy', 'Circus cyaneus', 'eng'),
(236, 'błotniak stepowy', 'Circus macrourus', 'eng'),
(237, 'błotniak łąkowy', 'Circus pygargus', 'eng'),
(238, 'krogulec krótkonogi', 'Accipiter brevipes', 'eng'),
(239, 'krogulec', 'Accipiter nisus', 'eng'),
(240, 'jastrząb', 'Accipiter gentilis', 'eng'),
(241, 'bielik wschodni', 'Haliaeetus leucoryphus', 'eng'),
(242, 'bielik', 'Haliaeetus albicilla', 'eng'),
(243, 'kania ruda', 'Milvus milvus', 'eng'),
(244, 'kania czarna', 'Milvus migrans', 'eng'),
(245, 'myszołów włochaty', 'Buteo lagopus', 'eng'),
(246, 'myszołów', 'Buteo buteo', 'eng'),
(247, 'kurhannik', 'Buteo rufinus', 'eng'),
(248, 'płomykówka', 'Tyto alba', 'eng'),
(249, 'sowa jarzębata', 'Surnia ulula', 'eng'),
(250, 'sóweczka', 'Glaucidium passerinum', 'eng'),
(251, 'pójdźka', 'Athene noctua', 'eng'),
(252, 'włochatka', 'Aegolius funereus', 'eng'),
(253, 'syczek', 'Otus scops', 'eng'),
(254, 'uszatka', 'Asio otus', 'eng'),
(255, 'uszatka błotna', 'Asio flammeus', 'eng'),
(256, 'puszczyk', 'Strix aluco', 'eng'),
(257, 'puszczyk uralski', 'Strix uralensis', 'eng'),
(258, 'puszczyk mszarny', 'Strix nebulosa', 'eng'),
(259, 'sowa śnieżna', 'Bubo scandiacus', 'eng'),
(260, 'puchacz', 'Bubo bubo', 'eng'),
(261, 'dudek', 'Upupa epops', 'eng'),
(262, 'krętogłów', 'Jynx torquilla', 'eng'),
(263, 'dzięcioł zielonosiwy', 'Picus canus', 'eng'),
(264, 'dzięcioł zielony', 'Picus viridis', 'eng'),
(265, 'dzięcioł czarny', 'Dryocopus martius', 'eng'),
(266, 'dzięcioł średni', 'Dendrocoptes medius', 'eng'),
(267, 'dzięciołek', 'Dryobates minor', 'eng'),
(268, 'dzięcioł duży', 'Dendrocopos major', 'eng'),
(269, 'dzięcioł białoszyi', 'Dendrocopos syriacus', 'eng'),
(270, 'dzięcioł białogrzbiety', 'Dendrocopos leucotos', 'eng'),
(271, 'dzięcioł trójpalczasty', 'Picoides tridactylus', 'eng'),
(272, 'żołna', 'Merops apiaster', 'eng'),
(273, 'kraska', 'Coracias garrulus', 'eng'),
(274, 'zimorodek', 'Alcedo atthis', 'eng'),
(275, 'rybaczek srokaty', 'Ceryle rudis', 'eng'),
(276, 'pustułeczka', 'Falco naumanni', 'eng'),
(277, 'pustułka', 'Falco tinnunculus', 'eng'),
(278, 'kobczyk', 'Falco vespertinus', 'eng'),
(279, 'drzemlik', 'Falco columbarius', 'eng'),
(280, 'kobuz', 'Falco subbuteo', 'eng'),
(281, 'sokół skalny', 'Falco eleonorae', 'eng'),
(282, 'raróg', 'Falco cherrug', 'eng'),
(283, 'białozór', 'Falco rusticolus', 'eng'),
(284, 'sokół wędrowny', 'Falco peregrinus', 'eng'),
(285, 'aleksandretta obrożna', 'Psittacula krameri', 'eng'),
(286, 'wireonek czerwonooki', 'Vireo olivaceus', 'eng'),
(287, 'wilga', 'Oriolus oriolus', 'eng'),
(288, 'gąsiorek', 'Lanius collurio', 'eng'),
(289, 'dzierzba rdzawosterna', 'Lanius phoenicuroides', 'eng'),
(290, 'dzierzba pustynna', 'Lanius isabellinus', 'eng'),
(291, 'dzierzba czarnoczelna', 'Lanius minor', 'eng'),
(292, 'srokosz', 'Lanius excubitor', 'eng'),
(293, 'dzierzba rudogłowa', 'Lanius senator', 'eng'),
(294, 'wieszczek', 'Pyrrhocorax graculus', 'eng'),
(295, 'sójka syberyjska', 'Perisoreus infaustus', 'eng'),
(296, 'sójka', 'Garrulus glandarius', 'eng'),
(297, 'sroka', 'Pica pica', 'eng'),
(298, 'orzechówka', 'Nucifraga caryocatactes', 'eng'),
(299, 'kawka', 'Corvus monedula', 'eng'),
(300, 'gawron', 'Corvus frugilegus', 'eng'),
(301, 'kruk', 'Corvus corax', 'eng'),
(302, 'czarnowron', 'Corvus corone', 'eng'),
(303, 'wrona siwa', 'Corvus cornix', 'eng'),
(304, 'sosnówka', 'Periparus ater', 'eng'),
(305, 'czubatka', 'Lophophanes cristatus', 'eng'),
(306, 'sikora uboga', 'Poecile palustris', 'eng'),
(307, 'czarnogłówka', 'Poecile montanus', 'eng'),
(308, 'modraszka', 'Cyanistes caeruleus', 'eng'),
(309, 'sikora lazurowa', 'Cyanistes cyanus', 'eng'),
(310, 'bogatka', 'Parus major', 'eng'),
(311, 'remiz', 'Remiz pendulinus', 'eng'),
(312, 'kalandra szara', 'Melanocorypha calandra', 'eng'),
(313, 'kalandra czarna', 'Melanocorypha yeltoniensis', 'eng'),
(314, 'skowrończyk krótkopalcowy', 'Calandrella brachydactyla', 'eng'),
(315, 'górniczek', 'Eremophila alpestris', 'eng'),
(316, 'lerka', 'Lullula arborea', 'eng'),
(317, 'skowronek białoskrzydły', 'Alauda leucoptera', 'eng'),
(318, 'skowronek', 'Alauda arvensis', 'eng'),
(319, 'dzierlatka', 'Galerida cristata', 'eng'),
(320, 'wąsatka', 'Panurus biarmicus', 'eng'),
(321, 'świerszczak melodyjny', 'Locustella certhiola', 'eng'),
(322, 'brzęczka', 'Locustella luscinioides', 'eng'),
(323, 'strumieniówka', 'Locustella fluviatilis', 'eng'),
(324, 'świerszczak', 'Locustella naevia', 'eng'),
(325, 'zaganiacz mały', 'Iduna caligata', 'eng'),
(326, 'zaganiacz blady', 'Iduna pallida', 'eng'),
(327, 'zaganiacz szczebiotliwy', 'Hippolais polyglotta', 'eng'),
(328, 'zaganiacz', 'Hippolais icterina', 'eng'),
(329, 'wodniczka', 'Acrocephalus paludicola', 'eng'),
(330, 'tamaryszka', 'Acrocephalus melanopogon', 'eng'),
(331, 'rokitniczka', 'Acrocephalus schoenobaenus', 'eng'),
(332, 'zaroślówka', 'Acrocephalus dumetorum', 'eng'),
(333, 'łozówka', 'Acrocephalus palustris', 'eng'),
(334, 'trzcinniczek', 'Acrocephalus scirpaceus', 'eng'),
(335, 'trzcinniczek kaspijski', 'Acrocephalus agricola', 'eng'),
(336, 'trzciniak', 'Acrocephalus arundinaceus', 'eng'),
(337, 'oknówka', 'Delichon urbicum', 'eng'),
(338, 'jaskółka rudawa', 'Cecropis daurica', 'eng'),
(339, 'dymówka', 'Hirundo rustica', 'eng'),
(340, 'brzegówka', 'Riparia riparia', 'eng'),
(341, 'świstunka górska', 'Phylloscopus bonelli', 'eng'),
(342, 'świstunka leśna', 'Phylloscopus sibilatrix', 'eng'),
(343, 'świstunka żółtawa', 'Phylloscopus inornatus', 'eng'),
(344, 'świstunka ałtajska', 'Phylloscopus humei', 'eng'),
(345, 'świstunka złotawa', 'Phylloscopus proregulus', 'eng'),
(346, 'świstunka brunatna', 'Phylloscopus fuscatus', 'eng'),
(347, 'piecuszek', 'Phylloscopus trochilus', 'eng'),
(348, 'świstunka iberyjska', 'Phylloscopus ibericus', 'eng'),
(349, 'pierwiosnek', 'Phylloscopus collybita', 'eng'),
(350, 'świstunka grubodzioba', 'Phylloscopus schwarzi', 'eng'),
(351, 'wójcik', 'Phylloscopus trochiloides', 'eng'),
(352, 'świstunka północna', 'Phylloscopus borealis', 'eng'),
(353, 'raniuszek', 'Aegithalos caudatus', 'eng'),
(354, 'kapturka', 'Sylvia atricapilla', 'eng'),
(355, 'gajówka', 'Sylvia borin', 'eng'),
(356, 'jarzębatka', 'Sylvia nisoria', 'eng'),
(357, 'piegża', 'Sylvia curruca', 'eng'),
(358, 'pokrzewka wąsata', 'Sylvia cantillans', 'eng'),
(359, 'pokrzewka aksamitna', 'Sylvia melanocephala', 'eng'),
(360, 'cierniówka', 'Sylvia communis', 'eng'),
(361, 'mysikrólik', 'Regulus regulus', 'eng'),
(362, 'zniczek', 'Regulus ignicapilla', 'eng'),
(363, 'jemiołuszka', 'Bombycilla garrulus', 'eng'),
(364, 'kowalik', 'Sitta europaea', 'eng'),
(365, 'pełzacz leśny', 'Certhia familiaris', 'eng'),
(366, 'pełzacz ogrodowy', 'Certhia brachydactyla', 'eng'),
(367, 'pomurnik', 'Tichodroma muraria', 'eng'),
(368, 'strzyżyk', 'Troglodytes troglodytes', 'eng'),
(369, 'szpak', 'Sturnus vulgaris', 'eng'),
(370, 'pasterz', 'Pastor roseus', 'eng'),
(371, 'pluszcz', 'Cinclus cinclus', 'eng'),
(372, 'muchołówka szara', 'Muscicapa striata', 'eng'),
(373, 'rudzik', 'Erithacus rubecula', 'eng'),
(374, 'słowik syberyjski', 'Larvivora sibilans', 'eng'),
(375, 'słowik rdzawy', 'Luscinia megarhynchos', 'eng'),
(376, 'słowik szary', 'Luscinia luscinia', 'eng'),
(377, 'podróżniczek', 'Luscinia svecica', 'eng'),
(378, 'modraczek', 'Tarsiger cyanurus', 'eng'),
(379, 'muchołówka mała', 'Ficedula parva', 'eng'),
(380, 'muchołówka żałobna', 'Ficedula hypoleuca', 'eng'),
(381, 'muchołówka białoszyja', 'Ficedula albicollis', 'eng'),
(382, 'pleszka', 'Phoenicurus phoenicurus', 'eng'),
(383, 'kopciuszek', 'Phoenicurus ochruros', 'eng'),
(384, 'nagórnik', 'Monticola saxatilis', 'eng'),
(385, 'pokląskwa', 'Saxicola rubetra', 'eng'),
(386, 'kląskawka syberyjska', 'Saxicola maurus', 'eng'),
(387, 'kląskawka', 'Saxicola rubicola', 'eng'),
(388, 'białorzytka', 'Oenanthe oenanthe', 'eng'),
(389, 'białorzytka płowa', 'Oenanthe isabellina', 'eng'),
(390, 'białorzytka pustynna', 'Oenanthe deserti', 'eng'),
(391, 'białorzytka rdzawa', 'Oenanthe hispanica', 'eng'),
(392, 'białorzytka pstra', 'Oenanthe pleschanka', 'eng'),
(393, 'białorzytka saharyjska', 'Oenanthe leucopyga', 'eng'),
(394, 'drozdoń tajgowy', 'Zoothera aurea', 'eng'),
(395, 'drozdaczek ciemny', 'Geokichla sibirica', 'eng'),
(396, 'paszkot', 'Turdus viscivorus', 'eng'),
(397, 'śpiewak', 'Turdus philomelos', 'eng'),
(398, 'droździk', 'Turdus iliacus', 'eng'),
(399, 'kos', 'Turdus merula', 'eng'),
(400, 'drozd oliwkowy', 'Turdus obscurus', 'eng'),
(401, 'kwiczoł', 'Turdus pilaris', 'eng'),
(402, 'drozd obrożny', 'Turdus torquatus', 'eng'),
(403, 'drozd rdzawy', 'Turdus naumanni', 'eng'),
(404, 'drozd rdzawoskrzydły', 'Turdus eunomus', 'eng'),
(405, 'drozd czarnogardły', 'Turdus atrogularis', 'eng'),
(406, 'drozd rdzawogardły', 'Turdus ruficollis', 'eng'),
(407, 'płochacz halny', 'Prunella collaris', 'eng'),
(408, 'płochacz syberyjski', 'Prunella montanella', 'eng'),
(409, 'pokrzywnica', 'Prunella modularis', 'eng'),
(410, 'wróbel', 'Passer domesticus', 'eng'),
(411, 'mazurek', 'Passer montanus', 'eng'),
(412, 'wróbel skalny', 'Petronia petronia', 'eng'),
(413, 'śnieżka', 'Montifringilla nivalis', 'eng'),
(414, 'świergotek drzewny', 'Anthus trivialis', 'eng'),
(415, 'świergotek tajgowy', 'Anthus hodgsoni', 'eng'),
(416, 'świergotek rdzawogardły', 'Anthus cervinus', 'eng'),
(417, 'świergotek łąkowy', 'Anthus pratensis', 'eng'),
(418, 'siwerniak', 'Anthus spinoletta', 'eng'),
(419, 'świergotek nadmorski', 'Anthus petrosus', 'eng'),
(420, 'świergotek szponiasty', 'Anthus richardi', 'eng'),
(421, 'świergotek stepowy', 'Anthus godlewskii', 'eng'),
(422, 'świergotek polny', 'Anthus campestris', 'eng'),
(423, 'pliszka żółta', 'Motacilla flava', 'eng'),
(424, 'pliszka górska', 'Motacilla cinerea', 'eng'),
(425, 'pliszka cytrynowa', 'Motacilla citreola', 'eng'),
(426, 'pliszka siwa', 'Motacilla alba', 'eng'),
(427, 'zięba', 'Fringilla coelebs', 'eng'),
(428, 'jer', 'Fringilla montifringilla', 'eng'),
(429, 'grubodziób', 'Coccothraustes coccothraustes', 'eng'),
(430, 'dziwonia', 'Erythrina erythrina', 'eng'),
(431, 'łuskowiec', 'Pinicola enucleator', 'eng'),
(432, 'gil', 'Pyrrhula pyrrhula', 'eng'),
(433, 'dzwoniec', 'Chloris chloris', 'eng'),
(434, 'makolągwa', 'Linaria cannabina', 'eng'),
(435, 'rzepołuch', 'Linaria flavirostris', 'eng'),
(436, 'czeczotka brązowa', 'Acanthis cabaret', 'eng'),
(437, 'czeczotka', 'Acanthis flammea', 'eng'),
(438, 'czeczotka tundrowa', 'Acanthis hornemanni', 'eng'),
(439, 'krzyżodziób sosnowy', 'Loxia pytyopsittacus', 'eng'),
(440, 'krzyżodziób świerkowy', 'Loxia curvirostra', 'eng'),
(441, 'krzyżodziób modrzewiowy', 'Loxia leucoptera', 'eng'),
(442, 'szczygieł', 'Carduelis carduelis', 'eng'),
(443, 'osetnik', 'Carduelis citrinella', 'eng'),
(444, 'kulczyk', 'Serinus serinus', 'eng'),
(445, 'czyż', 'Spinus spinus', 'eng'),
(446, 'poświerka', 'Calcarius lapponicus', 'eng'),
(447, 'śnieguła', 'Plectrophenax nivalis', 'eng'),
(448, 'trznadel czarnogłowy', 'Emberiza melanocephala', 'eng'),
(449, 'potrzeszcz', 'Emberiza calandra', 'eng'),
(450, 'głuszek', 'Emberiza cia', 'eng'),
(451, 'ortolan', 'Emberiza hortulana', 'eng'),
(452, 'cierlik', 'Emberiza cirlus', 'eng'),
(453, 'trznadel', 'Emberiza citrinella', 'eng'),
(454, 'trznadel białogłowy', 'Emberiza leucocephalus', 'eng'),
(455, 'potrzos', 'Emberiza schoeniclus', 'eng'),
(456, 'trznadel czubaty', 'Emberiza rustica', 'eng'),
(457, 'trznadelek', 'Emberiza pusilla', 'eng'),
(458, 'trznadel złotawy', 'Emberiza aureola', 'eng'),
(459, 'trznadel złotobrewy', 'Emberiza chrysophrys', 'eng'),
(460, 'junko', 'Junco hyemalis', 'eng');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `locations`
--

CREATE TABLE `locations` (
  `ID` int(11) NOT NULL,
  `IDusers` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `locations`
--

INSERT INTO `locations` (`ID`, `IDusers`, `name`, `lat`, `lng`) VALUES
(13, 2, 'Park Jordana, Kraków', 50.063351, 19.917316),
(14, 2, 'Park Krakowski, Kraków', 50.067924, 19.924183);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `observations`
--

CREATE TABLE `observations` (
  `ID` int(11) NOT NULL,
  `IDusers` int(11) NOT NULL,
  `IDbirds` int(11) NOT NULL,
  `IDlocations` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `observations`
--

INSERT INTO `observations` (`ID`, `IDusers`, `IDbirds`, `IDlocations`, `date`) VALUES
(1, 2, 264, 13, '2019-03-05'),
(2, 2, 364, 13, '2019-03-04'),
(3, 2, 369, 14, '2019-03-01'),
(11, 2, 306, 13, '2019-03-09'),
(12, 3, 373, 13, '2019-03-16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `nickname` text COLLATE utf32_polish_ci NOT NULL,
  `email` text COLLATE utf32_polish_ci NOT NULL,
  `password` text COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID`, `nickname`, `email`, `password`) VALUES
(2, 'PanHungry', 'kam.glod@gmail.com', '$2y$10$h5XQc2sdzTUfqwTPblpsWukWPtbk654j2AkGyMfqLebl8DSw.NC5m'),
(3, 'SuperUser', 'super@wp.pl', '$2y$10$oUnLxv1gjA8E7Y0/UXxvxOMPf1H3ETi/PKl8YUYr818hZZVDw1acO'),
(4, 'Kamil Glod', 'eco@gmail.com', '$2y$10$1Usj0NE8YEjmaDpvdYEhxu6RvyQ8RWOdSWd5EbtrQfivZWCONxsQa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `birds`
--
ALTER TABLE `birds`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `observations`
--
ALTER TABLE `observations`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `birds`
--
ALTER TABLE `birds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT dla tabeli `locations`
--
ALTER TABLE `locations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `observations`
--
ALTER TABLE `observations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
