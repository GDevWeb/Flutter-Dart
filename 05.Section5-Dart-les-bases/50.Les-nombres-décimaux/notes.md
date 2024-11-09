# 50. Les nombres décimaux

[udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26918356#overview)

## double: Les nombres décimaux

En Dart, le type double est utilisé pour représenter des nombres à virgule flottante, c'est-à-dire des nombres qui ont une partie fractionnaire.
Les double sont couramment utilisés pour les calculs qui nécessitent une précision décimale, comme les opérations financières, les mesures scientifiques, etc.

## double: méthodes utiles

Les double en Dart disposent de plusieurs méthodes et propriétés utiles :

- toString(): Convertit un double en une chaîne de caractères
- .toInt(): Convertit un double en un entier en supprimant la partie fractionnaire (arrondi verszéro)
- .abs(): Renvoie la valeur absolue du double
- .ceil(): Renvoie le plus petit entier supérieur ou égal au double
- .floor(): Renvoie le plus grand entier inférieur ou égal au double
- .round(): Renvoie l'entier le plus proche du double.

## double: précision

Les double sont des nombres à virgule flottante en précision double, ce qui signifie qu'ils peuvent représenter des nombres très grands ou très petits,mais avec une précision limitée. Cela peut entraîner des erreurs d'arrondi dans certains calculs

```dart
void main() {
  // double
  var degrees = 16.5;
  print(degrees);
  double bankAccount = 1200.44;
  print(bankAccount);

  // Les méthodes utiles :
  double myMonnay = 10.98;
  print(myMonnay.toString());
  print(myMonnay.toInt());
  print(myMonnay.abs());
  print(myMonnay.ceil());
  print(myMonnay.floor());
  print(myMonnay.round());
}

```

## double: précision

Les double sont des nombres à virgule flottante en précision double, ce qui signifie qu'ils peuvent représenter des nombres très grands ou très petits,mais avec une précision limitée. Cela peut entraîner des erreurs d'arrondi dans certains calculs.

```dart
double result = 0.1 + 0.2;
print(result); // Affiche 0.30000000000000004 au lieu de 0.3
```
