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
  La boucle while permet d'éxécuter un bloc de code tant qu'une condition est vraie
   */

  print("***while***");
  int i = 0;
  while (i < 10) {
    i++;
    print(i);
  }

  /* 
  La boucle do while exécute d'abord le corps de la boucle, puis vérifie la condition.
   */
  print("***La boucle do while***");
  int j = 0;
  do {
    j++;
    print(j);
  } while (j < 10);
}
