void main() {
  var greeting = hello("Ubaid");
  print(greeting);
  print(add(10, 20));
  print(isEven(10));
  print(isEven(19));
  var result = factorial(5);
  print(result);
  print(reverse(x: "Ubaid loves Ruhi "));
 print(isPalindrome("Home"));
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
bool isPalindrome(String str)
{
    return str== reverse(x: str);
}