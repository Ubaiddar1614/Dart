import 'dart:io';

class Student {
  final String id;
  final String name;
  final List<String> courses = [];
  
  Student(this.id, this.name);
  
  bool addCourse(String course) {
    if (courses.contains(course)) return false;
    courses.add(course);
    return true;
  }
  
  @override
  String toString() => 'ID: $id | Name: $name | Courses: ${courses.isEmpty ? "None" : courses.join(", ")}';
}

class StudentSystem {
  final Map<String, Student> students = {};
  static const int maxCourses = 5;
  
  bool addStudent(String id, String name) {
    if (students.containsKey(id)) return false;
    students[id] = Student(id, name);
    return true;
  }
  
  String registerCourse(String id, String course) {
    Student? student = students[id];
    if (student == null) return 'Student not found';
    if (student.courses.length >= maxCourses) return 'Course limit reached';
    return student.addCourse(course) ? 'Registered successfully' : 'Already registered';
  }
  
  List<Student> getAllSorted() {
    List<Student> list = students.values.toList();
    list.sort((a, b) => a.name.compareTo(b.name)); // Sort alphabetically
    return list;
  }
  
  List<Student> search(String query) {
    return students.values.where((s) => 
      s.id.toLowerCase().contains(query.toLowerCase()) || 
      s.name.toLowerCase().contains(query.toLowerCase())
    ).toList()..sort((a, b) => a.name.compareTo(b.name));
  }
  
  bool removeStudent(String id) => students.remove(id) != null;
  int get count => students.length;
}

void main() {
  StudentSystem system = StudentSystem();
  
  while (true) {
    print('\n=== STUDENT MANAGEMENT ===');
    print('1. Add Student');
    print('2. Register Course');
    print('3. View All Students');
    print('4. Search Students');
    print('5. Student Count');
    print('6. Remove Student');
    print('7. Exit');
    
    stdout.write('\nChoice: ');
    String? input = stdin.readLineSync();
    int choice = int.tryParse(input ?? '') ?? 0;
    
    switch (choice) {
      case 1:
        stdout.write('Student ID: ');
        String id = stdin.readLineSync() ?? '';
        stdout.write('Student Name: ');
        String name = stdin.readLineSync() ?? '';
        
        if (id.isNotEmpty && name.isNotEmpty) {
          print(system.addStudent(id, name) ? ' Added!' : ' ID exists!');
        } else {
          print(' Invalid input!');
        }
        break;
        
      case 2:
        stdout.write('Student ID: ');
        String id = stdin.readLineSync() ?? '';
        stdout.write('Course Name: ');
        String course = stdin.readLineSync() ?? '';
        
        if (id.isNotEmpty && course.isNotEmpty) {
          print(system.registerCourse(id, course));
        }
        break;
        
      case 3:
        List<Student> all = system.getAllSorted();
        if (all.isEmpty) {
          print('No students found');
        } else {
          print('\n--- ALL STUDENTS (${all.length}) ---');
          for (int i = 0; i < all.length; i++) {
            print('${i + 1}. ${all[i]}');
          }
        }
        break;
        
      case 4:
        stdout.write('Search term: ');
        String query = stdin.readLineSync() ?? '';
        
        if (query.isNotEmpty) {
          List<Student> results = system.search(query);
          if (results.isEmpty) {
            print('No matches found');
          } else {
            print('\n--- SEARCH RESULTS (${results.length}) ---');
            results.forEach((s) => print(s));
          }
        }
        break;
        
      case 5:
        print('Total students: ${system.count}');
        break;
        
      case 6:
        stdout.write('Student ID to remove: ');
        String id = stdin.readLineSync() ?? '';
        
        if (id.isNotEmpty) {
          print(system.removeStudent(id) ? ' Removed!' : ' Not found!');
        }
        break;
        
      case 7:
        print('Goodbye!');
        exit(0);
        
      default:
        print(' Invalid choice!');
    }
    
    // Pause for user
    stdout.write('\nPress Enter to continue...');
    stdin.readLineSync();
  }
}