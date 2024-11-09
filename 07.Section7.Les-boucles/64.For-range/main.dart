/* Les boucles */

/* 
Les boucles en Dart permettent d'exécuter un bloc de code de manière répétée jusqu'à ce qu'une condition soit remplie.Elles sont utiles pour automatiser des tâches répétitives et parcourir des collections de données.

`Types de boucles`
Dart propose différents types de boucles pour répondre à différents besoins :
 - for range
 - for ... in
 -while
 - do ... while

 */

void main() {
  /* la boucle for range permet d'exécuter un bloc de code un nombre déterminé de fois */
  String greets = "Hello world";
  print("***for range***");
  for (int i = 0; i <= 10; i++) {
    print(greets);
  }

  print("***La boucle range pour les List***");
  List hobbies = ["Coding", "Sport", "Movie"];
  for (var i = 0; i < hobbies.length; i++) {
    print(hobbies[i]);
  }
}



/* 
Quelle boucle choisir?

Le choix de la boucle à utiliser dépend du contexte et de la tâche à accomplir.
- Boucle for ... range: 
  idéale pour un nombre déterminé d'itérations.
- Boucle for...in: 
  idéale pour parcourir des collections.
- Boucle while: 
  idéale pour exécuter un code tant qu'une condition est vraie, sans connaître le nombre d'itérations à l'avance.
- Boucle do...while: 
  similaire à la boucle while, mais le code sera effectué au moins une fois avant vérification de la condition
 */