
import 'User.dart';

class Admin extends User {
  late int _grade;

  Admin(String firstname, String lastname, String email, String password, {int grade = 1})
      : super(firstname, lastname, email, password) {
    _grade = grade;
  }

  int get grade => _grade;
  set grade(int value) => _grade = value;
}
