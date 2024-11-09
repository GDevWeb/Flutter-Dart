# 46.Comment nommer les variables

[udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26916068#overview)

Conventions de nommage recommandées :

- Utilisez des noms descriptifs et significatifs.
- Le nom de la variable doit refléter son contenus ou sa fonction dans le code.
- Favorisez la clarté sur la concision. Un nom plus long mais explicite est préférable à un nom court et obscur.Utilisez le camelCase pour les noms composés de plusieurs mots.
- Mettez en majuscule la première lettre de chaque mot sauf le premier (ex: totalCommentaire, nombreDeClic).
- Utilisez le snake_case pour les noms avec plusieurs mots séparés par des traits de soulignement (moins courant en Dart). (ex: total_commentaire, nombre_de_clic).
- Utilisez des préfixes ou des suffixes pour les variables de type similaire. Par exemple,vous pouvez utiliser un préfixe est pour les variables booléennes (estValide,estConnecte).

```dart
void main() {
  var maVariable = "Hello world";
  ;
  print(maVariable);
//   Déclaration de valeur :
  String name = "Mathieu";
  int age = 39;
  double height = 172.5;
  bool isAdult = true;
  List<String> hobbies = ["Coding", "Sport", "Gaming"];
  Map<String, int> childrenDescription = {"Jack": 8, "Ethan": 7};

// Réaffectation de valeur :
  print(age);
  age += 1;
  print(age);
}
```
