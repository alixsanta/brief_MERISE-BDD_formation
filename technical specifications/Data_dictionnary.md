| Entité       | Attribut              | Type de données | Longueur | Contraintes                    | Description                                   | Exemple                                  |
| ------------ | --------------------- | --------------- | -------- | ------------------------------ | --------------------------------------------- | ---------------------------------------- |
| **Module**   | id_module             | INTEGER         | -        | Unique, requis, auto-incrément | Identifiant unique du module                  | 0                                        |
|              | version_module        | VARCHAR         | 15       | Requis                         | semantic versionning                          | 2.0.1                                    |
|              | title_module          | VARCHAR         | 50       | Requis                         | Titre du module                               | Créer une variable                       |
|              | duration_module       | TIME            | -        | Optionnel                      | Durée du module                               | 15:00:00                                 |
|              | tag                   | VARCHAR         | 50       | Optionnel                      | Tag du module                                 | #Developpement                           |
|              | pedagogical_objective | VARCHAR         | 250      | Requis                         | Paragraphe déterminant l'objectif du module   | Le testeur logiciel est chargé...        |
| **Lesson**   | id_lesson             | INTEGER         | -        | Unique, requis, auto-incrément | Identifiant unique pour chaque leçon          | 1                                        |
|              | paragraph_lesson      | VARCHAR         | 2000     | Requis                         | paragraphe de texte                           | Ces tests peuvent être...                |
|              | header_illustration   | VARCHAR         | 100      | Requis                         | illustration de présentation de la leçon      | http://www.w3.org/2000/svg               |
|              | video_lesson          | VARCHAR         | 100      | Requis                         | Vidéo de la leçon                             | http://www.w3.org/2000/svg               |
|              | author_lesson         | VARCHAR         | 50       | Requis                         | autheur qui a rédigé la leçon                 | Bartholomew Allen                        |
| **Training** | id_training           | INTEGER         | -        | Unique, requis, auto-incrément | Identifiant unique pour chaque formation      | 2                                        |
|              | title_training        | VARCHAR         | 50       | Requis                         | Titre de la formation                         | Testeur logiciel                         |
|              | description_training  | VARCHAR         | 250      | Requis                         | Paragraphe de description de la formation     | Assurez la qualité d'un site internet... |
|              | header_illustration   | VARCHAR         | 100      | Requis                         | Illustration de présentation de la formation  | http://www.w3.org/2000/svg               |
| **Learner**  | Uid_learner           | INTEGER         | -        | Unique, requis                 | Numéro d'identification unique                | 9476-1-8419-4133-9                       |
|              | first_name_learner    | VARCHAR         | 20       | Requis                         | Nom de famille de l'apprenant                 | Kyle                                     |
|              | last_name_learner     | VARCHAR         | 20       | Requis                         | Prénom de l'apprenant                         | Selina                                   |
|              | adress_learner        | VARCHAR         | 100      | Requis                         | Adresse de l'apprenant                        | 23 avenue Midtown                        |
|              | postal_code_learner   | VARCHAR         | 10       | Requis                         | Code postal de l'apprenant                    | 19880                                    |
|              | city_learner          | VARCHAR         | 50       | Requis                         | Ville de l'apprenant                          | Gotham                                   |
|              | birth_date_learner    | DATE            | -        | Requis                         | Date d'anniversaire de l'apprenant            | 18/05/1940                               |
|              | mail_learner          | VARCHAR         | 20       | Requis                         | Adresse mail de l'apprenant                   | theCat@eastEnd.got                       |
| **Trainer**  | code_trainer          | INTEGER         | -        | Unique, requis, auto-incrément | Code unique pour chaque formateur             | 01                                       |
|              | first_name_trainer    | VARCHAR         | 20       | Requis                         | Nom de famille du formateur                   | Wayne                                    |
|              | last_name_trainer     | VARCHAR         | 20       | Requis                         | Prénom du formateur                           | Bruce                                    |
| **Role**     | id_role               | INTEGER         | -        | Unique, requis, auto-incrément | Identifiant unqiue pour chaque administrateur | 3                                        |
|              | admin_right           | BOOLEAN         | -        | Requis                         | Détermine si l'utilisateur est administrateur | True                                     |
| **Validate** | rating                | CHAR            | 2        | Optionnel                      | Note de l'apprenant                           | 14                                       |
|              | status_module         | BOOLEAN         | -        | Requis                         | Statut de l'avancement du module              |
| **Follow**   | status_training       | BOOLEAN         | -        | Requis                         | Statut de l'avancement de la formation        |
| **Belong**   | id_module             | INTEGER         | -        |                                |                                               | 1                                        |
|              | id_training           | INTEGER         | -        |                                |                                               | 2                                        |
| **Contain**  | id_module             | INTEGER         | -        |                                |                                               | 3                                        |
|              | id_lesson             | INTEGER         | -        |                                |                                               | 4                                        |
