// 60. Les opérateurs de comparaison

void main() {
  print("Les opérateurs de comparaison");

  int a = 10;
  int b = 15;
  int c = 2 * a;
  String d = "20";

  print("$a < inférieur à $b");
  print(a < b); // true

  print("$a > supérieur à $b");
  print(a > b); // false

  print("$c == égal à $a");
  print(c == a); // true

  print("$c == égal à '$d'");
  print(c == int.parse(d)); // true after parsing `d` as an int

  print("$b != différent de $a");
  print(b != a); // true

  print("$c <= inférieur ou égal à $a");
  print(c <= a); // true

  print("$b >= supérieur ou égal à $a");
  print(b >= a); // true
}
