// Les conditions

/* 
Les conditions en Dart permettent de contrôler le flux d'exécution d'un programme en fonction de tests booléens. Elles sont essentielles pour prendre des décisions et exécuter du code de manière conditionnelle.

`Types de conditions`
Dart propose plusieurs types de conditions pour répondre à différents besoins :
- if
- if ... else 
- if ... else if ... else
- switch
- l’opérateur ternaire (que nous avons déjà vu)

 */

// La condition if

/* 
Permet d'exécuter un bloc de code si une condition est vraie.
 */
void main() {
  var isLogged = true;
  int age = 18;
  // var isAdmin = false;
  // var role = "user";

  if (isLogged) {
    print("You are logged in!");
  }

  if (age >= 18) {
    print("You are adult, you can pass your licence drive");
  }
}
