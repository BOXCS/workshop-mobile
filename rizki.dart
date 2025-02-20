void main() {
  // 1. Anonymous Function / Lambda
  var greet = (String name) {
    print("Hello, $name!");
  };

  greet("Alice"); // Output: Hello, Alice!

  // 2. Nested Function
  void outerFunction() {
    String outer = "Outer Function";
    void innerFunction() {
      String inner = "Inner Function";
      print("$outer - $inner");
    }
    innerFunction(); // Memanggil inner function dari dalam outer function
  }

  outerFunction(); // Output: Outer Function - Inner Function

  // 3. Function with Default Parameter
  void greetPerson(String name, [String greeting = "Hello"]) {
    print("$greeting, $name!");
  }

  greetPerson("Bob"); // Output: Hello, Bob!
  greetPerson("Charlie", "Good morning"); // Output: Good morning, Charlie!

  // 4. Function with Named Parameter
  void introduce({required String name, required int age}) {
    print("My name is $name and I am $age years old.");
  }

  introduce(name: "David", age: 30); // Output: My name is David 
  // and I am 30 years old.
}
