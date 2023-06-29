import 'Lesson.dart';

class Student {
 late  String _firstname;
 late  String _lastname;
 late List<Lesson> _lessons;

 Student(this._firstname, this._lastname) {
    _lessons = [];
  }

  String get firstname => _firstname;
  set firstname(String value) => _firstname = value;

  String get lastname => _lastname;
  set lastname(String value) => _lastname = value;

  void addLesson(Lesson lesson) {
    _lessons.add(lesson);
  }

  void removeLesson(Lesson lesson) {
    _lessons.remove(lesson);
  }

  String toString() {
    String lessonsStr = _lessons.isNotEmpty
        ? _lessons.map((lesson) => lesson.name).join(', ')
        : 'None';

    return 'Student: {firstname: $_firstname, lastname: $_lastname, lessons: $lessonsStr}';
  }
}
