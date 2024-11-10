/* Section 9 : Les fonctions */

/* 
Les variables déclarées dans le corps d'une fonction ont une portée locale à cette fonction. Elles ne sont accessibles que depuis l'intérieur de la fonction et ne sont pas visibles dans le reste du programme.

 */

// 74. Portée des variables dans une fonction

void main() {
  void sayHello(String name) {
    var startSentence = "Welcome";
    print("$startSentence $name");
  }

  sayHello("Océane");
  sayHello("Annabeth");
  sayHello("Christelle");

  // print(startSentence); //error - because "startSentence" is local scope into "sayHello()"
}
