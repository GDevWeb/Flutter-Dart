/* Section 9 : Les fonctions */

// 76. Fonction avec paramètre

/* 
Ici la fonction prend un ou plusieurs argument ou paramètre entre les parenthèses. 
Chaque argument aura type suivi de son nom de variable.
Elle ne revoie rien (void). 
Lors de l’appel, nous devrons entrer les paramètres 
*/

void main() {
  calculateEra(int width, int height) {
    var era = width * height;
    print("The era is : $era");
  }

  calculateEra(15, 10);

  presentation(String fName, String lName, int age, bool gender) {
    String genderString = (gender) ? "a man" : "a woman";
    print(
        "Hello my name is $fName $lName, i'am $age old years and i'am a $genderString");
  }

  presentation("Jeanna", "Doeson", 37, false);
}
