//------------------------------------------>Beginner lvl oop practice qs------------------------------------------->

/* class Person
{
 String name;
 int age;
 Person(this.name, this.age);
 void Greet()
 {
  print("Hello my name is $name .My age is $age");
 }
}
class Rectangle 
{
    double length;
    double width;
    Rectangle(this.length,this.width);
    double area()=>length*width;
}
class Book
{
  var title;
  var author;
   Book(this.title,this.author);
  void creation()
  {
    print("Book has been created with the title: $title by author: $author");
  }
}
class Student extends Person
{
  String _grade;
    Student(super.name,super.age,this._grade);
    String get grade
    {
      return _grade;
    }
    set grade(String value)
  {
      if(value.isNotEmpty)
      {
        _grade=value;
      }
      else{
        print("Grade cannot be empty");
      }
    }
    @override
    String toString()
    {
        return " Student: $name, Age: $age, Grade: $_grade";
    }
}
void main()
{
   Person person = new Person("Ubaid", 19);
   person.Greet();
   Rectangle rect = new Rectangle(20, 10);
   print(rect.area());
   Book book = new Book("Harry Potter ", "Jk Rowling");
   book.creation();
   Student student=new Student("Dar", 20, "A");
   print(student.grade);
    student.grade="B";
    print(student.grade);
} */


//------------------------------------------>Intermediate oop practice qs------------------------------------------->
/* abstract class Vehicle
{
  String move();
}
class Car extends Vehicle
{
 String name;
 int model ;
 Car(this.name,this.model);
 @override
  String move() {
    return "Car is moving";
  }
}
class Bicycle extends Vehicle
{
 @override
 String move()
 {
  return " Bicycle is moving ";
 }
}
abstract class Shape {
  double area();
  void display() {
    print("This is a shape.");
  }
}
class Circle extends Shape {
  double radius;

  Circle(this.radius);
  @override
  double area() => 3.14159 * radius * radius;
  @override
  void display() {
    print("This is a Circle with radius $radius.");
  }
}
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);
  @override
  double area() => length * width;
  @override
  void display() {
    print("This is a Rectangle with length $length and width $width.");
  }
}
class Animal {
  String name;
  Animal(this.name);
  void sound() {
    print("$name makes a generic animal sound.");
  }
}
class Cat extends Animal {
  Cat(super.name);

  @override
  void sound() {
    print("$name says Meow!");
  }
}
class Dog extends Animal {
  Dog(super.name);
  @override
  void sound() {
    print("$name says Woof!");
  }
}
class BankAccount {
  double _balance;
  BankAccount(this._balance);
  double get balance => _balance;
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited amount is $amount. New balance is :$balance");
    } else {
      print("Deposit amount must be positive.");
    }
  }
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else if (amount > _balance) {
      print("Insufficient funds. Current balance: $balance");
    } else {
      _balance -= amount;
      print("Withdrew $amount. New balance: $balance");
    }
  }
}
class User {
  String username;
  String _password;

  User(this.username, String initialPassword) : _password = "" {
    password = initialPassword; 
  }
  String get password => _password;
  set password(String newPassword) {
    if (newPassword.length < 8) {
      print("Password must be at least 8 characters long.");
    } else if (!newPassword.contains(RegExp(r'[A-Z]'))) {
      print("Password must contain at least one uppercase letter.");
    } else if (!newPassword.contains(RegExp(r'[a-z]'))) {
      print("Password must contain at least one lowercase letter.");
    } else if (!newPassword.contains(RegExp(r'[0-9]'))) {
      print("Password must contain at least one digit.");
    } else if (!newPassword.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      print("Password must contain at least one special character.");
    } else {
      _password = newPassword;
      print("Password updated successfully for $username.");
    }
  }

  void displayUserInfo() {
    print("User: $username");
    // In a real app, you wouldn't print the raw password like this.
    // This is for demonstration of the _password value after setter.
    print("Stored (private) password: $_password");
  }
}
void main() {
  Car myCar = Car("Mercedes", 1990);
  Bicycle bicycle = Bicycle();
  print(myCar.move());
  print(bicycle.move());
  print("Shape & Area Example");
  Circle circle = Circle(5.0);
  circle.display();
  print("Area of Circle: ${circle.area()}");

  Rectangle rectangle = Rectangle(4.0, 6.0);
  rectangle.display();
  print("Area of Rectangle: ${rectangle.area()}");

  List<Shape> shapes = [Circle(3.0), Rectangle(5.0, 2.0)];
  print("\nPolymorphism with Shapes");
  for (var shape in shapes) {
    shape.display();
    print("Calculated Area: ${shape.area()}");
  }

  print("\nAnimal Sound Example (Polymorphism)");
  Cat fluffy = Cat("Fluffy");
  Dog buddy = Dog("Buddy");
  fluffy.sound();
  buddy.sound();

  print("Bank Account Encapsulation Example");
  BankAccount myAccount = BankAccount(100.0);
  print("Initial balance: \$${myAccount.balance}");

  myAccount.deposit(50.0);
  myAccount.withdraw(25.0);
  myAccount.withdraw(200.0);
  myAccount.deposit(-10.0);
  print("Final balance: \$${myAccount.balance}");

  print("\nUser Password Encapsulation Example");
  User newUser = User("devuser", "weak");
  newUser.displayUserInfo();

  print("\nAttempting to set a valid password:");
  newUser.password = "MyStrongP@ss123";
  newUser.displayUserInfo();

  print("\nAttempting to set another invalid password:");
  newUser.password = "short";
  newUser.displayUserInfo();
}
 */
//------------------------------------------>Advance oop practice qs------------------------------------------->
// MIXIN - Add functionality to classes
mixin Logger {
  void log(String msg) => print('[LOG] $msg');
}

// INHERITANCE - Base class
class Animal {
  String name;
  Animal(this.name);
  void speak() => print('$name makes a sound');
}

// EXTENDS - Inherit from Animal
class Dog extends Animal {
  Dog(String name) : super(name);
  @override
  void speak() => print('$name barks!');
}

// INTERFACE - Contract that classes must follow
abstract class Flyable {
  void fly();
}

// IMPLEMENTS - Follow the contract
class Bird extends Animal implements Flyable {
  Bird(String name) : super(name);
  
  @override
  void speak() => print('$name chirps!');
  
  @override
  void fly() => print('$name is flying!');
}

// COMBINED - extends + with + implements
class Robot extends Animal with Logger implements Flyable {
  Robot(String name) : super(name);
  
  @override
  void speak() {
    log('Robot speaking');
    print('$name beeps!');
  }
  
  @override
  void fly() {
    log('Robot flying');
    print('$name flies with jets!');
  }
}

// POLYMORPHISM - Same method, different behavior
void makeAllSpeak(List<Animal> animals) {
  for (Animal animal in animals) {
    animal.speak(); // Different for each type
  }
}

void main() {
  // Create different animals
  List<Animal> animals = [
    Dog('Buddy'),
    Bird('Tweet'),
    Robot('R2D2')
  ];
  
  // Polymorphism in action
  makeAllSpeak(animals);
  
  // Test flying ability
  Bird bird = Bird('Eagle');
  Robot robot = Robot('Drone');
  
  bird.fly();
  robot.fly();
  
  // Mixin functionality
  robot.log('Mission complete');
}