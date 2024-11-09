void main() {
  double a = 10; // changed to double
  var b = 5;
  var c = 2;
  var d = 3;

  // Addition
  var add = a + b;
  print(add); // 15

  // Subtraction
  var subtract = a - b;
  print(subtract); // 5

  // Multiplication
  var multiply = a * b;
  print(multiply); // 50

  // Division (double)
  var divide = a / b;
  print(divide); // 2.0

  // Integer division
  int full = 15 ~/ c;
  print(full); // 7

  // Modulo (remainder)
  int modulo = 15 % d;
  print(modulo); // 0

  // Increment and decrement
  print("Increment and Decrement");
  var number = 20;
  print(number); // 20
  number++; // adds 1
  print(number); // 21
  number--; // subtracts 1
  print(number); // 20

  // Arithmetic assignment operators
  print("Arithmetic assignment operators");

  // += addition
  print(c += a.toInt()); // 12

  // -= subtraction
  print(d -= c); // -9

  // *= multiplication
  print(d *= c); // -108

  // /= division (double)
  print(a /= c); // 0.833333...
}
