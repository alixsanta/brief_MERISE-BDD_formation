# Formations
1. Les formations sont organisées en plusieurs modules
2. Une formation peut avoir zero ou plusieurs modules
3. une formation possède :
   1. un identifiant,
   2. un titre,
   3. une description
4. Une formation peut avoir une illustration ou une vidéo de présentation
5. Une formation est considérée comme terminée lorsque tous les modules ont été validés par l'apprenant
6. Une formation possède un status en cours/terminée, une fois que tous les modules ont été validés
7. Une formation a un ou plusieurs auteurs.
   
# Modules
Un module est organisé en plusieurs lessons
1. Un module est caractérisé par :
   1. un numéro de module sous forme de Semantic Versionning,
   2. un intitulé,
   3. un objectif pédagogique,
   4. du contenu (textes, images et vidéos),
   5. un ou plusieurs tags
   6. un ou plusieurs auteurs.
2. Un module peut faire partie d'une ou plusieurs formations
3. Un module peut contenir zero ou plusieurs leçons
4. Un module contient du texte des images des vidéos.
5. Un module est validé par un état OK/KO pour l'apprenant
6. Un module peut 

# Leçons
   Une Leçon doit contenir :
   1. du texte
   2. Une image d'illustration
   3. zero ou plusieurs vidéos
   4. un auteur
1. Une leçon peut faire partie d'un ou plusieurs modules

# Apprenants
1. Un apprenant possède un identifiant unique
2. Les apprenants peuvent s'inscrire à une ou plusieurs formations
3. Les apprenants peuvent choisir de ne pas suivre certains des modules s'ils possèdent déjà les compétences requises
4. Un apprenant est évalué pour chaque module une fois terminé
5. Un apprenant possède :
   1. un numéro d'inscription unique,
   2. un nom,
   3. un prénom,
   4. une adresse,
   5. une date de naissance,
   6. un mail

# Formateurs
Un formateur peut créer une formation
1. Un formateur est auteur d'un module, d'une leçon pour une formation donnée
2. Un formateur est caractérisé par :
   1. un code formateur
   2. un nom
   3. un prénom
   4. un rôle (administrateur ou non)
3. Un formateur peut avoir accès à toutes les formations

