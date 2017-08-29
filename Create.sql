CREATE TABLE year
(year INTEGER NOT NULL,
CONSTRAINT pk_Year_year PRIMARY KEY(year))

CREATE TABLE source
(sName varchar(40) NOT NULL,
 sUrl varchar(40),
 CONSTRAINT pk_Source_sName PRIMARY KEY(sName))


CREATE TABLE program
 (pName varchar(35) NOT NULL,
 CONSTRAINT pk_Program_pName PRIMARY KEY(pName))

CREATE TABLE university
 (uName varchar(35) NOT NULL,
 uUrl varchar(35),
 uEmail varchar(35),
 uPhone varchar(300),
 uType VARCHAR(10),
 uEndowment NUMERIC(20,2),
 uLocation varchar(20),
 CONSTRAINT pk_University_uName PRIMARY KEY(uName))


 CREATE TABLE gives
 (rankId CHAR(10) NOT NULL,
 year INTEGER,
 sName varchar(35),
 uName varchar(35),
 pName varchar(35),
 rank INTEGER,
 weightedRank INTEGER
 CONSTRAINT pk_Gives_rankId PRIMARY KEY(rankId),
 CONSTRAINT fk_Gives_year FOREIGN KEY(year) REFERENCES [Rankings4U.Year] (year)
 ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT fk_Gives_sName FOREIGN KEY(sName) REFERENCES [Rankings4U.Source] (sName)
 ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT fk_Gives_pName FOREIGN KEY(pName) REFERENCES [Rankings4U.Program] (pName)
 ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT fk_Gives_uName FOREIGN KEY(uName) REFERENCES [Rankings4U.University] (uniName)
 ON DELETE CASCADE ON UPDATE CASCADE)



CREATE TABLE offers
(uName VARCHAR(35) NOT NULL,
pName VARCHAR(35) NOT NULL,
pCost NUMERIC(10,2),
totalCredits INTEGER,
pDuration INTEGER,
costPerCredit NUMERIC(8,3),
schoolName VARCHAR(35)
CONSTRAINT pk_Offers_uName PRIMARY KEY(uName, pName),
CONSTRAINT fk_Offers_uName FOREIGN KEY(uName) REFERENCES [Rankings4U.University] (uName)
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_Offers_pName FOREIGN KEY(pName) REFERENCES [Rankings4U.Program] (pName)
ON UPDATE CASCADE ON DELETE CASCADE)











