void main() {
  var greeting = hello("Ubaid");
  print(greeting);
  print(add(10, 20));
  print(isEven(10));
  print(isEven(19));
  var result = factorial(5);
  print(result);
  print(reverse(x: "Tum chutiya ho "));
  print(isPalindrome("Home"));
  print("Largest: ${findLargest([1, 5, 99, 23, 77])}");
  print("Fibonacci (7th): ${fibonacci(7)}");
  print(greet("Ruhi"));
  print(greet("Ubaid", greeting: "Salam"));
  print("Average: ${calculateAverage([10, 20, 30, 40])}");
}
String hello(String name) {
  return "hello $name";
}

double add(double x, double y) {
  return x + y;
}

bool isEven(int x) {
  return x % 2 == 0;
}

int factorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

String reverse({required String x}) {
  return x.split('').reversed.join();
}

bool isPalindrome(String str) {
  return str == reverse(x: str);
}

int findLargest(List<int> numbers) {
  if (numbers.isEmpty) throw ArgumentError("List cannot be empty");
  int largest = numbers[0];
  for (var number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

int fibonacci(int n) {
  if (n < 0) throw ArgumentError("Negative index not allowed");
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

String greet(String name, {String greeting = "Hello"}) {
  return "$greeting, $name!";
}

double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) throw ArgumentError("List cannot be empty");
  double sum = numbers.reduce((a, b) => a + b);
  return sum / numbers.length;
}
