CREATE TABLE Roles(
   id_role INTEGER,
   role BOOLEAN NOT NULL,
   PRIMARY KEY(id_role)
);

CREATE TABLE Modules(
   id_module INTEGER,
   version_module VARCHAR(20)  NOT NULL,
   title_module VARCHAR(50)  NOT NULL,
   duration_module TIME,
   PRIMARY KEY(id_module)
);

CREATE TABLE Addresses(
   id_address INTEGER,
   street_number VARCHAR(50) ,
   street_name VARCHAR(50)  NOT NULL,
   postal_code VARCHAR(20)  NOT NULL,
   city_name VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_address)
);

CREATE TABLE Tags(
   tag VARCHAR(50) ,
   PRIMARY KEY(tag)
);

CREATE TABLE Contents(
   id_content INTEGER,
   paragraph TEXT,
   pedagogical_objective VARCHAR(250) ,
   image_url VARCHAR(200) ,
   video_url VARCHAR(200) ,
   PRIMARY KEY(id_content)
);

CREATE TABLE Status(
   status VARCHAR(20) ,
   PRIMARY KEY(status)
);

CREATE TABLE Trainers(
   code_trainer INTEGER,
   first_name_trainer VARCHAR(20)  NOT NULL,
   last_name_trainer VARCHAR(50)  NOT NULL,
   email_trainer VARCHAR(50)  NOT NULL,
   password_trainer VARCHAR(50)  NOT NULL,
   id_role INTEGER NOT NULL,
   PRIMARY KEY(code_trainer),
   FOREIGN KEY(id_role) REFERENCES Roles(id_role)
);

CREATE TABLE Trainings(
   id_training INTEGER,
   title_training VARCHAR(50)  NOT NULL,
   code_trainer INTEGER NOT NULL,
   PRIMARY KEY(id_training),
   FOREIGN KEY(code_trainer) REFERENCES Trainers(code_trainer)
);

CREATE TABLE Learners(
   Uid_learner VARCHAR(50) ,
   first_name_learner VARCHAR(50)  NOT NULL,
   last_name_learner VARCHAR(50)  NOT NULL,
   birth_date_learner DATE NOT NULL,
   password_learner VARCHAR(100)  NOT NULL,
   email_learner VARCHAR(50)  NOT NULL,
   id_role INTEGER NOT NULL,
   id_address INTEGER NOT NULL,
   PRIMARY KEY(Uid_learner),
   FOREIGN KEY(id_role) REFERENCES Roles(id_role),
   FOREIGN KEY(id_address) REFERENCES Addresses(id_address)
);

CREATE TABLE Lessons(
   id_lesson INTEGER,
   title_lesson VARCHAR(50)  NOT NULL,
   code_trainer INTEGER NOT NULL,
   PRIMARY KEY(id_lesson),
   FOREIGN KEY(code_trainer) REFERENCES Trainers(code_trainer)
);

CREATE TABLE Follow(
   id_training INTEGER,
   Uid_learner VARCHAR(50) ,
   status_training BOOLEAN,
   PRIMARY KEY(id_training, Uid_learner),
   FOREIGN KEY(id_training) REFERENCES Trainings(id_training),
   FOREIGN KEY(Uid_learner) REFERENCES Learners(Uid_learner)
);

CREATE TABLE Belong(
   id_training INTEGER,
   id_module INTEGER,
   PRIMARY KEY(id_training, id_module),
   FOREIGN KEY(id_training) REFERENCES Trainings(id_training),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module)
);

CREATE TABLE Compose(
   id_module INTEGER,
   id_lesson INTEGER,
   PRIMARY KEY(id_module, id_lesson),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(id_lesson) REFERENCES Lessons(id_lesson)
);

CREATE TABLE To_Create(
   code_trainer INTEGER,
   id_module INTEGER,
   PRIMARY KEY(code_trainer, id_module),
   FOREIGN KEY(code_trainer) REFERENCES Trainers(code_trainer),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module)
);

CREATE TABLE ModuleHave(
   id_module INTEGER,
   tag VARCHAR(50) ,
   PRIMARY KEY(id_module, tag),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(tag) REFERENCES Tags(tag)
);

CREATE TABLE Validate(
   id_module INTEGER,
   Uid_learner VARCHAR(50) ,
   status_module VARCHAR(50) ,
   PRIMARY KEY(id_module, Uid_learner),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(Uid_learner) REFERENCES Learners(Uid_learner)
);

CREATE TABLE LessonIdentify(
   id_lesson INTEGER,
   status VARCHAR(20) ,
   PRIMARY KEY(id_lesson, status),
   FOREIGN KEY(id_lesson) REFERENCES Lessons(id_lesson),
   FOREIGN KEY(status) REFERENCES Status(status)
);

CREATE TABLE ModuleContain(
   id_module INTEGER,
   id_content INTEGER,
   PRIMARY KEY(id_module, id_content),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(id_content) REFERENCES Contents(id_content)
);

CREATE TABLE LessonContain(
   id_lesson INTEGER,
   id_content INTEGER,
   PRIMARY KEY(id_lesson, id_content),
   FOREIGN KEY(id_lesson) REFERENCES Lessons(id_lesson),
   FOREIGN KEY(id_content) REFERENCES Contents(id_content)
);

CREATE TABLE TrainingContain(
   id_training INTEGER,
   id_content INTEGER,
   PRIMARY KEY(id_training, id_content),
   FOREIGN KEY(id_training) REFERENCES Trainings(id_training),
   FOREIGN KEY(id_content) REFERENCES Contents(id_content)
);

CREATE TABLE ModuleIdentify(
   id_module INTEGER,
   status VARCHAR(20) ,
   PRIMARY KEY(id_module, status),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(status) REFERENCES Status(status)
);

CREATE TABLE TrainingHave(
   id_training INTEGER,
   tag VARCHAR(50) ,
   PRIMARY KEY(id_training, tag),
   FOREIGN KEY(id_training) REFERENCES Trainings(id_training),
   FOREIGN KEY(tag) REFERENCES Tags(tag)
);

CREATE TABLE LessonHave(
   id_lesson INTEGER,
   tag VARCHAR(50) ,
   PRIMARY KEY(id_lesson, tag),
   FOREIGN KEY(id_lesson) REFERENCES Lessons(id_lesson),
   FOREIGN KEY(tag) REFERENCES Tags(tag)
);

CREATE TABLE TrainingIdentify(
   id_training INTEGER,
   status VARCHAR(20) ,
   PRIMARY KEY(id_training, status),
   FOREIGN KEY(id_training) REFERENCES Trainings(id_training),
   FOREIGN KEY(status) REFERENCES Status(status)
);
