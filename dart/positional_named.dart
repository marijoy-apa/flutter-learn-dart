void main() {
  // Example of positional arguments
  print(sum(5, 3)); // Output: 8

  // Example of named arguments
  print(greet(name: 'John', greeting: 'Hello')); // Output: Hello, John!
}

// Function with positional arguments
int sum(int a, int b) {
  return a + b;
}

// Function with named arguments
String greet({required String name, required String greeting}) {
  return '$greeting, $name!';
}

