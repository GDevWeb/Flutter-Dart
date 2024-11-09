# 53. Le null

Le concept de null en Dart représente l'absence de valeur. Il est utilisé pour indiquer qu'une variable n'a pas été initialisée avec une valeur valide. Comprendre et gérer correctement le null est essentiel pour éviter les erreurs courantes dans la programmation, telles que les exceptions de type "null pointer". Ce qui pourrait causer des crash d’application

En Dart, vous pouvez déclarer une variable sans lui assigner immédiatement une valeur, ce qui la rendra `null` par défaut si elle n'est pas explicitement initialisée.Le point d'interrogation (?) après le type indique que la variable peut être null. Vous la rendez `nullable`.En Dart, les variables non nullables doivent être initialisées avec une valeur valide.

```dart
int age = 30; // Variable non nullable, doit être initialisée
int? nullableAge; // Variable nullable, peut être null
```

## Le null safety

Depuis la version 2.12 de Dart, le langage inclut un système de null safety qui aide à prévenir les erreurs liées aux valeurs null. Avec null safety, les types par défaut ne peuvent pas être null à moins qu'ils ne soient explicitement marqués comme pouvant l'être en ajoutant `?` après le type.

```dart
int? nullableNumber;
nullableNumber = 5; // nullableNumber peut être un entier ou nullnullableNumber = null;
// C'est valide car nullableNumber est nullable
int nonNullableNumber = 10;nonNullableNumber = null; // Erreur de compilation, nonNullableNumber ne peut pas être null

```

## Le null: accès sécurisé

L'opérateur d'accès sécurisé `(?.)` permet d'appeler des méthodes ou d'accéder à des propriétés d'un objet nullable uniquement si cet objet n'est pas null.

```dart
String? message;
print(message?.length); // Affiche: null
message = "Bonjour";
print(message?.length); // Affiche: 7

```

## Le null assertion

L'opérateur d'assertion null `(!)` permet de forcer une expression nullable à être traitée comme non nullable, ce qui peut entraîner une erreur à l'exécution si la valeur est effectivement null.

```dart
String? message;
message = "Bonjour"; print(message!); // Affiche: Bonjour
message = null; print(message!); // Lève une erreur à l'exécution

```
