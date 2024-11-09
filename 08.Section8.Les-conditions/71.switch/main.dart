// Les conditions

// switch case

/* 
Permet d'exécuter du code en fonction de la valeur d'une variable
*/

void main() {
  String currentWeather = "raining";

  switch (currentWeather) {
    case "raining":
      print("it's not a weather for dog and cat outside");
      break;
    case "sunny":
      print("it's a sunny weather");
      break;
    case "snowy":
      print("it's a snowy weather");
    default:
      print("What can i say ?");
  }
}
