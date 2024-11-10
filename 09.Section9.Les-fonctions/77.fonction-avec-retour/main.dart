/* Section 9 : Les fonctions */

// 77. Fonction avec retour

/* 
Ici la fonction prend plusieurs paramètres. ils sont séparés par des virgules.Le type de retour est défini comme int.Le bloc de code finit par "return" puis la valeur à retourner.
Rien ne sera effectué après "l’expression return".
*/

void main() {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  print("***sum***");
  int sum = add(10, 5);
  print(sum);
  print("***difference***");
  int difference = subtract(20, 10);
  print(difference);

  /* ****** */
  print("***convertToRound***");
  int convertToRound(double value) {
    int intValue = value.round();
    return intValue;
  }

  print(convertToRound(5.45));
}
