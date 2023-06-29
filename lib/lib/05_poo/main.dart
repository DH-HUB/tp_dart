import 'classes/Admin.dart';
import 'classes/User.dart';
import 'classes/Student.dart';
import 'classes/Lesson.dart';
/// ****** serie 05 POO *******

void exercice1_8(){
  User johndoe = User('John', 'Doe', 'john@doe.com', 'password123');
  print(johndoe);

  johndoe.sayHello();

  johndoe.password = 'newpassword';
  print(johndoe);
  }

void exercice9() {
  User johndoe = User('John', 'Doe', 'john@doe.com', 'password123');

  Admin admin = Admin('John', 'Doe', 'john@doe.com', 'password123', grade: 2);
  print(admin.grade); // Affiche 2
  admin.grade = 3;
  print(admin.grade); // Affiche 3

  bool isAuthenticated = johndoe.authenticate('newpassword');
  print('Authentication: $isAuthenticated');

  isAuthenticated = johndoe.authenticate('wrongpassword');
  print('Authentication: $isAuthenticated');
}

void exercice10(){

    Student johnDoe = Student('John', 'Doe');
    Lesson italian = Lesson('Italian');

    johnDoe.addLesson(italian);
    print(johnDoe);

    Lesson french = Lesson('French');
    johnDoe.addLesson(french);
    print(johnDoe);

    johnDoe.removeLesson(italian);
    print(johnDoe);
}