/* Section 9 : Les fonctions */

// 80. fonction fléchée ou lambda

/* 
En Dart, les fonctions fléchées sont une syntaxe concise pour définir des fonctions "anonymes",également connues sous le nom de "fonctions lambda" ou "fonctions fléchées". 
Elles permettent d'écrire des fonctions de manière plus "concise", en particulier pour "les fonctions à corps simple".

`syntaxe`

(paramètres) => expression

Les fonctions fléchées sont souvent utilisées avec des fonctions de haut niveau telles que map, where,forEach, etc
*/

void main() {
  // standard function
  print("Add with a standard function");
  int add(int a, int b) {
    return a + b;
  }

  print(add(10, 5));

// arrowed function - lambda function

  print("Add with an arrowed function - lambda function");
  int sum = add(10, 20);
  print(sum);

// other example with method / arrowed function
  List<String> hobbies = ["Coding", "Learning", "Create project"];

  hobbies.forEach((hobby) => print(hobby));

  Map<String, int> notes = {
    "Océane": 15,
    "Annabeth": 14,
    "Christelle": 17,
    "Gaéte": 19,
  };

  notes.forEach((name, value) => print("$name => $value"));
}
