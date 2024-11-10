/* Section 9 : Les fonctions */

/* 
En Dart, les fonctions sont des blocs de code réutilisables qui permettent d'effectuer une tâche spécifique. Le bloc de code ne sera effectué que si la fonction est appelée.Elles sont essentielles pour organiser et structurer votre code, le rendre plus lisible et plus modulaire.
 */

// 73. Qu'est ce qu'une fonction?

void main() {
  void sayHello(String name) {
    print("Hello $name");
  }

  sayHello("Océane");
  sayHello("Annabeth");
  sayHello("Christelle");
}
