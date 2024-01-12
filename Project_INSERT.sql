-- Insert QUERIES
INSERT INTO Program_T VALUES
('001', 'Master of Science in Information Systems', 'Tej Anand', '1.5', 'In-
class'),
('002', 'Master of Business Administration', 'Jack daniels', '2', 'In-class'),
('003', 'Master of Science in Business Analytics', 'Suresh Acharya', '1.5', 'In-class'),
('004', 'Master of Finance',' Michael Cichello' , '1.5' , 'In-Class'),
('005', 'Master of Science in Accounting' , 'Emanuel Zur', '1.5', 'In-class' ),
('006', 'Master of Science in Marketing Analytics', 'Judy Frels', '1.5', 'In-person'),
('007', 'Master of Science in Management studies', 'Rellie Rozin', '1', 'In-person'),
('008', 'Master of Science in Supply chain Management', 'Thomas M. Corsi', '1.5', 'In-person'),
('009', 'Online MS in Business Analytics', 'Suresh Acharya', '1.5', 'Online'),
('010', 'Master of Science in Quantitative Finance', 'Michael Cichello', '2', 'In-person'),
('011', 'Online Master of Science in Management Studies', 'Rellie Rozin', '1', 'Online');

SELECT * FROM Program_T

INSERT INTO Program_Contact_T VALUES
('001', '301 405 8855'),
('001', 'tejanand@umd.edu'),
('002', '301-405-2559'),
('002', 'smithmasters@umd.edu'),
('003', '301 405 8654'),
('003', 'suresh12@umd.edu'),
('004', '301 405 2333'),
('004', 'mcichell@umd.edu'),
('005', '301 405 2169'),
('005', 'ezur@umd.edu'),
('006', '301 405 8712'),
('006', 'jfrels@umd.edu'),
('007', '301 405 9495'),
('007', 'rellie@umd.edu'),
('008', '240 481 5596'),
('008', 'tcorsi@umd.edu'),
('009', '301 405 8654'),
('009', 'suresh12@umd.edu'),
('010', '301 405 2333'),
('010', 'mcichell@umd.edu'),
('011', '301 405 9495'),
('011', 'rellie@umd.edu');

SELECT * FROM Program_Contact_T

INSERT INTO Source_T VALUES
('0001', 'US News', 'https://www.usnews.com/best-colleges'),
('0002', 'QS Top universities', 'https://www.topuniversities.com/universities/university-maryland-college-park/university-maryland-robert-h-smith-school-business'),
('0003', 'EDUniversal ranking', 'https://www.best-masters.com/ranking-master-accounting-in-north-america.html'),
('0004', 'UMD Right Now', 'https://umdrightnow.umd.edu/umd-graduate-programs-receive-high-marks-2019-us-news-and-world-report-rankings');


SELECT * FROM Source_T

INSERT INTO Ranking_T VALUES
('01', 6, 'Public schools', '001','0001'),
('02', 8, 'Overall', '001','0001'),
('03', 22, 'public schools', '005','0001'),
('04', 50, 'overall', '005','0001'),
('05', 15, 'Public school', '008','0001'),
('06', 18, 'overall', '008','0001'),
('07', 12, 'public schools', '006','0001'),
('08', 17, 'overall', '006','0001'),
('09', 16, 'public school', '007','0001'),
('10', 24, 'overall', '007','0001'),
('11', 24, 'world universities ranking', '008','0002'),
('12', 26, 'world universities ranking', '008','0002'),
('13', 28, 'world universities ranking', '008','0002'),
('14', 25, 'world universities ranking', '008','0002'),
('15', 31, 'world universities ranking', '003','0002'),
('16', 38, 'world universities ranking', '003','0002'),
('17', 41, 'world universities ranking', '003','0002'),
('18', 44, 'world universities ranking', '004','0002'),
('19', 44, 'world universities ranking', '004','0002'),
('20', 34, 'world universities ranking', '004','0002'),
('21', 37, 'world universities ranking', '006','0002'),
('22', 39, 'world universities ranking', '006','0002'),
('23', 34, 'Masters', '005','0003'),
('24', 16, 'Masters', '001','0003'),
('25', 16, 'world universities ranking', '002','0002'),
('26', 09, 'world report ranking', '001','0004');


SELECT * FROM Ranking_T


INSERT INTO Year_T VALUES
('1', '2018','Fall'),
 ('2', '2018','Spring'),
 ('3', '2019','Fall'),
 ('4', '2019','Spring'),
 ('5', '2020','Fall'),
 ('6', '2020','Spring'),
 ('7', '2021','Fall'),
 ('8', '2021','Spring'),
 ('9', '2022','Fall'),
 ('10', '2022','Spring'),
 ('11', '2023','Fall'),
 ('12', '2023','Spring');

SELECT * FROM Year_T

INSERT INTO Corresponds_T VALUES
('01', '11'),
('02', '11'),
('03', '11'),
('04', '11'),
('05', '11'),
('06', '11'),
('07', '11'),
('08', '11'),
('09', '11'),
('10', '11'),
('11', '7'),
('12', '9'),
('13', '11'),
('14', '7'),
('15', '9'),
('16', '11'),
('17', '7'),
('18', '9'),
('19', '11'),
('20', '7'),
('21', '9'),
('22', '11'),
('23', '11'),
('24', '11'),
('25', '11'),
('26', '3');;

SELECT * FROM Corresponds_T