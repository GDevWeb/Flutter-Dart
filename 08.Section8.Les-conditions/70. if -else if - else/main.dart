// Les conditions

// La condition if ... else if ... else

/* 
Permet de tester plusieurs conditions et d'exécuter un bloc de code correspondant à la première condition vraie trouvée 
*/

void main() {
  int celsius = 5;

  if (celsius >= 19) {
    print(("It's a good weather"));
  } else if (celsius >= 12) {
    print("It's a sweet weather");
  } else {
    print("It's a cold weather");
  }
}
