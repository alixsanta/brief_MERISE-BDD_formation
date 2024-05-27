| Entité       | Attribut              | Type de données | Longueur | Contraintes                    | Description                                   | Exemple                                  |
| ------------ | --------------------- | --------------- | -------- | ------------------------------ | --------------------------------------------- | ---------------------------------------- |
| **Modules**  | id_module             | SERIAL          | -        | NOT NULL, PRIMARY KEY          | Identifiant unique du module                  | 0                                        |
|              | version_module        | VARCHAR         | 10       | NOT NULL                       | semantic versionning                          | 2.0.1                                    |
|              | title_module          | VARCHAR         | 50       | NOT NULL                       | Titre du module                               | Créer une variable                       |
|              | duration_module       | TIME            | -        | Optionnel                      | Durée du module                               | 15:00:00                                 |
|              | tag                   | VARCHAR         | 50       | Optionnel                      | Tag du module                                 | #Developpement                           |
|              | pedagogical_objective | VARCHAR         | 250      | NOT NULL                       | Paragraphe déterminant l'objectif du module   | Le testeur logiciel est chargé...        |
| **Lesson**   | id_lesson             | INTEGER         | -        | SERIAL, PRIMARY KEY            | Identifiant unique pour chaque leçon          | 1                                        |
|              | paragraph_lesson      | VARCHAR         | 2000     | NOT NULL                       | paragraphe de texte                           | Ces tests peuvent être...                |
|              | header_illustration   | VARCHAR         | 100      | NOT NULL                       | illustration de présentation de la leçon      | http://www.w3.org/2000/svg               |
|              | video_lesson          | VARCHAR         | 100      | Requis                         | Vidéo de la leçon                             | http://www.w3.org/2000/svg               |
|              | author_lesson         | VARCHAR         | 50       | NOT NULL                       | autheur qui a rédigé la leçon                 | Bartholomew Allen                        |
| **Training** | id_training           | INTEGER         | -        | Unique, requis, auto-incrément | Identifiant unique pour chaque formation      | 2                                        |
|              | title_training        | VARCHAR         | 50       | Requis                         | Titre de la formation                         | Testeur logiciel                         |
|              | description_training  | VARCHAR         | 250      | Requis                         | Paragraphe de description de la formation     | Assurez la qualité d'un site internet... |
|              | header_illustration   | VARCHAR         | 100      | Requis                         | Illustration de présentation de la formation  | http://www.w3.org/2000/svg               |
| **Learner**  | Uid_learner           | INTEGER         | -        | NOT NULL, PRIMARY KEY          | Numéro d'identification unique                | 9476-1-8419-4133-9                       |
|              | first_name_learner    | VARCHAR         | 20       | NOT NULL                       | Nom de famille de l'apprenant                 | Kyle                                     |
|              | last_name_learner     | VARCHAR         | 20       | NOT NULL                       | Prénom de l'apprenant                         | Selina                                   |
|              | adress_learner        | VARCHAR         | 100      | NOT NULL                       | Adresse de l'apprenant                        | 23 avenue Midtown                        |
|              | postal_code_learner   | VARCHAR         | 10       | NOT NULL                       | Code postal de l'apprenant                    | 19880                                    |
|              | city_learner          | VARCHAR         | 50       | NOT NULL                       | Ville de l'apprenant                          | Gotham                                   |
|              | birth_date_learner    | DATE            | -        | NOT NULL                       | Date d'anniversaire de l'apprenant            | 18/05/1940                               |
|              | mail_learner          | VARCHAR         | 20       | NOT NULL                       | Adresse mail de l'apprenant                   | theCat@eastEnd.got                       |
| **Trainer**  | code_trainer          | SERIAL          | -        | NOT NULL, PRIMARY KEY          | Code unique pour chaque formateur             | 01                                       |
|              | first_name_trainer    | VARCHAR         | 20       | NOT NULL                       | Nom de famille du formateur                   | Wayne                                    |
|              | last_name_trainer     | VARCHAR         | 20       | NOT NULL                       | Prénom du formateur                           | Bruce                                    |
|              | admin_right           | BOOLEAN         | -        | NOT NULL                       | Détermine si l'utilisateur est administrateur | True                                     |
| **Validate** | rating                | NUMERIC         | 2,2      | NOT NULL                       | Note de l'apprenant                           | 14                                       |
|              | Id-module             | INTEGER         |
|              | UUId_learner          | INTEGER         |
|              | status_module         | BOOLEAN         | -        | NOT NULL                       | Statut de l'avancement du module              | Ok / KO                                  |
| **Follow**   | status_training       | BOOLEAN         | -        | NOT NULL                       | Statut de l'avancement de la formation        | En cours / terminée                      |
|              | Id-training           | INTEGER         |
|              | uuid_learner          | INTEGER         |
| **Belong**   | id_module             | INTEGER         | -        |                                |                                               | 1                                        |
|              | id_training           | INTEGER         | -        |                                |                                               | 2                                        |
| **Contain**  | id_module             | INTEGER         | -        |                                |                                               | 3                                        |
|              | id_lesson             | INTEGER         | -        |                                |                                               | 4                                        |
