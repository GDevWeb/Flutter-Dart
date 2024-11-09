# 52. Le dynamic

Le type dynamic en Dart est un type spécial qui permet de stocker des valeurs de n'importe quel type.
Lorsque vous utilisez dynamic, le type de la variable est déterminé au moment de l'exécution plutôt qu'à la compilation. Cela permet une grande flexibilité, mais peut également introduire des risques de bugs si le type réel des valeurs n'est pas géré correctement.

```dart
dynamic value = "Bonjour";
print(value);//Bonjour

value = 123;
print(value);µ//123

value = true;
print(value);//true
```

## Le dynamic: risques

L'utilisation de dynamic offre une grande flexibilité,mais elle comporte des risques :

1. Erreurs d'Exécution : Étant donné que les vérifications de type sont reportées à l'exécution,vous risquez d'obtenir des erreurs si vous essayez d'appeler une méthode qui n'existe pas pour le type réel de la variable.1.
2. Perte de Lisibilité et de Maintenabilité : Le code devient plus difficile à lire et à maintenir, car le type des variables n'est pas clair.

```dart
dynamic value = 'Bonjour';
dynamic value = 'Bonjour';
value = 123;
print(value.toUpperCase()); // Erreur
```

## Le dynamic: Bonne pratiques

Pour éviter les problèmes liés à l'utilisation de dynamic, voici quelques bonnes pratiques :

1. Limiter l'Utilisation de dynamic :
   1. Utilisez dynamic seulement lorsque cela est nécessaire.Préférez les types explicites pour la plupart des cas.
2. Vérification de Type : Utilisez les opérateurs `is` et `as` pour vérifier et convertir les types lors del'utilisation de dynamic.
3. Commentaires et Documentation : Ajoutez des commentaires et documentez votre code pour indiquer pourquoi vous utilisez dynamic et quel type de données est attendu
