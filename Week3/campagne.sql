/*
MySQL Data Transfer
Source Host: localhost
Source Database: campagne
Target Host: localhost
Target Database: campagne
Date: 5-1-2018 10:57:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for gebruiker
-- ----------------------------
CREATE TABLE `gebruiker` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `personeelsID` tinyint(4) DEFAULT NULL,
  `gebruikersnaam` varchar(4) DEFAULT NULL,
  `wachtwoord` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for nieuws
-- ----------------------------
CREATE TABLE `nieuws` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `gebruikersID` tinyint(4) DEFAULT NULL,
  `titel` varchar(50) DEFAULT NULL,
  `inhoud` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for personeel
-- ----------------------------
CREATE TABLE `personeel` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `naam` varchar(50) DEFAULT NULL,
  `voorletter` varchar(4) DEFAULT NULL,
  `functie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `gebruiker` VALUES ('1', '1', 'Albe', 'bb5fd159c3dd7acfe86547dc43221d14');
INSERT INTO `gebruiker` VALUES ('2', '2', 'Alke', '864a2c1b80a3228fde0ce3eac00fc24f');
INSERT INTO `gebruiker` VALUES ('5', '5', 'Bijl', null);
INSERT INTO `gebruiker` VALUES ('7', '7', 'Blok', '4858e9711d75f1283c0ff7a150fd6d77');
INSERT INTO `gebruiker` VALUES ('23', '13', 'Brou', null);
INSERT INTO `gebruiker` VALUES ('25', '15', 'Dijk', null);
INSERT INTO `gebruiker` VALUES ('35', '25', 'Feik', null);
INSERT INTO `gebruiker` VALUES ('36', '26', 'Gems', null);
INSERT INTO `gebruiker` VALUES ('41', '31', 'Hibm', null);
INSERT INTO `gebruiker` VALUES ('42', '32', 'Hild', '153fbe3dcccc3fe68d6f666cce21bdf1');
INSERT INTO `gebruiker` VALUES ('43', '33', 'Inia', null);
INSERT INTO `gebruiker` VALUES ('45', '35', 'Kloo', '');
INSERT INTO `gebruiker` VALUES ('46', '36', 'Kuik', null);
INSERT INTO `gebruiker` VALUES ('58', '48', 'Okki', null);
INSERT INTO `gebruiker` VALUES ('74', '64', 'Snoe', null);
INSERT INTO `gebruiker` VALUES ('82', '72', 'Vies', null);
INSERT INTO `gebruiker` VALUES ('95', '85', 'Zijl', null);
INSERT INTO `nieuws` VALUES ('4', '1', 'Van harte welkom op de personeelssite', '<p>Welkom op de website van zuivelfabriek de Campagne. Op deze pagina zullen wij onszelf kort introduceren. \r\n<p>\r\nDe Campagne is een middelgroot bedrijf dat op <img src=\"img/index1.jpg\" align=\"left\" width=\"150\"> mensvriendelijke wijze melk produceert. De Campagne heeft een aantal doelen die wij hopen te bereiken in de komende jaren. Zuivelproducten moeten tegen een redelijke prijs in de winkel komen, zonder dat dit nadelige gevolgen heeft voor de leverancier. De melk zal voor een redelijk prijs worden opgekocht.\r\n<p>\r\nMet behulp van moderne technieken en gedeeltelijke mechanisatie hopen wij de focus te kunnen leggen op het verbeteren van de kwaliteit van onze producten. Door de jaren heen zal de kwaliteit nog verder vooruit gaan. Wij zullen in de toekomst ook kijken naar andere markten waar ons bedrijf zich op kan richten.\r\n<p>\r\n<img src=\"img/index2.jpg\" align=\"right\" width=\"150\">Voor ons bedrijf is de verhouding tussen de medewerkers zeer belangrijk. Wij zullen ons dan ook inzetten om een prettige werkomgeving te cre&euml;ren met enkele leuke voordelen in de vorm van personeelsaanbiedingen.\r\n<p>\r\nNeem gerust de tijd eens rond te kijken op deze site. Wij hopen u regelmatig met nuttige, actuele informatie te kunnen dienen.\r\n</p>');
INSERT INTO `nieuws` VALUES ('5', '85', 'Personeelsvereniging: nieuwtjes', '<p>Op deze pagina zult u in de toekomst alle informatie vinden over de personeelsvereniging, aanbiedingen voor het personeel en de vakbonden. Hiernaast is een overzicht te zien van de pagina&apos;s die hiervoor zijn gereserveerd. Op deze pagina zullen alle feesten en recepties worden aangekondigd.\r\n<h4>Feest! 15 April</h4>\r\n<p>Op deze bijzonder mooie dag zullen koe Trien <img src=\"img/bruiloft1.jpg\" align=\"left\" width=\"150\"> en stier Jan trouwen op het groene grasveld &quot;het Veld&quot;. Om deze bijzondere gelegenheid te vieren, zal er deze dag vanaf 4 uur een receptie zijn waarop alle mannelijke persoonsleden van harte zijn uitgenodigd. De vrouwen zullen helaas niet welkom zijn. Dit in verband met de ietwat jaloerse Trien. \r\n<p>\r\nWij hopen natuurlijk dat alle mannelijke leden aanwezig zullen zijn. De dresscode is zwart-wit. Wilt u een cadeautje kopen voor het gelukkige paar? Vraag naar tips bij boer Hendrik. Melk is er in ieder geval al voldoende, dus dit is waarschijnlijk niet de beste keuze. Eten en drinken staan voor u klaar. Het adres is bekend bij uw afdelingshoofd. Laat even weten of je komt! \r\n<p>\r\nHopelijk tot ziens!\r\n<br>\r\n<h4>Jubileum! 23 April</h4>\r\n<p>De leden van het bestuur vonden het na 25 jaar trouwe dienst tijd om onze zeer gewaardeerde medewerker Baby Puck eens in het zonnetje te zetten. Hoewel hij niet in vaste dienst is, kent iedereen hem als de &apos;freelance inkoper&apos;.\r\n<p>\r\nAl 25 jaar brengt Baby Puck ons regelmatig vreemde voorwerpen en dode dieren in de hoop een centje te verdienen. Hoewel dit natuurlijk nooit zal gebeuren, denk ik dat we het er allemaal wel over eens zijn dat hij toch telkens weer een glimlach op onze gezichten tovert. En dat is meer waard dan alle melk in de wereld! Dit zijn de plannen;\r\n<p>\r\n22 April zullen een aantal leden van het bestuur een koe doden en langs de kant van de weg leggen. Het spreekt voor zich dat de volgende dag Baby Puck voor onze deur zal staan met de resten. Hij zal naar binnen worden gevraagd voor een glaasje melk. Het zou fijn zijn als iemand deze dag dan ook een pak melk mee naar werk neemt. Wanneer Baby Puck binnenkomt springen we van achter de kasten tevoorschijn en schreeuwen we &quot;Hoera! Baby Puck zwerft hier al 25 jaar rond!&quot;.\r\n<p>\r\nLaat even weten of je van de partij zal zijn!\r\n</p>');
INSERT INTO `nieuws` VALUES ('6', '32', 'De maandelijkse column', ' <p>\r\n<br>\r\n<img src=\"img/tim.jpg\" align=\"left\"; width=\"100\">\r\n<h4>Nieuwsgierig naar de belevenissen binnen ons bedrijf? Een maal per maand zal onze trouwe medewerker, Tim Robbins, een column schrijven over de laatste avonturen van onze medewerkers en deze spannende branche. We trappen deze nieuwe traditie met een kort interview met de heer Robbins over een van zijn hobby&apos;s, het maken van films.\r\n</h4><br><p>\r\n<h1>Over het filmen van Mystic River</h1>\r\n<p>\r\n<b>Was it the script or working with director Clint Eastwood that attracted you to &quot;Mystic River?&quot;</b><br>\r\nA combination of both. But after working with him, it wouldn&apos;t matter. At this point, [it] wouldn&apos;t matter the script. \r\n<p>\r\n<b>Would you say this is a character you haven&apos;t played before?</b><br>\r\nYeah, I would say so. I can&apos;t think of something [I&apos;ve played] like this. \r\n<p>\r\n<b>What did you see in the role that you responded to?</b><br>\r\n[It has] so many layers, you know. The complexity of [him], he&apos;s got not only got one secret [but] he&apos;s got two secrets. He&apos;s got many secrets, but two major secrets. One that everyone else knows, and the other he hides throughout the movie. He&apos;s damaged goods; he&apos;s carrying the weight of his experience around with him. There&apos;s just so much stuff to play.\r\n <p>\r\n<b>As a father, was it tough playing someone who was the victim of pedophiles?</b><br>\r\nThere&apos;s no worse crime than that. How despicable is that [to] take advantage of a child&apos;s trust? It&apos;s the kind of crime that revisits that person time and time again. I kind of try to separate my own children from my characters. I mean, I don&apos;t think about them when I&apos;m working. I try not to use them [to work up an emotion]. \r\n<p>\r\n<b>What was the atmosphere like in between takes?</b><br>\r\nIt was pretty focused on the set. There was not a lot of clowning or loud behaviour at any time. If you were still working on a scene, there were only maybe one or two people that would break that kind of tension. No one ever did anything inappropriate.\r\n</p>');
INSERT INTO `nieuws` VALUES ('7', '35', 'Zoek de verschillen', '<p><img src=\"img/zoekde.png\" align=\"left\" width=\"500\"></p><br/>\r\n<p><img src=\"img/verschillen.png\" align=\"left\" width=\"500\"></p><br/>\r\n<p>Geef uw oplossing af bij de fabriekswinkel</p><br/>\r\n');
INSERT INTO `nieuws` VALUES ('8', '72', 'Fabriekswinkel', '<p>Direct af te halen op vertoon van uw personeelspas</p>\r\n<table>\r\n<tr><td>\r\n<img src=\"img/p1.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Het uitgebreide melkpakket\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;5,95\r\n	<br>\r\n	<b>Omschrijving:</b> In dit pakket vind u niet alleen een geweldige fles melk, maar ook broccoli, kaas en pinda\'s! Vooral de pinda\'s zijn van uitmuntende kwaliteit. U gelooft uw zintuigen niet! Pas op: niet voor onzekere zieltjes.\r\n	</p>\r\n</td></tr><tr><td>\r\n<img src=\"img/p2.gif\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Japanse melk!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;7,95\r\n	<br>\r\n	<b>Omschrijving:</b> Vers uit een aantal bijzonder mooie importkoeien! Japanse melk op zijn best.\r\n	</p>\r\n</td></tr><tr><td>\r\n<img src=\"img/p3.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Zeer uitgebreid zuivelpakket!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;18,99\r\n	<br>\r\n	<b>Omschrijving:</b> Wat moet je er mee? Niemand weet het!\r\n	</p>\r\n</td></tr><tr><td>\r\n<img src=\"img/p4.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Het gouden ei!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;3,50\r\n	<br>\r\n	<b>Omschrijving:</b> Slechte namaak van het origineel. Heeft werkelijk nooit iets met wat voor grootheid dan ook te maken! Voor &euro;2,- extra krijgt u de moeder ook.\r\n	</p>\r\n</td></tr><tr><td>\r\n<img src=\"img/p5.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Verschillende kazen!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;19,99\r\n	<br>\r\n	<b>Omschrijving:</b> Een grote hoeveelheid kaas voor een zacht prijsje! Geniet, maar let op de lijn!\r\n	</p>\r\n\r\n</td></tr><tr><td>\r\n<img src=\"img/p6.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Een glas melk!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;0,89\r\n	<br>\r\n	<b>Omschrijving:</b> Vers uit de koe! Melk van een bijzonder goede kwaliteit, vol verschillende belangrijke stoffen waarvan ik de naam niet ken! <br><br> Speciaal voor alle <i>medewerkers van de maand</i> hebben we een bijpassend schoteltje dat we aan het eind van de dag graag weer terug willen hebben!<br>\r\n	</p> \r\n\r\n</td></tr><tr><td>\r\n<img src=\"img/p7.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Een bord, een boterham met kaas, een glas melk!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;4,99\r\n	<br>\r\n	<b>Omschrijving:</b> Exclusief bord en glas. Kom gerust eens langs om te fijnproeven. U zult versteld staan van de versheid van de melk!\r\n	</p>\r\n\r\n</td></tr><tr><td>\r\n<img src=\"img/p8.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Glazen van de concurent!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;4,49\r\n	<br>\r\n	<b>Omschrijving:</b> Niet in de laatste plaats omdat wij te goedkoop zijn om zelf glazen te ontwerpen.\r\n	</p>\r\n\r\n</td></tr><tr><td>\r\n<img src=\"img/p9.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Een stuk kaas!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;4,99\r\n	<br>\r\n	<b>Omschrijving:</b> Een stuk kaas! Wat kan er nog meer over gezegt worden?\r\n	<br> &nbsp;\r\n	</p>\r\n\r\n</td></tr><tr><td>\r\n<img src=\"img/p10.jpg\" align=\"left\" width=\"100\"> \r\n</td><td>\r\n	<h4>\r\n	Een foto van kaas!\r\n	</h4><p>\r\n	<b>Prijs:</b> &euro;12,99\r\n	<br>\r\n	<b>Omschrijving:</b> Exclusief lijst!\r\n	</p>\r\n</td></tr>\r\n</table>	');
INSERT INTO `nieuws` VALUES ('12', '10', 'EHBO bij computerproblemen', '<ul> \r\n<li>Mijn computer geeft aan dat er geen verbinding is met het netwerk.\r\n<br/>Antwoord:  Controleer of de internetkabel goed op de computer is aangesloten. Het komt voor dat ze los raken en er geen verbinding bestaat. Controleer ook of de server correct op het netwerk is aangesloten en aan het werk is.\r\n<br><br>\r\n</li><li>Ik kan niet inloggen op het netwerk.\r\n<br/>Antwoord:  Controleer of de internetkabel correct is aangesloten op zowel de cli&euml;nt als de server. Controleer bij de administrator of je de correcte username en password hebt. Vraag de administrator te controleren of je gegevens correct zijn ingevoerd. Als het probleem zich blijft voordoen is er mogelijk een storing op de server. Vraag de systeembeheerder naar de server te kijken.\r\n<br><br>\r\n</li><li>Niemand / meerdere personen kan/kunnen niet inloggen op het netwerk.\r\n<br/>Antwoord:  Neem contact met de beheerder op.\r\n<br><br>\r\n</li><li>Nadat er een bepaald aantal users aangemeld zijn, kunnen geen nieuwe users zich aanmelden op het netwerk.\r\n<br/>Antwoord:  Vraag de systeembeheerder het maximaal uit te delen IP adressen binnen het netwerk te controleren. Vraag in de tussentijd aan iemand die niet met een computer bezig is om uit te loggen.\r\n<br><br>\r\n</li><li>Mijn printen komen uit de printer van een andere afdeling.\r\n<br/>Antwoord:  Controleer of u de juiste (standaard) printer heeft gekozen in het printmenu en of de printer op uw afdeling aan staat. Een mogelijke oorzaak kan zijn dat een verkeerde standaard printer staat ingesteld. Geef dit door aan uw systeembeheerder.\r\n<br><br>\r\n</li><li>Het opstarten van de computers en/of software gaat vaak &apos;s ochtends of &apos;s avonds trager dan anders.\r\n<br/>Antwoord:  Het is goed mogelijk dat wanneer een grote groep gebruikers tegelijk inloggen een vertraging op het netwerk wordt veroorzaakt. Vooral &apos;s ochtends als het werk begint kan dit voorkomen. Hier valt helaas weinig aan te doen. Het is tijdelijk, probeer het eventueel iets later opnieuw.\r\n<br><br>\r\n</li><li>Mijn computer is gecrasht en ik kan niet meer inloggen.\r\n<br/>Antwoord:  Het is mogelijk dat wanneer men niet correct afsluit, de server niet merkt dat een cli&euml;nt is verdwenen. Dit kan betekenen dat een user niet kan worden aangemeld omdat deze bij de server nog als aangemeld bekend staat. Geef het door aan de systeembeheerder of wacht enkele momenten en probeer het opnieuw.\r\n<br><br>\r\n</li><li>Ik kan geen verbinding met het internet krijgen.\r\n<br/>Antwoord:  Controleer op de internetkabel correct is aangesloten op zowel de cli&euml;nt als de server. Mogelijk is de internetverbinding op de server uitgevallen. Vraag de systeembeheerder ernaar te kijken.\r\n<br><br>\r\n</li><li>Ik kan bepaalde delen van het netwerk/bepaalde websites niet oproepen.\r\n<br/>Antwoord:  De afgelopen weken is er hard gewerkt het netwerk een stuk veiliger te maken. Dit heeft helaas enkele nadelen. Niet alle websites zijn bereikbaar i.v.m virussen, en niet alle delen van het netwerk zijn voor alle gebruikers bedoelt.\r\n<br><br>\r\n</li><li>Bepaalde programma starten/werken traag.\r\n<br/>Antwoord:  Alle programma&apos;s binnen het netwerk staan op de server. Natuurlijk is tijdens het kiezen van de server rekening gehouden met de eisen die hiervoor aan de server worden gesteld, maar het kan desondanks voorkomen dat programma&apos;s vertraging oplopen wanneer een grote groep personen op hetzelfde moment aan de slag willen. Vraag de systeembeheerder naar eventuele oorzaken van de vertraging te zoeken.\r\n<br><br>\r\nEen tweede mogelijkheid is de aanwezigheid van spyware of dergelijke &quot;programma&apos;s&quot;. Spyware wordt verspreid over het internet en kan op uw computer terecht komen zonder dat u het weet. Het kan een goed idee zijn eenmaal in de week te zoeken naar spyware en virussen met de ge&iuml;nstalleerde software op uw computer (bijvoorbeeld met Lavasoft  Ad-Aware).\r\n<br><br>\r\n</li><li>De anti-virusscan heeft een virus gevonden.\r\n<br/>Antwoord:  Let goed op welke bestanden beschadigd zijn. Kies ervoor de bestanden te schonen. Indien ze belangrijke informatie bevatten is het verstandig deze in quarantaine te zetten indien het schonen van de bestanden niet succesvol is. De bestanden blijven dan op de computer staan, maar kunnen niet gebruikt worden. Vraag aan de systeembeheerder de informatie te proberen veilig te stellen.\r\n<br><br>\r\n</li><li>Er staan updates klaar voor Windows/andere software.\r\n<br/>Antwoord:  Indien het gaat om &quot;kleinere programma&apos;s&quot; als de Windows Media Player en dergelijke software vormt dit geen probleem en kan de update worden uitgevoerd. Omdat er bij updates voor Windows Server 2003 (het besturingsprogramma) instellingen mogelijk worden gewijzigd om moeten worden gewijzigd om alles correct te laten lopen, is het belangrijk dit eerst met de systeembeheerder te overleggen. Vraag hem wat de standaardprocedure in het geval van updates is.\r\n<br><br>\r\n</li><li>Mijn computer geeft aan dat ik geen schijfruimte meer heb.\r\n<br/>Antwoord:  Iedere gebruiker in het netwerk heeft een eigen plekje op de harde schijf van de server om zijn of haar bestanden op te slaan. Helaas is deze ruimte niet onbeperkt. Voordat een nieuw bestand kan worden opgeslagen zal eerst een ander bestand moeten worden gewist of verplaatst naar een extern opslagmedium. Komt dit probleem regelmatig voor? Geef het even door aan de systeembeheerder.\r\n<br><br>\r\n</li><li>Ik heb geen toestemming om mijn bestanden op te slaan.\r\n<br/>Antwoord:  Er is een bepaalde ruimte voor iedere gebruiker van het netwerk gereserveerd om werk op te slaan. Het is de bedoeling dat alle bestanden hier worden opgeslagen. Controleer of u in de goede map zit. Bestanden kunnen niet op de harde schijf of de netwerk schrijf worden opgeslagen.\r\n<br><br>\r\n</li><li>Ik heb geen toegang tot mijn bestanden.\r\n<br/>Antwoord:  U heeft enkel toegang tot uw bestanden als u bent ingelogd met uw eigen username en password. Controleer of u correct bent ingelogd. Vraag anders de systeembeheerder om hulp.\r\n</li>\r\n</ul>\r\n\r\n\r\n');
INSERT INTO `nieuws` VALUES ('13', '2', 'Automatisering gebruikershandleidingen', '<p><img src=\"img/handleiding.jpg\" align=\"left\" width=\"100\">Ten eerste wilt De Campagne u graag bedanken voor uw interesse in de automatisering binnen ons bedrijf. Zoals jullie weten zijn de afgelopen weken een groep ICT\'ers van het bedrijf Comp-U-Service hard aan het werk geweest het werk binnen ons werkt zo ver mogelijk te automatiseren, en dit bedrijf een tweede kans te geven. De loonkosten werden helaas te hoog en ons bedrijf dreigde gesloten te worden. \r\n<p>\r\nIn het bijzonder wilt het bestuur graag Jeroen van der Put bedanken. Jeroen, als je dit leest, onze directrice Liesbeth Kamerling komt je graag binnenkort een keer persoonlijk bedanken.\r\n<p>\r\nOok bedanken we op deze manier graag Johan Veenvliet. Johan, we hebben Baby Puck op je afgestuurd om ook jou eens lekker te verwennen.\r\n<p>\r\nWat is er precies gebeurd?\r\nComp-U-Service heeft ons een hoop werk uit handen genomen door het meeste papierwerk een klein werkje te maken. Nooit meer zullen we papieren kwijt raken of uren zoeken naar het juiste document. Alles staat nu op een netwerk van computers.\r\n<p>\r\nIedereen heeft nu een eigen computer. Hierop kunt u gemakkelijk al uw documenten en informatie op kwijt. Weet u niet zo veel van deze apparaten? Vrees niet, want door de weken heen zullen hier een aantal tutorials komen te staan. Met andere woorden, alle onderdelen van het netwerk zullen uitgebreid worden getoond. Alles wat u wilt weten komt aan bod.\r\n</p>');
INSERT INTO `personeel` VALUES ('1', 'Alberda', 'J.', 'melkrijder  ');
INSERT INTO `personeel` VALUES ('2', 'Alkema', 'Tj.', 'hulp kaasmakerij en diversen  ');
INSERT INTO `personeel` VALUES ('3', 'Bakker', 'M.', 'assistent  ');
INSERT INTO `personeel` VALUES ('4', 'Bierema', 'D.', 'werkman  ');
INSERT INTO `personeel` VALUES ('5', 'Bijlsma', 'H.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('6', 'Bloksma', 'J.', '  ');
INSERT INTO `personeel` VALUES ('7', 'Bloksma', 'W.', 'machinist  ');
INSERT INTO `personeel` VALUES ('8', 'Boer, de', 'D.', '1ste botemaker  ');
INSERT INTO `personeel` VALUES ('9', 'Boer, de', 'G.', 'botermaker  ');
INSERT INTO `personeel` VALUES ('10', 'Boerstra', 'M.', 'botermaker  ');
INSERT INTO `personeel` VALUES ('11', 'Bosgra', 'G.', 'botermaker  ');
INSERT INTO `personeel` VALUES ('12', 'Brouwer', 'H.', 'hulp kaasmakerij en diversen  ');
INSERT INTO `personeel` VALUES ('13', 'Brouwer', 'Joh.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('14', 'Cnossen', 'J.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('15', 'Dijk, van', 'C.', '2de kaasmaker  ');
INSERT INTO `personeel` VALUES ('16', 'Dijk, van', 'J.', 'werkman, later 2de melkweger  ');
INSERT INTO `personeel` VALUES ('17', 'Dijk, van', 'K.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('18', 'Dijkstra', 'A.', 'leerling  ');
INSERT INTO `personeel` VALUES ('19', 'Dijkstra', 'A.', 'botermaakster  ');
INSERT INTO `personeel` VALUES ('20', 'Dijkstra', 'C.A.', 'monsternemer  ');
INSERT INTO `personeel` VALUES ('21', 'Dijkstra', 'H.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('22', 'Dijkstra', 'J.', 'centrifugist  ');
INSERT INTO `personeel` VALUES ('23', 'Dijkstra', 'J.R.', 'directeur   ');
INSERT INTO `personeel` VALUES ('24', 'Eekma', 'Br.', 'assistent  ');
INSERT INTO `personeel` VALUES ('25', 'Feikema', 'S.', 'werkman > kaasmaker  ');
INSERT INTO `personeel` VALUES ('26', 'Gemser', 'E.', '2de melkweger  ');
INSERT INTO `personeel` VALUES ('27', 'Goudberg', 'T.', 'los monsternemer  ');
INSERT INTO `personeel` VALUES ('28', 'Haan, de', 'B.', 'pakhuisknecht/weitapper  ');
INSERT INTO `personeel` VALUES ('29', 'Haan, de', 'N.', 'centrifugist  ');
INSERT INTO `personeel` VALUES ('30', 'Haan, de', 'W.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('31', 'Hibm', 'J.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('32', 'Hildriks', 'R.', 'centrifugist  ');
INSERT INTO `personeel` VALUES ('33', 'Inia', 'R.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('34', 'Kiekes', 'W.', 'assistent  ');
INSERT INTO `personeel` VALUES ('35', 'Kloosterman', 'D.', 'melkrijder  ');
INSERT INTO `personeel` VALUES ('36', 'Kuiken', 'K.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('37', 'Kuur, van der', 'F.', 'werkman  ');
INSERT INTO `personeel` VALUES ('38', 'Lange, de', 'J.', '  ');
INSERT INTO `personeel` VALUES ('39', 'Loonstra', 'H.', 'leerling  ');
INSERT INTO `personeel` VALUES ('40', 'Mellema', 'T.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('41', 'Meulen, van der', 'J.E.', 'assistent  ');
INSERT INTO `personeel` VALUES ('42', 'Mulder', 'G.', 'bedrijfschef  ');
INSERT INTO `personeel` VALUES ('43', 'Nammensma', 'H.', 'werkman  ');
INSERT INTO `personeel` VALUES ('44', 'Norder', 'H.', 'melkrijder  ');
INSERT INTO `personeel` VALUES ('45', 'Oevering', 'G.', 'kantoorwerkzaamheden  ');
INSERT INTO `personeel` VALUES ('46', 'Oevering', 'S.', 'machinist  ');
INSERT INTO `personeel` VALUES ('47', 'Okkinga', 'G.', 'afd. melkinrichting  ');
INSERT INTO `personeel` VALUES ('48', 'Okkinga', 'J.', 'melkrijder > hulp botermaker en div. ondersteuning');
INSERT INTO `personeel` VALUES ('49', 'Palsma', 'M.', 'pakhuisknecht/weitapper  ');
INSERT INTO `personeel` VALUES ('50', 'Ploeg, van der', 'G.', 'werkman  ');
INSERT INTO `personeel` VALUES ('51', 'Ploegstra', 'D.', 'boterma(a)k(st)er(s)  ');
INSERT INTO `personeel` VALUES ('52', 'Postma', 'IJ.', '  ');
INSERT INTO `personeel` VALUES ('53', 'Postma', 'Jac', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('54', 'Postma', 'L.', 'werkman  ');
INSERT INTO `personeel` VALUES ('55', 'Postma', 'N.', 'kaasmaker  ');
INSERT INTO `personeel` VALUES ('56', 'Rauwerda', 'E.', 'tijdelijk werkman  ');
INSERT INTO `personeel` VALUES ('57', 'Roukema', 'IJ.', 'diversen  ');
INSERT INTO `personeel` VALUES ('58', 'Roukema', 'S.', 'controleur  ');
INSERT INTO `personeel` VALUES ('59', 'Roukema', 'W.', 'monsternemer  ');
INSERT INTO `personeel` VALUES ('60', 'Ruiter', 'J.', 'assistent  ');
INSERT INTO `personeel` VALUES ('61', 'Schaaf, van der', 'D.', 'werkman > melkweger > melkontvanger  ');
INSERT INTO `personeel` VALUES ('62', 'Siegersma', 'H.', 'klerk  ');
INSERT INTO `personeel` VALUES ('63', 'Sluiter', 'E.', 'assistent-directeur  ');
INSERT INTO `personeel` VALUES ('64', 'Snoekstra', 'B.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('65', 'Stitenga', 'B.', '1ste kaasmaker  ');
INSERT INTO `personeel` VALUES ('66', 'Stralen, van', 'H.', 'Volontair > assistent  ');
INSERT INTO `personeel` VALUES ('67', 'Tijsma', 'A.', 'melkweger > 2de kaasmaker > 3de kaasmaker  ');
INSERT INTO `personeel` VALUES ('68', 'Tijsma', 'J.', 'monsternemer  ');
INSERT INTO `personeel` VALUES ('69', 'Travaille', 'J.', 'los werkman > melkweger > 2de kaasmaker  ');
INSERT INTO `personeel` VALUES ('70', 'Uildriks', 'R.', 'centrifugist  ');
INSERT INTO `personeel` VALUES ('71', 'Vermeer', 'E.', 'diversen  ');
INSERT INTO `personeel` VALUES ('72', 'Vies, de', 'K.', 'tijdelijk werkman  ');
INSERT INTO `personeel` VALUES ('73', 'Visser', 'A.', 'diverse ondersteuning > werkman  ');
INSERT INTO `personeel` VALUES ('74', 'Visser', 'H.', 'hulp kaasmakerij   ');
INSERT INTO `personeel` VALUES ('75', 'Visser', 'L.', 'monsternemer/klerk > 2de melkcontroleur  ');
INSERT INTO `personeel` VALUES ('76', 'Vries, de', 'R.', 'assistent-directeur  ');
INSERT INTO `personeel` VALUES ('77', 'Vries, de', 'R.A.', 'botermaker  ');
INSERT INTO `personeel` VALUES ('78', 'Wedman', 'G.', '2de kaasmaker  ');
INSERT INTO `personeel` VALUES ('79', 'Weistra', 'R.', 'melkvervoer  ');
INSERT INTO `personeel` VALUES ('80', 'Wieling', 'S.', '  ');
INSERT INTO `personeel` VALUES ('81', 'Wielinga', 'B.', 'leerling  ');
INSERT INTO `personeel` VALUES ('82', 'Wieling', 'Th.', 'diversen  ');
INSERT INTO `personeel` VALUES ('83', 'Wijngaard, van', 'H.', '2de kaasmaker  ');
INSERT INTO `personeel` VALUES ('84', 'Zijlstra', 'J.', 'hulp kaasmakerij   ');
INSERT INTO `personeel` VALUES ('85', 'Zijlstra', 'S.', 'melkvervoer  ');
