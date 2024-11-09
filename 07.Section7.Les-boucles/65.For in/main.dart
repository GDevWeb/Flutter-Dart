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
/* 
La boucle for...in permet de parcourir les éléments d'une collection(list, Map, etc.)
 */
  print("***for ... in***");
  List hobbies = ["Coding", "Sport", "Movie"];
  for (var element in hobbies) {
    print(element);
  }
  Map<String, int> notes = {
    "Océane": 15,
    "Annabeth": 14,
    "Christelle": 16,
    "Gaéte": 17,
  };
  for (var key in notes.keys) {
    print("Vois la note obtenue par $key : ${notes[key]}");
  }

  print("***forEach()***");
  notes.forEach((key, value) => print("$key => $value"));
  /* 
  La boucle while permet d'exécuter un bloc de code tant qu'une condition est vraie
   */
}
