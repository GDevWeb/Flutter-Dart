# 49. Les nombres entiers

[udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26918354#overview)

## Int: Les nombres entiers

En Dart, les int sont des types de données entiers utilisés pour représenter des nombres entiers sans partie décimale.
Les nombres entiers sont utilisés dans de nombreuses applications pour compter,indexer, effectuer des calculs mathématiques et pluse ncore.
Dans cette explication, je vais détailler les fonctionnalités et les opérations courantes sur les nombres entiers en Dart.

## Int: Conversion

Vous pouvez convertir un nombre entier en une chaîne de caractères en utilisant la méthode `toString()`.Ou encore vous pouvez également convertir une chaîne de caractères représentant un nombre entier en un `int` en utilisant la fonction `int.parse()`

```dart
void main() {
  int year = 5;
  int age = 39;
  print(age);
  var distanceToParis = 200;
  print(distanceToParis.toString());
  String id = "996778";
  int idInt = int.parse((id));

  // Calculs dans le chapitre des opérateurs
  int addition = age + year;
  print(addition);
}

```
