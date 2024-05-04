| Entité       | Attribut              | Type de données | Longueur | Contraintes | Description | Exemple |
| ------------ | --------------------- | --------------- | -------- | ----------- | ----------- | ------- |
| **Module**   | id_module             | INTEGER         | -        |
|              | version_module        | VARCHAR         | 10       |
|              | title_module          | VARCHAR         | 50       |
|              | duration_module       | TIME            | -        |
|              | tag                   | VARCHAR         | 50       |
|              | pedagogical_objective | VARCHAR         | 250      |
| **Lesson**   | id_lesson             | INTEGER         | -        |
|              | paragraph_lesson      | VARCHAR         | 2000     |
|              | header_illustration   | VARCHAR         | 100      |
|              | video_lesson          | VARCHAR         | 100      |
|              | author_lesson         | VARCHAR         | 50       |
| **Training** | id_training           | INTEGER         | -        |
|              | title_training        | VARCHAR         | 50       |
|              | description_training  | VARCHAR         | 250      |
|              | header_illustration   | VARCHAR         | 100      |
| **Learner**  | Uid_learner           | INTEGER         | -        |
|              | first_name_learner    | VARCHAR         | 20       |
|              | last_name_learner     | VARCHAR         | 20       |
|              | adress_learner        | VARCHAR         | 100      |
|              | postal_code_learner   | VARCHAR         | 10       |
|              | city_learner          | VARCHAR         | 50       |
|              | birth_date_learner    | DATE            | -        |
|              | mail_learner          | VARCHAR         | 20       |
| **Trainer**  | code_trainer          | INTEGER         | -        |
|              | first_name_trainer    | VARCHAR         | 20       |
|              | last_name_trainer     | VARCHAR         | 20       |
| **Role**     | id_role               | INTEGER         | -        |
|              | admin_right           | BOOLEAN         | -        |
| **Validate** | rating                | CHAR            | 2        |
|              | status_module         | BOOLEAN         | -        |
| **Follow**   | status_training       | BOOLEAN         | -        |
| **Belong**   |                       |                 |          |
| **Contain**  |                       |                 |          |
