// Les conditions

// Déballer un optionnel

/* 
C’est à dire le rendre non nullable: 
- En le forçant ! (nom recommandé sans vérification)
- Avec une condition ifAvec le nullaware ??
 */

void main() {
  String? nullableName = "Alice"; // Nullable variable

  // 1. Forcing the value with `!`
  // Use the exclamation mark `!` to force Dart to treat the nullable variable as non-null.
  // Note: Only use this if you're certain that the variable is not null; otherwise, it will throw an error.
  print(nullableName); // This will print "Alice" if `nullableName` is not null

  // 2. Using an `if` condition to check for null
  // This method is safe because it first checks if the variable is non-null.
  print(nullableName); // Prints "Alice" if `nullableName` is not null

  // 3. Using the null-aware operator `??`
  // The `??` operator provides a default value if the variable is null.
  print(nullableName ??
      "No name provided"); // Prints "Alice" if `nullableName` is not null, otherwise "No name provided"

  // Example with a null value
  nullableName = null;
  print(nullableName ??
      "No name provided"); // This will now print "No name provided"
}
