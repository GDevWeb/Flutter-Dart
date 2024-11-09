# 51. Les booléens

## bool: vrai ou faux

Les booléens (ou bool en Dart) sont des types de données utilisés pour représenter des valeurs logiques : `true` (vrai) et `false` (faux).
Ils sont essentiels pour les opérations de comparaison, les contrôles de flux (comme les structures conditionnelles et les boucles), et la logique de programmation en général.

```dart
bool isRaining = true;
bool isSunny = false;
```

## bool: négation du bool

Il s’agit ici d’un opérateur logique, nous y reviendrons dans le chapitre sur `les opérateurs`.
En plaçant un `!` avant son nom de variable, vous inversez la valeur booléenne

```dart
bool isRaining = true;
bool isNotRaining = !isRaining; // false
```
