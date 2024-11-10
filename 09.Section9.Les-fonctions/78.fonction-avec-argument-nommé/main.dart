/* Section 9 : Les fonctions */

// 78. Fonction avec argument nommé

/* 
Ici la fonction prend plusieurs paramètres mais nommés, c’est à dire que dans l’appel de fonction,nous aurons le nom de ces paramètres. 
Ils sont entre accolades et si ils ne sont pas null ou n’ont pas de valeur par défaut, il faudra ajouter le mot clé required (requis)
*/

void main() {
  void makeEmployee(
      {required String fName,
      required lName,
      required age,
      required gender,
      required String job}) {
    print("""This is detail about the employee: 
    FirstName : $fName 
    LastName :  $lName
    Age : $age
    Gender : $gender
    Job : $job
     """);
  }

  makeEmployee(
      fName: "John",
      lName: "Doeson",
      age: 39,
      gender: "man",
      job: "engineer IT");
}
