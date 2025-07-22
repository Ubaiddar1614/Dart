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
mixin Logger {
  // Simple method to print messages with timestamp
  void log(String message) {
    print('[${DateTime.now().hour}:${DateTime.now().minute}] $message');
  }
}

// Simple file service using Logger mixin
class FileService with Logger {
  void openFile(String name) {
    log('Opening file: $name');
    print('File $name is now open!');
  }
  
  void saveFile(String name) {
    log('Saving file: $name');
    print('File $name saved successfully!');
  }
}

// Simple API service also using Logger mixin
class ApiService with Logger {
  void getData() {
    log('Getting data from server');
    print('Data received!');
  }
  
  void sendData() {
    log('Sending data to server');
    print('Data sent!');
  }
}

// ⚔️ INHERITANCE AND MIXIN EXAMPLE - Game characters
// Parent class - all game characters have these basic things
class GameCharacter {
  String name;
  int health;
  int attack;
  
  // Constructor - sets up a new character
  GameCharacter(this.name, this.health, this.attack);
  
  // Simple attack method
  void fight(GameCharacter enemy) {
    print('$name attacks ${enemy.name}!');
    enemy.health = enemy.health - attack;
    print('${enemy.name} now has ${enemy.health} health');
  }
  
  // Show character info
  void showInfo() {
    print('Name: $name, Health: $health, Attack: $attack');
  }
  
  // Check if character is still alive
  bool isAlive() {
    return health > 0;
  }
}

// Simple mixin for hiding ability
mixin Hiding {
  bool hidden = false;
  
  void hide() {
    hidden = true;
    print('Character is now hidden!');
  }
  
  void show() {
    hidden = false;
    print('Character is now visible!');
  }
}

// Warrior class - inherits from GameCharacter
class Warrior extends GameCharacter {
  int shield; // Extra protection
  
  Warrior(String name, int health, int attack, this.shield) 
      : super(name, health, attack);
  
  // Warriors can block attacks
  void block() {
    print('$name raises shield! Protected by $shield points');
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('Shield: $shield');
  }
}

// Archer class - inherits from GameCharacter and can hide
class Archer extends GameCharacter with Hiding {
  int arrows;
  
  Archer(String name, int health, int attack, this.arrows) 
      : super(name, health, attack);
  
  // Archers can shoot arrows
  void shootArrow(GameCharacter target) {
    if (arrows > 0) {
      arrows--;
      print('$name shoots arrow at ${target.name}!');
      target.health = target.health - attack;
      print('Arrows left: $arrows');
    } else {
      print('No arrows left!');
    }
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('Arrows: $arrows, Hidden: $hidden');
  }
}

// 🚦 INTERFACE EXAMPLE - Things that can be turned on/off
// Interface - a contract that classes must follow
abstract class Switchable {
  void turnOn();
  void turnOff();
  void showStatus();
}

// Simple fan that can be controlled
class Fan implements Switchable {
  bool isOn = false;
  
  @override
  void turnOn() {
    isOn = true;
    print('Fan is now ON - Whoosh!');
  }
  
  @override
  void turnOff() {
    isOn = false;
    print('Fan is now OFF - Quiet!');
  }
  
  @override
  void showStatus() {
    print('Fan status: ${isOn ? "ON" : "OFF"}');
  }
}

// Simple light that can be controlled
class Light implements Switchable {
  bool isOn = false;
  
  @override
  void turnOn() {
    isOn = true;
    print('Light is now ON - Bright!');
  }
  
  @override
  void turnOff() {
    isOn = false;
    print('Light is now OFF - Dark!');
  }
  
  @override
  void showStatus() {
    print('Light status: ${isOn ? "ON" : "OFF"}');
  }
}

// Simple radio that can be controlled
class Radio implements Switchable {
  bool isOn = false;
  
  @override
  void turnOn() {
    isOn = true;
    print('Radio is now ON - Music playing!');
  }
  
  @override
  void turnOff() {
    isOn = false;
    print('Radio is now OFF - Silent!');
  }
  
  @override
  void showStatus() {
    print('Radio status: ${isOn ? "ON" : "OFF"}');
  }
}

// 🌀 COMBINED EXAMPLE: Using extends, with, and implements together
// Base class for all devices
class Device {
  String name;
  bool hasPower = true;
  
  Device(this.name);
  
  void checkPower() {
    print('$name power: ${hasPower ? "Good" : "Dead"}');
  }
}

// Mixin for internet features
mixin Internet {
  bool connected = false;
  
  void connect() {
    connected = true;
    print('Connected to internet!');
  }
  
  void disconnect() {
    connected = false;
    print('Disconnected from internet!');
  }
}

// Interface for calling
abstract class CanCall {
  void makeCall(String number);
}

// Interface for taking pictures
abstract class CanTakePhotos {
  void takePhoto();
}

// Phone class using all three: extends, with, implements
class Phone extends Device 
    with Internet, Logger 
    implements Switchable, CanCall, CanTakePhotos {
  
  bool isOn = false;
  int photos = 0;
  
  Phone(String name) : super(name);
  
  // From Switchable interface
  @override
  void turnOn() {
    isOn = true;
    log('Phone turned on');
    print('$name is now ON!');
  }
  
  @override
  void turnOff() {
    isOn = false;
    log('Phone turned off');
    print('$name is now OFF!');
  }
  
  @override
  void showStatus() {
    checkPower();
    print('Phone: ${isOn ? "ON" : "OFF"}, Internet: ${connected ? "Connected" : "Disconnected"}');
    print('Photos taken: $photos');
  }
  
  // From CanCall interface
  @override
  void makeCall(String number) {
    if (isOn) {
      log('Calling $number');
      print('Calling $number... Ring ring!');
    } else {
      print('Cannot call - phone is off!');
    }
  }
  
  // From CanTakePhotos interface
  @override
  void takePhoto() {
    if (isOn) {
      photos++;
      log('Photo taken');
      print('Click! Photo #$photos taken');
    } else {
      print('Cannot take photo - phone is off!');
    }
  }
}

// 🧠 POLYMORPHISM EXAMPLE - Different workers, same method name
// Base class for all workers
class Worker {
  String name;
  int salary;
  
  Worker(this.name, this.salary);
  
  // This method will be different for each type of worker
  int calculatePay() {
    return salary; // Basic pay
  }
  
  void showInfo() {
    print('$name earns \$${calculatePay()} per month');
  }
}

// Teacher gets bonus for experience
class Teacher extends Worker {
  int yearsTeaching;
  
  Teacher(String name, int salary, this.yearsTeaching) : super(name, salary);
  
  @override
  int calculatePay() {
    return salary + (yearsTeaching * 100); // $100 bonus per year
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('Teaching experience: $yearsTeaching years');
  }
}

// Doctor gets bonus for night shifts
class Doctor extends Worker {
  int nightShifts;
  
  Doctor(String name, int salary, this.nightShifts) : super(name, salary);
  
  @override
  int calculatePay() {
    return salary + (nightShifts * 200); // $200 bonus per night shift
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('Night shifts: $nightShifts');
  }
}

// Student gets basic pay only
class Student extends Worker {
  String school;
  
  Student(String name, int salary, this.school) : super(name, salary);
  
  @override
  int calculatePay() {
    return salary; // No bonus for students
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('School: $school');
  }
}

// Function that works with any type of worker (polymorphism!)
void printAllPay(List<Worker> workers) {
  print('\n=== MONTHLY PAY REPORT ===');
  int total = 0;
  
  for (Worker worker in workers) {
    int pay = worker.calculatePay();
    total = total + pay;
    print('${worker.name}: \$${pay}');
  }
  
  print('Total pay for all workers: \$${total}');
}

//  MAIN FUNCTION - Let's test everything!
void main() {
  print(' === TESTING MIXINS ===');
  
  // Create services that use Logger mixin
  FileService fileService = FileService();
  ApiService apiService = ApiService();
  
  fileService.openFile('my-document.txt');
  fileService.saveFile('my-document.txt');
  
  apiService.getData();
  apiService.sendData();
  
  print('\ === TESTING INHERITANCE ===');
  
  // Create game characters
  Warrior knight = Warrior('Batman', 100, 20, 15);
  Archer robin = Archer('Robin', 80, 15, 10);
  
  // Show their info
  knight.showInfo();
  robin.showInfo();
  
  // Let them fight!
  knight.fight(robin);
  robin.hide(); // Archer can hide!
  robin.shootArrow(knight);
  knight.block(); // Warrior can block!
  
  print('\n🚦 === TESTING INTERFACES ===');
  
  // Create different devices
  List<Switchable> devices = [Fan(), Light(), Radio()];
  
  // Turn them all on and off (same method, different behavior!)
  for (Switchable device in devices) {
    device.turnOn();
    device.showStatus();
    device.turnOff();
    print('---');
  }
  
  print('\n🌀 === TESTING COMBINED FEATURES ===');
  
  // Create a phone using all concepts
  Phone myPhone = Phone('iPhone');
  
  myPhone.turnOn();        // From Switchable
  myPhone.connect();       // From Internet mixin
  myPhone.makeCall('123'); // From CanCall interface
  myPhone.takePhoto();     // From CanTakePhotos interface
  myPhone.takePhoto();     // Take another photo
  myPhone.showStatus();    // Show everything
  
  print('\n🧠 === TESTING POLYMORPHISM ===');
  
  // Create different types of workers
  List<Worker> workers = [
    Teacher('Abrar', 3000, 5),    // 5 years experience
    Doctor('Dr. Dar', 5000, 3),     // 3 night shifts
    Student('Ruhi', 1000, 'ABC High'), // Student job
    Teacher('Mr. Ali', 3200, 8),    // 8 years experience
    Doctor('Dr. Ahmad', 5500, 2)     // 2 night shifts
  ];
  
  // Print pay for all workers 
  printAllPay(workers);
  
  print('\n=== DETAILED WORKER INFO ===');
  for (Worker worker in workers) {
    worker.showInfo();
    print('---');
  }
  print('\n🎉 All concepts learned successfully!');
}