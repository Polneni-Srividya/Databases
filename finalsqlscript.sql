CREATE SCHEMA `twitter_database`;
CREATE TABLE `twitter_database`.`user_table` (
`user_id` INT NOT NULL,
`name` VARCHAR(45) NOT NULL,
`lastname` VARCHAR(45) NULL,
`email` VARCHAR(45) NOT NULL,
`password` VARCHAR(45) NOT NULL,

PRIMARY KEY (`user_id`));
CREATE TABLE `twitter_database`.`followers_table` (
`user_id` INT NOT NULL,
`name` VARCHAR(45) NOT NULL,
`lastname` VARCHAR(45) NULL,
`email` VARCHAR(45) NOT NULL,
`password` VARCHAR(45) NOT NULL,
PRIMARY KEY (`user_id`),
FOREIGN KEY (user_id) REFERENCES user_table(user_id));


CREATE TABLE `twitter_database`.`feeds_table` (
`Feed_id` INT NOT NULL,
`Feed_content` VARCHAR(45) NULL,
`User_id` INT NOT NULL,
PRIMARY KEY (`Feed_id`),
FOREIGN KEY (User_id) REFERENCES user_table(user_id));
select * from `twitter_database`.`feeds_table`;
CREATE TABLE `twitter_database`.`retweets_table` (
`Retweet_id` INT NOT NULL,
`Feed_id` INT NOT NULL,
`User_id` INT NOT NULL,
PRIMARY KEY (`Retweet_id`),
FOREIGN KEY (User_id) REFERENCES user_table(user_id),
FOREIGN KEY (Feed_id) REFERENCES feeds_table(Feed_id)
);
CREATE TABLE `twitter_database`.`comments_table` (
`Comment_id` INT NOT NULL,
`Comment_content` LONGTEXT NULL,
`Feed_id` INT NOT NULL,
`User_id` INT NOT NULL,
PRIMARY KEY (`Comment_id`),
FOREIGN KEY (User_id) REFERENCES user_table(user_id),
FOREIGN KEY (Feed_id) REFERENCES feeds_table(Feed_id));

#select * from 'twitter_database'.'comments_table';

SELECT * FROM twitter_database.user_table;

INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('1', 'Edith', 'Rykert', 'EdithRykert@gmail.com', 'Rykert123');


INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('2', 'Steven', 'Preston', 'StevenPreston@gmail.com', 'Preston123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('3', 'Hazel', 'Sanchez', 'HazelSanchez@gmail.com', 'Sanchez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('4', 'Tammara', 'Dorsey', 'TammaraDorsey@gmail.com', 'Dorsey123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('5', 'Rodney', 'Lizarraga', 'RodneyLizarraga@gmail.com', 'Lizarraga123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('6', 'Lee', 'Flores', 'LeeFlores@gmail.com', 'Flores123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('7', 'Jo', 'Thompson', 'JoThompson@gmail.com', 'Thompson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('8', 'Patricia', 'Siler', 'PatriciaSiler@gmail.com', 'Siler123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('9', 'Takisha', 'Crowe', 'TakishaCrowe@gmail.com', 'Crowe123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('10', 'Miguel', 'Johnson', 'MiguelJohnson@gmail.com', 'Johnson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('11', 'Dana', 'Nery', 'DanaNery@gmail.com', 'Nery123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('12', 'Ivan', 'Gillis', 'IvanGillis@gmail.com', 'Gillis123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('13', 'Vernon', 'Rogers', 'VernonRogers@gmail.com', 'Rogers123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('14', 'Ryan', 'Young', 'RyanYoung@gmail.com', 'Young123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('15', 'Linda', 'Vanhoy', 'LindaVanhoy@gmail.com', 'Vanhoy123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('16', 'James', 'Taylor', 'JamesTaylor@gmail.com', 'Taylor123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('17', 'Betsy', 'Franklin', 'BetsyFranklin@gmail.com', 'Franklin123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('18', 'Vickie', 'Freeman', 'VickieFreeman@gmail.com', 'Freeman123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('19', 'Nicole', 'Mcdonald', 'NicoleMcdonald@gmail.com', 'Mcdonald123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('20', 'Mary', 'Savarese', 'MarySavarese@gmail.com', 'Savarese123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('21', 'Christy', 'Chin', 'ChristyChin@gmail.com', 'Chin123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('22', 'Sharon', 'Briggs', 'SharonBriggs@gmail.com', 'Briggs123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('23', 'Ronald', 'Apo', 'RonaldApo@gmail.com', 'Apo123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('24', 'Keith', 'Lowe', 'KeithLowe@gmail.com', 'Lowe123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('25', 'Scott', 'Morales', 'ScottMorales@gmail.com', 'Morales123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('26', 'Cameron', 'Cogar', 'CameronCogar@gmail.com', 'Cogar123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('27', 'Amy', 'Price', 'AmyPrice@gmail.com', 'Price123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('28', 'Charles', 'Archie', 'CharlesArchie@gmail.com', 'Archie123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('29', 'Mark', 'Kerwood', 'MarkKerwood@gmail.com', 'Kerwood123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('30', 'Beverly', 'Schulz', 'BeverlySchulz@gmail.com', 'Schulz123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('31', 'Joan', 'Rivera', 'JoanRivera@gmail.com', 'Rivera123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('32', 'Margo', 'Vecker', 'MargoVecker@gmail.com', 'Vecker123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('33', 'Richard', 'Tyson', 'RichardTyson@gmail.com', 'Tyson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('34', 'Susan', 'Carr', 'SusanCarr@gmail.com', 'Carr123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('35', 'Lisa', 'Brown', 'LisaBrown@gmail.com', 'Brown123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('36', 'Rebecca', 'Massie', 'RebeccaMassie@gmail.com', 'Massie123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('37', 'Sidney', 'Scott', 'SidneyScott@gmail.com', 'Scott123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('38', 'Glenda', 'Warrington', 'GlendaWarrington@gmail.com', 'Warrington123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('39', 'Sarah', 'Walk', 'SarahWalk@gmail.com', 'Walk123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('40', 'Sherrie', 'Gaters', 'SherrieGaters@gmail.com', 'Gaters123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('41', 'George', 'Thomas', 'GeorgeThomas@gmail.com', 'Thomas123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('42', 'Pat', 'Johnson', 'PatJohnson@gmail.com', 'Johnson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('43', 'Phillip', 'Garza', 'PhillipGarza@gmail.com', 'Garza123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('44', 'Kevin', 'Johnson', 'KevinJohnson@gmail.com', 'Johnson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('45', 'Carolyn', 'Modlin', 'CarolynModlin@gmail.com', 'Modlin123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('46', 'Robert', 'Bare', 'RobertBare@gmail.com', 'Bare123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('47', 'Benjamin', 'Smith', 'BenjaminSmith@gmail.com', 'Smith123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('48', 'Walter', 'Shaw', 'WalterShaw@gmail.com', 'Shaw123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('49', 'Laura', 'Carrillo', 'LauraCarrillo@gmail.com', 'Carrillo123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('50', 'Jewel', 'Jennings', 'JewelJennings@gmail.com', 'Jennings123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('51', 'Joseph', 'Wagner', 'JosephWagner@gmail.com', 'Wagner123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('52', 'Tina', 'Rosser', 'TinaRosser@gmail.com', 'Rosser123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('53', 'Alvin', 'Price', 'AlvinPrice@gmail.com', 'Price123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('54', 'Matthew', 'Hong', 'MatthewHong@gmail.com', 'Hong123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('55', 'David', 'Mcfee', 'DavidMcfee@gmail.com', 'Mcfee123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('56', 'Stacy', 'Leon', 'StacyLeon@gmail.com', 'Leon123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('57', 'Sherry', 'Laitila', 'SherryLaitila@gmail.com', 'Laitila123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('58', 'Cornelia', 'Brooks', 'CorneliaBrooks@gmail.com', 'Brooks123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('59', 'Mary', 'Nickles', 'MaryNickles@gmail.com', 'Nickles123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('60', 'Jessica', 'Cardello', 'JessicaCardello@gmail.com', 'Cardello123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('61', 'Serena', 'Raynor', 'SerenaRaynor@gmail.com', 'Raynor123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('62', 'Walter', 'Dunham', 'WalterDunham@gmail.com', 'Dunham123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('63', 'Claudine', 'Fala', 'ClaudineFala@gmail.com', 'Fala123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('64', 'James', 'Scofield', 'JamesScofield@gmail.com', 'Scofield123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('65', 'Kenneth', 'Webb', 'KennethWebb@gmail.com', 'Webb123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('66', 'Beverly', 'Brown', 'BeverlyBrown@gmail.com', 'Brown123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('67', 'Donald', 'Day', 'DonaldDay@gmail.com', 'Day123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('68', 'Sharon', 'Miga', 'SharonMiga@gmail.com', 'Miga123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('69', 'Linda', 'Huffman', 'LindaHuffman@gmail.com', 'Huffman123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('70', 'Lesia', 'Degen', 'LesiaDegen@gmail.com', 'Degen123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('71', 'Micah', 'Pena', 'MicahPena@gmail.com', 'Pena123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('72', 'Kevin', 'Lopez', 'KevinLopez@gmail.com', 'Lopez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('73', 'Harold', 'Benner', 'HaroldBenner@gmail.com', 'Benner123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('74', 'Patty', 'Davis', 'PattyDavis@gmail.com', 'Davis123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('75', 'Bobby', 'Reed', 'BobbyReed@gmail.com', 'Reed123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('76', 'Laura', 'Carey', 'LauraCarey@gmail.com', 'Carey123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('77', 'Dorothy', 'Sanchez', 'DorothySanchez@gmail.com', 'Sanchez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('78', 'Jason', 'Perrez', 'JasonPerrez@gmail.com', 'Perrez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('79', 'Jesus', 'Rollins', 'JesusRollins@gmail.com', 'Rollins123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('80', 'Rhonda', 'Duke', 'RhondaDuke@gmail.com', 'Duke123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('81', 'Darlene', 'Brown', 'DarleneBrown@gmail.com', 'Brown123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('82', 'Carla', 'Kain', 'CarlaKain@gmail.com', 'Kain123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('83', 'Sharmaine', 'Faust', 'SharmaineFaust@gmail.com', 'Faust123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('84', 'Ernie', 'Kelly', 'ErnieKelly@gmail.com', 'Kelly123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('85', 'Estella', 'Bradley', 'EstellaBradley@gmail.com', 'Bradley123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('86', 'David', 'Smith', 'DavidSmith@gmail.com', 'Smith123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('87', 'Kimberly', 'Messersmith', 'KimberlyMessersmith@gmail.com', 'Messersmith123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('88', 'Billy', 'Williams', 'BillyWilliams@gmail.com', 'Williams123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('89', 'Patricia', 'Jackson', 'PatriciaJackson@gmail.com', 'Jackson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('90', 'Mary', 'Strong', 'MaryStrong@gmail.com', 'Strong123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('91', 'Jonathan', 'Jones', 'JonathanJones@gmail.com', 'Jones123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('92', 'Delia', 'Current', 'DeliaCurrent@gmail.com', 'Current123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('93', 'Lloyd', 'Wilkes', 'LloydWilkes@gmail.com', 'Wilkes123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('94', 'Dana', 'Harty', 'DanaHarty@gmail.com', 'Harty123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('95', 'Lori', 'Tieng', 'LoriTieng@gmail.com', 'Tieng123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('96', 'Alejandro', 'Guadagno', 'AlejandroGuadagno@gmail.com', 'Guadagno123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('97', 'Briana', 'Rauch', 'BrianaRauch@gmail.com', 'Rauch123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('98', 'Joseph', 'Gonzalez', 'JosephGonzalez@gmail.com', 'Gonzalez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('99', 'David', 'Gutierrez', 'DavidGutierrez@gmail.com', 'Gutierrez123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('100', 'Jennifer', 'Ford', 'JenniferFord@gmail.com', 'Ford123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('101', 'Gloria', 'Wright', 'GloriaWright@gmail.com', 'Wright123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('102', 'Jeffrey', 'Flint', 'JeffreyFlint@gmail.com', 'Flint123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('103', 'Gerald', 'Voyer', 'GeraldVoyer@gmail.com', 'Voyer123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('104', 'Paul', 'Riley', 'PaulRiley@gmail.com', 'Riley123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('105', 'Devin', 'Fisher', 'DevinFisher@gmail.com', 'Fisher123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('106', 'Laura', 'Mclean', 'LauraMclean@gmail.com', 'Mclean123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('107', 'Donna', 'Lorentz', 'DonnaLorentz@gmail.com', 'Lorentz123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('108', 'Willie', 'Smallidge', 'WillieSmallidge@gmail.com', 'Smallidge123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('109', 'Gary', 'Mills', 'GaryMills@gmail.com', 'Mills123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('110', 'Raquel', 'Pacheco', 'RaquelPacheco@gmail.com', 'Pacheco123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('111', 'Randall', 'Rodgers', 'RandallRodgers@gmail.com', 'Rodgers123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('112', 'Sean', 'Hudson', 'SeanHudson@gmail.com', 'Hudson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('113', 'Jose', 'Olson', 'JoseOlson@gmail.com', 'Olson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('114', 'John', 'Schafer', 'JohnSchafer@gmail.com', 'Schafer123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('115', 'Hoa', 'Sajovic', 'HoaSajovic@gmail.com', 'Sajovic123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('116', 'Teresa', 'Pearson', 'TeresaPearson@gmail.com', 'Pearson123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('117', 'Teresa', 'Espinoza', 'TeresaEspinoza@gmail.com', 'Espinoza123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('118', 'Margaret', 'Fadden', 'MargaretFadden@gmail.com', 'Fadden123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('119', 'Brittany', 'Crayton', 'BrittanyCrayton@gmail.com', 'Crayton123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('120', 'Barry', 'Wilt', 'BarryWilt@gmail.com', 'Wilt123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('121', 'Patricia', 'Cahall', 'PatriciaCahall@gmail.com', 'Cahall123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('122', 'Leon', 'Mcdonald', 'LeonMcdonald@gmail.com', 'Mcdonald123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('123', 'George', 'Peoples', 'GeorgePeoples@gmail.com', 'Peoples123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('124', 'Sandra', 'Butler', 'SandraButler@gmail.com', 'Butler123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('125', 'Marvin', 'Stracener', 'MarvinStracener@gmail.com', 'Stracener123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('126', 'Pamela', 'Beller', 'PamelaBeller@gmail.com', 'Beller123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('127', 'Myrtle', 'Smith', 'MyrtleSmith@gmail.com', 'Smith123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('128', 'Eric', 'Hatfield', 'EricHatfield@gmail.com', 'Hatfield123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('129', 'Frank', 'Soriano', 'FrankSoriano@gmail.com', 'Soriano123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('130', 'Randy', 'Rogers', 'RandyRogers@gmail.com', 'Rogers123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('131', 'Sylvia', 'Tapp', 'SylviaTapp@gmail.com', 'Tapp123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('132', 'Olga', 'Cato', 'OlgaCato@gmail.com', 'Cato123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('133', 'Janie', 'Daggett', 'JanieDaggett@gmail.com', 'Daggett123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('134', 'Paul', 'Chilton', 'PaulChilton@gmail.com', 'Chilton123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('135', 'Dennis', 'Numbers', 'DennisNumbers@gmail.com', 'Numbers123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('136', 'Angelina', 'Castellana', 'AngelinaCastellana@gmail.com', 'Castellana123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('137', 'Beverly', 'Marcum', 'BeverlyMarcum@gmail.com', 'Marcum123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('138', 'Inez', 'Kapper', 'InezKapper@gmail.com', 'Kapper123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('139', 'Jesse', 'Barnett', 'JesseBarnett@gmail.com', 'Barnett123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('140', 'Deborah', 'Kelley', 'DeborahKelley@gmail.com', 'Kelley123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('141', 'Josie', 'Reynolds', 'JosieReynolds@gmail.com', 'Reynolds123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('142', 'Jodi', 'Tanner', 'JodiTanner@gmail.com', 'Tanner123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('143', 'Nancy', 'Casey', 'NancyCasey@gmail.com', 'Casey123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('144', 'Timothy', 'Terry', 'TimothyTerry@gmail.com', 'Terry123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('145', 'Carla', 'Wheeler', 'CarlaWheeler@gmail.com', 'Wheeler123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('146', 'Seth', 'Stokes', 'SethStokes@gmail.com', 'Stokes123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('147', 'Joseph', 'Bridges', 'JosephBridges@gmail.com', 'Bridges123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('148', 'Sharon', 'Haynes', 'SharonHaynes@gmail.com', 'Haynes123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('149', 'Donna', 'Cox', 'DonnaCox@gmail.com', 'Cox123');
INSERT INTO `twitter_database`.`user_table` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES ('150', 'Mona', 'Adam', 'MonaAdam@gmail.com', 'Adam123');




insert into `twitter_database`.`followers_table` values (1,'Srividya','polneni','sri@gmail.com','Momdad@123');
insert into `twitter_database`.`followers_table`values (2,'Vyshu','polneni','vyshu@gmail.com','Mom@143');
insert into `twitter_database`.`followers_table`values  ('3','kiran','kammadu','kiran@gmail.com','pass1');
insert into `twitter_database`.`followers_table` values ('4','vishnu','karmin','vishnu@gmail.com','pass2');
insert into `twitter_database`.`followers_table` values  ('5','riyaz','jammi','riyaz@gmail.com','pass3');
insert into `twitter_database`.`followers_table` values   ('6','dhatri','funny','dhatri@gmail.com','pass4');
insert into `twitter_database`.`followers_table` values ('7','sneha','galli','sneha@gmail.com','pass5');
insert into `twitter_database`.`followers_table` values  ('8','varun','oman','varun@gmail.com','pass6');
insert into `twitter_database`.`followers_table` values ('9','sri','kothapally','sri@gmail.com','pass7');
insert into `twitter_database`.`followers_table`  values ('10','farin','kanchi','farin@gmail.com','pass8');
insert into `twitter_database`.`followers_table`  values ('11','kranthi','banchu','kranthi@gmail.com','pass9');
insert into `twitter_database`.`followers_table`  values ('12','kinnu','karmin','kinnu@gmail.com','pass10');
insert into `twitter_database`.`followers_table`  values ('13','sashi','vizag','sashi@gmail.com','pass11');
insert into `twitter_database`.`followers_table`  values ('14','vashi','hyderabad','vashigmail.com','pass12');
insert into `twitter_database`.`followers_table`  values ('15','kushi','warangal','kushi@gmail.com','pass13');
insert into `twitter_database`.`followers_table`  values ('16','srinu','singal','srinu@gmail.com','pass14');
insert into `twitter_database`.`followers_table`  values ('17','ramarao','burnal','ramarao@gmail.com','pass15');
insert into `twitter_database`.`followers_table`  values ('18','venkatrao','firnal','venkatrao@gmail.com','pass16');
insert into `twitter_database`.`followers_table`  values ('19','chengal','girnal','chengal@gmail.com','pass17');
insert into `twitter_database`.`followers_table`  values ('20','rajesh','kernal','rajesh@gmail.com','pass18');
insert into `twitter_database`.`followers_table`  values ('21','syed','dharmaram','syed@gmail.com','pass19');
insert into `twitter_database`.`followers_table`  values ('22','kinnu','verifal','kinnu@gmail.com','pass20');
insert into `twitter_database`.`followers_table`  values ('23','chitti','mariyal','chitti@gmail.com','pass21');
insert into `twitter_database`.`followers_table`  values ('24','baby','gariyal','baby@gmail.com','pass22');
insert into `twitter_database`.`followers_table`  values ('25','kutti','dhuniyal','kutti@gmail.com','pass23');
insert into `twitter_database`.`followers_table`  values ('26','gundu','phonial','gundu@gmail.com','pass24');
insert into `twitter_database`.`followers_table`  values ('27','banda','cheniyal','banda@gmail.com','pass25');
insert into `twitter_database`.`followers_table`  values ('28','anu','varnial','anu@gmail.com','pass25');
insert into `twitter_database`.`followers_table`  values ('29','ravi','memphial','ravi@gmail.com','pass26');
insert into `twitter_database`.`followers_table`  values ('30','akhil','chunial','akhil@gmail.com','pass27');
insert into `twitter_database`.`followers_table`  values ('31','shainu','chickiyal','shainu@gmail.com','pass28');
insert into `twitter_database`.`followers_table`  values ('32','chinni','manial','chinni@gmail.com','pass29');
insert into `twitter_database`.`followers_table`  values ('33','punnu','dunial','punnu@gmail.com','pass30');
insert into `twitter_database`.`followers_table`  values ('34','kinnur','cheriyal','kinnur@gmail.com','pass31');
insert into `twitter_database`.`followers_table`  values ('35','banda','kominal','banda@gmail.com','pass32');
insert into `twitter_database`.`followers_table`  values ('36','chelli','hernial','chelli@gmail.com','pass33');
insert into `twitter_database`.`followers_table`  values ('37','sakiya','ijinal','sakiya@gmail.com','pass34');
insert into `twitter_database`.`followers_table`  values ('38','varyia','marignal','variya@gmail.com','pass35');
insert into `twitter_database`.`followers_table`  values ('39','gariya','dornial','gariya@gmail.com','pass36');
insert into `twitter_database`.`followers_table`  values ('40','cheruvu','umbinal','cheruvu@gmail.com','pass37');
insert into `twitter_database`.`followers_table`  values ('41','baruvu','chiginal','baruvu@gmail.com','pass38');
insert into `twitter_database`.`followers_table`  values ('42','komala','maphinal','komala@gmail.com','pass39');
insert into `twitter_database`.`followers_table`  values ('43','vimala','farinal','vimala@gmail.com','pass40');
insert into `twitter_database`.`followers_table`  values ('44','nyruthi','aginal','nyruthi@gmail.com','pass41');
insert into `twitter_database`.`followers_table`  values ('45','prakruthi','karinal','prakruthi@gmail.com','pass42');
insert into `twitter_database`.`followers_table`  values ('46','chanluthi','hernial','chanluthi@gmail.com','pass43');
insert into `twitter_database`.`followers_table`  values ('47','gamluthi','abunal','gamluthi@gmail.com','pass44');
insert into `twitter_database`.`followers_table`  values ('48','karluthi','eginal','karluthi@gmail.com','pass45');
insert into `twitter_database`.`followers_table`  values ('49','jailuthi','duginal','jailuthi@gmail.com','pass46');
insert into `twitter_database`.`followers_table`  values ('50','alnubhi','alunum','alnubhi@gmail.com','pass47');

##insert into `twitter_database`.`feeds_table`  values ('1',"Don't tell people your plans",'1' ),
insert into `twitter_database`.`feeds_table`  values('1',"Stay foolish to stay ",'25' );
insert into `twitter_database`.`feeds_table`  values('2',"We can do anything we want",'19' );
insert into `twitter_database`.`feeds_table` values ('3',"Stay foolish to stay sane",'41' );
insert into `twitter_database`.`feeds_table` values ('4',"When nothing goes right, go left",'43' );
insert into `twitter_database`.`feeds_table` values('5',"Try Again. Fail again. Fail better",'41' );
insert into `twitter_database`.`feeds_table` values('6',"Impossible is for the unwilling",'39' );
insert into `twitter_database`.`feeds_table` values('7',"Once you choose hope, anything’s possible",'37' );
insert into `twitter_database`.`feeds_table` values('8',"I can and I will",'35' );
insert into `twitter_database`.`feeds_table` values('9',"Take the risk or lose the chance",'33' );
insert into `twitter_database`.`feeds_table` values('10',"There is no saint without a past",'31' );
insert into `twitter_database`.`feeds_table` values('11',"Good things happen to those who hustle",'29' );
insert into `twitter_database`.`feeds_table` values('12',"Solitary trees",'27' );
insert into `twitter_database`.`feeds_table` values('13',"Go forth on your path",'25' );
insert into `twitter_database`.`feeds_table` values('14',"The bird a nest,",'23' );
insert into `twitter_database`.`feeds_table` values('15',"He who is brave is free",'21' );
insert into `twitter_database`.`feeds_table` values('16',"Prove them wrong",'19' );
insert into `twitter_database`.`feeds_table` values('17',"The fastest road to meaning",'17' );
insert into `twitter_database`.`feeds_table` values('18',"No guts, no story",'15' );
insert into `twitter_database`.`feeds_table` values('19',"Screw it, let’s do it",'13' );
insert into `twitter_database`.`feeds_table` values('20',"Boldness be my friend",'11' );
insert into `twitter_database`.`feeds_table` values('21',"My life is my message",'9' );
insert into `twitter_database`.`feeds_table` values('22',"Keep going",'7' );
insert into `twitter_database`.`feeds_table` values('23',"Dream big",'3' );
insert into `twitter_database`.`feeds_table` values('24',"Dream big",'1' );
insert into `twitter_database`.`feeds_table` values('25',"Boldness be my friend",'2' );
insert into `twitter_database`.`feeds_table` values('26',"Screw it, let’s do it",'4' );
insert into `twitter_database`.`feeds_table` values('27',"Boldness be my friend",'6' );
insert into `twitter_database`.`feeds_table` values('28',"My life is my message",'8' );
insert into `twitter_database`.`feeds_table` values('29',"brave is free",'10' );
insert into `twitter_database`.`feeds_table` values('30',"I wasn’t unable to enjoy ",'12' );
insert into `twitter_database`.`feeds_table` values('31',"In a way.",'14' );
insert into `twitter_database`.`feeds_table` values('32',"The more ",'16' );
insert into `twitter_database`.`feeds_table` values('33',"Eventually, I started my own website ",'18' );
insert into `twitter_database`.`feeds_table` values('34',"And so the adventure begins",'20' );
insert into `twitter_database`.`feeds_table` values('35',"If you want it, work for it",'22' );
insert into `twitter_database`.`feeds_table` values('36',"And so the adventure begins",'24' );
insert into `twitter_database`.`feeds_table` values('37',"Grow through what you go through",'26' );
insert into `twitter_database`.`feeds_table` values('38',"Do it with passion or not at all",'28' );
insert into `twitter_database`.`feeds_table` values('39',"Forget about style; worry about results",'30' );
insert into `twitter_database`.`feeds_table` values('40',"Success is the child of audacity",'32' );
insert into `twitter_database`.`feeds_table` values('41',"Whatever you do, do with all your might",'34' );
insert into `twitter_database`.`feeds_table` values('43',"We are twice armed if we fight with faith",'36' );
insert into `twitter_database`.`feeds_table` values('44',"Be faithful ",'38' );
insert into `twitter_database`.`feeds_table` values('45',"Let him do",'40' );
insert into `twitter_database`.`feeds_table` values('46',"Persistence guarantees ",'42' );
insert into `twitter_database`.`feeds_table` values('47',"The wisest mind has done",'44' );
insert into `twitter_database`.`feeds_table` values('48',"Fall seven times, stand up eight",'46' );
insert into `twitter_database`.`feeds_table` values('49',"Seek the seeker",'48' );
insert into `twitter_database`.`feeds_table` values('50',"Silence is an answer too",'50' );
insert into `twitter_database`.`feeds_table` values('51',"Every wall is a door",'51' );

insert into `twitter_database`.`retweets_table` values('1','2','1');
insert into `twitter_database`.`retweets_table` values('2','3','5');
insert into `twitter_database`.`retweets_table` values('3','5','7');
insert into `twitter_database`.`retweets_table` values('4','7','9');
insert into `twitter_database`.`retweets_table` values('5','9','11');
insert into `twitter_database`.`retweets_table` values('6','11','13');
insert into `twitter_database`.`retweets_table` values('7','13','15');
insert into `twitter_database`.`retweets_table` values('8','1','17');
insert into `twitter_database`.`retweets_table` values('9','17','19');
insert into `twitter_database`.`retweets_table` values('10','19','21');
insert into `twitter_database`.`retweets_table` values('11','21','23');
insert into `twitter_database`.`retweets_table` values('12','23','25');
insert into `twitter_database`.`retweets_table` values('13','25','27');
insert into `twitter_database`.`retweets_table` values('14','27','29');
insert into `twitter_database`.`retweets_table` values('15','29','31');
insert into `twitter_database`.`retweets_table` values('16','31','33');
insert into `twitter_database`.`retweets_table` values('17','33','35');
insert into `twitter_database`.`retweets_table` values('18','25','27');
insert into `twitter_database`.`retweets_table` values('19','27','29');
insert into `twitter_database`.`retweets_table` values('20','29','31');
insert into `twitter_database`.`retweets_table` values('21','31','33');
insert into `twitter_database`.`retweets_table` values('22','35','37');
insert into `twitter_database`.`retweets_table` values('23','37','39');
insert into `twitter_database`.`retweets_table` values('24','39','41');
insert into `twitter_database`.`retweets_table` values('25','41','43');
insert into `twitter_database`.`retweets_table` values('26','43','45');
insert into `twitter_database`.`retweets_table` values('27','45','47');
insert into `twitter_database`.`retweets_table` values('28','47','49');
insert into `twitter_database`.`retweets_table` values('29','49','51');
insert into `twitter_database`.`retweets_table` values('30','2','53');
insert into `twitter_database`.`retweets_table` values('31','4','55');
insert into `twitter_database`.`retweets_table` values('32','6','57');
insert into `twitter_database`.`retweets_table` values('33','8','59');
insert into `twitter_database`.`retweets_table` values('34','10','61');
insert into `twitter_database`.`retweets_table` values('35','12','63');
insert into `twitter_database`.`retweets_table` values('36','14','65');
insert into `twitter_database`.`retweets_table` values('37','16','67');
insert into `twitter_database`.`retweets_table` values('38','18','69');
insert into `twitter_database`.`retweets_table` values('39','20','71');
insert into `twitter_database`.`retweets_table` values('40','22','73');
insert into `twitter_database`.`retweets_table` values('41','24','75');
insert into `twitter_database`.`retweets_table` values('42','26','77');
insert into `twitter_database`.`retweets_table` values('44','28','79');
insert into `twitter_database`.`retweets_table` values('45','30','81');
insert into `twitter_database`.`retweets_table` values('46','32','83');
insert into `twitter_database`.`retweets_table` values('47','34','85');
insert into `twitter_database`.`retweets_table` values('48','36','87');
insert into `twitter_database`.`retweets_table` values('49','38','89');
insert into `twitter_database`.`retweets_table` values('50','40','91');

CREATE TABLE `twitter_database`.`comments_table` (
`Comment_id` INT NOT NULL,
`Comment_content` LONGTEXT NULL,
`Feed_id` INT NOT NULL,
`User_id` INT NOT NULL,
PRIMARY KEY (`Comment_id`),
FOREIGN KEY (User_id) REFERENCES user_table(user_id),
FOREIGN KEY (Feed_id) REFERENCES feeds_table(Feed_id));

insert into `twitter_database`.`comments_table` values('1','Good work','1','2');
insert into `twitter_database`.`comments_table` values('2','Sorry!Bad work','3','4');
insert into `twitter_database`.`comments_table` values('3','Good work','5','6');
insert into `twitter_database`.`comments_table` values('4','Sorry!Bad work','7','8');
insert into `twitter_database`.`comments_table` values('5','Good work','9','10');
insert into `twitter_database`.`comments_table` values('6','Sorry!Bad work','11','12');
insert into `twitter_database`.`comments_table` values('7','Good work','13','14');
insert into `twitter_database`.`comments_table` values('8','Sorry!Bad work','15','16');
insert into `twitter_database`.`comments_table` values('9','Good work','17','18');
insert into `twitter_database`.`comments_table` values('10','Sorry!Bad work','18','19');
insert into `twitter_database`.`comments_table` values('11','Sorry!Bad work','19','20');
insert into `twitter_database`.`comments_table` values('12','Good work','21','22');
insert into `twitter_database`.`comments_table` values('13','Sorry!Bad work','23','24');
insert into `twitter_database`.`comments_table` values('14','Good work','25','26');
insert into `twitter_database`.`comments_table` values('15','Sorry!Bad work','27','28');
insert into `twitter_database`.`comments_table` values('16','Good work','29','30');
insert into `twitter_database`.`comments_table` values('17','Sorry!Bad work','31','32');
insert into `twitter_database`.`comments_table` values('18','Good work','33','34');
insert into `twitter_database`.`comments_table` values('19','Sorry!Bad work','35','36');
insert into `twitter_database`.`comments_table` values('20','Good work','37','38');
insert into `twitter_database`.`comments_table` values('21','Sorry!Bad work','39','40');
insert into `twitter_database`.`comments_table` values('22','Good work','41','42');
insert into `twitter_database`.`comments_table` values('23','Sorry!Bad work','43','44');
insert into `twitter_database`.`comments_table` values('24','Good work','45','46');
insert into `twitter_database`.`comments_table` values('25','Sorry!Bad work','47','48');
insert into `twitter_database`.`comments_table` values('26','Good work','48','49');
insert into `twitter_database`.`comments_table` values('27','Sorry!Bad work','50','51');
insert into `twitter_database`.`comments_table` values('28','Good work','2','53');
insert into `twitter_database`.`comments_table` values('29','Sorry!Bad work','4','55');
insert into `twitter_database`.`comments_table` values('30','Good work','6','57');
insert into `twitter_database`.`comments_table` values('31','Sorry!Bad work','8','59');
insert into `twitter_database`.`comments_table` values('32','Sorry!Bad work','10','61');
insert into `twitter_database`.`comments_table` values('33','Good work','12','63');
insert into `twitter_database`.`comments_table` values('34','Sorry!Bad work','14','65');
insert into `twitter_database`.`comments_table` values('35','Good work','16','67');
insert into `twitter_database`.`comments_table` values('36','Sorry!Bad work','18','69');
insert into `twitter_database`.`comments_table` values('37','Good work','20','71');
insert into `twitter_database`.`comments_table` values('38','Sorry!Bad work','21','73');
insert into `twitter_database`.`comments_table` values('39','Good work','22','75');
insert into `twitter_database`.`comments_table` values('40','Sorry!Bad work','24','77');
insert into `twitter_database`.`comments_table` values('41','Good work','26','79');
insert into `twitter_database`.`comments_table` values('41','Sorry!Bad work','28','81');
insert into `twitter_database`.`comments_table` values('42','Good work','30','83');
insert into `twitter_database`.`comments_table` values('43','Sorry!Bad work','32','85');
insert into `twitter_database`.`comments_table` values('44','Good work','34','87');
insert into `twitter_database`.`comments_table` values('45','Sorry!Bad work','36','89');
insert into `twitter_database`.`comments_table` values('46','Good work','38','91');
insert into `twitter_database`.`comments_table` values('47','Sorry!Bad work','40','93');
insert into `twitter_database`.`comments_table` values('48','Good work','42','95');
insert into `twitter_database`.`comments_table` values('49','Sorry!Bad work','44','97');
insert into `twitter_database`.`comments_table` values('50','Good work','46','99');





select * from  `twitter_database`.`feeds_table`;