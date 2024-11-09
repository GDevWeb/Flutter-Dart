void main() {
  // liste non typée
  /*
  Ce type de liste accepte tous type de données, string, number, object ...
  */
  List myFirstList = ["Christelle", "Océane", "Annabeth"];
  print(myFirstList);

  // de type string
  List<String> friends = ["Lucas", "Valentin", "Alban", "Olivier"];
  print(friends);
  // accès dynamique
  print(friends[0]); //Lucas
  // obtenir la longueur
  print(friends.length);
  // mutation  du contenu - changement pour Valentin => Lolo
  friends[1] = "Lolo";
  print(friends[1]); //Lolo

  // ***Méthodes***
  // **ajout**
  // "add"
  friends.add("Margaux");
  print(friends);
  List<int> myLuckyNumbers = [2, 3, 85, 25, 6, 88, 19, 10, 15, 5, 8, 19];
  print(myLuckyNumbers);
  // ajouter plusieurs éléments à la suite "addAll"
  myLuckyNumbers.addAll([24, 9, 87]);
  // insert (index, elementAAjouter)- équivalent de splice en js
  friends.insert(0, "Élise");
  print(friends); //

  // **suppression**
  // remove(value)
  friends.remove("Margaux");
  print(friends); //[Élise, Lucas, Lolo, Alban, Olivier]
  // removeAt(index)
  friends.removeAt(3);
  print(friends); //[Élise, Lucas, Lolo, Olivier]
  // removeWhere(condition)
  myLuckyNumbers.removeWhere((number) => number > 50);
  print(myLuckyNumbers); //[2, 3, 25, 6, 19, 10, 15, 5, 8, 19, 24, 9]

  // les autres méthodes utiles :
  // length :
  print(myLuckyNumbers.length);
  // isEmpty :
  print(friends.isEmpty);
  // first :
  print(friends.first);
  // last :
  print(friends.last);
  // contains :
  print(friends.contains("Olivier"));
  // indexOf :
  print(friends.indexOf("Olivier")); //3
  // lastIndexOf:
  print(friends.lastIndexOf("Olivier")); //3
  // sort()
  friends.sort((a, b) => a.length.compareTo(b.length));
  print(friends); //[Lolo, Élise, Lucas, Olivier]
}
