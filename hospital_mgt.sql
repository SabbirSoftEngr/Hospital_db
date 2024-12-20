#Departments Table
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

#Doctors Table
CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);


#patient Table
CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

#Appointments Table
CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status VARCHAR(20) NOT NULL,
    Doctor_ID INT,
    Patient_ID INT,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

#Insert some Dummy Data into Departments
INSERT INTO Departments VALUES (401, 'Neurosurgery', 'Bangabandhu Sheikh Mujib Medical University');
INSERT INTO Departments VALUES (501, 'Medicine', 'United Hospital Ltd');
INSERT INTO Departments VALUES (601, 'Orthopedics', 'National Institute of Traumatology and Orthopedic Rehabilitation (NITOR)');
INSERT INTO Departments VALUES (701, 'Paediatric', 'Mymensingh Medical College Hospital');
INSERT INTO Departments VALUES (801, 'Dental', 'Conservative Dentistry & Endodontics, Birdem General Hospital');

#Insert some Dummy Data into Doctors
INSERT INTO Doctors VALUES (1, 'Dr. Shamsul Alam Sabuj', 'Vascular Neurosurgery', '01404455620', 401);
INSERT INTO Doctors VALUES (2, 'Dr. Mohammad Jahangir Talukder', 'Medicine Specialist', '09666-710666', 501);
INSERT INTO Doctors VALUES (3, 'Dr. Md. Mizanur Rahman', 'Plastic and Trauma Surgery', '02-55058902', 601);
INSERT INTO Doctors VALUES (4, 'Prof. Dr. Ahmed Murtaza Choudhury', 'Child Health Specialist', '01711372406', 701);
INSERT INTO Doctors VALUES (5, 'Dr. Feroza Akhter', 'Conservative Dentistry', '0241060501-24', 801);

#Insert some Dummy Data into Patients
INSERT INTO Patients VALUES (1, 'Sajid', 25, 'Male', '01986-123123');
INSERT INTO Patients VALUES (2, 'Santa', 24, 'Female', '01986-456123');
INSERT INTO Patients VALUES (3, 'Sara', 29, 'Female', '01986-321232');
INSERT INTO Patients VALUES (4, 'Zihad', 12, 'Male', '01986-123456');
INSERT INTO Patients VALUES (5, 'Roman', 35, 'Male', '01986-125125');

#Insert some Dummy Data into Appointments
INSERT INTO Appointments VALUES (101, '2024-12-12', '12:00:00', 'Complete', 1, 1);
INSERT INTO Appointments VALUES (102, '2024-12-18', '11:00:00', 'Complete', 2, 2);
INSERT INTO Appointments VALUES (103, '2025-01-12', '15:00:00', 'Incomplete', 3, 3);
INSERT INTO Appointments VALUES (104, '2025-02-13', '18:00:00', 'Incomplete', 4, 4);
INSERT INTO Appointments VALUES (105, '2025-03-25', '14:00:00', 'Incomplete', 5, 5);
