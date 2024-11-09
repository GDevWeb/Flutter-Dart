// 61. Les opérateurs logiques: && et ||

/* 
Les opérateurs logiques en Dart sont utilisés pour combiner ou inverser des expressions booléennes afin de construire des conditions complexes. Dart prend en charge plusieurs opérateurs logiques qui permettent de manipuler les valeurs booléennes de manière efficace

Et (&&) : L'opérateur && retourne true si et seulement si les deux expressions booléennes sont true.
Ou (||) : L'opérateur || retourne true si aum oins l'une des expressions booléennes est true.
Non (!) : L'opérateur ! inverse la valeur del'expression booléenne.

 */

void main() {
  String fName = "Gaétan";
  String nickName = "Gaét";
  var age = 39;

  print("Les opérateurs logiques");

  // Opérateur ET (&&)
  // Retourne true si les deux conditions sont vraies
  var condition1 = (nickName == fName && age > 20);
  print(
      "Condition 1 (ET): $condition1"); // false, car `nickName == fName` est faux

  // Opérateur OU (||)
  // Retourne true si au moins une des conditions est vraie
  var condition2 = (nickName.contains("Gaé") || age > 20);
  print(
      "Condition 2 (OU): $condition2"); // true, car `nickName.contains("Gaé")` est vrai

  // Opérateur NON (!)
  // Inverse la valeur de l'expression booléenne
  var condition3 = !(age < 18);
  print(
      "Condition 3 (NON): $condition3"); // true, car `age < 18` est faux, donc !false = true

  // Exemple combiné avec ET et OU
  var complexCondition = (fName.length > 3 && age == 39) || nickName == "G";
  print(
      "Condition complexe: $complexCondition"); // true, car `fName.length > 3 && age == 39` est vrai
}
