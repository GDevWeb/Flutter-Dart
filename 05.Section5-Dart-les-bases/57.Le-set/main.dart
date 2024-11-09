// ***Les set***

/* 
Les sets sont utiles lorsque l'on veut stocker des éléments sans se soucier de leur ordre et de leur duplication
 */

void main() {
  // **Déclaration**
  // *non typé*
  var fruits = {"fruits", "apple", "banana", "orange", "coconut"};
  print(fruits);

  // typé : Map pour des paires clé-valeur
  Map<String, dynamic> myGroceryList = {"name": "Beef", "quantity": 1};
  print(myGroceryList);

  // **Accès**
  // Utilisation de contains() avec un Set
  print(fruits.contains("apple")); // Vérifie si "apple" est dans le Set fruits

  // Accès à une valeur par clé dans un Map
  print(myGroceryList["name"]); // Affiche "Beef"

  // compter
  // **length**
  print("*length*");
  print(fruits.length);

  // ajouter
  // *add*
  print("*add*");
  fruits.add('strawberry');
  print(fruits);

  // supprimer
  // *remove*
  print("*remove*");
  fruits.remove("coconut");
  print(fruits);

  // isEmpty :
  print("*isEmpty*");
  print(fruits.isEmpty);
  // *union*  - concaténer 2 sets
  print("*union*");
  Set mySetOne = {"toyota", "peugeot", "renault"};
  Set mySetTwo = {"ford", "alfa romeo", "mercedes"};
  var myNewSet = mySetOne.union(mySetTwo);
  print(myNewSet);
  // *difference*
  print(
      "*difference*, renvoie la difference de contenu entre l'élément A et B");
  print(mySetOne.difference(mySetTwo));
  // *toSet()*
  List<String> myFriends = [
    "Arthur",
    "Bertrand",
    "Cédric",
    "Arthur",
    "Bertrand",
    "Cédric"
  ];
  print("*toSet()*");
  Set<String> myfriendSet = myFriends.toSet();
  print(myfriendSet);
}
