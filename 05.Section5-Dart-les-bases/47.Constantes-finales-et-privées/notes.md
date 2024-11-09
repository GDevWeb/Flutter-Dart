# 47. Constantes, finales et privées

[udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26916090#overview)

## Variable const

`Définition`: Les variables const sont immuables, ce qui signifie que leur valeur ne peut pas être modifiée après leur initialisation.

`Syntaxe`: const type nomVariable = valeurInitiale;

### Utilisation

Utilisées pour stocker des valeurs qui ne changent jamais pendant l'exécution du programme (ex: constantes mathématiques,identificateurs uniques).Améliorent la lisibilité et la maintenabilité du code en indiquant clairement que la valeur estfixe.Permettent l'optimisation du compilateur car la valeur est connue à la compilation.

```dart
const PI = 3.14159; // Valeur constante de Piconst
NOM_APPLICATION ="MonApplication"; // Nom constant de l'application
```

## Variable finale (final)

`Définition`: Les variables final sont égalementimmuables, mais leur valeur peut être modifiéependant l'initialisation de la variable.

`Syntaxe`: final type nomVariable = valeurInitiale;

`Utilisation`:
Similaires aux variables const, mais permettentune initialisation flexible pendant la déclaration.Utilisées pour stocker des valeurs qui sont initialisées une seule fois au début du programme et qui ne changent plus ensuite.

```dart
final String nom = "Alice"; final int nombreHeuresTravaillees = 40;
```

## Variable privée (private)

`Définition`: Les variables private sont uniquement accessibles dans le bloc de code où elles sont déclarées.
`Syntaxe`: private type \_nomVariable = valeurInitiale;

`Utilisation`:

- Utilisées pour encapsuler des données internes d'une classe ou d'une fonction et les protéger contre un accès non intentionnel depuis l'extérieur.
- Améliorent la modularité et la sécurité du codeen limitant l'accès aux données sensibles.

```dart
class Personne {
  private String \_nom;
  private int \_age;
  public String getNom()
  { return \_nom; }
  public void setNom(String nouveauNom)
  { \_nom = nouveauNom; }}
```
