# 48. Les Strings

[udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26918348#overview)

## String

En Dart, les String sont des types de données utilisés pour représenter du texte. Les chaînes de caractères sont des éléments fondamentaux de la programmation, utilisées pour stocker et manipuler des données textuelles telles que des messages, des noms, des adresses, etc.

### Déclaration de Chaînes de Caractères

Les chaînes de caractères peuvent être déclarées en utilisant soit des guillemets simples (' '), soit des guillemets doubles (" ").

```dart
void main() {
  var firstName = "John";
  print(firstName);
  String lastName = "Doe";
  print(lastName);
  const placeOfBirth = "Lille";
  print(placeOfBirth);
  String presentation = '''
  Salut, je suis né en 1985.
  Je suis un père de famille accompli.
  Actuellement en reconversion en tant que coordinateur web !
  '''
  print(presentation)
}

```

### String sur plusieurs lignes

En utilisant les triples guillemets (‘’’), vous pouvez écrire une String sur plusieurs lignes:

```dart
String multilineString = '''
Je suis une String  Et sur plusieurs lignes !!  ''';
print(multilineString);
```

### String: Les caractères d’échappement

En Dart, le caractère \ (antislash) est utilisé pour plusieurs fonctions importantes :Le \ permet d'indiquer au compilateur Dart qu'un caractère suivant doit être interprété littéralement,même s'il a une signification spéciale dans les chaînes de caractères.

- \' pour une apostrophe (guillemet simple)
- \" pour un guillemet double
- \\ pour un antislash
- \n pour un saut de ligne
- \t pour une tabulation

```dart
String message = "Il a dit : \"Bonjour\".";
```

### String: Concaténation

La concaténation de chaînes de caractères en Dartpeut être réalisée en utilisant l'opérateur `+`

```dart
String firstName = 'Alice';
String lastName = 'Smith';
String fullName = firstName + ' ' + lastName;
print(fullName);

```

### String: Interpolation

L'interpolation de chaînes de caractères se fait quand à elle avec le symbole `$` qui précède la variable au sein d’une autre String.

```dart
String firstName = 'Alice';
String lastName = 'Smith';
String fullName = '$firstName $lastName';
print(fullName);
```

### String: longueur

Vous pouvez obtenir la longueur d'une chaîne de caractères en utilisant la propriété `length`.

```dart
String firstName = 'Matthieu';print(firstName.length);
```

### String: Accès aux caractères

Dans chaîne de caractère, il y a chaîne.
Imaginez donc votre String comme un ensemble de maillons mis bout à bout. Et si on voulait accéder à un des maillons?
Vous pouvez accéder aux caractères individuels d'une chaîne de caractères en utilisant entre crochets l'index de caractère, qui commence à partir de zéro.

```dart
String firstName = 'Matthieu';
print(firstName[0]);//M  print(firstName[3]); //t
```

### String: Extraire une sous chaine

`Syntaxe:`

chaine.substring(startIndex, endIndex)

```dart
String helloString = 'Salut les codeurs';
var substring = helloString.substring(1, 7);
print(substring);

```

### String: Remplacer du texte

`Syntaxe: `

chaine.replaceAll(oldText, newText)

```dart
String helloString = 'Salut les codeurs';
var replacement = helloString.replaceAll("e"," * Ici un e *");
print(replacement);
```

### String: Majuscule ou Minuscule

`Syntaxe: `

chaine.toUpperCase()chaine.toLowerCase()

```dart
String helloString = 'SaLuT lEs COdeUrs';
print(helloString.toUpperCase());  print(helloString.toLowerCase());
```

### String: Autres méthodes utiles

- Vérifier si vide: chaine.isEmpty
- Commence par: chaine.startsWith(expression)
- Finit par: chaine.endsWith(expression)
- Contient: chaine.contains(expression)
- Couper: chaine.trim(espace de début)

```dart
String helloString = 'Salut les codeurs';
print(helloString.startsWith("S"));
print(helloString.endsWith("X"));
print(helloString.contains("LES"));
String toBeTrimed = "    Et oui.   ";
print(toBeTrimed);
print(toBeTrimed.trim());

```
