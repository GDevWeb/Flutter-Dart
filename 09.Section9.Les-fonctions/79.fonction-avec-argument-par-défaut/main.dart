/* Section 9 : Les fonctions */

// 79. Fonction avec arguments par défaut

/* 
Ici la fonction prend des paramètres mais avec une valeur par défaut si aucune valeur n'est saisie.

*/

void main() {
  void makeEmployee(
      {String fName = "John",
      String lName = "Doe",
      int age = 39,
      String gender = "N/A",
      String job = "N/A"}) {
    print("""This is detail about the employee: 
    FirstName : $fName 
    LastName :  $lName
    Age : $age
    Gender : $gender
    Job : $job
     """);
  }

  print("***with values***");
  makeEmployee(
      fName: "Annabeth",
      lName: "Dammaretz",
      age: 39,
      gender: "man",
      job: "engineer IT");

  print("***without values***");
  makeEmployee();
}
