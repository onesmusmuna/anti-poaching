-- Database Creation

 CREATE TABLE Ranger (
    Ranger_ID INT PRIMARY KEY,
	Name VARCHAR(255),
	Contact_Number INT,
	Rank VARCHAR(100),
	Assigned_Area VARCHAR(255)
);

CREATE TABLE patrol (
    Patrol_ID INT PRIMARY KEY,
	Start_time TIMESTAMP,
	End_time TIMESTAMP,
	Area_covered VARCHAR(255),
	Ranger_ID INT,
	FOREIGN KEY (Ranger_ID) REFERENCES Ranger(ranger_ID)
);


CREATE TABLE Incident (
    Incident_ID INT PRIMARY KEY,
	Date DATE,
	Time TIME,
	Location VARCHAR(255),
	Type VARCHAR(100),
	Severity VARCHAR(100),
	Description TEXT,
	Ranger_ID INT,
	FOREIGN KEY(Ranger_ID) REFERENCES Ranger(Ranger_ID)
);

CREATE TABLE Report (
    Report_ID INT PRIMARY KEY,
	Suspect_Description TEXT,
	Evidence_Collected TEXT,
	Action_Taken VARCHAR(100),
	Incident_ID INT,
	FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);

CREATE TABLE Protected_Area (
    Protected_Area_ID INT PRIMARY KEY,
	Name VARCHAR(255),
	Location VARCHAR(255),
	Area_Size FLOAT,
	Threat_Level VARCHAR(100)
);

CREATE TABLE WildLife (
    WildLife_ID INT PRIMARY KEY,
	Species_Name VARCHAR(255),
	Population_Count INT,
	Conservation_Status VARCHAR(100),
	Protected_Area_ID INT,
	FOREIGN KEY (Protected_Area_ID) REFERENCES Protected_Area(Protected_Area_ID)
);


-- //Data Manipulation

INSERT INTO Ranger (Ranger_ID, Name, Contact_Number, Rank, Assigned_Area) VALUES
('001', 'Onesmus Muna', '0932540086', 'Senior Ranger', 'North Area'),
('002', 'kambale mulumba', '0987566534', 'Senior Ranger', 'East Area'),
('003', 'Douglas Elton', '0911098436', 'Senior Ranger', 'West Area'),
('004', 'David Mwangi', '0957720967', 'Senior Ranger', 'Center'),
('005', 'William Mwaijande', '0988452610', 'Senior Ranger', 'South Area');

INSERT INTO Patrol (Patrol_ID, Start_Time, End_time, Area_Covered, Ranger_ID) VALUES
('1', '2025-03-24 06:30:00', '2025-03-24 12:30:00', 'North Area', '001'),
('2', '2025-03-26 06:30:00', '2025-03-26 12:30:00', 'East Area', '002'),
('3', '2025-03-28 06:30:00', '2025-03-28 12:30:00', 'West Area', '003'),
('4', '2025-03-30 06:30:00', '2025-03-30 12:30:00', 'Center', '004'),
('5', '2025-03-02 06:30:00', '2025-03-02 12:30:00', 'South Area', '005');

INSERT INTO Incident (Incident_ID, Date, Time, Location, Type, Severity, Description, Ranger_ID) VALUES
('701', '24-03-2025', '16:38:00', 'Center', 'Habitat destruction', 'Moderate', 'Tree cutting observed', '004'),
('702', '28-03-2025', '11:06:00', 'North Area', 'Poaching', 'severe', 'Lion was found dead', '001'),
('703', '02-04-2025', '7:30:00', 'East Area', 'Wildlife Conflict', 'minor', 'Cows attacked by lions', '002');

INSERT INTO Report (Report_ID, Suspect_Description, Evidence_Collected, Action_Taken, Incident_ID) VALUES
('1', 'Local Residents', 'Cut trees', 'Conducted Awareness', '701'),
('2', 'Unknown Poacher', 'Lion carcass', 'Alerted Authorities', '702'),
('3', 'Unknown', 'N/A', 'Increased Patrols', '703');

INSERT INTO Protected_Area (Protected_Area_ID, Name, Location, Area_Size, Threat_Level) VALUES
('101', 'Nairobi National Park', 'NAIROBI', '117.0', 'Moderate'),
('102', 'Tsavo National Park', 'TAITA-TAVETA', '22000.0', 'High'),
('103', 'Samburu National Reserve', 'SAMBURU County', '165.0', 'Moderate');

INSERT INTO WildLife (WildLife_ID, Species_Name, Population_Count, Conservation_Status, Protected_Area_ID) VALUES
('1', 'African Lion', '50', 'Vulnerable', '101'),
('2', 'Zebra', '2649', 'Least Concern', '103'),
('3', 'Masai Giraffe', '100', 'Vulnerable', '101'),
('4', 'Black Rhino', '104', 'Critically Endangered', '101'),
('5', 'Elephant', '12840', 'moderate', '102');

-- //Retrieve (Read Data)

SELECT*FROM Ranger;
SELECT*FROM wildlife WHERE conservation_status = 'Vulnerable';
SELECT*FROM Incident WHERE severity = 'Severe';

-- //Delete Data

DELETE FROM Report
WHERE Report_ID = 1;

DELETE FROM Incident
WHERE Incident_ID = 1;

-- //Update Data

UPDATE Ranger
SET Contact_Number = '0987566534'
WHERE Ranger_ID = 002;

UPDATE WildLife
SET Population_Count = 2649
WHERE WildLife_ID = 2;

-- //join query

SELECT I.Date, I.Time, I.Location, R.Name AS Ranger_Name, P.Name AS Protected_Area, W.Species_Name, Conservation_Status
FROM Incident I
JOIN Ranger R ON I.Ranger_ID = R.Ranger_ID
JOIN Protected_Area P ON I.Location = P.Location
JOIN WildLife W ON W.Protected_Area_ID = P.Protected_Area_ID;



-- //Subquery

SELECT *
FROM Ranger
WHERE Ranger_ID in (
    SELECT Ranger_ID
	FROM Patrol
	WHERE Area_Covered = 'North Area'
);
