-- Drop tables
DROP TABLE IF EXISTS Corresponds_T
DROP TABLE IF EXISTS Year_T
DROP TABLE IF EXISTS Ranking_T
DROP TABLE IF EXISTS Source_T
DROP TABLE IF EXISTS Program_Contact_T
DROP TABLE IF EXISTS Program_T


-- create table statements
CREATE TABLE Program_T
(prgId CHAR(10) NOT NULL,
prgName VARCHAR(60),
prgHead VARCHAR(30),
prgDuration VARCHAR(20),
prgInstructionMode VARCHAR(20),
CONSTRAINT pk_Program_prgId PRIMARY KEY (prgId));

CREATE TABLE Program_Contact_T
(prgId CHAR(10) NOT NULL,
prgContact VARCHAR(30) NOT NULL,
CONSTRAINT pk_Program_Contact_prgId_prgContact PRIMARY KEY (prgId,prgContact),
CONSTRAINT fk_Program_Contact_prgId FOREIGN KEY (prgId)
REFERENCES Program_T (prgId) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Source_T
(sourceId CHAR(4) NOT NULL,
sourceName VARCHAR(30),
sourceURL VARCHAR(250),
CONSTRAINT pk_Source_sourceId PRIMARY KEY (sourceId));

CREATE TABLE Ranking_T
(rankId VARCHAR(10) NOT NULL,
rank INT,
rankType VARCHAR(30),
prgId CHAR(10),
sourceId CHAR(4)
CONSTRAINT pk_Ranking_rankId PRIMARY KEY (rankId),
CONSTRAINT fk_Ranking_prgId FOREIGN KEY (prgId)
REFERENCES Program_T (prgId) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT fk_Ranking_sourceId FOREIGN KEY (sourceId)
REFERENCES Source_T (sourceId) ON DELETE CASCADE ON UPDATE NO ACTION);

CREATE TABLE Year_T
(yearId VARCHAR(10) NOT NULL,
year INT,
yearTerm VARCHAR(10)
CONSTRAINT pk_Year_yearId PRIMARY KEY (yearId));

CREATE TABLE Corresponds_T
(rankId VARCHAR(10),
yearId VARCHAR(10),
CONSTRAINT pk_Corresponds_rankId_yearId PRIMARY KEY (rankId,yearId),
CONSTRAINT fk_Correspondsg_prgId FOREIGN KEY (rankId)
REFERENCES Ranking_T (rankId) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT fk_Corresponds_yearId FOREIGN KEY (yearId)
REFERENCES Year_T (yearId) ON DELETE NO ACTION ON UPDATE NO ACTION);