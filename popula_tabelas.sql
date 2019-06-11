USE tabelas;

## Tabela Cidade (10 cidades)

INSERT INTO Cidade(id,nome) VALUES (1,"West Vancouver"),(2,"Ludvika"),(3,"Lives-sur-Meuse"),(4,"Linkhout"),(5,"Münster"),(6,"Isola del Gran Sasso d'Italia"),(7,"Perk"),(8,"Veere"),(9,"Rio de Janeiro"),(10,"Marchihue");

## Tabela Disciplina (23)

INSERT INTO Disciplina(id,nome) VALUES (1,"Algorithms and Data Structures I"),(2,"Algorithms and Data Structures II"),(3,"Algorithms and Data Structures III"),(4,"Programming Languages I"),(5,"Programming Languages II"),(6,"Programming Languages III"),(7,"Programming Languages IIII"),(8,"Architecture I"),(9,"Architecture I"),(10,"Architecture II");
INSERT INTO Disciplina(id,nome) VALUES (11,"Operating Systems I"),(12,"Operating Systems II"),(13,"Operating Networks I"),(14,"Operating Networks II"),(15,"Software Engineering I"),(16,"Software Engineering II"),(17,"Database and Information Retrieval Systems I"),(18,"Database and Information Retrieval Systems II"),(19,"Artificial Intelligence and Robotics I"),(20,"Artificial Intelligence and Robotics II");
INSERT INTO Disciplina(id,nome) VALUES (21,"Graphics I"),(22,"Graphics II"),(23,"Graphics III");

## Tabela Pessoa (100 pessoas)

INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (1,"Whoopi","8274-1302",1),(2,"Nathan","6321-8176",10),(3,"Wylie","5937-9059",8),(4,"Jerry","5852-9070",9),(5,"Gavin","3838-2519",9),(6,"Wyatt","5247-4196",2),(7,"Thane","1073-1239",9),(8,"Barclay","8298-5609",3),(9,"Cadman","8991-7177",3),(10,"Tana","4428-7023",9);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (11,"Judith","6557-7966",8),(12,"Dillon","4637-0632",9),(13,"Noel","8666-6410",3),(14,"Wallace","2452-6946",9),(15,"Lester","1046-8796",5),(16,"Hollee","1761-0592",2),(17,"Tamekah","3768-6020",9),(18,"Georgia","3840-8620",7),(19,"Gray","8624-9068",8),(20,"Maya","4149-3118",7);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (21,"Gray","6401-7855",5),(22,"John","6645-2794",7),(23,"Tanisha","8138-3945",9),(24,"Emily","3045-2166",7),(25,"Herman","8237-0181",7),(26,"Rhonda","8567-2947",8),(27,"Reece","5365-8403",7),(28,"Melyssa","6579-0185",4),(29,"Price","6414-9924",2),(30,"Shaeleigh","9667-1743",8);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (31,"Donovan","5182-5597",9),(32,"Paul","6156-7712",10),(33,"Graham","5879-3988",1),(34,"Wynter","0522-1670",2),(35,"Mikayla","0352-3014",7),(36,"Wayne","2055-4580",9),(37,"Aline","3499-1378",2),(38,"Kaitlin","7055-4501",1),(39,"Vanna","9848-8977",8),(40,"Jelani","8139-4604",9);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (41,"Sheila","3022-8884",8),(42,"Whoopi","4709-9895",9),(43,"Regan","6181-5639",8),(44,"Jesse","1849-4049",10),(45,"Joseph","2178-2669",6),(46,"Whoopi","4017-0392",4),(47,"Bertha","0330-2292",2),(48,"Lars","3508-2330",3),(49,"Omar","1399-0981",1),(50,"Quinn","0375-4535",10);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (51,"Alexa","2714-1464",7),(52,"Driscoll","8964-6283",9),(53,"Gloria","7884-3451",10),(54,"Aquila","7636-7083",7),(55,"Madeson","2286-8282",6),(56,"Caleb","1299-9171",10),(57,"Carlos","0903-8625",6),(58,"Conan","8717-6468",5),(59,"Wylie","4392-0340",10),(60,"TaShya","0259-2353",7);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (61,"Chiquita","5624-4894",10),(62,"Breanna","1217-8496",5),(63,"Kuame","7491-1739",5),(64,"Plato","6548-0400",1),(65,"Herrod","9856-9017",2),(66,"Elliott","6055-9949",3),(67,"Hammett","4823-9444",7),(68,"Aileen","6251-1639",10),(69,"Merrill","9354-5897",6),(70,"Tobias","7335-0259",3);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (71,"Clark","7399-3006",10),(72,"Macy","7189-7603",9),(73,"George","3728-8055",1),(74,"Emi","0936-7539",9),(75,"Justine","6695-9951",8),(76,"Plato","1982-7217",10),(77,"Colleen","9611-3211",9),(78,"Yen","0385-0410",3),(79,"Haviva","2303-4334",10),(80,"Harriet","0536-3594",3);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (81,"Carla","6569-2118",8),(82,"Xerxes","5558-4129",8),(83,"Althea","0667-1570",8),(84,"Ulric","8225-1201",9),(85,"Frances","8464-7731",2),(86,"Kaye","0705-4889",8),(87,"Hall","2133-7952",2),(88,"Yael","1785-2668",10),(89,"Adara","7105-0571",8),(90,"Blythe","0362-6151",6);
INSERT INTO Pessoa(id,nome,tel,id_cidade) VALUES (91,"Uriel","0082-8946",9),(92,"Kevin","1472-6805",9),(93,"Wang","7778-0968",4),(94,"Davis","0517-4091",7),(95,"Nita","8508-0441",4),(96,"Thomas","3992-7414",4),(97,"Brett","4474-0713",9),(98,"Ulysses","6160-5238",3),(99,"Ethan","1143-7620",5),(100,"Emerson","0540-3477",5);




## Tabela Professor (20 professores) (1-20 ID PESSOA)

INSERT INTO Professor(id,rg,cpf,titulacao) VALUES (1,"5530206","1634061057399","PhD"),(2,"31365352","1646012814799","Master"),(3,"14513749","1631122744399","Master"),(4,"38447012","1660090484399","PhD"),(5,"25723614","1606050720999","Master"),(6,"9215924","1648100749199","PhD"),(7,"6683434","1640020775899","Master"),(8,"22418702","1680050409399","Master"),(9,"39395069","1656011540999","PhD"),(10,"11883885","1634051692499","PhD");
INSERT INTO Professor(id,rg,cpf,titulacao) VALUES (11,"33197733","1669113052099","Master"),(12,"23736286","1674042240799","Master"),(13,"36738159","1688022937699","PhD"),(14,"9089358","1635100219499","PhD."),(15,"27481207","1667112771799","PhD"),(16,"11616775","1691062018299","PhD"),(17,"30384887","1656111300399","Master"),(18,"40012582","1628071786599","Master"),(19,"50070440","1607052153599","PhD"),(20,"22403385","1641092419699","PhD");

## Tabela Escola (5 escolas) - 2 em cidades iguals e as outras 3 diferentes

INSERT INTO Escola(id,nome,id_cidade,id_diretor) VALUES (1,"Harvard University",5,4),(2,"Stanford University",3,8),(3,"Camberra University",10,1),(4,"Universidade Federal Fluminense",9,6),(5,"Universidade Federal do Rio de Janeiro",9,3);


## Turma (10 turmas) (Todas as escolas possuem pelo menos 1 turma)

INSERT INTO Turma(id,nome,id_escola) VALUES (1,"A1",3),(2,"A1",2),(3,"A1",4),(4,"A1",5),(5,"A1",1),(6,"A2",1),(7,"A2",3),(8,"A3",3),(9,"A4",3),(10,"A5",3), (11,"A2",5), (12,"A3",1);


## Tabela Aluno (80 alunos) (21-100 ID PESSOA)

INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (21,2829014889,"16/10/87",8),(22,1228271711,"23/11/01",7),(23,1432777039,"07/04/85",10),(24,1565196164,"06/10/98",5),(25,2030097854,"23/11/99",2),(26,3305379875,"10/09/89",3),(27,8031282240,"02/06/90",4),(28,4500501284,"06/10/98",7),(29,4314843525,"17/09/85",3),(30,3882957779,"26/05/95",5);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (31,6510354117,"03/02/89",3),(32,8394651229,"04/07/95",9),(33,7110951653,"19/03/83",2),(34,4762756165,"27/05/94",1),(35,4979507307,"10/11/97",9),(36,1020655834,"13/03/82",3),(37,7846765937,"07/09/87",5),(38,4157398379,"08/11/92",1),(39,1996446026,"25/06/00",5),(40,6266229666,"16/10/90",2);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (41,6019425244,"13/05/82",5),(42,2993920406,"19/11/96",3),(43,4794064116,"14/06/82",3),(44,8980213814,"29/05/94",10),(45,2779972617,"05/03/99",2),(46,6315897765,"09/04/87",3),(47,3789684727,"12/07/86",8),(48,5712391521,"13/08/86",6),(49,6892632173,"06/09/93",5),(50,1063478897,"01/07/96",5);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (51,5441589802,"26/12/87",7),(52,9869086767,"25/11/84",8),(53,2670332873,"03/12/93",1),(54,6559217822,"01/02/93",3),(55,3597955096,"05/09/87",9),(56,1263859130,"09/11/89",7),(57,7414397494,"06/10/92",1),(58,6469045458,"14/09/86",3),(59,4983474365,"24/07/00",7),(60,3941411789,"01/10/93",6);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (61,3018441228,"12/09/87",4),(62,6058750452,"09/04/92",3),(63,9925336554,"11/07/01",2),(64,8547359736,"13/02/98",1),(65,5939018271,"05/04/87",5),(66,8568252196,"23/04/93",7),(67,6634048926,"12/06/84",8),(68,8080095842,"26/07/89",7),(69,8459714864,"24/02/87",8),(70,2580222204,"11/11/82",7);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (71,3844282986,"29/07/93",7),(72,8595681605,"22/04/92",8),(73,7332142588,"13/10/96",7),(74,3392431501,"15/08/89",8),(75,3319131158,"24/05/89",2),(76,6603135939,"15/03/84",9),(77,3335620763,"24/07/85",4),(78,8409468661,"03/12/86",7),(79,5087623829,"23/03/01",6),(80,5213052870,"20/12/98",7);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (81,7354878832,"17/09/98",7),(82,5481900084,"04/05/80",2),(83,8297112900,"07/10/97",10),(84,8927275436,"26/05/88",10),(85,5668124255,"26/07/80",7),(86,8621259758,"19/06/82",6),(87,3102291860,"10/05/83",4),(88,1162294407,"24/12/85",7),(89,5318401566,"09/06/92",6),(90,4604981821,"26/08/86",4);
INSERT INTO Aluno(id,matricula,data_nasc,id_turma) VALUES (91,7844909090,"22/03/01",3),(92,6416391042,"26/06/84",5),(93,3086162438,"16/09/95",5),(94,3109743770,"04/07/90",5),(95,3310534867,"27/07/93",6),(96,9865162188,"06/01/92",8),(97,6046814969,"27/09/94",7),(98,7362659836,"14/06/91",6),(99,5488392145,"06/10/82",2),(100,9780001319,"23/02/95",3);




## Tabela Contato (100 contatos para 80 alunos (21-100 CodAluno) ##

INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Darrel","0864-6347",90),("Gisela","9264-4238",82),("Christopher","9077-1215",44),("Raphael","0198-1293",57),("Steven","7231-7445",69),("Bertha","7190-2872",40),("Christen","5931-7958",90),("Harriet","0190-9043",83),("Malachi","7635-7076",50),("Aurora","1613-1431",81);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Philip","3759-5953",53),("Kato","4651-8199",26),("Len","8472-9492",94),("Aline","3863-6390",22),("Allen","4418-3950",24),("Cally","2143-3652",76),("Brittany","1371-5364",53),("Jakeem","1897-4032",22),("Michael","4415-4697",48),("Zeus","1326-1245",58);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Aimee","2396-9867",31),("Valentine","1817-4948",100),("Kuame","6507-1529",99),("Byron","8655-8576",32),("Dean","6212-8458",73),("Cailin","7742-3479",59),("Yuri","6783-5419",32),("Helen","2529-3210",68),("Idola","3451-1434",33),("Gwendolyn","5171-9468",43);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Ivy","9949-8809",63),("David","2106-8534",49),("Nita","9762-1966",35),("Garrison","6408-9632",41),("Hakeem","4434-5683",91),("Todd","9124-3858",51),("Holly","3040-7462",80),("Harlan","7214-5644",93),("Melinda","4122-7878",29),("Remedios","4546-0959",97);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Byron","6479-7467",31),("Lynn","0296-8480",44),("Xandra","1249-3736",63),("Naida","0149-7773",92),("Destiny","2093-6107",60),("Roth","4651-1540",68),("Raphael","8467-1757",34),("Kyle","1291-0399",28),("Jaden","5638-6164",72),("Allistair","1991-2749",73);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Arthur","3535-5177",96),("Eve","9442-1057",80),("Basil","3125-5030",42),("Galena","5354-0875",35),("Ori","8906-9049",67),("Brandon","7412-5799",33),("Linus","9692-1859",33),("Denton","9421-5561",33),("Thaddeus","4806-8856",47),("Kylan","5868-3787",75);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Imogene","6785-5417",81),("Haviva","1543-8694",25),("Gwendolyn","0762-8526",51),("Maite","1794-0997",60),("Malcolm","3024-7545",95),("Paul","6725-0106",76),("Meghan","6232-6591",99),("Zenia","4309-9501",43),("Hall","8689-2818",90),("Mikayla","0550-0341",87);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Dexter","6728-7654",76),("Robert","4426-3993",85),("Quinn","5701-8369",24),("Logan","8730-7989",84),("Francis","3862-1354",41),("Benedict","5679-6810",95),("Maite","1683-6719",46),("Guy","7217-5801",86),("Hilary","4953-8912",96),("Bethany","2237-7443",44);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Risa","1021-6969",50),("Kelly","6453-0672",90),("Jessamine","2835-5647",73),("Dylan","5166-8515",66),("Brady","3406-5486",37),("Vernon","7044-8902",71),("Malik","4880-5935",50),("Christian","6963-9408",35),("Buckminster","3480-2357",91),("Aubrey","7369-7452",82);
INSERT INTO Contato(nome,tel,id_aluno) VALUES ("Quinlan","5050-2748",22),("Kennan","8329-5354",38),("Channing","4604-9831",95),("Shea","3703-7729",59),("Stephanie","0157-3564",97),("Jayme","8721-2432",58),("Jessamine","0464-3498",60),("Rudyard","3448-3200",91),("Plato","2020-6363",67),("Phillip","6619-2213",71);



## Tabela ProfMinistraDisciplina (30 ocorrências)  ##

INSERT INTO ProfMinistraDisciplina(id_prof, id_disciplina) VALUES (1,4),(2,2),(3,5),(4,1),(5,9),(6,20),(7,19),(8,20),(9,13),(10,12);
INSERT INTO ProfMinistraDisciplina(id_prof, id_disciplina) VALUES (11,2),(12,21),(13,16),(14,5),(15,22),(16,7),(18,3),(19,20),(20,1);
INSERT INTO ProfMinistraDisciplina(id_prof, id_disciplina) VALUES (1,2),(1,8),(3,9),(4,5),(15,12),(15,7),(15,3),(19,19),(19,3);


## Tabela ProfMinistraTurma (10 ocorrências)  ##

INSERT INTO ProfMinistraTurma(id_prof, id_disciplina, id_turma) VALUES (5,9,1), (6,20,2), (19,19,3), (15,12,4), (15,7,5), (19,3,6), (4,5,7), (4,1,8), (1,4,9), (13,16,10), (15,22,11), (19,20,12);

