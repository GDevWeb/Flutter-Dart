// 63. L'opérateur null aware : ??

/* 
Cet opérateur est très utile pour fournir une valeur de secours ou par défaut lorsqu'une expression évalue à null.

`Syntaxe`
expression1 ?? expression2;

`Fonctionnement`

- Expression 1 : L'expression qui est évaluée en premier. Si cette expression n'est pas null, elle est renvoyée comme résultat de l'opération.
- Expression 2 : L'expression qui est renvoyée sil'expression 1 est null.
 */

void main() {
  String? name;
  String result = name ?? "cher inconnu";
  print("Salut $result");
}
