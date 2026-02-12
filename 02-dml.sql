ALTER TABLE segueix DROP CONSTRAINT segueix_id_criteri_fkey;
ALTER TABLE segueix DROP CONSTRAINT segueix_codi_avaluacio_fkey;
ALTER TABLE assignacio DROP CONSTRAINT assignacio_dni_alumne_fkey;
ALTER TABLE assignacio DROP CONSTRAINT assignacio_cifnif_empresa_fkey;
ALTER TABLE avaluacio DROP CONSTRAINT avaluacio_dni_alumne_fkey;
DELETE FROM alumne;
DELETE FROM cv;
DELETE FROM empresa;
DELETE FROM avaluacio;
DELETE FROM criteri;
DELETE FROM segueix;
DELETE FROM enviament;
DELETE FROM assignacio;
ALTER TABLE segueix ADD CONSTRAINT segueix_id_criteri_fkey FOREIGN KEY (id_criteri) REFERENCES criteri (id) ON DELETE RESTRICT;
ALTER TABLE segueix ADD CONSTRAINT segueix_codi_avaluacio_fkey FOREIGN KEY (codi_avaluacio) REFERENCES avaluacio (codi_avaluacio) ON DELETE CASCADE;
ALTER TABLE assignacio ADD CONSTRAINT assignacio_dni_alumne_fkey FOREIGN KEY (dni_alumne) REFERENCES alumne (dni) ON UPDATE RESTRICT;
ALTER TABLE assignacio ADD CONSTRAINT assignacio_cifnif_empresa_fkey FOREIGN KEY (cifnif_empresa) REFERENCES empresa (cifnif) ON DELETE RESTRICT;
ALTER TABLE avaluacio ADD CONSTRAINT avaluacio_dni_alumne_fkey FOREIGN KEY (dni_alumne) REFERENCES alumne (dni) ON DELETE RESTRICT;
/* Insertar dades a la taula alumne */

INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('85536542W','Jaume Perez Mendoza','2526_jaume.mendoza@mail.com','+34666111222', 1234567891234568912345, 469580014171, 'Barcelona', '08005','PROM20252026','CFGMSMX', true, false, true, false,'Windows Server, i AD DS' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('55972173V','Albert Ruiz Pla', '2324_jaume.mendoza@mail.com','+34674837472',12345678923456789123456,318983310738, 'Sant Cugat del Valles','08172', 'PROM20232025','CFGMADE', true, true, true, true, 'SAP, BD(MYSQL, PSQL)' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('58650705S', 'Gema Hermoso Guerrero', '2526_gema.hermoso@mail.com', '+34666777888', 12345678934567891234567, 017541959542, 'Barcelona', '08001','PROM20252026','CFGMSMX', true, false, false, true,'Linux, Cisco' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('86803051Q', 'Abel Segovia', '2526_abel.segovia@mail.com', '+34666999111', 12345678945678912345678, 417709712795, 'Barcelona', '08002','PROM20252026','CFGMSMX', true, true, false, false,'VMware, Virtualització' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('89908640F', 'Lucia Torres Garcia','2526_lucia.torres@mail.com', '+34666222333', 12345678956789123450789, 386608768204, 'Hospitalet de Llobregat', '08902','PROM20252026','CFGMSMX', true, false, true, true,'Seguretat Informatica' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('00788488W','Jaume Perez Mendoza', '2324_jaume.perez@mail.com', '+34666113422',12345678967891234567890, 469580014173, 'Barcelona', '08005','PROM20232025','PFI', true, true, false, true, 'Desenvolupament Web' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('53671343S', 'Marta Lopez Ruiz', '2526_marta.lopez@mail.com', '+34666111224',12345678978901234567891, 017541959543, 'Barcelona', '08003','PROM20252026','CFGMSMX', true, false, false, false,'Desenvolupament Web amb Wordpress' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('32931688N', 'Carlos Martinez Gomez', '2526_carlos.martinez@mail.com', '+34666333444',12345678989012345678901, 017541959544, 'Barcelona', '08004','PROM20252026','CFGMSMX', true, false, false, false,'Desenvolupament Web amb HTML CSS i JavaScript' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('44020535F', 'Sofia Garcia Hernandez', '2526_sofia.garcia@mail.com', '+34666555666',12345678990123456789012, 417709712796, 'Barcelona', '08002','PROM20252026','CFGMSMX', true, true, true, true,'Linux, Cisco, BD' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('27849214L', 'Daniel Fernandez Lopez', '2526_daniel.fernandez@mail.com', '+34666222444',12345678911234567890123, 386608768205, 'Hospitalet de Llobregat', '08902','PROM20252026','CFGMSMX', true, false, true, true,'Seguretat Informatica' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('07739758M', 'Carlos Lopez Fernandez','2526_carlos.lopez@gmail.com','+34666555444',12345678956789123456709, 469580014174, 'Barcelona', '08005','PROM20252026','CFGMSMX', true, true, true, false,'Seguretat Informatica' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('75483921L', 'Marta Sanchez Ruiz','2526_marta.sanchez@gmail.com', '+34666888777',12345678967891234567892, 318983310738, 'Sant Cugat del Valles','08172', 'PROM20232025','CFGMADE', true, false, true, true, 'Desenvolupament Web' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('62348975J', 'Javier Moreno Diaz','2526_javier.moreno@gmail.com', '+34666111223',12345678978912345678901, 017541959542, 'Barcelona', '08001','PROM20252026','CFGMSMX', true, true, false, true,'Administracio de Sistemes');
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('98234567H', 'Sofia Vargas Lopez','2526_sofia.vargas@gmail.com', '+34666999112',12345678989123456789012, 417709712795, 'Barcelona', '08002','PROM20252026','CFGMSMX', true, false, true, false,'Virtualització' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('45678912K', 'Daniel Fernandez Morales','2526_daniel.fernandez@gmail.com', '+34666222334',12345678991234567890123, 386608768204, 'Hospitalet de Llobregat', '08902','PROM20252026','CFGMSMX', true, true, false, true,'Seguretat Informatica' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('12345678A', 'Ana Gomez Ruiz','2526_ana.gomez@gmail.com', '+34666111333',12345678912345678901234, 469580014198, 'Barcelona', '08005','PROM20252026','CFGMSMX', true, false, true, false,'Windows Server' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('87654321B', 'Luis Martinez Sanchez','2526_luis.martinez@gmail.com', '+34666888000',12345678923456789012345, 318983310739, 'Sant Cugat del Valles','08172', 'PROM20232025','CFGMADE', true, true, false, true, 'SAP, BD(MYSQL, PSQL)' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('34567890C', 'Elena Ruiz Lopez','2526_elena.ruiz@gmail.com', '+34666111444',12345678934567890123456, 017541959545, 'Barcelona', '08003','PROM20252026','CFGMSMX', true, false, false, false,'Desenvolupament Web' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('56789012D', 'Pablo Sanchez Garcia','2526_pablo.sanchez@gmal.com', '+34666333555',12345678945678901234567, 017541959546, 'Barcelona', '08004','PROM20252026','CFGMSMX', true, true, false, false,'Desenvolupament Web' );
INSERT INTO alumne (DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies ) VALUES
('36537125S', 'Laura Martinez Gomez','2526_laura.martinez@gmail.com', '+34666555777',12345678956789023456789, 417709712797, 'Barcelona', '08002','PROM20252026','CFGMSMX', true, false, true, true,'Linux, Cisco, BD' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('65432109E', 'Maria Lopez Garcia', '2526_maria.lopez@gmail.com', '+34666734888',12345678956789012345678, 417709712596, 'Barcelona', '08001','PROM20252026','CFGMSMX', true, false, false, false,'Desenvolupament Web' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('12345678F', 'Pedro Garcia Martinez', '2526_pedro.garcia@gmail.com', '+34666734889',12345678956789012345679, 417709712597, 'Barcelona', '08002','PROM20252026','CFGMSMX', true, false, false, false,'Seguretat Informatica' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('87654321G', 'Carmen Rodriguez Sanchez', '2526_carmen.rodriguez@gmail.com', '+34666734890',12345678956789012345680, 417709712598, 'Barcelona', '08003','PROM20252026','CFGMSMX', true, false, false, false,'Virtualització' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('34567890H', 'Antonio Jimenez Lopez', '2526_antonio.jimenez@gmail.com', '+34666734891',12345678956789012345681 , 417709712599 , 'Barcelona', '08004','PROM20252026','CFGMSMX', true , false , false , false ,'Desenvolupament Web' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('98765432I', 'Sofia Martinez Jimenez', '2526_sofia.martinez@gmail.com', '+34666734892',12345678956789012345682, 417709712600, 'Barcelona', '08005','PROM20252026','CFGMSMX', true, false, false, false,'Desenvolupament Web' );
INSERT INTO alumne(DNI, nom_cognoms, email, telefon, IDALU, NASS, municipi, CP, promocio, cicle_matricula, actiu, ISO, PAX, RA2_IPO, tecnologies) VALUES
('11111111J', 'David Lopez Rodriguez', '2526_david.lopez@gmail.com', '+34666734893',12345678956789012345683 , 417709712601 , 'Barcelona', '08006','PROM20252026','CFGMSMX', true , false , false , false ,'Seguretat Informatica' );
/* Insertar dades d'empresa */

INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('H10598357', 'MONIWARD SA', 'dduyb21t@talk21.com', '938839091','Barcelona', 'Informatica', TRUE, FALSE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('F75278333', 'TECHSOLUTIONS SL', 'dg524ee7f@msn.co.uk','934567890','Barcelona', 'Tecnologia', FALSE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('S0998199D', 'GREENENERGY SL', 'ltl6ldvpa2@msn.co.uk', '935678901', 'Barcelona','Energia Renovable Informatica', TRUE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('G69834208', 'CONSTRUMAX SA','g5lqpjnxra@lycos.nl', '+34936789012','Barcelona', 'Construccio', FALSE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('J12345678', 'SOFTWAREHOUSE SL', 'oak27qxl9@witty.com', '+34934567890','Barcelona', 'Desenvolupament Software', TRUE, FALSE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('Q9032702D', 'CYBERSECURITY INC', 'lvcj1jxeh2@talk21.com', '+34935678901','Barcelona', 'Seguretat Informatica', TRUE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('Q3114142G', 'DATACENTERS SL', 'nhc7tts5@lycos.nl', '+34936789012','Barcelona', 'Centres de Dades', FALSE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('H14056188', 'AI SOLUTIONS SA', '3a7hcgcv6@earthling.net','+34937890123','Barcelona', 'Intel.ligencia Artificial', TRUE, FALSE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('A13725999', 'WEBDEVELOPERS SL', 'zy7p16lah@lycos.at', '+34938901234','Barcelona', 'Desenvolupament Web', FALSE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('C07189343', 'MOBILEAPPS INC', '9w80p34vq@caramail.com', '+34939012345','Barcelona', 'Desenvolupament Aplicacions Mòbils', TRUE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('B09876543', 'Escola Pia Santa Anna Mataró', 'mataro@mataro.epiaedu.cat', '+34939012346','Mataró', 'Educació', FALSE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('Z12345678', 'MegaStore DataSystem', 'contact@megastore.com', '+34939012347','Mataró', 'Tecnologia', TRUE, TRUE);
INSERT INTO empresa (CIFNIF, nom, email, telf, ubicacio, sector, dual_intensiva, dual_general) VALUES
('Y87654321', 'EcoTech Solutions', 'contact@ecotech.com', '+34939012348','Mataró', 'Tecnologia', TRUE, TRUE);

/*Insertar dades CV */

INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(855365421, '85536542W', '2025-01-15', '2025-06-10', 'http://cvserver.com/cv/1', 'Actiu', 'CV de Jaume Perez Mendoza amb experiència en Windows Server i AD DS.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(855365422, '85536542W', '2025-01-15', '2025-06-10', 'http://cvserver.com/cv/1', 'Actiu', 'CV de Jaume Perez Mendoza amb experiència en Windows Server i AD DS.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(559721731, '55972173V', '2025-02-20', '2025-06-12', 'http://cvserver.com/cv/2', 'Actiu', 'CV Albert Ruiz Pla amb experiència en SAP i bases de dades MySQL i PSQL.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(586507051, '58650705S', '2025-03-10', '2025-06-15', 'http://cvserver.com/cv/3', 'Inactiu', 'CV Gema Hermoso Guerrero amb experiència en Linux i Cisco.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(586507052, '58650705S', '2025-03-10', '2025-06-15', 'http://cvserver.com/cv/3', 'Inactiu', 'CV Gema Hermoso Guerrero amb experiència en Linux i Cisco.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(868030511, '86803051Q', '2025-01-25', '2025-06-18', 'http://cvserver.com/cv/4', 'Actiu', 'CV Abel Segovia amb experiència en VMware i virtualització.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(868030512, '86803051Q', '2025-01-25', '2025-06-18', 'http://cvserver.com/cv/4', 'Actiu', 'CV Abel Segovia amb experiència en VMware i virtualització.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(899086401, '89908640F', '2025-02-05', '2025-06-20', 'http://cvserver.com/cv/5', 'Actiu', 'CV Lucia Torres Garcia amb experiència en seguretat informàtica.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(007884881, '00788488W', '2025-03-15', '2025-06-22', 'http://cvserver.com/cv/6', 'Inactiu', 'CV Jaume Perez Mendoza amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(007884882, '00788488W', '2025-03-15', '2025-06-22', 'http://cvserver.com/cv/6', 'Inactiu', 'CV Jaume Perez Mendoza amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(563713431, '53671343S', '2025-01-30', '2025-06-25', 'http://cvserver.com/cv/7', 'Actiu', 'CV Marta Lopez Ruiz amb experiència en desenvolupament web amb Wordpress.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(563713432, '53671343S', '2025-01-30', '2025-06-25', 'http://cvserver.com/cv/7', 'Actiu', 'CV Marta Lopez Ruiz amb experiència en desenvolupament web amb Wordpress.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(329316881, '32931688N', '2025-02-18', '2025-06-28', 'http://cvserver.com/cv/8', 'Actiu', 'CV Carlos Martinez Gomez amb experiència en desenvolupament web amb HTML, CSS i JavaScript.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(440205351, '44020535F', '2025-03-22', '2025-06-30', 'http://cvserver.com/cv/9', 'Actiu', 'CV Sofia Garcia Hernandez amb experiència en Linux, Cisco i bases de dades.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(440205352, '44020535F', '2025-03-22', '2025-06-30', 'http://cvserver.com/cv/9', 'Actiu', 'CV Sofia Garcia Hernandez amb experiència en Linux, Cisco i bases de dades.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(278492141, '27849214L', '2025-02-12', '2025-06-15', 'http://cvserver.com/cv/10', 'Inactiu', 'CV Daniel Fernandez Lopez amb experiència en seguretat informàtica.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(077397581, '07739758M', '2025-01-28', '2025-06-18', 'http://cvserver.com/cv/11', 'Actiu', 'CV Carlos Lopez Fernandez amb experiència en seguretat informàtica.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(077397582, '07739758M', '2025-01-28', '2025-06-18', 'http://cvserver.com/cv/11', 'Actiu', 'CV Carlos Lopez Fernandez amb experiència en seguretat informàtica.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(754839211, '75483921L', '2025-03-05', '2025-06-20', 'http://cvserver.com/cv/12', 'Actiu', 'CV Marta Sanchez Ruiz amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(754839212, '75483921L', '2025-03-05', '2025-06-20', 'http://cvserver.com/cv/12', 'Actiu', 'CV Marta Sanchez Ruiz amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(623489751, '62348975J', '2025-02-25', '2025-06-22', 'http://cvserver.com/cv/13', 'Actiu', 'CV Javier Moreno Diaz amb experiència en administració de sistemes.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(982345671, '98234567H', '2025-01-18', '2025-06-12', 'http://cvserver.com/cv/14', 'Actiu', 'CV Sofia Vargas Lopez amb experiència en virtualització.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(982345672, '98234567H', '2025-01-18', '2025-06-12', 'http://cvserver.com/cv/14', 'Actiu', 'CV Sofia Vargas Lopez amb experiència en virtualització.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(456789121, '45678912K', '2025-03-12', '2025-06-28', 'http://cvserver.com/cv/15', 'Inactiu', 'CV Daniel Fernandez Morales amb experiència en seguretat informàtica.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(1234567811,'12345678A', '2025-02-08', '2025-06-15', 'http://cvserver.com/cv/16', 'Actiu', 'CV Ana Gomez Ruiz amb experiència en Windows Server.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(1234567812,'12345678A', '2025-02-08', '2025-06-15', 'http://cvserver.com/cv/16', 'Actiu', 'CV Ana Gomez Ruiz amb experiència en Windows Server.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(876543211, '87654321B', '2025-01-22', '2025-06-10', 'http://cvserver.com/cv/17', 'Actiu', 'CV Luis Martinez Sanchez amb experiència en SAP i bases de dades MySQL i PSQL.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(345678901, '34567890C', '2025-03-18', '2025-06-25', 'http://cvserver.com/cv/18', 'Actiu', 'CV Elena Ruiz Lopez amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(567890121, '56789012D', '2025-02-14', '2025-06-20', 'http://cvserver.com/cv/19', 'Actiu', 'CV Pablo Sanchez Garcia amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(365371251, '36537125S', '2025-01-26', '2025-06-15', 'http://cvserver.com/cv/20', 'Actiu', 'CV Laura Martinez Gomez amb experiència en Linux, Cisco i bases de dades.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES 
(365371252, '36537125S', '2025-01-26', '2025-06-15', 'http://cvserver.com/cv/20', 'Actiu', 'CV Laura Martinez Gomez amb experiència en Linux, Cisco i bases de dades.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES
(654321091, '65432109E', '2025-02-20', '2025-06-18', 'http://cvserver.com/cv/21', 'Actiu', 'CV Maria Lopez Garcia amb experiència en desenvolupament web.');
INSERT INTO cv (codicv , DNI_alumne , data_creacio, data_actualitzacio, enllaç , estat , resum ) VALUES
(1234567891, '12345678F', '2025-03-10', '2025-06-20', 'http://cvserver.com/cv/22', 'Inactiu', 'CV Pedro Garcia Martinez amb experiència en seguretat informàtica.');
/*Insertar dades criteri*/

INSERT INTO criteri (ID, descrip) VALUES 
(1, 'Actitut');
INSERT INTO criteri (ID, descrip) VALUES 
(2, 'Autonomia');
INSERT INTO criteri (ID, descrip) VALUES 
(3, 'Comunicacio');
INSERT INTO criteri (ID, descrip) VALUES 
(4, 'Treball en equip');
INSERT INTO criteri (ID, descrip) VALUES 
(5, 'Puntualitat');
INSERT INTO criteri (ID, descrip) VALUES 
(6, 'Nivell tecnic');

/* Insertar avaluacio */

INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1001, '85536542W', 8.5, 'Bon rendiment.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1002, '55972173V', 9.0, 'Excel·lent capacitat de adaptació i aprenentatge ràpid.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1003, '58650705S', 7.5, 'Bona actitud però necessita millorar en aspectes tècnics.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1004, '86803051Q', 8.0, 'Mostra iniciativa i treballa bé en equip.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1005, '89908640F', 9.2, 'Destaca per la seva puntualitat i responsabilitat.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1006, '00788488W', 8.8, 'Excel·lent capacitat de resolució de problemes.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1007, '53671343S', 7.8, 'Bona integració en equip de treball.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1008, '32931688N', 8.3, 'Mostra interès i ganes d’aprendre.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global , observacions) VALUES
(1009, '44020535F', 9.0, 'Excel·lent rendiment tècnic i actitud proactiva.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1010, '27849214L', 5.0, 'Necessita millorar la seva actitud i compromís.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1011, '62348975J', 9.7, 'Alumne excel·lent en la participacio de classe i bon treball amb equip.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1012, '34567890C', 5.0, 'Necessita millorar la seva actitud i compromís.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1013, '45678912K', 8.3, 'Bon treball en equip pero pot millorar en aspectes tècnics.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1014, '12345678A', 9.5, 'Excel·lent capacitat tècnica i actitud positiva.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1015, '87654321B', 6.0, 'Mostra interès pero falta molt a classe.');
INSERT INTO avaluacio (codi_avaluacio, DNI_alumne, nota_global, observacions) VALUES
(1016, '56789012D', 7.6, 'Falta saber conceptes teorics.');
/* Insertar segueix */
--1r avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1001, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1001, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1001, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1001, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1001, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1001, 8);
--2a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1002, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1002, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1002, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1002, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1002, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1002, 9);
--3a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1003, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1003, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1003, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1003, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1003, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1003, 5);
--4a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1004, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1004, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1004, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1004, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1004, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1004, 7);
--5a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1005, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1005, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1005, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1005, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1005, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1005, 9);
--6a avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1006, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1006, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1006, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1006, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1006, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1006, 9);
--7a avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1007, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1007, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1007, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1007, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1007, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1007, 7);
--8a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1008, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1008, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1008, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1008, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1008, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1008, 7);
--9a avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1009, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1009, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1009, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1009, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1009, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1009, 9);
--10a avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1010, 5);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1010, 6);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1010, 4);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1010, 5);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1010, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1010, 2);
--11a avaluacio
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1011, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1011, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1011, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1011, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1011, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1011, 9);
--12 avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1012, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1012, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1012, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1012, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1012, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1012, 9);
--13a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1013, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1013, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1013, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1013, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1013, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1013, 5);
--14 avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1014, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1014, 9);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1014, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1014, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1014, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1014, 9);
--15a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1015, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1015, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1015, 5);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1015, 6);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1015, 4);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1015, 9);
--16a avaluacio 
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(1, 1016, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(2, 1016, 7);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(3, 1016, 6);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(4, 1016, 8);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(5, 1016, 10);
INSERT INTO segueix (ID_criteri, codi_avaluacio, nota) VALUES
(6, 1016, 5);
--Inserir dades enviament
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(855365421, 'H14056188', '2025-04-01','2025-04-23', null, 'Rebut', 'Primer contacte establert.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(855365421, 'H10598357', '2025-04-02', '2025-04-06', '2025-04-11', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(855365422, 'S0998199D', '2025-04-03', '2025-04-07', '2025-04-12', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(982345671, 'H10598357', '2025-04-04','2025-04-24', null, 'Rebut', 'Esperant resposta.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(982345671, 'S0998199D', '2025-04-05', '2025-04-09', '2025-04-14', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(982345671, 'S0998199D', '2025-04-06', '2025-04-10', '2025-04-30', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(586507052, 'H10598357', '2025-04-07','2025-04-12', null, 'Rebut', 'Segona ronda.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(586507052, 'S0998199D', '2025-04-08', '2025-04-12', '2025-04-17', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(586507052, 'H10598357', '2025-04-09', '2025-04-13', '2025-04-25', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(868030512, 'S0998199D', '2025-04-10','2025-04-11', null, 'Rebut', 'Esperant confirmació.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(868030512, 'S0998199D', '2025-04-11', '2025-04-15', '2025-04-20', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(868030512, 'H10598357', '2025-04-12', '2025-04-16', '2025-04-18', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(899086401, 'G69834208', '2025-04-13','2025-04-23', null, 'Rebut', 'Primer contacte establert.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(899086401, 'G69834208', '2025-04-14', '2025-04-18', '2025-04-23', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(899086401, 'G69834208', '2025-04-15','2025-04-20', null, 'Rebut', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884881, 'G69834208', '2025-04-16','2025-04-30', null, 'Rebut', 'Segona ronda d’entrevistes.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884881, 'Q3114142G', '2025-04-17', '2025-04-21', '2025-04-26', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884881, 'C07189343', '2025-04-18', '2025-04-22', '2025-04-08', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884882, 'H10598357', '2025-04-19','2025-04-20', null, 'Rebut', 'Esperant confirmació.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884882, 'C07189343', '2025-04-20','2025-04-21', null, 'Rebut', 'Perfil no adequat.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884882, 'C07189343', '2025-04-21', '2025-04-25', '2025-04-12', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(563713431, 'C07189343', '2025-04-22','2025-04-26', null, 'Rebut', 'Primer contacte establert.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(007884882, 'C07189343', '2025-04-23', '2025-04-27', '2025-05-02', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(563713431, 'C07189343', '2025-04-24', '2025-04-28', '2025-04-21', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(329316881, 'Q3114142G', '2025-04-25','2025-04-25', null, 'Rebut', 'Segona ronda d’entrevistes.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(329316881, 'A13725999', '2025-04-26', '2025-04-30', '2025-05-05', 'Entrevista', 'Entrevista confirmada..');
INSERT INTO enviament(codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(329316881, 'Q3114142G', '2025-04-27','2025-04-28', null, 'Rebut', 'Oferta de feina enviada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(365371252, 'A13725999', '2025-04-28','2025-04-30', null, 'Rebut', 'Esperant confirmació.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(365371252, 'A13725999', '2025-04-29', '2025-05-03', '2025-05-08', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(365371252, 'A13725999', '2025-04-30', '2025-05-04', '2025-04-03', 'Acceptat', null);
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(654321091, 'Q3114142G', '2025-05-01','2025-05-05', null, 'Rebut', 'Primer contacte establert.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(654321091, 'Q3114142G', '2025-05-02', '2025-05-06', '2025-05-11', 'Entrevista', 'Entrevista confirmada.');
INSERT INTO enviament (codicv, CIFNIF_empresa, data_contacte, data_resposta, data_entrevista, estat, notes) VALUES
(654321091, 'Q3114142G', '2025-05-03', '2025-05-07', '2025-05-12', 'Acceptat', null);



/* Insertar d'assignacio */
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('85536542W', 'C07189343', '2025-05-01', '2025-08-31', '9:00-17:00', 'Laura Gomez', 'En proces', 'Intensiva', 'Desenvolupament web');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('00788488W', 'C07189343', '2025-05-05', '2025-09-05', '10:00-18:00', 'Carlos Ruiz', 'Finalitzat', 'General', 'Administració de sistemes');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('58650705S', 'Q3114142G', '2025-06-01', '2025-09-30', '8:00-16:00', 'Ana Martinez', 'En proces', 'Intensiva', 'Seguretat informàtica');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('86803051Q', 'J12345678', '2025-05-15', '2025-08-15', '9:00-17:00', 'Javier Lopez', 'Cancelada', 'General', 'Bases de dades');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('89908640F', 'H10598357', '2025-06-10', '2025-10-10', '10:00-18:00', 'Sofia Hernandez', 'En proces', 'Intensiva', 'Administració de xarxes');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('00788488W', 'A13725999', '2025-09-06', '2026-01-20', '8:00-16:00', 'Miguel Torres', 'Finalitzat', 'General', 'Virtualització');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('53671343S', 'C07189343', '2025-06-05', '2025-10-05', '9:00-17:00', 'Isabel Ramirez', 'En proces', 'Intensiva', 'Desenvolupament  de aplicacions');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('36537125S', 'A13725999', '2025-05-25', '2025-09-25', '10:00-18:00', 'Fernando Jimenez', 'Cancelada', 'General', 'Administració de sistemes');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('36537125S', 'B09876543', '2025-09-25', '2026-06-13', '10:00-18:00', 'Fernando Jimenez', 'Cancelada', 'General', 'Administració de sistemes');
INSERT INTO assignacio (DNI_alumne, CIFNIF_empresa, data_inici, data_fi, horari, tutor, estat, tipus, especialitzacio) VALUES
('65432109E', 'Q3114142G', '2025-07-01', '2025-10-31', '8:00-16:00', 'Laura Gomez', 'En proces', 'Intensiva', 'Desenvolupament web');