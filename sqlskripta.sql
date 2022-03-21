INSERT INTO Pozoriste (ID, Naziv, BrojScena)
VALUES (1 , 'Narodno pozorište u Beogradu' , 2 );
INSERT INTO Pozoriste (ID, Naziv, BrojScena)
VALUES (2 , 'Pozorište na Terazijama' , 1 );

INSERT INTO Scena (ID, Naziv, PozoristeID)
VALUES (1, 'Velika scena', 1);
INSERT INTO Scena (ID, Naziv, PozoristeID)
VALUES (2, 'scena Raša Pavlović ', 1);
INSERT INTO Scena (ID, Naziv, PozoristeID)
VALUES (3, 'Glavna scena', 2);

INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (1 , 'Dama s kamelijama' , 'Jug Radivojević' , 'drama' , 2012, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (2 , 'Orlando' , 'Bojan Đorđev' , 'drama' , 2014, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (3 , 'Pelikan' , 'Đurđa Tešić' , 'drama' , 2014, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (4 , 'Balkanski špijun' , 'Tatjana Mandić Rigonat' , 'komedija' , 2015, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (5 , 'Vlast' , 'Milan Nešković' , 'komedija' , 2017, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (6 , 'Bela Kafa' , 'Milan Nešković' , 'komedija' , 2017, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (7 , 'Zli dusi' , 'Tatjana Mandić Rigonat' , 'drama' , 2018, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (8 , 'Ženski orkestar' , 'Jug Radivojević' , 'komedija' , 2019, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (9 , 'Antigona' , 'Jagoš Marković' , 'tragedija' , 2020, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (10 , 'Izbiračica' , 'Nikola Zavišić' , 'komedija' , 2013, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (11 , 'Knjiga druga' , 'Anđelka Nikolić' , 'drama' , 2015, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (12 , 'Nečista krv' , 'Milan Nešković' , 'drama' , 2021, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (13 , 'Ožalošćena porodica' , 'Jug Radivojević' , 'drama' , 2021, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (14 , 'Nora - Lutkina kuća' , 'Tatjana Mandić Rigonat' , 'drama' , 2022, 1 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (16 , 'Fantom iz opere' , 'Jug Radivojević' , 'mjuzikl' , 2016, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (17 , 'Zona Zamfirova' , 'Kokan Mladenović' , 'mjuzikl' , 2017, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (18 , 'Čikago', 'Kokan Mladenović' , 'mjuzikl' , 2019, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (19 , 'Mamma mia!' , 'Jug Radivojević' , 'mjuzikl' , 2016, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (20 , 'Mister Dolar' , 'Mihajlo Vukobratović' , 'mjuzikl' , 2017, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (21 , 'Neki to vole vruće' , 'Rade Marjanović' , 'mjuzikl' , 2012, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (22 , 'Inside out' , 'Ana Grigorović' , 'mjuzikl' , 2019, 2 );
INSERT INTO Predstava (ID, Naziv, Reditelj, Zanr, GodinaPremijere, PozoristeID)
VALUES (23 , 'Flashdance' , 'Vladan Đurković' , 'mjuzikl' , 2022, 2 );

INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (1 , 'Marija' , 'Vicković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (2 , 'Miloš' , 'Biković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (3 , 'Nebojša' , 'Dugalić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (4 , 'Stela' , 'Ćetković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (5 , 'Kalina' , 'Kovačević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (6 , 'Aleksandar' , 'Đurica' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (7 , 'Dragan' , 'Sekulić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (8 , 'Aleksandra' , 'Nikolić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (9 , 'Nikola' , 'Vujović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (10 , 'Dušanka' , 'Stojanović Glid' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (11 , 'Nedim' , 'Nezirović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (12 , 'Iva' , 'Milanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (13 , 'Vanja' , 'Ejdus' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (14 , 'Ljubomir' , 'Bandović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (15 , 'Nela' , 'Mihailović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (16 , 'Aleksandar' , 'Srećković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (17 , 'Ivan' , 'Bosiljčić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (18 , 'Nikola' , 'Rakočević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (19 , 'Branko' , 'Vidaković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (20 , 'Olga' , 'Odanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (21 , 'Pavle' , 'Jerinić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (22 , 'Nada' , 'Šargin' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (23 , 'Predrag' , 'Ejdus' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (24 , 'Igor' , 'Đorđević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (25 , 'Marija' , 'Bergam' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (26 , 'Goran' , 'Jevtić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (27 , 'Bojana' , 'Stefanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (29 , 'Vuk' , 'Kostić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (30 , 'Dragan' , 'Mićanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (31 , 'Sloboda' , 'Mićalović Ćetković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (32 , 'Vjera' , 'Mujović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (33 , 'Anastasija' , 'Mandić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (34 , 'Bojan' , 'Krivokapić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (35 , 'Jovana' , 'Stojiljković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (36 , 'Nataša' , 'Ninković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (37 , 'Ljiljana' , 'Blagojević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (38 , 'Radmila' , 'Živković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (39 , 'Danica' , 'Maksimović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (40 , 'Nenad' , 'Stojmenović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (41 , 'Marta' , 'Hadžimanov' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (42 , 'Slobodan' , 'Stefanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (43 , 'Slaven' , 'Došlo' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (44 , 'Milan' , 'Antonić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (45 , 'Ivana' , 'Popović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (46 , 'Jelena' , 'Jovičić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (47 , 'Ivana' , 'Knežević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (48 , 'Milena' , 'Živanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (49 , 'Dragan' , 'Vujić' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (50 , 'Marko' , 'Gvero' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (51 , 'Radoslav' , 'Marjanović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (52 , 'Dušica' , 'Novaković' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (53 , 'Zinaida' , 'Dedakin' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (54 , 'Žarko' , 'Stepanov' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (55 , 'Mina' , 'Lazarević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (57 , 'Marta' , 'Bogosavljević' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (58 , 'Mina' , 'Nenadović' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (59 , 'Danijel' , 'Korša' );
INSERT INTO Glumac (ID, Ime, Prezime)
VALUES (60 , 'Miroljub' , 'Turajlija' );

INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (1 , 1 , 'Margarita Gotje', 1 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (2 , 1 , 'Arman Dival', 2 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (3 , 1 , 'Žorž Dival', 3 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (4 , 1 , 'Pridans', 4 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (5 , 1 , 'Nanin', 5 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (6 , 1 , 'Gaston Rije', 6 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (7 , 1 , 'Olimpija', 27 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (8 , 2 , 'Orlando', 7 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (9 , 2 , 'Kraljica Elizabeta', 8 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (10 , 2 , 'Princeza Saša', 5 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (11 , 2 , 'Nik Grin', 9 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (12 , 3 , 'Eliza, majka udovica', 10 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (13 , 3 , 'Fredrik, sin', 11 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (14 , 3 , 'Gerda, ćerka', 12 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (15 , 3 , 'Služavka Margaret', 13 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (16 , 4 , 'Ilija Čvorović', 14 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (17 , 4 , 'Danica Čvorović', 15 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (18 , 4 , 'Đura, Ilijina sestra', 10 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (19 , 5 , 'Arsa', 16 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (27 , 5 , 'Svetozar', 17 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (20 , 5 , 'Miloje', 18 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (21 , 5 , 'Mara', 13 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (22 , 6 , 'Momčilo Jabučilo', 19 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (23 , 6 , 'Majka Janja', 20 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (24 , 6 , 'Deli Jova', 21 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (25 , 6 , 'Crkva Ružica', 13 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (26 , 6 , 'Srđa Zlopogleđa', 40 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (28 , 6 , 'Zora Šišarka', 22 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (29 , 6 , 'Radio-kaskader', 23 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (30 , 7 , 'Nikolaj Vsevolodovič Stavrogin', 24 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (31 , 7 , 'Stavroginova majka', 10 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (32 , 7 , 'Petar Stepanovič Verhovenski', 26 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (33 , 7 , 'Darja Pavlovna Šatova', 25 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (34 , 7 , 'Praskovja Ivanovna', 8 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (35 , 7 , 'Ivan Pavlovič', 40 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (36 , 7 , 'Marija Lebjatkina', 32 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (37 , 7 , 'Kapetan Lebjatkin', 16 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (38 , 7 , 'Liputin', 19 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (39 , 8 , 'Patricija', 27 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (40 , 8 , 'gospođa Ortanž', 15 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (41 , 8 , 'Suzana Delisija', 5 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (42 , 8 , 'pijanist', 29 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (43 , 9 , 'Antigona', 13 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (44 , 9 , 'Kreont', 16 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (45 , 9 , 'Ismena', 32 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (46 , 9 , 'Hor', 23 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (47 , 9 , 'stražar', 34 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (48 , 10 , 'Sokolović', 23 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (49 , 10 , 'Jeca, Sokolovićeva žena', 8 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (50 , 10 , 'Malčika', 33 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (51 , 10 , 'Branko', 17 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (52 , 11 , 'Rajna Maretić-Dolska', 15 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (53 , 11 , 'Mira', 25 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (54 , 11 , 'dramski pisac', 34 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (55 , 11 , 'kritičarka', 35 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (56 , 12 , 'Sofka', 35 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (57 , 12 , 'Efendi Mita', 3 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (58 , 12 , 'Todora, Sofkina majka', 36 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (59 , 12 , 'Stana, Markova žena', 10 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (60 , 12 , 'Magda', 37 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (61 , 12 , 'Simka', 38 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (62 , 12 , 'Arsa', 23 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (63 , 13 , 'Simka', 38 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (64 , 13 , 'Sarka', 39 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (65 , 13 , 'Proka Purić', 3 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (66 , 13 , 'Gina', 13 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (67 , 13 , 'Tanasije Dimitrijević', 16 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (68 , 13 , 'Vida', 15 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (69 , 14 , 'Nora Helmer', 22 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (70 , 14 , 'Torvald Helmer', 40 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (71 , 14 , 'advokat Nils Krogstad', 26 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (72 , 16 , 'Kristin', 41 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (73 , 16 , 'Fantom', 42 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (74 , 16 , 'Raul', 43 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (75 , 16 , 'gospodin Firman', 44 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (76 , 16 , 'Madam Žiri', 45 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (77 , 17 , 'Mane', 17 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (78 , 17 , 'Zona', 45 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (79 , 17 , 'Hadži Zanfir', 3 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (80 , 17 , 'Doka', 39 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (81 , 17 , 'Manulać', 42 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (82 , 17 , 'Taska', 47 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (83 , 17 , 'Vaska', 48 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (84 , 17 , 'Pote', 60 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (85 , 18 , 'Velma Keli', 47 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (86 , 18 , 'Roksi Hart', 46 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (87 , 18 , 'Ejmos Hart', 44 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (88 , 18 , 'Bili Fin', 49 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (89 , 18 , 'Mama Morton', 53 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (90 , 18 , 'narednik Fogerti', 60 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (91 , 18 , 'Fred Kejsli', 59 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (92 , 19 , 'Sofi', 48 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (93 , 19 , 'Dona', 46 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (94 , 19 , 'Sem', 42 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (95 , 19 , 'Hari', 49 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (96 , 19 , 'Skaj', 54 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (97 , 19 , 'Tanja', 55 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (98 , 19 , 'Rouzi', 47 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (99 , 20 , 'Aleksandar Matković', 51 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (100 , 20 , 'Jovan Todorović', 50 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (101 , 20 , 'Koviljka', 52 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (102 , 20 , 'Mladen Novaković', 54 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (103 , 20 , 'Gradimir Protić', 44 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (104 , 21 , 'Puslica', 27 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (105 , 21 , 'Slatka Džezi', 53 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (106 , 21 , 'Džo', 54 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (107 , 21 , 'Bizgou', 51 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (108 , 21 , 'Kamućo', 60 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (109 , 22 , 'Dina', 46 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (110 , 22 , 'Grejs', 52 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (111 , 22 , 'Klo', 47 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (112 , 22 , 'Moli', 45 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (113 , 22 , 'Liz', 55 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (114 , 23 , 'Nik Harli', 43 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (115 , 23 , 'Glorija', 48 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (116 , 23 , 'Kiki', 57 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (117 , 23 , 'Aleksandra Ovens', 58 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (118 , 23 , 'Hari', 60 );
INSERT INTO Uloga (ID, PredstavaID, Lik, GlumacID)
VALUES (119 , 23 , 'gospođa Vajld', 42 );

