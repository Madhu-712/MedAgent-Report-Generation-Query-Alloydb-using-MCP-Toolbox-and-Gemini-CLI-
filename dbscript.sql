-- Table DDL for Patientsinfo

CREATE TABLE patientsinfo (
    patient_id INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    MedicalHistory TEXT,
    Diagnois VARCHAR(255),
    SurgicalIntrevention TEXT
);

-- Sample Insert Statements (5)rows



INSERT INTO patientsinfo(patient_id, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, MedicalHistory, Diagnois, SurgicalIntrevention)VALUES
(12345, 'John', 'Doe', '1990-05-15', 'Male', '123 Main St', '555-123','joe.doe1990@abc.com','Bloodpressure and diabetes','leukomia Cancer','surgicaloncology'),
(23996, 'Jane', 'Smith', '1985-08-22', 'Female', '456 Elm St', '555-444','jane.smith@fds.com','Hay fever and atopic dermatatis','Wheezing and pulminory disorders','none'),
(34567, 'Michael', 'Johnson', '1978-03-10', 'Male', '789 Oak St', '555-789','michael.johnson@sdf.com','Fever,cough,lung disease,swallowing difficulties','Aspiration pneumonia','none'),
(45678, 'Emily', 'Williams', '1995-11-12', 'Female', '321 Pine St', '555-984','emily-willi@njh.com','Memory-loss and falls&seizures','Alzehmeirs','none'),
(56789, 'David', 'Brown', '1982-01-09','Male','987 Maple St', '555-324','david-brown@lkj.com','chest pain and irregular heartbeat','Angina','Angioplasty');

---------------------Query for adding column and create embeddings 
ALTER TABLE
  "public"."patientsinfo" ADD COLUMN "text_embeddings" vector;
UPDATE
  "public"."patientsinfo"
SET
  "text_embeddings" = embedding('text-embedding-005',
    "diagnosis");


