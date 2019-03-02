-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Mar 2019, 13:15
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
(NULL , 'sterniczka jamajska' , 'Oxyura jamaicensis' , 'eng'),
(NULL , 'sterniczka' , 'Oxyura leucocephala' , 'eng'),
(NULL , 'łabędź niemy' , 'Cygnus olor' , 'eng'),
(NULL , 'łabędź czarnodzioby' , 'Cygnus columbianus' , 'eng'),
(NULL , 'łabędź krzykliwy' , 'Cygnus cygnus' , 'eng'),
(NULL , 'bernikla obrożna' , 'Branta bernicla' , 'eng'),
(NULL , 'bernikla białolica' , 'Branta leucopsis' , 'eng'),
(NULL , 'bernikla rdzawoszyja' , 'Branta ruficollis' , 'eng'),
(NULL , 'bernikla kanadyjska' , 'Branta canadensis' , 'eng'),
(NULL , 'gęgawa' , 'Anser anser' , 'eng'),
(NULL , 'gęś zbożowa' , 'Anser fabalis' , 'eng'),
(NULL , 'gęś tundrowa' , 'Anser serrirostris' , 'eng'),
(NULL , 'gęś krótkodzioba' , 'Anser brachyrhynchus' , 'eng'),
(NULL , 'gęś białoczelna' , 'Anser albifrons' , 'eng'),
(NULL , 'gęś mała' , 'Anser erythropus' , 'eng'),
(NULL , 'lodówka' , 'Clangula hyemalis' , 'eng'),
(NULL , 'turkan' , 'Somateria spectabilis' , 'eng'),
(NULL , 'edredon' , 'Somateria mollissima' , 'eng'),
(NULL , 'birginiak' , 'Polysticta stelleri' , 'eng'),
(NULL , 'uhla' , 'Melanitta fusca' , 'eng'),
(NULL , 'uhla garbonosa' , 'Melanitta deglandi' , 'eng'),
(NULL , 'markaczka' , 'Melanitta nigra' , 'eng'),
(NULL , 'markaczka amerykańska' , 'Melanitta americana' , 'eng'),
(NULL , 'gągoł' , 'Bucephala clangula' , 'eng'),
(NULL , 'bielaczek' , 'Mergellus albellus' , 'eng'),
(NULL , 'nurogęś' , 'Mergus merganser' , 'eng'),
(NULL , 'szlachar' , 'Mergus serrator' , 'eng'),
(NULL , 'kamieniuszka' , 'Histrionicus histrionicus' , 'eng'),
(NULL , 'gęsiówka egipska' , 'Alopochen aegyptiaca' , 'eng'),
(NULL , 'ohar' , 'Tadorna tadorna' , 'eng'),
(NULL , 'kazarka rdzawa' , 'Tadorna ferruginea' , 'eng'),
(NULL , 'hełmiatka' , 'Netta rufina' , 'eng'),
(NULL , 'głowienka' , 'Aythya ferina' , 'eng'),
(NULL , 'podgorzałka' , 'Aythya nyroca' , 'eng'),
(NULL , 'czerniczka' , 'Aythya collaris' , 'eng'),
(NULL , 'czernica' , 'Aythya fuligula' , 'eng'),
(NULL , 'ogorzałka' , 'Aythya marila' , 'eng'),
(NULL , 'ogorzałka mała' , 'Aythya affinis' , 'eng'),
(NULL , 'cyranka' , 'Spatula querquedula' , 'eng'),
(NULL , 'płaskonos' , 'Spatula clypeata' , 'eng'),
(NULL , 'cyranka modroskrzydła' , 'Spatula discors' , 'eng'),
(NULL , 'krakwa' , 'Mareca strepera' , 'eng'),
(NULL , 'świstun' , 'Mareca penelope' , 'eng'),
(NULL , 'świstun amerykański' , 'Mareca americana' , 'eng'),
(NULL , 'krzyżówka' , 'Anas platyrhynchos' , 'eng'),
(NULL , 'rożeniec' , 'Anas acuta' , 'eng'),
(NULL , 'cyraneczka' , 'Anas crecca' , 'eng'),
(NULL , 'cyraneczka karolińska' , 'Anas carolinensis' , 'eng'),
(NULL , 'mandarynka' , 'Aix galericulata' , 'eng'),
(NULL , 'przepiórka' , 'Coturnix coturnix' , 'eng'),
(NULL , 'bażant' , 'Phasianus colchicus' , 'eng'),
(NULL , 'kuropatwa' , 'Perdix perdix' , 'eng'),
(NULL , 'jarząbek' , 'Tetrastes bonasia' , 'eng'),
(NULL , 'pardwa mszarna' , 'Lagopus lagopus' , 'eng'),
(NULL , 'głuszec' , 'Tetrao urogallus' , 'eng'),
(NULL , 'cietrzew' , 'Lyrurus tetrix' , 'eng'),
(NULL , 'flaming różowy' , 'Phoenicopterus roseus' , 'eng'),
(NULL , 'perkoz grubodzioby' , 'Podilymbus podiceps' , 'eng'),
(NULL , 'perkozek' , 'Tachybaptus ruficollis' , 'eng'),
(NULL , 'perkoz rdzawoszyi' , 'Podiceps grisegena' , 'eng'),
(NULL , 'perkoz dwuczuby' , 'Podiceps cristatus' , 'eng'),
(NULL , 'perkoz rogaty' , 'Podiceps auritus' , 'eng'),
(NULL , 'zausznik' , 'Podiceps nigricollis' , 'eng'),
(NULL , 'gołąb miejski' , 'Columba livia forma urbana' , 'eng'),
(NULL , 'siniak' , 'Columba oenas' , 'eng'),
(NULL , 'grzywacz' , 'Columba palumbus' , 'eng'),
(NULL , 'turkawka' , 'Streptopelia turtur' , 'eng'),
(NULL , 'turkawka wschodnia' , 'Streptopelia orientalis' , 'eng'),
(NULL , 'sierpówka' , 'Streptopelia decaocto' , 'eng'),
(NULL , 'pustynnik' , 'Syrrhaptes paradoxus' , 'eng'),
(NULL , 'lelek' , 'Caprimulgus europaeus' , 'eng'),
(NULL , 'jerzyk alpejski' , 'Tachymarptis melba' , 'eng'),
(NULL , 'jerzyk blady' , 'Apus pallidus' , 'eng'),
(NULL , 'jerzyk' , 'Apus apus' , 'eng'),
(NULL , 'kukułka' , 'Cuculus canorus' , 'eng'),
(NULL , 'wodnik' , 'Rallus aquaticus' , 'eng'),
(NULL , 'derkacz' , 'Crex crex' , 'eng'),
(NULL , 'kropiatka' , 'Porzana porzana' , 'eng'),
(NULL , 'zielonka' , 'Zapornia parva' , 'eng'),
(NULL , 'karliczka' , 'Zapornia pusilla' , 'eng'),
(NULL , 'kokoszka' , 'Gallinula chloropus' , 'eng'),
(NULL , 'łyska' , 'Fulica atra' , 'eng'),
(NULL , 'żuraw stepowy' , 'Grus virgo' , 'eng'),
(NULL , 'żuraw' , 'Grus grus' , 'eng'),
(NULL , 'strepet' , 'Tetrax tetrax' , 'eng'),
(NULL , 'drop' , 'Otis tarda' , 'eng'),
(NULL , 'hubara arabska' , 'Chlamydotis macqueenii' , 'eng'),
(NULL , 'kulon' , 'Burhinus oedicnemus' , 'eng'),
(NULL , 'ostrygojad' , 'Haematopus ostralegus' , 'eng'),
(NULL , 'szczudłak' , 'Himantopus himantopus' , 'eng'),
(NULL , 'szablodziób' , 'Recurvirostra avosetta' , 'eng'),
(NULL , 'siewnica' , 'Pluvialis squatarola' , 'eng'),
(NULL , 'siewka złota' , 'Pluvialis apricaria' , 'eng'),
(NULL , 'siewka złotawa' , 'Pluvialis fulva' , 'eng'),
(NULL , 'siewka szara' , 'Pluvialis dominica' , 'eng'),
(NULL , 'mornel' , 'Charadrius morinellus' , 'eng'),
(NULL , 'sieweczka obrożna' , 'Charadrius hiaticula' , 'eng'),
(NULL , 'sieweczka rzeczna' , 'Charadrius dubius' , 'eng'),
(NULL , 'sieweczka morska' , 'Charadrius alexandrinus' , 'eng'),
(NULL , 'sieweczka mongolska' , 'Charadrius mongolus' , 'eng'),
(NULL , 'sieweczka pustynna' , 'Charadrius leschenaultii' , 'eng'),
(NULL , 'sieweczka długonoga' , 'Charadrius asiaticus' , 'eng'),
(NULL , 'czajka' , 'Vanellus vanellus' , 'eng'),
(NULL , 'czajka towarzyska' , 'Vanellus gregarius' , 'eng'),
(NULL , 'czajka stepowa' , 'Vanellus leucurus' , 'eng'),
(NULL , 'kulik mniejszy' , 'Numenius phaeopus' , 'eng'),
(NULL , 'kulik cienkodzioby' , 'Numenius tenuirostris' , 'eng'),
(NULL , 'kulik wielki' , 'Numenius arquata' , 'eng'),
(NULL , 'szlamnik' , 'Limosa lapponica' , 'eng'),
(NULL , 'rycyk' , 'Limosa limosa' , 'eng'),
(NULL , 'kamusznik' , 'Arenaria interpres' , 'eng'),
(NULL , 'biegus wielki' , 'Calidris tenuirostris' , 'eng'),
(NULL , 'biegus rdzawy' , 'Calidris canutus' , 'eng'),
(NULL , 'batalion' , 'Calidris pugnax' , 'eng'),
(NULL , 'biegus płaskodzioby' , 'Calidris falcinellus' , 'eng'),
(NULL , 'biegus krzywodzioby' , 'Calidris ferruginea' , 'eng'),
(NULL , 'biegus mały' , 'Calidris temminckii' , 'eng'),
(NULL , 'piaskowiec' , 'Calidris alba' , 'eng'),
(NULL , 'biegus zmienny' , 'Calidris alpina' , 'eng'),
(NULL , 'biegus morski' , 'Calidris maritima' , 'eng'),
(NULL , 'biegus długoskrzydły' , 'Calidris bairdii' , 'eng'),
(NULL , 'biegus malutki' , 'Calidris minuta' , 'eng'),
(NULL , 'biegus karłowaty' , 'Calidris minutilla' , 'eng'),
(NULL , 'biegus białorzytny' , 'Calidris fuscicollis' , 'eng'),
(NULL , 'biegus płowy' , 'Calidris subruficollis' , 'eng'),
(NULL , 'biegus arktyczny' , 'Calidris melanotos' , 'eng'),
(NULL , 'biegus tundrowy' , 'Calidris pusilla' , 'eng'),
(NULL , 'szlamiec długodzioby' , 'Limnodromus scolopaceus' , 'eng'),
(NULL , 'słonka' , 'Scolopax rusticola' , 'eng'),
(NULL , 'dubelt' , 'Gallinago media' , 'eng'),
(NULL , 'kszyk' , 'Gallinago gallinago' , 'eng'),
(NULL , 'bekasik' , 'Lymnocryptes minimus' , 'eng'),
(NULL , 'terekia' , 'Xenus cinereus' , 'eng'),
(NULL , 'brodziec piskliwy' , 'Actitis hypoleucos' , 'eng'),
(NULL , 'brodziec plamisty' , 'Actitis macularius' , 'eng'),
(NULL , 'samotnik' , 'Tringa ochropus' , 'eng'),
(NULL , 'brodziec żółtonogi' , 'Tringa flavipes' , 'eng'),
(NULL , 'brodziec śniady' , 'Tringa erythropus' , 'eng'),
(NULL , 'kwokacz' , 'Tringa nebularia' , 'eng'),
(NULL , 'brodziec piegowaty' , 'Tringa melanoleuca' , 'eng'),
(NULL , 'krwawodziób' , 'Tringa totanus' , 'eng'),
(NULL , 'łęczak' , 'Tringa glareola' , 'eng'),
(NULL , 'brodziec pławny' , 'Tringa stagnatilis' , 'eng'),
(NULL , 'płatkonóg szydłodzioby' , 'Phalaropus lobatus' , 'eng'),
(NULL , 'płatkonóg płaskodzioby' , 'Phalaropus fulicarius' , 'eng'),
(NULL , 'żwirowiec łąkowy' , 'Glareola pratincola' , 'eng'),
(NULL , 'żwirowiec stepowy' , 'Glareola nordmanni' , 'eng'),
(NULL , 'maskonur' , 'Fratercula arctica' , 'eng'),
(NULL , 'nurnik' , 'Cepphus grylle' , 'eng'),
(NULL , 'alka' , 'Alca torda' , 'eng'),
(NULL , 'alczyk' , 'Alle alle' , 'eng'),
(NULL , 'nurzyk polarny' , 'Uria lomvia' , 'eng'),
(NULL , 'nurzyk' , 'Uria aalge' , 'eng'),
(NULL , 'wydrzyk długosterny' , 'Stercorarius longicaudus' , 'eng'),
(NULL , 'wydrzyk ostrosterny' , 'Stercorarius parasiticus' , 'eng'),
(NULL , 'wydrzyk tęposterny' , 'Stercorarius pomarinus' , 'eng'),
(NULL , 'wydrzyk wielki' , 'Stercorarius skua' , 'eng'),
(NULL , 'mewa modrodzioba' , 'Pagophila eburnea' , 'eng'),
(NULL , 'mewa obrożna' , 'Xema sabini' , 'eng'),
(NULL , 'mewa trójpalczasta' , 'Rissa tridactyla' , 'eng'),
(NULL , 'mewa cienkodzioba' , 'Chroicocephalus genei' , 'eng'),
(NULL , 'śmieszka' , 'Chroicocephalus ridibundus' , 'eng'),
(NULL , 'mewa mała' , 'Hydrocoloeus minutus' , 'eng'),
(NULL , 'mewa różowa' , 'Rhodostethia rosea' , 'eng'),
(NULL , 'mewa karaibska' , 'Leucophaeus atricilla' , 'eng'),
(NULL , 'mewa czarnogłowa' , 'Ichthyaetus melanocephalus' , 'eng'),
(NULL , 'orlica' , 'Ichthyaetus ichthyaetus' , 'eng'),
(NULL , 'mewa siwa' , 'Larus canus' , 'eng'),
(NULL , 'mewa delawarska' , 'Larus delawarensis' , 'eng'),
(NULL , 'mewa żółtonoga' , 'Larus fuscus' , 'eng'),
(NULL , 'mewa srebrzysta' , 'Larus argentatus' , 'eng'),
(NULL , 'mewa popielata' , 'Larus smithsonianus' , 'eng'),
(NULL , 'mewa romańska' , 'Larus michahellis' , 'eng'),
(NULL , 'mewa białogłowa' , 'Larus cachinnans' , 'eng'),
(NULL , 'mewa blada' , 'Larus hyperboreus' , 'eng'),
(NULL , 'mewa polarna' , 'Larus glaucoides' , 'eng'),
(NULL , 'mewa ochocka' , 'Larus schistisagus' , 'eng'),
(NULL , 'mewa siodłata' , 'Larus marinus' , 'eng'),
(NULL , 'rybitwa krótkodzioba' , 'Gelochelidon nilotica' , 'eng'),
(NULL , 'rybitwa wielkodzioba' , 'Hydroprogne caspia' , 'eng'),
(NULL , 'rybitwa czubata' , 'Thalasseus sandvicensis' , 'eng'),
(NULL , 'rybitwa różowa' , 'Sterna dougallii' , 'eng'),
(NULL , 'rybitwa rzeczna' , 'Sterna hirundo' , 'eng'),
(NULL , 'rybitwa popielata' , 'Sterna paradisaea' , 'eng'),
(NULL , 'rybitwa białoczelna' , 'Sternula albifrons' , 'eng'),
(NULL , 'rybitwa białowąsa' , 'Chlidonias hybrida' , 'eng'),
(NULL , 'rybitwa czarna' , 'Chlidonias niger' , 'eng'),
(NULL , 'rybitwa białoskrzydła' , 'Chlidonias leucopterus' , 'eng'),
(NULL , 'nur rdzawoszyi' , 'Gavia stellata' , 'eng'),
(NULL , 'nur czarnoszyi' , 'Gavia arctica' , 'eng'),
(NULL , 'lodowiec' , 'Gavia immer' , 'eng'),
(NULL , 'nur białodzioby' , 'Gavia adamsii' , 'eng'),
(NULL , 'oceannik żółtopłetwy' , 'Oceanites oceanicus' , 'eng'),
(NULL , 'nawałnik burzowy' , 'Hydrobates pelagicus' , 'eng'),
(NULL , 'nawałnik duży' , 'Hydrobates leucorhous' , 'eng'),
(NULL , 'fulmar' , 'Fulmarus glacialis' , 'eng'),
(NULL , 'burzyk żółtodzioby' , 'Calonectris diomedea' , 'eng'),
(NULL , 'burzyk szary' , 'Ardenna grisea' , 'eng'),
(NULL , 'burzyk północny' , 'Puffinus puffinus' , 'eng'),
(NULL , 'burzyk balearski' , 'Puffinus mauretanicus' , 'eng'),
(NULL , 'bocian czarny' , 'Ciconia nigra' , 'eng'),
(NULL , 'bocian biały' , 'Ciconia ciconia' , 'eng'),
(NULL , 'pelikan różowy' , 'Pelecanus onocrotalus' , 'eng'),
(NULL , 'pelikan kędzierzawy' , 'Pelecanus crispus' , 'eng'),
(NULL , 'bąk' , 'Botaurus stellaris' , 'eng'),
(NULL , 'bączek' , 'Ixobrychus minutus' , 'eng'),
(NULL , 'ślepowron' , 'Nycticorax nycticorax' , 'eng'),
(NULL , 'czapla modronosa' , 'Ardeola ralloides' , 'eng'),
(NULL , 'czapla złotawa' , 'Bubulcus ibis' , 'eng'),
(NULL , 'czapla siwa' , 'Ardea cinerea' , 'eng'),
(NULL , 'czapla purpurowa' , 'Ardea purpurea' , 'eng'),
(NULL , 'czapla biała' , 'Ardea alba' , 'eng'),
(NULL , 'czapla nadobna' , 'Egretta garzetta' , 'eng'),
(NULL , 'warzęcha' , 'Platalea leucorodia' , 'eng'),
(NULL , 'ibis kasztanowaty' , 'Plegadis falcinellus' , 'eng'),
(NULL , 'głuptak' , 'Morus bassanus' , 'eng'),
(NULL , 'kormoran mały' , 'Microcarbo pygmeus' , 'eng'),
(NULL , 'kormoran czubaty' , 'Phalacrocorax aristotelis' , 'eng'),
(NULL , 'kormoran' , 'Phalacrocorax carbo' , 'eng'),
(NULL , 'rybołów' , 'Pandion haliaetus' , 'eng'),
(NULL , 'kaniuk' , 'Elanus caeruleus' , 'eng'),
(NULL , 'trzmielojad' , 'Pernis apivorus' , 'eng'),
(NULL , 'orłosęp' , 'Gypaetus barbatus' , 'eng'),
(NULL , 'ścierwnik' , 'Neophron percnopterus' , 'eng'),
(NULL , 'gadożer' , 'Circaetus gallicus' , 'eng'),
(NULL , 'sęp płowy' , 'Gyps fulvus' , 'eng'),
(NULL , 'sęp kasztanowaty' , 'Aegypius monachus' , 'eng'),
(NULL , 'orlik krzykliwy' , 'Clanga pomarina' , 'eng'),
(NULL , 'orlik grubodzioby' , 'Clanga clanga' , 'eng'),
(NULL , 'orzeł stepowy' , 'Aquila nipalensis' , 'eng'),
(NULL , 'orzeł cesarski' , 'Aquila heliaca' , 'eng'),
(NULL , 'orzeł przedni' , 'Aquila chrysaetos' , 'eng'),
(NULL , 'orzełek' , 'Hieraaetus pennatus' , 'eng'),
(NULL , 'błotniak stawowy' , 'Circus aeruginosus' , 'eng'),
(NULL , 'błotniak zbożowy' , 'Circus cyaneus' , 'eng'),
(NULL , 'błotniak stepowy' , 'Circus macrourus' , 'eng'),
(NULL , 'błotniak łąkowy' , 'Circus pygargus' , 'eng'),
(NULL , 'krogulec krótkonogi' , 'Accipiter brevipes' , 'eng'),
(NULL , 'krogulec' , 'Accipiter nisus' , 'eng'),
(NULL , 'jastrząb' , 'Accipiter gentilis' , 'eng'),
(NULL , 'bielik wschodni' , 'Haliaeetus leucoryphus' , 'eng'),
(NULL , 'bielik' , 'Haliaeetus albicilla' , 'eng'),
(NULL , 'kania ruda' , 'Milvus milvus' , 'eng'),
(NULL , 'kania czarna' , 'Milvus migrans' , 'eng'),
(NULL , 'myszołów włochaty' , 'Buteo lagopus' , 'eng'),
(NULL , 'myszołów' , 'Buteo buteo' , 'eng'),
(NULL , 'kurhannik' , 'Buteo rufinus' , 'eng'),
(NULL , 'płomykówka' , 'Tyto alba' , 'eng'),
(NULL , 'sowa jarzębata' , 'Surnia ulula' , 'eng'),
(NULL , 'sóweczka' , 'Glaucidium passerinum' , 'eng'),
(NULL , 'pójdźka' , 'Athene noctua' , 'eng'),
(NULL , 'włochatka' , 'Aegolius funereus' , 'eng'),
(NULL , 'syczek' , 'Otus scops' , 'eng'),
(NULL , 'uszatka' , 'Asio otus' , 'eng'),
(NULL , 'uszatka błotna' , 'Asio flammeus' , 'eng'),
(NULL , 'puszczyk' , 'Strix aluco' , 'eng'),
(NULL , 'puszczyk uralski' , 'Strix uralensis' , 'eng'),
(NULL , 'puszczyk mszarny' , 'Strix nebulosa' , 'eng'),
(NULL , 'sowa śnieżna' , 'Bubo scandiacus' , 'eng'),
(NULL , 'puchacz' , 'Bubo bubo' , 'eng'),
(NULL , 'dudek' , 'Upupa epops' , 'eng'),
(NULL , 'krętogłów' , 'Jynx torquilla' , 'eng'),
(NULL , 'dzięcioł zielonosiwy' , 'Picus canus' , 'eng'),
(NULL , 'dzięcioł zielony' , 'Picus viridis' , 'eng'),
(NULL , 'dzięcioł czarny' , 'Dryocopus martius' , 'eng'),
(NULL , 'dzięcioł średni' , 'Dendrocoptes medius' , 'eng'),
(NULL , 'dzięciołek' , 'Dryobates minor' , 'eng'),
(NULL , 'dzięcioł duży' , 'Dendrocopos major' , 'eng'),
(NULL , 'dzięcioł białoszyi' , 'Dendrocopos syriacus' , 'eng'),
(NULL , 'dzięcioł białogrzbiety' , 'Dendrocopos leucotos' , 'eng'),
(NULL , 'dzięcioł trójpalczasty' , 'Picoides tridactylus' , 'eng'),
(NULL , 'żołna' , 'Merops apiaster' , 'eng'),
(NULL , 'kraska' , 'Coracias garrulus' , 'eng'),
(NULL , 'zimorodek' , 'Alcedo atthis' , 'eng'),
(NULL , 'rybaczek srokaty' , 'Ceryle rudis' , 'eng'),
(NULL , 'pustułeczka' , 'Falco naumanni' , 'eng'),
(NULL , 'pustułka' , 'Falco tinnunculus' , 'eng'),
(NULL , 'kobczyk' , 'Falco vespertinus' , 'eng'),
(NULL , 'drzemlik' , 'Falco columbarius' , 'eng'),
(NULL , 'kobuz' , 'Falco subbuteo' , 'eng'),
(NULL , 'sokół skalny' , 'Falco eleonorae' , 'eng'),
(NULL , 'raróg' , 'Falco cherrug' , 'eng'),
(NULL , 'białozór' , 'Falco rusticolus' , 'eng'),
(NULL , 'sokół wędrowny' , 'Falco peregrinus' , 'eng'),
(NULL , 'aleksandretta obrożna' , 'Psittacula krameri' , 'eng'),
(NULL , 'wireonek czerwonooki' , 'Vireo olivaceus' , 'eng'),
(NULL , 'wilga' , 'Oriolus oriolus' , 'eng'),
(NULL , 'gąsiorek' , 'Lanius collurio' , 'eng'),
(NULL , 'dzierzba rdzawosterna' , 'Lanius phoenicuroides' , 'eng'),
(NULL , 'dzierzba pustynna' , 'Lanius isabellinus' , 'eng'),
(NULL , 'dzierzba czarnoczelna' , 'Lanius minor' , 'eng'),
(NULL , 'srokosz' , 'Lanius excubitor' , 'eng'),
(NULL , 'dzierzba rudogłowa' , 'Lanius senator' , 'eng'),
(NULL , 'wieszczek' , 'Pyrrhocorax graculus' , 'eng'),
(NULL , 'sójka syberyjska' , 'Perisoreus infaustus' , 'eng'),
(NULL , 'sójka' , 'Garrulus glandarius' , 'eng'),
(NULL , 'sroka' , 'Pica pica' , 'eng'),
(NULL , 'orzechówka' , 'Nucifraga caryocatactes' , 'eng'),
(NULL , 'kawka' , 'Corvus monedula' , 'eng'),
(NULL , 'gawron' , 'Corvus frugilegus' , 'eng'),
(NULL , 'kruk' , 'Corvus corax' , 'eng'),
(NULL , 'czarnowron' , 'Corvus corone' , 'eng'),
(NULL , 'wrona siwa' , 'Corvus cornix' , 'eng'),
(NULL , 'sosnówka' , 'Periparus ater' , 'eng'),
(NULL , 'czubatka' , 'Lophophanes cristatus' , 'eng'),
(NULL , 'sikora uboga' , 'Poecile palustris' , 'eng'),
(NULL , 'czarnogłówka' , 'Poecile montanus' , 'eng'),
(NULL , 'modraszka' , 'Cyanistes caeruleus' , 'eng'),
(NULL , 'sikora lazurowa' , 'Cyanistes cyanus' , 'eng'),
(NULL , 'bogatka' , 'Parus major' , 'eng'),
(NULL , 'remiz' , 'Remiz pendulinus' , 'eng'),
(NULL , 'kalandra szara' , 'Melanocorypha calandra' , 'eng'),
(NULL , 'kalandra czarna' , 'Melanocorypha yeltoniensis' , 'eng'),
(NULL , 'skowrończyk krótkopalcowy' , 'Calandrella brachydactyla' , 'eng'),
(NULL , 'górniczek' , 'Eremophila alpestris' , 'eng'),
(NULL , 'lerka' , 'Lullula arborea' , 'eng'),
(NULL , 'skowronek białoskrzydły' , 'Alauda leucoptera' , 'eng'),
(NULL , 'skowronek' , 'Alauda arvensis' , 'eng'),
(NULL , 'dzierlatka' , 'Galerida cristata' , 'eng'),
(NULL , 'wąsatka' , 'Panurus biarmicus' , 'eng'),
(NULL , 'świerszczak melodyjny' , 'Locustella certhiola' , 'eng'),
(NULL , 'brzęczka' , 'Locustella luscinioides' , 'eng'),
(NULL , 'strumieniówka' , 'Locustella fluviatilis' , 'eng'),
(NULL , 'świerszczak' , 'Locustella naevia' , 'eng'),
(NULL , 'zaganiacz mały' , 'Iduna caligata' , 'eng'),
(NULL , 'zaganiacz blady' , 'Iduna pallida' , 'eng'),
(NULL , 'zaganiacz szczebiotliwy' , 'Hippolais polyglotta' , 'eng'),
(NULL , 'zaganiacz' , 'Hippolais icterina' , 'eng'),
(NULL , 'wodniczka' , 'Acrocephalus paludicola' , 'eng'),
(NULL , 'tamaryszka' , 'Acrocephalus melanopogon' , 'eng'),
(NULL , 'rokitniczka' , 'Acrocephalus schoenobaenus' , 'eng'),
(NULL , 'zaroślówka' , 'Acrocephalus dumetorum' , 'eng'),
(NULL , 'łozówka' , 'Acrocephalus palustris' , 'eng'),
(NULL , 'trzcinniczek' , 'Acrocephalus scirpaceus' , 'eng'),
(NULL , 'trzcinniczek kaspijski' , 'Acrocephalus agricola' , 'eng'),
(NULL , 'trzciniak' , 'Acrocephalus arundinaceus' , 'eng'),
(NULL , 'oknówka' , 'Delichon urbicum' , 'eng'),
(NULL , 'jaskółka rudawa' , 'Cecropis daurica' , 'eng'),
(NULL , 'dymówka' , 'Hirundo rustica' , 'eng'),
(NULL , 'brzegówka' , 'Riparia riparia' , 'eng'),
(NULL , 'świstunka górska' , 'Phylloscopus bonelli' , 'eng'),
(NULL , 'świstunka leśna' , 'Phylloscopus sibilatrix' , 'eng'),
(NULL , 'świstunka żółtawa' , 'Phylloscopus inornatus' , 'eng'),
(NULL , 'świstunka ałtajska' , 'Phylloscopus humei' , 'eng'),
(NULL , 'świstunka złotawa' , 'Phylloscopus proregulus' , 'eng'),
(NULL , 'świstunka brunatna' , 'Phylloscopus fuscatus' , 'eng'),
(NULL , 'piecuszek' , 'Phylloscopus trochilus' , 'eng'),
(NULL , 'świstunka iberyjska' , 'Phylloscopus ibericus' , 'eng'),
(NULL , 'pierwiosnek' , 'Phylloscopus collybita' , 'eng'),
(NULL , 'świstunka grubodzioba' , 'Phylloscopus schwarzi' , 'eng'),
(NULL , 'wójcik' , 'Phylloscopus trochiloides' , 'eng'),
(NULL , 'świstunka północna' , 'Phylloscopus borealis' , 'eng'),
(NULL , 'raniuszek' , 'Aegithalos caudatus' , 'eng'),
(NULL , 'kapturka' , 'Sylvia atricapilla' , 'eng'),
(NULL , 'gajówka' , 'Sylvia borin' , 'eng'),
(NULL , 'jarzębatka' , 'Sylvia nisoria' , 'eng'),
(NULL , 'piegża' , 'Sylvia curruca' , 'eng'),
(NULL , 'pokrzewka wąsata' , 'Sylvia cantillans' , 'eng'),
(NULL , 'pokrzewka aksamitna' , 'Sylvia melanocephala' , 'eng'),
(NULL , 'cierniówka' , 'Sylvia communis' , 'eng'),
(NULL , 'mysikrólik' , 'Regulus regulus' , 'eng'),
(NULL , 'zniczek' , 'Regulus ignicapilla' , 'eng'),
(NULL , 'jemiołuszka' , 'Bombycilla garrulus' , 'eng'),
(NULL , 'kowalik' , 'Sitta europaea' , 'eng'),
(NULL , 'pełzacz leśny' , 'Certhia familiaris' , 'eng'),
(NULL , 'pełzacz ogrodowy' , 'Certhia brachydactyla' , 'eng'),
(NULL , 'pomurnik' , 'Tichodroma muraria' , 'eng'),
(NULL , 'strzyżyk' , 'Troglodytes troglodytes' , 'eng'),
(NULL , 'szpak' , 'Sturnus vulgaris' , 'eng'),
(NULL , 'pasterz' , 'Pastor roseus' , 'eng'),
(NULL , 'pluszcz' , 'Cinclus cinclus' , 'eng'),
(NULL , 'muchołówka szara' , 'Muscicapa striata' , 'eng'),
(NULL , 'rudzik' , 'Erithacus rubecula' , 'eng'),
(NULL , 'słowik syberyjski' , 'Larvivora sibilans' , 'eng'),
(NULL , 'słowik rdzawy' , 'Luscinia megarhynchos' , 'eng'),
(NULL , 'słowik szary' , 'Luscinia luscinia' , 'eng'),
(NULL , 'podróżniczek' , 'Luscinia svecica' , 'eng'),
(NULL , 'modraczek' , 'Tarsiger cyanurus' , 'eng'),
(NULL , 'muchołówka mała' , 'Ficedula parva' , 'eng'),
(NULL , 'muchołówka żałobna' , 'Ficedula hypoleuca' , 'eng'),
(NULL , 'muchołówka białoszyja' , 'Ficedula albicollis' , 'eng'),
(NULL , 'pleszka' , 'Phoenicurus phoenicurus' , 'eng'),
(NULL , 'kopciuszek' , 'Phoenicurus ochruros' , 'eng'),
(NULL , 'nagórnik' , 'Monticola saxatilis' , 'eng'),
(NULL , 'pokląskwa' , 'Saxicola rubetra' , 'eng'),
(NULL , 'kląskawka syberyjska' , 'Saxicola maurus' , 'eng'),
(NULL , 'kląskawka' , 'Saxicola rubicola' , 'eng'),
(NULL , 'białorzytka' , 'Oenanthe oenanthe' , 'eng'),
(NULL , 'białorzytka płowa' , 'Oenanthe isabellina' , 'eng'),
(NULL , 'białorzytka pustynna' , 'Oenanthe deserti' , 'eng'),
(NULL , 'białorzytka rdzawa' , 'Oenanthe hispanica' , 'eng'),
(NULL , 'białorzytka pstra' , 'Oenanthe pleschanka' , 'eng'),
(NULL , 'białorzytka saharyjska' , 'Oenanthe leucopyga' , 'eng'),
(NULL , 'drozdoń tajgowy' , 'Zoothera aurea' , 'eng'),
(NULL , 'drozdaczek ciemny' , 'Geokichla sibirica' , 'eng'),
(NULL , 'paszkot' , 'Turdus viscivorus' , 'eng'),
(NULL , 'śpiewak' , 'Turdus philomelos' , 'eng'),
(NULL , 'droździk' , 'Turdus iliacus' , 'eng'),
(NULL , 'kos' , 'Turdus merula' , 'eng'),
(NULL , 'drozd oliwkowy' , 'Turdus obscurus' , 'eng'),
(NULL , 'kwiczoł' , 'Turdus pilaris' , 'eng'),
(NULL , 'drozd obrożny' , 'Turdus torquatus' , 'eng'),
(NULL , 'drozd rdzawy' , 'Turdus naumanni' , 'eng'),
(NULL , 'drozd rdzawoskrzydły' , 'Turdus eunomus' , 'eng'),
(NULL , 'drozd czarnogardły' , 'Turdus atrogularis' , 'eng'),
(NULL , 'drozd rdzawogardły' , 'Turdus ruficollis' , 'eng'),
(NULL , 'płochacz halny' , 'Prunella collaris' , 'eng'),
(NULL , 'płochacz syberyjski' , 'Prunella montanella' , 'eng'),
(NULL , 'pokrzywnica' , 'Prunella modularis' , 'eng'),
(NULL , 'wróbel' , 'Passer domesticus' , 'eng'),
(NULL , 'mazurek' , 'Passer montanus' , 'eng'),
(NULL , 'wróbel skalny' , 'Petronia petronia' , 'eng'),
(NULL , 'śnieżka' , 'Montifringilla nivalis' , 'eng'),
(NULL , 'świergotek drzewny' , 'Anthus trivialis' , 'eng'),
(NULL , 'świergotek tajgowy' , 'Anthus hodgsoni' , 'eng'),
(NULL , 'świergotek rdzawogardły' , 'Anthus cervinus' , 'eng'),
(NULL , 'świergotek łąkowy' , 'Anthus pratensis' , 'eng'),
(NULL , 'siwerniak' , 'Anthus spinoletta' , 'eng'),
(NULL , 'świergotek nadmorski' , 'Anthus petrosus' , 'eng'),
(NULL , 'świergotek szponiasty' , 'Anthus richardi' , 'eng'),
(NULL , 'świergotek stepowy' , 'Anthus godlewskii' , 'eng'),
(NULL , 'świergotek polny' , 'Anthus campestris' , 'eng'),
(NULL , 'pliszka żółta' , 'Motacilla flava' , 'eng'),
(NULL , 'pliszka górska' , 'Motacilla cinerea' , 'eng'),
(NULL , 'pliszka cytrynowa' , 'Motacilla citreola' , 'eng'),
(NULL , 'pliszka siwa' , 'Motacilla alba' , 'eng'),
(NULL , 'zięba' , 'Fringilla coelebs' , 'eng'),
(NULL , 'jer' , 'Fringilla montifringilla' , 'eng'),
(NULL , 'grubodziób' , 'Coccothraustes coccothraustes' , 'eng'),
(NULL , 'dziwonia' , 'Erythrina erythrina' , 'eng'),
(NULL , 'łuskowiec' , 'Pinicola enucleator' , 'eng'),
(NULL , 'gil' , 'Pyrrhula pyrrhula' , 'eng'),
(NULL , 'dzwoniec' , 'Chloris chloris' , 'eng'),
(NULL , 'makolągwa' , 'Linaria cannabina' , 'eng'),
(NULL , 'rzepołuch' , 'Linaria flavirostris' , 'eng'),
(NULL , 'czeczotka brązowa' , 'Acanthis cabaret' , 'eng'),
(NULL , 'czeczotka' , 'Acanthis flammea' , 'eng'),
(NULL , 'czeczotka tundrowa' , 'Acanthis hornemanni' , 'eng'),
(NULL , 'krzyżodziób sosnowy' , 'Loxia pytyopsittacus' , 'eng'),
(NULL , 'krzyżodziób świerkowy' , 'Loxia curvirostra' , 'eng'),
(NULL , 'krzyżodziób modrzewiowy' , 'Loxia leucoptera' , 'eng'),
(NULL , 'szczygieł' , 'Carduelis carduelis' , 'eng'),
(NULL , 'osetnik' , 'Carduelis citrinella' , 'eng'),
(NULL , 'kulczyk' , 'Serinus serinus' , 'eng'),
(NULL , 'czyż' , 'Spinus spinus' , 'eng'),
(NULL , 'poświerka' , 'Calcarius lapponicus' , 'eng'),
(NULL , 'śnieguła' , 'Plectrophenax nivalis' , 'eng'),
(NULL , 'trznadel czarnogłowy' , 'Emberiza melanocephala' , 'eng'),
(NULL , 'potrzeszcz' , 'Emberiza calandra' , 'eng'),
(NULL , 'głuszek' , 'Emberiza cia' , 'eng'),
(NULL , 'ortolan' , 'Emberiza hortulana' , 'eng'),
(NULL , 'cierlik' , 'Emberiza cirlus' , 'eng'),
(NULL , 'trznadel' , 'Emberiza citrinella' , 'eng'),
(NULL , 'trznadel białogłowy' , 'Emberiza leucocephalus' , 'eng'),
(NULL , 'potrzos' , 'Emberiza schoeniclus' , 'eng'),
(NULL , 'trznadel czubaty' , 'Emberiza rustica' , 'eng'),
(NULL , 'trznadelek' , 'Emberiza pusilla' , 'eng'),
(NULL , 'trznadel złotawy' , 'Emberiza aureola' , 'eng'),
(NULL , 'trznadel złotobrewy' , 'Emberiza chrysophrys' , 'eng'),
(NULL , 'junko' , 'Junco hyemalis' , 'eng');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `observations`
--

CREATE TABLE `observations` (
  `ID` int(11) NOT NULL,
  `IDusers` int(11) NOT NULL,
  `IDbirds` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

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
(2, 'PanHungry', 'kam.glod@gmail.com', '$2y$10$h5XQc2sdzTUfqwTPblpsWukWPtbk654j2AkGyMfqLebl8DSw.NC5m');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `birds`
--
ALTER TABLE `birds`
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `observations`
--
ALTER TABLE `observations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
