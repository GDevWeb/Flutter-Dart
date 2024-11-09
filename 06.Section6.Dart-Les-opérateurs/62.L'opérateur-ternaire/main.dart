/* 62. L'opérateur ternaire */

/* 

L'opérateur ternaire, également appelé opérateur conditionnel, est une structure de contrôle de flux très utile en Dart. 

`Syntaxe`
condition ? expressionSiVraie : expressionSiFausse;

`Fonctionnement`

- Condition : Une expression booléenne qui est évaluée. Si cette condition est vraie (true),l'expression qui suit le ? est exécutée. Sinon,l'expression qui suit le : est exécutée.
- Expression Si Vraie : valeur si la condition est vraie.Expression Si Fausse : valeur si la condition est fausse.

 */

void main() {
  var currentHour = 18;
  print(currentHour);

  var isEvening = currentHour >= 18 ? "It's evening" : "It's not evening";
  print(isEvening);
}
