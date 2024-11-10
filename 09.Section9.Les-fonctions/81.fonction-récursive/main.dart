/* Section 9 : Les fonctions */

// 81. fonction récursive

/* 
En Dart, une fonction récursive est une fonction qui "s'appelle elle-même" à l'intérieur de son propre corps. 
Les fonctions récursives sont couramment utilisées pour résoudre des problèmes qui peuvent être décomposés en des sous-problèmes de taille identique ou similaire
*/

void main() {
  bool play(int lives) {
    if (lives == 0) {
      return false;
    } else {
      int newsLines = lives - 1;
      print(newsLines);
      return play(newsLines);
    }
  }

  play(5);
}
