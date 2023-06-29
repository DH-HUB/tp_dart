import 'Student.dart';
class Lesson {
  String _name;

  Lesson(this._name);

  String get name => _name;
  set name(String value) => _name = value;

  String toString() {
    return 'Lesson: {name: $_name}';
  }
}


