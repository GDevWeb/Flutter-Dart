void main() {
  var identity = {"firstName": "Gaston", "lastName": "Lagaffe"};
  print(identity); //{firstName: Gaston, lastName: Lagaffe}
  print(identity["lastName"]); //Lagaffe

  // **méthodes**
  // length
  print(identity.length); //2
  // modification
  identity["firstName"] = "Jeanna";
  print(identity);

  Map person = {"firstName": "Océane", "LastName": "Dam"};
  print(person);
  // ajout d'une propriété :
  person["age"] = 39;
  person["Hobbies"] = ["Eating chocolate", "Drawing", "Pokemon"];
  person["makeASound"] = "Blabla";
  print(person);
  // suppression
  person.remove("makeASound"); /*  */
  print(person);

  // ***Les maps non modifiables***
  // **unmodifiable**
  var animal = Map.unmodifiable({
    "animal": "cat",
    "makeAsound": "Feed me, bitch !",
    "hobbies": [
      "Sleeping",
      "Eating",
      "Eating everything is not consumable because i'am a bumb"
    ]
  });
  print(animal);
  // animal["say"] = "i'am a dumb";
  // print(animal); //error

  // Les Map : autres méthodes utiles :

  // isEmpty :
  print(person.isEmpty);
  // keys :
  print(person.keys);
  // values:
  print(person.values);
  // containsKeys:
  print(person.containsKey("lastName"));
  // putIfAbsent - ajoute la key/value si absent une fonction "lambda" :
  person.putIfAbsent("brotherHood", () => "Annabeth");
  print(person);
}
