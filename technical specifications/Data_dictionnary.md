| Entité               | Attribut              | Type de données | Longueur | Contraintes                           | Description                                                      | Exemple                                  |
| -------------------- | --------------------- | --------------- | -------- | ------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------- |
| **Modules**          | id_module             | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Identifiant unique du module                                     | 0                                        |
|                      | version_module        | VARCHAR         | 20       | NOT NULL                              | semantic versionning                                             | 2.0.1                                    |
|                      | title_module          | VARCHAR         | 50       | NOT NULL                              | Titre du module                                                  | Créer une variable                       |
|                      | duration_module       | TIME            | -        | Optionnel                             | Durée du module                                                  | 15:00:00                                 |
| **Lessons**          | id_lesson             | INTEGER         | -        | INTEGER, PRIMARY KEY, AUTO INCREMENT  | Identifiant unique pour chaque leçon                             | 1                                        |
|                      | title_lesson          | VARCHAR         | 50       | NOT NULL                              | Titre de la leçon                                                | Inititation à Angular...                 |
| **Trainings**        | id_training           | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Identifiant unique pour chaque formation                         | 2                                        |
|                      | title_training        | VARCHAR         | 50       | NOT NULL                              | Titre de la formation                                            | Testeur logiciel                         |
| **Tags**             | tag                   | VARCHAR         | 50       | NOT NULL                              | Le tag d'une leçon, d'un module, d'un formation                  | #JAVA                                    |
| **Status**           | status                | VARCHAR         | 20       | NOT NULL                              | Le statut de rédaction d'une leçon, d'un module, d'une formation | Brouillon                                |
| **Contents**         | id_content            | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Identifiant unique d'un contenu                                  | 98                                       |
|                      | paragraph             | TEXT            | -        | Optionnel                             | Paragraphe explicatif d'une leçon, module, formation             | Danc ce premier module nous allons ...   |
|                      | pedagogical_objective | VARCHAR         | 250      | NOT NULL                              | Paragraphe déterminant l'objectif du module                      | Le testeur logiciel est chargé...        |
|                      | image_url             | VARCHAR         | 200      | Optionnel                             | Adresse URL d'une image de contenu                               | https://eidnn_fdbkfkdbdj...              |
|                      | video_url             | VARCHAR         | 200      | Optionell                             | Adresse URL d'une vidéo de contenu                               | https://obilivii_oe...                   |
| **Learners**         | Uid_learner           | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Numéro d'identification unique                                   | 9476-1-8419-4133-9                       |
|                      | first_name_learner    | VARCHAR         | 50       | NOT NULL                              | Nom de famille de l'apprenant                                    | Kyle                                     |
|                      | last_name_learner     | VARCHAR         | 50       | NOT NULL                              | Prénom de l'apprenant                                            | Selina                                   |
|                      | birth_date_learner    | DATE            | -        | NOT NULL                              | Date d'anniversaire de l'apprenant                               | 18/05/1940                               |
|                      | email_learner         | VARCHAR         | 20       | NOT NULL                              | Adresse mail de l'apprenant                                      | theCat@eastEnd.got                       |
|                      | password_learner      | VARCHAR         | 100      | NOT NULL                              | Mot de passe de connexion de l'apprenant                         | Go\***\*\*\*\*\***                       |
| **Trainers**         | code_trainer          | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Code unique pour chaque formateur                                | 01                                       |
|                      | first_name_trainer    | VARCHAR         | 20       | NOT NULL                              | Nom de famille du formateur                                      | Wayne                                    |
|                      | last_name_trainer     | VARCHAR         | 20       | NOT NULL                              | Prénom du formateur                                              | Bruce                                    |
|                      | admin_right           | BOOLEAN         | -        | NOT NULL                              | Détermine si l'utilisateur est administrateur                    | True                                     |
| **Roles**            | id_role               | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Identifiant unique du rôle                                       | 012                                      |
|                      | role                  | BOOLEAN         | -        | NOT NULL                              | Détermine si l'utilisateur possède le role administrateur        | False                                    |
| **Addresses**        | id_address            | INTEGER         | -        | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Identifiant unique pour chaque adresse                           | 82                                       |
|                      | street_number         | VARCHAR         | 50       | Optionnel                             | 23                                                               |                                          |
|                      | street_name           | VARCHAR         | 50       | NOT NULL                              | Midtown avenue                                                   |                                          |
|                      | postal_code           | VARCHAR         | 20       | NOT NULL                              | 19880                                                            |                                          |
|                      | city_name             | VARCHAR         | 50       | NOT NULL                              | Gotham                                                           |                                          |
| **ModuleContain**    | id_module             |                 |          |                                       | Table d'association reliant Contents et Modules                  |
|                      | id_content            |                 |          |                                       |
| **LessonContain**    | id_lesson             |                 | -        |                                       | Table d'association reliant Lessons et Contents                  |
|                      | id_content            |                 |          |                                       |
| **TrainingContain**  | id_training           |                 |          |                                       | Table d'association reliant Trainings et Contents                |
|                      | id_content            |                 |          |                                       |
| **ModuleIdentify**   | id_module             |                 |          |                                       | Table d'association reliant Status et Modules                    |
|                      | id_content            |                 |          |                                       |
| **LessonIdentify**   | id_lesson             |                 | -        |                                       | Table d'association reliant Lessons et Status                    |
|                      | id_content            |                 |          |                                       |
| **TrainingIdentify** | id_training           |                 |          |                                       | Table d'association reliant Trainings et Status                  |
|                      | id_content            |                 |          |                                       |
| **ModuleHave**       | id_module             |                 |          |                                       | Table d'association reliant Tags et Modules                      |
|                      | id_content            |                 |          |                                       |
| **LessonHave**       | id_lesson             |                 | -        |                                       | Table d'association reliant Lessons et Tags                      |
|                      | id_content            |                 |          |                                       |
| **TrainingHave**     | id_training           |                 |          |                                       | Table d'association reliant Trainings et Tags                    |
|                      | id_content            |                 |          |                                       |
| **Validate**         | rating                | NUMERIC         | 2,2      | NOT NULL                              | Note de l'apprenant                                              | 14                                       |
|                      | Id-module             | INTEGER         |
|                      | UUId_learner          | INTEGER         |
|                      | status_module         | BOOLEAN         | -        | NOT NULL                              | Statut de l'avancement du module                                 | Ok / KO                                  |
| **Follow**           | status_training       | BOOLEAN         | -        | NOT NULL                              | Statut de l'avancement de la formation                           | En cours / terminée                      |
|                      | Id-training           | INTEGER         |
|                      | uuid_learner          | INTEGER         |
| **Belong**           | id_module             | INTEGER         | -        |                                       |                                                                  | 1                                        |
|                      | id_training           | INTEGER         | -        |                                       |                                                                  | 2                                        |
| **Contain**          | id_module             | INTEGER         | -        |                                       |                                                                  | 3                                        |
|                      | id_lesson             | INTEGER         | -        |                                       |                                                                  | 4                                        |
