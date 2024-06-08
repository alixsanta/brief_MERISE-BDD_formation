# Formations
   Une formation possède :
   - un identifiant
   - un titre
   - une description
   - une ou plusieurs illustration
  
   Une formation est organisée en plusieurs modules  
   Une formation peut avoir zero ou plusieurs modules  
   Une formation est crée par un auteur

1. Une formation peut avoir une illustration ou une vidéo de présentation
2. Une formation est considérée comme terminée lorsque tous les modules ont été validés par l'apprenant
3. Une formation possède un status en cours/terminée, une fois que tous les modules ont été validés
4. Une formation a un ou plusieurs auteurs.
   
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
   Une Leçon contient :
   - un identifiant unique
   - un titre
   - un paragraphe
   - un ou plusieurs contenus d'illustrations
   - un auteur
   - une date de création

Une leçon est crée par un formateur,
Une leçon fait partie d'un ou plusieurs modules

# Apprenants
   Un apprenant possède :
   - un identifiant universel unique (UId)
   - un nom
   - un prénom
   - une adresse
   - une date de naissance
   - une adresse email
   - un mot de passe
  
   Un apprenant peut suivre zéro ou plusieurs formations  
   Un apprenant peut choisir de ne pas suivre certains des modules s'il possède déjà les compétences requises  
   Un apprenant est évalué pour chaque formation une fois terminée  


# Formateurs
   Un formateur possède :
   - un code formateur
   - un nom
   - un prénom
   - une adresse mail
   - un mot de passe
   - un rôle (administrateur ou non)
   
   Un formateur crée une formation  
   Un formateur est auteur d'un module  
   Un formateur est auteur d'une leçon  
   Un formateur peut avoir accès à toutes les formations

